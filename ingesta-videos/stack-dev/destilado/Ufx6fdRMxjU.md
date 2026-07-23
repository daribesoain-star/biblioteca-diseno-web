# Getting Started with Supabase Auth
**Fuente:** Supabase | https://youtu.be/Ufx6fdRMxjU

## Qué enseña (2-3 líneas)
Explica los fundamentos de autenticación (Authentication) y autorización (Authorization) con Supabase: cómo se emiten y verifican JWTs, los métodos de login disponibles (email+password, OAuth social, anónimo, MFA, SAML), y cómo implementar Row-Level Security (RLS) policies en PostgreSQL para controlar el acceso a los datos.

## Técnicas y patrones accionables

- **Autenticación con email + password:**
  - Crear nuevo usuario: `auth.signUp({ email, password })`
  - Iniciar sesión usuario existente: `auth.signInWithPassword({ email, password })`
- **Autenticación con OAuth (20 opciones sociales):**
  - `auth.signInWithOAuth({ provider: 'google' })`
- **Autenticación anónima (invitado continuo):**
  - `auth.signInAnonymously()`
  - Genera un JWT que se almacena localmente como cualquier otra sesión.
- **Actualizar usuario anónimo a usuario con email+password:**
  1. Llamar `auth.updateUser({ email: 'user@example.com' })` → envía email de verificación.
  2. Una vez verificado el email, llamar `auth.updateUser({ password: 'newPassword' })`.
- **Actualizar usuario anónimo a usuario con login social:**
  - Llamar `auth.linkIdentity({ provider: 'google' })`
- **Decodificar JWT en jwt.io:**
  - El access token contiene en el header: algoritmo de firma.
  - En el body: user ID, email, si el usuario está verificado, etc.
  - La clave pública se encuentra en Supabase Dashboard → Settings → JWT keys.
- **Row-Level Security (RLS) policies:**
  - Tipos de políticas: `SELECT`, `INSERT`, `UPDATE`, `DELETE` (evitar `ALL` para mayor control granular).
  - Sintaxis de políticas:
    - `SELECT`: `USING (condición)`
    - `INSERT`: `WITH CHECK (condición)`
    - `UPDATE`: `USING (condición)` + `WITH CHECK (condición)`
    - `DELETE`: `USING (condición)`
  - `USING` compara la condición contra datos existentes.
  - `WITH CHECK` compara la condición contra datos futuros después del cambio.
- **Ejemplos de políticas RLS:**
  1. **Acceso público (solo SELECT):** `USING (true)`
  2. **Propietario del registro:** `USING (auth.uid() = user_id)`
  3. **Basado en grupo/equipo:** requiere tres tablas:
     - `posts` con columna `team_id`
     - `teams` con información del equipo
     - `team_users` que relaciona `user_id` con `team_id`
     - Política: `USING (auth.uid() IN (SELECT user_id FROM team_users WHERE team_id = posts.team_id))`
- **Optimización de rendimiento con RLS:**
  - Aunque RLS actúa como filtro, se debe agregar explícitamente el filtro en la consulta (ej: `.eq('team_id', 1)`) para que Postgres sea más eficiente.

## Reglas para el erudito (imperativas y verificables)

- Usa `auth.signUp()` para crear nuevos usuarios con email+password.
- Usa `auth.signInWithPassword()` para iniciar sesión de usuarios existentes.
- Usa `auth.signInWithOAuth({ provider })` para logins sociales.
- Usa `auth.signInAnonymously()` para sesiones de invitado sin comprometer seguridad.
- Para migrar de anónimo a email+password: primero llama `auth.updateUser({ email })`, espera verificación, luego `auth.updateUser({ password })`.
- Para migrar de anónimo a social: usa `auth.linkIdentity({ provider })`.
- Nunca uses la política `ALL` en RLS; prefiere `SELECT`, `INSERT`, `UPDATE`, `DELETE` por separado para control granular.
- En políticas RLS, usa `USING` para condiciones contra datos existentes y `WITH CHECK` para condiciones contra datos futuros.
- Siempre agrega el filtro explícito en la consulta (ej: `.eq('team_id', 1)`) aunque RLS ya lo aplique, para mejorar rendimiento.
- Para verificar la clave pública de un JWT: ve a Supabase Dashboard → Settings → JWT keys.

## Errores comunes / gotchas que menciona

- No confundir autenticación (obtener el ID badge) con autorización (verificar que eres quien dices ser al mostrar el badge).
- El JWT emitido por Supabase es un estándar que puede ser verificado por cualquier servidor externo usando bibliotecas estándar, no solo por servicios de Supabase.
- En políticas RLS de tipo `UPDATE`, se deben especificar tanto `USING` como `WITH CHECK`; en `SELECT` y `DELETE` solo `USING`; en `INSERT` solo `WITH CHECK`.
- Aunque RLS filtra automáticamente, no agregar el filtro explícito en la consulta resulta en menor rendimiento de Postgres.