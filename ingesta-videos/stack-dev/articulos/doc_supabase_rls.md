# Supabase RLS — doctrina oficial
**Fuente:** Supabase Docs oficial | https://supabase.com/docs/guides/database/postgres/row-level-security

## Habilitar RLS
- `alter table <schema>.<tabla> enable row level security;` — OBLIGATORIO en toda tabla de un schema expuesto (public). Sin esto, ninguna policy aplica.
- Grants por rol antes de habilitar: `anon` (SELECT), `authenticated` (CRUD), `service_role` (CRUD).

## Policies (implícitas como WHERE)
- **SELECT** → `using ( (select auth.uid()) = user_id )`.
- **INSERT** → `with check ( (select auth.uid()) = user_id )`.
- **UPDATE** → `using(...)` (filas existentes) + `with check(...)` (filas modificadas). REQUIERE una policy SELECT correspondiente o el update falla en silencio.
- **DELETE** → `using ( (select auth.uid()) = user_id )`.
- `using` sin `with check` aplica a ambos.

## Contexto de auth
- Roles: `anon` (no autenticado) · `authenticated` (logueado). Especificar SIEMPRE con `to authenticated`.
- `auth.uid()` retorna null si no hay usuario → `null = user_id` siempre false. Guardar: `using (auth.uid() is not null and auth.uid() = user_id)`.
- `auth.jwt()`: usar `app_metadata` (inmutable) para autorización, NUNCA `user_metadata` (mutable por el usuario = inseguro). Ej multi-tenant: `using ( team_id in (select auth.jwt()->'app_metadata'->'teams') )`. Ojo: el JWT no siempre está "fresco" tras cambiar metadata.
- MFA: policy restrictiva `using ( (select auth.jwt()->>'aal') = 'aal2' )`.

## Performance (crítico — benchmarks reales)
1. **Envolver funciones en `(select ...)`**: `(select auth.uid()) = user_id` → +94,97% (crea initPlan, cachea por statement no por fila).
2. **Indexar** columnas de la policy: `create index on test using btree (user_id)` → +99,94%.
3. **Filtro cliente explícito**: `.eq('user_id', userId)` además de la policy → +94,74%.
4. **Especificar `to`**: bloquea anon temprano → +99,78%.
5. **Security definer function** para lógica compleja (evita overhead RLS); NUNCA en schema expuesto.
6. **Minimizar joins**: invertir la lógica (`team_id in (select team_id from team_user where user_id=(select auth.uid()))`) → +99,78%.

## Errores comunes
1. Olvidar habilitar RLS. 2. UPDATE sin policy SELECT (falla mudo). 3. Usar user_metadata para autorización. 4. auth.uid() sin guardia null. 5. Views que saltan RLS (<PG15; en 15+ usar `security_invoker=true`). 6. Ignorar el overhead de performance.
- **service_role** salta RLS: solo backend, NUNCA al cliente.
