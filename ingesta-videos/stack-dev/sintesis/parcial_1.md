# DOCTRINA ACCIONABLE DE PRODUCCIÓN — SvelteKit 5 / FastAPI / Supabase

## 1) Svelte 5 Runes ($state / $derived / $effect / $props / $bindable)

### $state — Reactividad profunda por proxy

- **Declarar estado reactivo:**
  ```svelte
  let count = $state(0);
  ```
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

- **Reactividad profunda:** `$state([...])` / `$state({...})` crea proxies recursivos; `todos[0].done = x` y `todos.push(...)` disparan updates.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

- **Gotcha destructuring:** `let { done } = todos[0]` ROMPE la reactividad. No destructurar estado reactivo que vas a mutar.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

- **Clases:** los instances NO se proxifican → usar `$state` en los campos:
  ```svelte
  class Todo {
    done = $state(false);
    constructor(text) { this.text = $state(text); }
  }
  ```
  Los métodos pierden `this` → llamar con arrow: `onclick={() => todo.reset()}` (NO `onclick={todo.reset}`).
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

- **`$state.raw`:** solo reasignación, sin proxy (menos overhead para estructuras grandes/inmutables): `person = {...}` funciona, `person.age += 1` NO.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

- **`$state.snapshot(x)`:** extrae objeto plano (no-proxy) para libs externas / `structuredClone`.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

- **Compartir estado entre módulos (pass-by-value):** NO se puede `export let count = $state(0)` + reasignar. Soluciones:
  - Exportar objeto y mutar propiedad: `export const counter = $state({count:0}); export function increment(){ counter.count += 1 }`
  - Getter/setter: `export function getCount(){ return count }`
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$state)

### $derived — Valores computados

- **Declarar valor derivado:**
  ```svelte
  let count = $state(0);
  let doubleCount = $derived(count * 2);
  ```
  (Fuente: Code Hub — https://youtu.be/3AIPUA1vPfM)

- **`$derived.by()`** para lógica compleja:
  ```svelte
  let doubled = $derived.by(() => count * 2);
  ```
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **Regla:** Nunca asignar directamente a una variable declarada con `$derived()` — son valores computados de solo lectura.
  (Fuente: Code Hub — https://youtu.be/3AIPUA1vPfM)

### $effect — Efectos secundarios

- **Uso básico:**
  ```svelte
  $effect(() => {
    console.log('current count:', count);
  });
  ```
  (Fuente: HunterScript — https://youtu.be/4GT5-f1Hh_w)

- **Cleanup:** retornar función → corre antes de re-ejecutar, al desmontar, o al re-correr el effect padre:
  ```svelte
  $effect(() => {
    const i = setInterval(...);
    return () => clearInterval(i);
  });
  ```
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **`$effect.pre`:** corre ANTES del update del DOM (ej autoscroll/medir antes de pintar).
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **`$effect.root`:** scope manual sin auto-cleanup; retorna `destroy()` para limpiar a mano.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **⛔ NUNCA usar $effect para sincronizar estado.** Anti-patrón: `$effect(() => { doubled = count*2 })`. Correcto: `let doubled = $derived(count*2)`.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **Loops infinitos:** no leer y escribir el mismo `$state` dentro del effect; si es inevitable, envolver la escritura en `untrack()`.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **Uso legítimo (escape hatch):** analytics, manipulación directa del DOM, integrar libs de terceros, canvas. NO gestión de estado de rutina.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **Tracking automático** de `$state`/`$derived`/`$props` LEÍDOS síncronamente. Lo leído tras `await`/`setTimeout` NO se trackea.
  (Fuente: Svelte Docs oficial — https://svelte.dev/docs/svelte/$effect)

- **`$effect` como reemplazo de `onMount`:**
  ```svelte
  $effect(() => {
    console.log('Component mounted');
  });
  ```
  (Fuente: HunterScript — https://youtu.be/4GT5-f1Hh_w)

---

## 2) SvelteKit (Routing, Load, Form Actions, use:enhance, Hooks, Auth)

### Form Actions

- **Definir acción por defecto en `+page.server.ts`:**
  ```typescript
  export const actions = {
    default: async ({ request }) => {
      const formData = await request.formData();
      console.log(formData);
    }
  };
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Acciones nombradas (varios forms):**
  ```typescript
  export const actions = {
    login: async() => {},
    register: async() => {}
  };
  ```
  → `<form method="POST" action="?/register">`
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Validación con `fail`:**
  ```typescript
  import { fail } from '@sveltejs/kit';

  if (name.length < 2) {
    return fail(400, {
      error: true,
      message: 'Name must be at least 2 characters',
      name, email, company, job
    });
  }
  ```
  (Fuente: Huntabyte — https://youtu.be/52nXUwQWeKI)

- **Éxito:** `return { success: true }` (objeto serializable).
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Redirección tras éxito:**
  ```typescript
  import { redirect } from '@sveltejs/kit';
  throw redirect(303, '/contacts');
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Acceder al objeto `form` en el cliente (`+page.svelte`):**
  ```svelte
  <script lang="ts">
    let { form } = $props();
  </script>
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Poblar inputs con datos retornados tras validación fallida:**
  ```svelte
  <input name="name" value={form?.name ?? ''} />
  ```
  (Fuente: Huntabyte — https://youtu.be/52nXUwQWeKI)

### use:enhance (Progressive Enhancement)

- **Básico:**
  ```svelte
  <script lang="ts">
    import { enhance } from '$app/forms';
  </script>
  <form method="POST" use:enhance>
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Custom callback:**
  ```svelte
  <form
    method="POST"
    use:enhance={({ form, data, action, cancel }) => {
      return async ({ result, update }) => {
        if (result.type === 'redirect') goto(result.location);
        else await applyAction(result);
      };
    }}
  >
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Resetear formulario solo en éxito:**
  ```svelte
  use:enhance={({ form }) => {
    return async ({ result, update }) => {
      if (result.type === 'success') form.reset();
      update();
    };
  }}
  ```
  (Fuente: Huntabyte — https://youtu.be/52nXUwQWeKI)

### Load: +page.ts vs +page.server.ts

- **+page.server.ts** (solo servidor; aquí van las actions y acceso a DB/cookies):
  ```typescript
  export const load = async ({cookies}) => {
    return { user: await db.getUserFromSession(cookies.get('sessionid')) };
  };
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **+page.ts** (universal, corre también en cliente):
  ```typescript
  export const load = async ({fetch}) => {
    return { data: await fetch('/api/data').then(r=>r.json()) };
  };
  ```
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

- **Regla:** datos sensibles/secretos/DB → server load; fetch de APIs públicas → universal load.
  (Fuente: SvelteKit Docs oficial — https://svelte.dev/docs/kit/form-actions)

---

## 3) FastAPI (Estructura por capas, Pydantic v2, JWT)

### Estructura de aplicación grande

```
app/
  __init__.py
  main.py            # entrypoint, incluye routers
  dependencies.py    # dependencias compartidas
  routers/
    __init__.py
    items.py         # APIRouter de items
    users.py
  internal/
    admin.py
```
(Fuente: FastAPI Docs oficial — https://fastapi.tiangolo.com/tutorial/bigger-applications/)

### APIRouter

```python
from fastapi import APIRouter, Depends, HTTPException
from ..dependencies import get_token_header

router = APIRouter(
    prefix="/items",
    tags=["items"],
    dependencies=[Depends(get_token_header)],
    responses={404: {"description": "Not found"}},
)

@router.get("/")
async def read_items(): ...

@router.get("/{item_id}")
async def read_item(item_id: str):
    if item_id not in db:
        raise HTTPException(404, "Item not found")
    ...
```
(Fuente: FastAPI Docs oficial — https://fastapi.tiangolo.com/tutorial/bigger-applications/)

### Dependencias compartidas (dependencies.py)

```python
from typing import Annotated
from fastapi import Header, HTTPException

async def get_token_header(x_token: Annotated[str, Header()]):
    if x_token != "...":
        raise HTTPException(400, "X-Token invalid")
```
(Fuente: FastAPI Docs oficial — https://fastapi.tiangolo.com/tutorial/bigger-applications/)

### main.py (incluir routers)

```python
from fastapi import Depends, FastAPI
from .routers import items, users
from .internal import admin

app = FastAPI(dependencies=[Depends(get_query_token)])
app.include_router(users.router)
app.include_router(items.router)
app.include_router(admin.router, prefix="/admin", tags=["admin"],
                   dependencies=[Depends(get_token_header)])
```
(Fuente: FastAPI Docs oficial — https://fastapi.tiangolo.com/tutorial/bigger-applications/)

### Patrones clave

- **Imports relativos:** `.` mismo paquete, `..` padre.
- **Evitar colisión:** importar el MÓDULO (`from .routers import items`), no el `router` suelto (el segundo pisa al primero).
- Un mismo router se puede incluir con distintos prefijos (`/api/v1`, `/api/latest`); routers pueden anidar otros routers.
- Orden de ejecución de dependencias: router → decorador → parámetros. Todas antes de la función.
- Correr: `fastapi dev`.
(Fuente: FastAPI Docs oficial — https://fastapi.tiangolo.com/tutorial/bigger-applications/)

---

## 4) Supabase + RLS + Postgres

### Habilitar RLS

```sql
alter table <schema>.<tabla> enable row level security;
```
**OBLIGATORIO** en toda tabla de un schema expuesto (public). Sin esto, ninguna policy aplica.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

### Policies

- **SELECT** → `using ( (select auth.uid()) = user_id )`
- **INSERT** → `with check ( (select auth.uid()) = user_id )`
- **UPDATE** → `using(...)` (filas existentes) + `with check(...)` (filas modificadas). REQUIERE una policy SELECT correspondiente o el update falla en silencio.
- **DELETE** → `using ( (select auth.uid()) = user_id )`
- `using` sin `with check` aplica a ambos.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

### Contexto de auth

- Roles: `anon` (no autenticado) · `authenticated` (logueado). Especificar SIEMPRE con `to authenticated`.
- **Guardia null:** `auth.uid()` retorna null si no hay usuario → `null = user_id` siempre false. Usar:
  ```sql
  using (auth.uid() is not null and auth.uid() = user_id)
  ```
- **`auth.jwt()`:** usar `app_metadata` (inmutable) para autorización, NUNCA `user_metadata` (mutable por el usuario = inseguro). Ej multi-tenant:
  ```sql
  using ( team_id in (select auth.jwt()->'app_metadata'->'teams') )
  ```
  Ojo: el JWT no siempre está "fresco" tras cambiar metadata.
- **MFA:** policy restrictiva `using ( (select auth.jwt()->>'aal') = 'aal2' )`.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

### Performance (crítico — benchmarks reales)

1. **Envolver funciones en `(select ...)`:** `(select auth.uid()) = user_id` → +94,97% (crea initPlan, cachea por statement no por fila).
2. **Indexar** columnas de la policy: `create index on test using btree (user_id)` → +99,94%.
3. **Filtro cliente explícito:** `.eq('user_id', userId)` además de la policy → +94,74%.
4. **Especificar `to`:** bloquea anon temprano → +99,78%.
5. **Security definer function** para lógica compleja (evita overhead RLS); NUNCA en schema expuesto.
6. **Minimizar joins:** invertir la lógica (`team_id in (select team_id from team_user where user_id=(select auth.uid()))`) → +99,78%.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

### Errores comunes

1. Olvidar habilitar RLS.
2. UPDATE sin policy SELECT (falla mudo).
3. Usar user_metadata para autorización.
4. auth.uid() sin guardia null.
5. Views que saltan RLS (<PG15; en 15+ usar `security_invoker=true`).
6. Ignorar el overhead de performance.
- **service_role** salta RLS: solo backend, NUNCA al cliente.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

---

## 5) Testing (Playwright E2E, Vitest, Unit)

### Playwright — Configuración

```bash
pnpm create playwright
```
Esto genera `playwright.config.ts` con directorio de tests y navegadores.
(Fuente: Tobi Mey — https://youtu.be/-uXBWrmpK80)

### Playwright — Estructura básica de test

```typescript
import { test, expect } from '@playwright/test';

test.describe('home page', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto('http://localhost:3000');
  });

  test('should have correct metadata and elements', async ({ page }) => {
    await expect(page).toHaveTitle('Cosden Solutions');
    await expect(page.getByRole('heading', { name: 'home page' })).toBeVisible();
  });
});
```
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

### Playwright — Selectores recomendados

- **`getByRole`** como selector preferido para elementos semánticos (heading, link, button) con `{ name: 'texto' }`.
- **`getByPlaceholder`** para inputs con placeholder único.
- **`getByTestId`** con `data-testid` en el HTML para elementos sin rol semántico claro.
- **`.nth(0)`** para acceder al primer elemento de una colección.
- **`.fill()`** para establecer valor de input (no `type()` a menos que necesites simular escritura carácter por carácter).
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

### Playwright — Verificaciones comunes

```typescript
await expect(page).toHaveTitle('Cosden Solutions');
await expect(page.getByRole('heading')).toBeVisible();
await expect(page.getByTestId('item')).toHaveText('item one');
await expect(page.getByTestId('items-list')).toBeEmpty();
await expect(input).toBeEmpty();
```
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

### Playwright — GitHub Actions

```yaml
name: End to End Tests
on:
  pull_request:
    branches: [main]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
      - run: pnpm install
      - run: pnpm exec playwright install
      - run: pnpm build
      - run: pnpm exec playwright test
```
(Fuente: Tobi Mey — https://youtu.be/-uXBWrmpK80)

### Reglas para tests

- **Usa `test.describe`** para agrupar tests relacionados.
- **Usa `test.beforeEach`** para navegar a la URL inicial de ese grupo.
- **Cada test debe comenzar con `page.goto()`** (directamente o mediante `beforeEach`) porque cada test corre en una sesión de navegador aislada.
- **Nunca** asumas que el estado de un test persiste en otro; cada test es independiente.
- **Usa `data-testid`** para elementos sin rol semántico.
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

---

## 6) Deploy y Producción (Vercel, Fly, Docker, Env, Performance, Observabilidad, Rate Limiting)

*(Nota: El contenido proporcionado no incluye documentación específica sobre deploy, Docker, observabilidad o rate limiting. Solo se menciona la integración con GitHub Actions para testing.)*

### GitHub Actions para CI/CD

- **Ejecutar tests automáticamente en cada pull request**, no localmente (para no olvidar ejecutarlos).
- **Workflow YAML** configurado en `.github/workflows/e2e.yml` (ver sección Testing).
(Fuente: Tobi Mey — https://youtu.be/-uXBWrmpK80)