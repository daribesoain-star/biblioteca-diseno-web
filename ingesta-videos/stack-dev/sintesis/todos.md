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
(Fuente: Tobi Mey — https://youtu.be/-uXBWrmpK80)# DOCTRINA ACCIONABLE DE PRODUCCIÓN

## 1) Svelte 5 Runes ($state/$derived/$effect/$props/$bindable)

### Declaración de estado reactivo
- Usa `$state()` para variables reactivas dentro del componente:
  ```svelte
  let count = $state(0);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Los arrays se pueden mutar directamente gracias a proxies:
  ```svelte
  let arr = $state([1, 2, 3]);
  arr.push(4); // Funciona sin reassignar
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Valores derivados
- Usa `$derived` para valores que dependen de otro estado reactivo:
  ```svelte
  let b = $derived(a * 2);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Usa `$derived.by` para lógica más compleja:
  ```svelte
  let b = $derived.by(() => a * 2);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Retornar múltiples valores desde `$derived.by`:
  ```svelte
  let b = $derived.by(() => {
    return {
      double: a * 2,
      quadruple: a * 4
    };
  });
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- **Nunca** mutes estado dentro de `$derived`. El compilador lanza error: "updating state inside `$derived` is forbidden".
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- **Nunca** uses `$effect` para sincronizar valores entre sí. Los efectos se ejecutan en la cola de microtareas, produciendo valores desactualizados.
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Efectos secundarios
- Usa `$effect` solo para efectos secundarios (localStorage, console.log, fetch):
  ```svelte
  $effect(() => {
    console.log('a actualizado:', a);
    localStorage.setItem('a', String(a));
  });
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Usa `$effect.pre` para ejecutar código ANTES de que el DOM se actualice:
  ```svelte
  $effect.pre(() => {
    console.log('Valor anterior:', previousCount);
    previousCount = count;
  });
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **Nunca** uses `$effect` para lógica que solo debe ejecutarse una vez al montar; usa `onMount` en su lugar.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

### Props y bindings
- Usa `$props()` para recibir props desde el componente padre:
  ```svelte
  interface Props {
    title: string;
    description: string;
    rating: number;
    isActive: boolean;
  }
  let { title, description, rating, isActive }: Props = $props();
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- Usa valores por defecto en la desestructuración para props opcionales:
  ```svelte
  let { type = 'info', message, dismissible = false }: Props = $props();
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- Usa `$bindable(valorPorDefecto)` para permitir binding bidireccional desde el padre:
  ```svelte
  import { bindable } from 'svelte';
  let { value = $bindable(0) }: Props = $props();
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **Nunca** declares props sin interfaz TypeScript si esperas múltiples props; siempre define `interface Props`.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

### Ciclo de vida
- Usa `onMount` para ejecutar código después del primer render:
  ```svelte
  import { onMount, onDestroy } from 'svelte';
  onMount(() => {
    console.log('Componente montado en el DOM');
    return () => { console.log('Cleanup de onMount'); };
  });
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- Usa `onDestroy` para limpiar recursos (intervalos, observadores, suscripciones):
  ```svelte
  onDestroy(() => {
    console.log('Componente siendo eliminado del DOM');
  });
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

### Compartir estado global
- Exporta estado global desde archivos `.svelte.ts` o `.svelte.js`:
  ```ts
  // store.svelte.ts
  export let globalState = $state(0);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Clases con estado reactivo
- Crea clases con estado reactivo y getters/setters personalizados:
  ```svelte
  class Temperature {
    #celsius = $state(0);
    #fahrenheit = $state(32);
    get celsius() { return this.#celsius; }
    set celsius(value) {
      this.#celsius = value;
      this.#fahrenheit = value * 9/5 + 32;
    }
    get fahrenheit() { return this.#fahrenheit; }
    set fahrenheit(value) {
      this.#fahrenheit = value;
      this.#celsius = (value - 32) * 5/9;
    }
  }
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Gotchas
- **Olvidar importar `bindable` desde 'svelte'** cuando se usa `$bindable()` en un componente hijo.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **No usar `bind:` en el padre** cuando el hijo tiene `$bindable`: el binding solo funciona si el padre usa `bind:value={variable}`.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **Usar `this` en métodos de clase sin bindear:** Al pasar un método como callback, `this` apunta al elemento DOM. Solución: usar arrow functions.
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- **Los derivados son readonly:** No se puede usar `bind:value` directamente con `$derived`. Se necesita un getter/setter.
  — Joy of Code — https://youtu.be/7N4maEDhy4w

---

## 2) SvelteKit (Routing, Load, Form Actions, Auth)

### Routing y archivos
- Usa `+page.svelte` en lugar de `index.svelte` o `about.svelte` para definir rutas.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

- Usa `+layout.svelte` en lugar de `__layout.svelte` para layouts compartidos.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

- Usa carpetas con paréntesis `(grupo)` cuando necesites agrupar layouts sin afectar la URL.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

### Load functions
- Define la load function en `+page.ts` o `+page.server.ts` (archivo hermano del page component), no en un bloque `context module`.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

- Load function básica con ruta dinámica:
  ```typescript
  // users/[id]/+page.ts
  import type { PageLoad } from './$types';
  export const load: PageLoad = async ({ params, fetch }) => {
    const response = await fetch(`https://api.example.com/users/${params.id}`);
    if (!response.ok) throw new Error('Failed to fetch user');
    const user = await response.json();
    return { user };
  };
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `+page.server.ts` cuando necesites acceso a variables de entorno, bases de datos, sistema de archivos o secretos del servidor.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `+page.ts` (universal) cuando el fetching pueda hacerse desde cliente o servidor, como APIs públicas.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `Promise.all()` para fetching paralelo de datos independientes:
  ```typescript
  const [postResponse, commentResponse] = await Promise.all([
    fetch(`https://api.example.com/posts/${postId}`),
    fetch(`https://api.example.com/posts/${postId}/comments`)
  ]);
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `await` secuencial cuando un fetch dependa del resultado de otro:
  ```typescript
  const post = await postResponse.json();
  const authorResponse = await fetch(`https://api.example.com/users/${post.userId}`);
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Manejo de errores
- Usa `throw error(statusCode, message)` de `@sveltejs/kit` para errores controlados:
  ```typescript
  import { error } from '@sveltejs/kit';
  if (!userId || isNaN(Number(userId))) throw error(400, 'Invalid user ID');
  if (userResponse.status === 404) throw error(404, 'User not found');
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Crea `+error.svelte` en el mismo nivel de ruta para páginas de error personalizadas:
  ```svelte
  <script lang="ts">
    import { page } from '$app/stores';
    function retry() { location.reload(); }
    function goHome() { goto('/'); }
  </script>
  <h1>{$page.status === 404 ? 'Page Not Found' : 'Something went wrong'}</h1>
  <p>{$page.error?.message ?? 'An unexpected error occurred'}</p>
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Invalidación de datos
- Usa `depends('app:key')` en load functions para crear claves de invalidación personalizadas:
  ```typescript
  export const load: PageLoad = async ({ depends, fetch }) => {
    depends('app:todos');
    // ... fetch data
    return { todos, lastUpdated: new Date().toISOString() };
  };
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `invalidate('app:key')` para recargar load functions específicas:
  ```svelte
  import { invalidate, invalidateAll } from '$app/navigation';
  function refreshTodos() { invalidate('app:todos'); }
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `invalidateAll()` solo cuando múltiples datos puedan haber cambiado.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- **Nunca** uses `invalidateAll()` cuando solo necesitas recargar una parte específica de los datos; es ineficiente.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Componente de página
- Exporta `data` como prop en el componente Svelte para recibir los datos retornados por `load`:
  ```svelte
  <script lang="ts">
    import type { PageData } from './$types';
    let { data }: { data: PageData } = $props();
  </script>
  <h1>{data.user.name}</h1>
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Gotchas
- **Error de tipos en `$types`:** Si `import type { PageLoad } from './$types'` da error, ejecuta la app (`npm run dev`) para que SvelteKit genere los tipos automáticamente.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- **No validar parámetros de ruta:** Usa `isNaN(Number(userId))` para validar.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- **No limpiar intervalos:** Usa `onMount` con cleanup `return () => clearInterval(...)` para evitar memory leaks.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

---

## 3) FastAPI (Estructura por capas, Async, Pydantic v2, JWT)

### Estructura de directorios (Clean Architecture)
```
source/
├── main.py
├── api.py
├── logging.py
├── rate_limiting.py
├── exceptions.py
├── entities/
│   ├── todo.py
│   └── user.py
├── database/
│   └── core.py
├── auth/
│   ├── controller.py
│   ├── service.py
│   └── model.py
├── users/
│   ├── controller.py
│   ├── service.py
│   └── model.py
└── todos/
    ├── controller.py
    ├── service.py
    └── model.py
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### main.py
```python
from database import engine, Base
from entities import *
from api import app
# Solo descomentar cuando se crean nuevas tablas por primera vez
# Base.metadata.create_all(bind=engine)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### api.py (montar routers)
```python
from fastapi import FastAPI
from auth.controller import router as auth_router
from users.controller import router as users_router
from todos.controller import router as todos_router

app = FastAPI()
app.include_router(auth_router)
app.include_router(users_router)
app.include_router(todos_router)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### database/core.py
```python
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
from dotenv import load_dotenv
import os

load_dotenv()
DATABASE_URL = os.getenv("DATABASE_URL", "sqlite:///./test.db")
engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Pydantic v2 models
- Usa `from_attributes = True` en la clase `Config` para permitir conversión desde objetos SQLAlchemy:
  ```python
  from pydantic import BaseModel
  from uuid import UUID
  from typing import Optional
  from datetime import datetime

  class TodoResponse(BaseModel):
      id: UUID
      description: str
      is_completed: bool
      completed_at: Optional[datetime] = None
      
      class Config:
          from_attributes = True
  ```
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

### Auth JWT con bcrypt
```python
from jose import JWTError, jwt
from passlib.context import CryptContext
from datetime import datetime, timedelta
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer

SECRET_KEY = "your-secret-key"  # Mover a .env
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="auth/token")

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)

def get_password_hash(password: str) -> str:
    return pwd_context.hash(password)

def create_access_token(data: dict, expires_delta: timedelta = None):
    to_encode = data.copy()
    expire = datetime.utcnow() + (expires_delta or timedelta(minutes=15))
    to_encode.update({"exp": expire})
    return jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)

def get_current_user(token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)):
    token_data = verify_token(token)
    user = db.query(User).filter(User.id == token_data.user_id).first()
    if user is None:
        raise HTTPException(status_code=401, detail="User not found")
    return user
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Controladores con APIRouter
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from auth import service, models
from rate_limiting import limiter
from fastapi import Request

router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register", response_model=models.Token)
@limiter.limit("5/hour")
def register_user(request: Request, user: models.UserRegister, db: Session = Depends(get_db)):
    return service.register_user(db, user)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Rate limiting con slowapi
```python
from slowapi import Limiter
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Async en FastAPI
- Usa `async` solo si la librería que llamas es asíncrona. Si no estás seguro, no pongas `async` delante de la función; FastAPI la ejecutará en un thread pool.
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- Para tareas I/O-bound, usa librerías asíncronas nativas y `asyncio.gather`:
  ```python
  import httpx
  import asyncio

  @app.post("/good-requests")
  async def good_requests():
      async with httpx.AsyncClient() as client:
          tasks = [client.get(url) for url in URL_LIST]
          await asyncio.gather(*tasks)
      return "done"
  ```
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- Para tareas CPU-bound, usa `loop.run_in_executor` con `ProcessPoolExecutor`:
  ```python
  import asyncio
  from concurrent.futures import ProcessPoolExecutor

  @app.post("/cpu-process")
  async def cpu_process():
      loop = asyncio.get_event_loop()
      with ProcessPoolExecutor() as executor:
          result = await loop.run_in_executor(executor, cpu_bound_task, data)
      return {"result": result}
  ```
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- Para tareas CPU-bound que no necesitan devolver resultado inmediato, usa `BackgroundTasks`:
  ```python
  from fastapi import BackgroundTasks

  @app.post("/background-calc")
  async def background_calc(background_tasks: BackgroundTasks):
      background_tasks.add_task(heavy_calculation, "file.txt")
      return {"status": "started"}
  ```
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- **Nunca** escribas `async` delante de una función que usa `requests`, `open()` síncrono, `time.sleep()`, o cualquier librería síncrona. Bloquearás el event loop.
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

### Gotchas
- **Error de importación `models` vs `model`:** Nombra el archivo `model.py` e impórtalo como `model` (singular), no `models`.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

- **`Base.metadata.create_all` rompe pruebas:** Solo debe descomentarse temporalmente para crear nuevas tablas.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

- **Rate limiter requiere `request` aunque no se use:** El parámetro `request: Request` es necesario para que el rate limiter pueda obtener la IP del cliente.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

- **No olvidar `__init__.py`:** Cada paquete Python necesita un archivo `__init__.py` (aunque esté vacío) para que los módulos sean importables.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

---

## 4) Supabase + RLS + Postgres

### Habilitar RLS
- Activar RLS en una tabla desde el Dashboard: `Authentication > Policies`. Al activarlo, la tabla queda completamente bloqueada (deniega SELECT, INSERT, UPDATE, DELETE por defecto).
  — Supabase — https://youtu.be/Ow_Uzedfohk

### Políticas SELECT/INSERT/UPDATE/DELETE
- Política básica para dueño del recurso (ALL operations):
  ```sql
  CREATE POLICY "Enable all actions for users based on their user id"
  ON public.post
  FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política SELECT para posts publicados:
  ```sql
  -- Nombre: "Enable user to select a published post"
  -- USING expression:
  (is_published = true)
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política SELECT con subconsulta a otra tabla (comentarios visibles solo si el post padre es visible):
  ```sql
  -- Tabla: comment, Operación: SELECT
  -- USING expression:
  EXISTS (
    SELECT 1
    FROM post
    WHERE post.id = comment.post_id
  )
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política INSERT con subconsulta + restricción de dueño:
  ```sql
  -- Tabla: comment, Operación: INSERT
  -- USING expression:
  (EXISTS (
    SELECT 1
    FROM post
    WHERE post.id = comment.post_id
  ) AND auth.uid() = comment.user_id)
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política DELETE para moderación (dueño del post elimina comentarios):
  ```sql
  -- Tabla: comment, Operación: DELETE
  -- USING expression:
  auth.uid() IN (
    SELECT user_id
    FROM post
    WHERE post.id = comment.post_id
  )
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

### Sincronización auth.users con tabla pública
- Función trigger con security definer:
  ```sql
  CREATE OR REPLACE FUNCTION handle_public_user()
  RETURNS trigger
  LANGUAGE plpgsql
  SECURITY DEFINER
  AS $$
  BEGIN
    INSERT INTO public.users (supabase_id, email)
    VALUES (
      NEW.id,
      NEW.raw_user_meta_data ->> 'email'
    )
    ON CONFLICT (email) DO UPDATE
    SET supabase_id = NEW.id;
    RETURN NEW;
  END;
  $$;
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

- Trigger en auth.users:
  ```sql
  CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION handle_public_user();
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

### Vistas con RLS
- Usa `security_invoker = true` en vistas para que respeten RLS de las tablas subyacentes:
  ```sql
  CREATE OR REPLACE VIEW emails_with_folder_and_users
  WITH (security_invoker = true) AS
  -- ... definición original de la vista ...
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

### Políticas con subconsultas anidadas
- Política DELETE en tabla relacionada validando sender via subconsulta anidada:
  ```sql
  -- Tabla: email_folders, Operación: DELETE
  -- USING expression:
  auth.uid() IN (
    SELECT supabase_id FROM public.users
    WHERE id IN (
      SELECT sender_id FROM emails
      WHERE emails.id = email_id
    )
  )
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

### Reglas clave
- **Usa `auth.uid()`** para identificar al usuario autenticado. Es una función especial de Supabase que devuelve el ID del usuario actual.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Usa `EXISTS (SELECT 1 FROM ...)`** para subconsultas de autorización. `SELECT 1` es más eficiente que `SELECT *`.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Nunca re-implementes políticas de una tabla en otra.** En lugar de duplicar la lógica de visibilidad de posts en la tabla de comentarios, haz una subconsulta a la tabla `post`.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Siempre agrega `WITH CHECK` en políticas de INSERT y UPDATE.** La condición en `USING` controla qué filas existentes se pueden modificar; `WITH CHECK` controla qué nuevas filas se pueden crear.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Usa `security definer`** en funciones trigger del sistema (como handle_public_user) para que ejecuten con privilegios de Postgres, no del usuario.
  — Supabase — https://youtu.be/PdEutzhsrws

### Gotchas
- **Las vistas por defecto bypassan RLS;** hay que agregar explícitamente `WITH (security_invoker = true)`.
  — Supabase — https://youtu.be/PdEutzhsrws

- **Olvidar que RLS bloquea todo por defecto:** Al habilitar RLS en una tabla, inmediatamente se deniegan todas las operaciones hasta que se creen políticas explícitas.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **No proteger el `user_id` en INSERT:** Si solo verificas que el post es visible, un usuario podría insertar un comentario con `user_id` de otro usuario. La solución es agregar `AND auth.uid() = comment.user_id`.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Confundir `USING` con `WITH CHECK`:** `USING` se aplica a filas existentes (SELECT, UPDATE, DELETE), `WITH CHECK` se aplica a nuevas filas (INSERT, UPDATE).
  — Supabase — https://youtu.be/Ow_Uzedfohk

---

## 5) Testing

### FastAPI: Pruebas unitarias con conftest.py
- Usa SQLite para pruebas y override de dependencias:
  ```python
  # tests/conftest.py
  import pytest
  from sqlalchemy import create_engine
  from sqlalchemy.orm import sessionmaker
  from database.core import Base, get_db
  from fastapi.testclient import TestClient
  from api import app

  SQLALCHEMY_DATABASE_URL = "sqlite:///./test.db"
  engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False})
  TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
  Base.metadata.create_all(bind=engine)

  def override_get_db():
      try:
          db = TestingSessionLocal()
          yield db
      finally:
          db.close()

  app.dependency_overrides[get_db] = override_get_db

  @pytest.fixture
  def client():
      return TestClient(app)

  @pytest.fixture
  def db_session():
      db = TestingSessionLocal()
      yield db
      db.close()
  ```
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

### FastAPI: Pruebas de servicios
```python
# tests/test_auth_service.py
def test_verify_password():
    hashed = "$2b$12$..."  # Hash de bcrypt
    assert verify_password("testpassword", hashed) == True

def test_create_access_token():
    token = create_access_token(data={"sub": "test-user-id"})
    assert token is not None
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### FastAPI: Pruebas E2E con TestClient
```python
# tests/e2e/test_auth_endpoints.py
def test_register_user(client):
    response = client.post("/auth/register", json={
        "email": "test@example.com",
        "first_name": "Test",
        "last_name": "User",
        "password": "password123"
    })
    assert response.status_code == 200
    assert "access_token" in response.json()

def test_login(client):
    response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    assert response.status_code == 200
    assert "access_token" in response.json()
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### FastAPI: Pruebas de endpoints protegidos
```python
# tests/e2e/test_todos_endpoints.py
def test_create_todo(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.post("/todos/", json={
        "description": "Test todo",
        "priority": 1
    }, headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert "id" in response.json()
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Comandos
```bash
# Ejecutar pruebas
pytest
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

---

## 6) Deploy y Producción

### Vercel
- **No toques `svelte.config.js` ni crees `vercel.json`.** SvelteKit 5 detecta Vercel como adaptador automáticamente.
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Cada push a `main` = deploy automático de producción.**
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Cada Pull Request genera un preview environment automático** con su propia URL.
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Configura las environment variables en Vercel antes del primer deploy** si tu app las necesita.
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Para rollback:** usa el botón "Roll back" en el dashboard de Vercel (no requiere rebuild).
  — Vercel — https://youtu.be/QYZ1s_x5nUM

### DigitalOcean App Platform
- Usa el adaptador Node (`sveltekit-adapter`) cuando despliegues en DigitalOcean App Platform.
  — Elans X — https://youtu.be/9FrC0kTTw64

- Agrega comando `start` en `package.json`:
  ```json
  "scripts": {
    "start": "node build/index.js"
  }
  ```
  — Elans X — https://youtu.be/9FrC0kTTw64

- Configura el puerto `3000` en la sección `Network` de DigitalOcean.
  — Elans X — https://youtu.be/9FrC0kTTw64

- Activa `Auto Deploy` para que cada push a main despliegue automáticamente.
  — Elans X — https://youtu.be/9FrC0kTTw64

### Docker + FastAPI
```dockerfile
# Dockerfile
FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY source/ ./source/
EXPOSE 8000
CMD ["uvicorn", "source.main:app", "--host", "0.0.0.0", "--port", "8000"]
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

```yaml
# docker-compose.yml
version: '3.8'
services:
  postgres:
    image: postgres:latest
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: clean_fastapi
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data
  app:
    build: .
    ports:
      - "8000:8000"
    environment:
      DATABASE_URL: postgresql://user:password@postgres:5432/clean_fastapi
    depends_on:
      - postgres
volumes:
  postgres_data:
```
— Eric Roby — https://# DOCTRINA ACCIONABLE DE PRODUCCIÓN

## 1) Svelte 5 Runes ($state/$derived/$effect/$props/$bindable)

### $props rune (reemplaza `export let`)

- Declara props con tipado estricto y valores por defecto:
```svelte
<script lang="ts">
  let { title = undefined, price }: { title?: string; price: number } = $props();
</script>
```
- `title` es opcional (valor por defecto `undefined`), `price` es requerido.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Usa `$props()` en lugar de `export let` para declarar props en Svelte 5. `export` está deprecado.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

### Snippets ({#snippet} y {@render}) reemplazan <slot>

- Crear y renderizar un Snippet en la misma página:
```svelte
{#snippet greetings()}
  <p>Hello world</p>
{/snippet}

{@render greetings()}
```
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Snippet con parámetros:
```svelte
{#snippet greetings(personName: string)}
  <p>Hello {personName}</p>
{/snippet}

{@render greetings('John')}
```
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Pasar Snippet a componente hijo (prop tipo `Snippet`):
  - Componente hijo (`Button.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { button }: { button?: Snippet } = $props();
    </script>

    {#if button}
      {@render button()}
    {/if}
    ```
  - Página padre:
    ```svelte
    <Button>
      {#snippet button()}
        <button class="bg-blue-500 px-4 py-2">Enviar</button>
      {/snippet}
    </Button>
    ```
  - **Regla:** El nombre del snippet en el padre debe coincidir exactamente con el nombre de la prop de tipo `Snippet` en el componente hijo.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Tipar snippets que reciben parámetros desde el hijo:
```svelte
<script lang="ts">
  import type { Snippet } from 'svelte';
  let { header }: { header?: Snippet<[string, string]> } = $props();
</script>
```
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Renderiza el snippet siempre dentro de un `{#if snippet}` para evitar errores si el padre no lo provee.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

### Gotchas de Svelte 5

- **Olvidar renderizar el snippet:** Si creas un `{#snippet}` pero no lo renderizas con `{@render}`, no se mostrará nada en pantalla.
- **No pasar parámetros requeridos al renderizar:** Si el snippet espera un parámetro y no lo pasas en `{@render}`, Svelte mostrará un error.
- **Confundir el nombre del snippet con el nombre de la prop:** El snippet definido en el padre debe llamarse exactamente igual que la prop de tipo `Snippet` en el componente hijo.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

---

## 2) SvelteKit (Routing, Load, Form Actions, use:enhance, Auth)

### Form Actions con tipado TypeScript

- Archivo `+page.server.ts` con action nombrada:
```typescript
export const actions = {
  act: async ({ request }) => {
    const data = await request.formData();
    const firstName = data.get('firstName');
    const lastName = data.get('lastName');
    const age = data.get('age');
  }
};
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Uso de `fail` para errores:
```typescript
import { fail } from '@sveltejs/kit';

if (age === 'Old AF') {
  return fail(400, { tooOld: true, type: 'fail', firstName, lastName, age });
}
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Tipado completo de form actions:
```typescript
import type { Actions, RequestEvent, ActionFailure } from '@sveltejs/kit';

interface MyData {
  tooOld: boolean;
  type: string;
  firstName: FormDataEntryValue;
  lastName: FormDataEntryValue;
  age: FormDataEntryValue | string;
  [key: string]: any; // índice de firma para ActionFailure
}

export const actions: Actions = {
  act: async ({ request }: { request: RequestEvent }): Promise<MyData | ActionFailure<MyData>> => {
    // ...
    return { tooOld: false, type: 'success', firstName, lastName, age };
  }
};
```
- **Regla:** Añade `[key: string]: any` a tu interfaz de datos cuando uses `ActionFailure<T>` para evitar error de "index signature for type string is missing".
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

### use:enhance para evitar recarga completa

```svelte
<script>
  import { enhance } from '$app/forms';
</script>

<form method="POST" action="?/act" use:enhance>
  <!-- campos del formulario -->
</form>
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Callback de `use:enhance` con validación frontal y cancelación:
```svelte
<form method="POST" action="?/act" use:enhance={({ formData, cancel }) => {
  if (formData.get('firstName') === 'Dave') {
    cancel();
  }
}}>
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Parámetros del callback de `use:enhance`:
```typescript
use:enhance={({ form, formData, action, cancel }) => {
  // form: HTMLFormElement
  // formData: FormData
  // action: string (URL de la acción)
  // cancel: () => void
}}
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

### Form Actions para subida de archivos

- Conectar formulario a action nombrada:
```svelte
<form method="POST" action="?/upload">
  <input type="file" name="fileUpload" />
  <button type="submit">Upload</button>
</form>
```
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

- Definir action en el servidor (`+page.server.js`):
```javascript
import { fail } from '@sveltejs/kit';

export const actions = {
  upload: async ({ request }) => {
    const data = await request.formData();
    const file = data.get('fileUpload');

    const fileTypes = ['.png', '.gif', '.tiff', '.jpg'];
    let includesFileType = false;

    for (let i = 0; i < fileTypes.length; i++) {
      if (file.endsWith(fileTypes[i])) {
        includesFileType = true;
        break;
      }
    }

    if (!includesFileType) {
      return fail(500, { error: true });
    }

    return { success: true };
  }
};
```
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

- Recibir datos del formulario en el cliente:
```svelte
<script>
  export let form;
</script>

{#if form?.error}
  <p>Failed to upload, wrong format</p>
{/if}

{#if form?.success}
  <p>File uploaded</p>
{/if}
```
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

### Reglas imperativas para Form Actions

- Usa `method="POST"` en el formulario para que se ejecute la action del servidor.
- Usa `action="?/nombreAction"` para enlazar a una action específica; si es la action por defecto (sin nombre), omite el atributo `action`.
- Usa `await request.formData()` dentro de la action para obtener los datos del formulario.
- Usa `data.get('nameDelInput')` para extraer cada campo del formulario.
- Usa `export let form` en el componente para acceder a los datos devueltos por la action.
- Nunca devuelvas objetos no serializables (ej. `BigInt`) desde una action.
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

### Gotchas de Form Actions

- Olvidar importar `fail` desde `@sveltejs/kit` provoca un error de referencia.
- Si el objeto devuelto no es serializable (por ejemplo, contiene `BigInt`), la action falla silenciosamente.
- El nombre del input (`name="fileUpload"`) debe coincidir exactamente con el usado en `data.get('fileUpload')`.
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

---

## 3) FastAPI (Estructura por capas, Async, Pydantic v2, JWT)

### Estructura con APIRouter

- Separar endpoints en routers con `APIRouter`:
```python
from fastapi import APIRouter

router = APIRouter(prefix="/items")

@router.get("/{item_id}")
async def read_item(item_id: int, db: Session = Depends(get_database)):
    db_item = read_database_item(item_id, db)
    return Item(id=db_item.id, name=db_item.name, description=db_item.description)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

- Incluir routers en `main.py`:
```python
from routers.items import router as items_router
from routers.automations import router as automations_router

app.include_router(items_router)
app.include_router(automations_router)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Separación de operaciones (capa de servicios)

- Mover la lógica de negocio a funciones en un directorio separado (ej. `db/items.py`):
```python
from pydantic import BaseModel

class Item(BaseModel):
    id: int
    name: str
    description: str | None = None

class ItemCreate(BaseModel):
    name: str
    description: str | None = None

class ItemUpdate(BaseModel):
    name: str | None = None
    description: str | None = None
```
- **Regla:** Los endpoints deben ser casi vacíos, solo llamando a las operaciones.
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Inyección de dependencias para sesiones de BD

```python
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, Session

engine = create_engine("sqlite:///./test.db")
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_database():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```
- **Regla:** Usa un generador con `try/finally` para la sesión de BD (`yield db` / `db.close()`). Nunca dejes conexiones abiertas.
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Async SQLAlchemy con FastAPI

- Configuración de `database.py` (motor y sesión asíncronos):
```python
from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker

DATABASE_URL = "postgresql+psycopg://user:pass@localhost/dbname"

engine = create_async_engine(DATABASE_URL)

AsyncSessionLocal = async_sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)
```
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

- Dependencia FastAPI para inyectar sesión asíncrona:
```python
async def get_session():
    async with AsyncSessionLocal() as session:
        yield session
```
- **Regla:** La función debe ser `async` y usar `async with`.
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

- Consulta moderna con `select` y `scalars`:
```python
from sqlalchemy import select

@app.get("/movies")
async def get_movies(session: AsyncSession = Depends(get_session)):
    result = await session.execute(select(Movie))
    movies = result.scalars().all()
    return movies
```
- **Regla:** Usa `select(Model)` en lugar de `session.query(Model)` para consultas con drivers asíncronos.
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

- Lifespan de FastAPI con operaciones asíncronas:
```python
from contextlib import asynccontextmanager
from fastapi import FastAPI

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    await init_db()
    async with AsyncSessionLocal() as session:
        m1 = Movie(title="Movie 1")
        m2 = Movie(title="Movie 2")
        session.add_all([m1, m2])
        await session.commit()
    yield
    # Shutdown
    async with AsyncSessionLocal() as session:
        await session.execute(delete(Movie))
        await session.commit()

app = FastAPI(lifespan=lifespan)
```
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

### Pydantic v2

- Definir un modelo básico con `BaseModel`:
```python
from pydantic import BaseModel

class User(BaseModel):
    name: str
    email: str
    account_id: int
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Usar tipos especiales como `EmailStr`:
```python
from pydantic import EmailStr

class User(BaseModel):
    name: str
    email: EmailStr
    account_id: int
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Añadir validación personalizada con el decorador `@validator`:
```python
from pydantic import BaseModel, validator

class User(BaseModel):
    name: str
    email: str
    account_id: int

    @validator("account_id")
    def account_id_must_be_positive(cls, value):
        if value <= 0:
            raise ValueError(f"account_id must be positive, got {value}")
        return value
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Serializar a JSON y diccionario:
```python
user_json = user.json()  # Devuelve string JSON
user_dict = user.dict()  # Devuelve dict de Python
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Deserializar desde JSON string:
```python
user = User.parse_raw('{"name": "Jack", "email": "jack@example.com", "account_id": 1234}')
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

### Rate Limiting con SlowAPI

- Configuración:
```python
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
app.state.limiter = limiter
app.add_exception_handler(RateLimitExceeded, _rate_limit_exceeded_handler)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

- Aplicar el decorador `@limiter.limit()` en los endpoints (debajo del decorador de ruta):
```python
@router.get("/{item_id}")
@limiter.limit("10/second")
async def read_item(item_id: int, request: Request, db: Session = Depends(get_database)):
    ...
```
- **Regla:** El decorador `@limiter.limit` debe ir **debajo** de `@router.get(...)`.
- **Regla:** Pasa `request: Request` como argumento al endpoint cuando uses SlowAPI con `get_remote_address`.
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Reglas imperativas para FastAPI

- **Usa `APIRouter` con `prefix`** cuando tengas múltiples grupos de endpoints. Nunca pongas todas las rutas en `main.py`.
- **Separa las operaciones de los endpoints**: crea funciones en `db/` que reciban la sesión de BD y devuelvan modelos Pydantic, no objetos de BD directamente.
- **Usa `create_async_engine`** cuando quieras operaciones de base de datos no bloqueantes en FastAPI.
- **Usa `async_sessionmaker`** en lugar de `sessionmaker` para generar sesiones asíncronas.
- **Marca como `async`** toda función que maneje sesiones asíncronas (dependencias, lifespan, endpoints).
- **Usa `async with`** para contextos de sesión y conexión (nunca `with` simple).
- **Usa `await`** en toda operación de base de datos: `session.execute()`, `session.commit()`, `session.flush()`.
- **Usa `run_sync`** para ejecutar funciones síncronas de SQLAlchemy (como `create_all`) dentro de un contexto async.
- **Nunca** ejecutes operaciones bloqueantes (síncronas) dentro de funciones `async` de FastAPI.
- **Define modelos Pydantic separados para creación y actualización**: `ItemCreate` (name requerido, description opcional) y `ItemUpdate` (name y description ambos opcionales).
- **Fuentes:** BugBytes (T0JXFhJ7pM0), ArjanCodes (XlnmN4BfCxw)

### Gotchas de FastAPI Async

- **Olvidar `await` en `session.execute()`**: produce `AttributeError: coroutine object has no attribute 'scalars'`.
- **Usar `session.query()` con driver async**: no funciona. Migrar a `session.execute(select(...))`.
- **No marcar la dependencia `get_session` como `async`**: la función debe ser `async` para poder usar `async with`.
- **Usar `with` en lugar de `async with`** en contextos de sesión o conexión: causa errores de tipo `TypeError: 'AsyncSession' object does not support the context manager protocol`.
- **URL de base de datos incorrecta**: para psycopg async usar `postgresql+psycopg://...` (no `+psycopg2`).
- **No instalar `sqlalchemy[asyncio]`**: el paquete base no incluye las extensiones asyncio.
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

---

## 4) Supabase + RLS + Postgres

### Row-Level Security (RLS) Policies

- **Tipos de políticas:** `SELECT`, `INSERT`, `UPDATE`, `DELETE` (evitar `ALL` para mayor control granular).
- **Sintaxis de políticas:**
  - `SELECT`: `USING (condición)`
  - `INSERT`: `WITH CHECK (condición)`
  - `UPDATE`: `USING (condición)` + `WITH CHECK (condición)`
  - `DELETE`: `USING (condición)`
- **`USING`** compara la condición contra datos existentes.
- **`WITH CHECK`** compara la condición contra datos futuros después del cambio.
- **Fuente:** Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU)

### Ejemplos de políticas RLS

1. **Acceso público (solo SELECT):** `USING (true)`
2. **Propietario del registro:** `USING (auth.uid() = user_id)`
3. **Basado en grupo/equipo:** requiere tres tablas (`posts` con `team_id`, `teams`, `team_users`):
   ```sql
   USING (auth.uid() IN (SELECT user_id FROM team_users WHERE team_id = posts.team_id))
   ```
- **Fuente:** Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU)

### Habilitar RLS en una tabla

- Por defecto, al activar RLS, todas las operaciones quedan bloqueadas hasta que crees políticas explícitas.
- **Fuente:** Supabase Tutorial #10 - Intro to RLS & Policies — Net Ninja (WAa3a-HxLVs)

### Crear política de lectura para todos (SELECT)

- Policy definition: `true` (sin condiciones adicionales).
- **Fuente:** Supabase Tutorial #10 - Intro to RLS & Policies — Net Ninja (WAa3a-HxLVs)

### Optimización de rendimiento con RLS

- Aunque RLS actúa como filtro, se debe agregar explícitamente el filtro en la consulta (ej: `.eq('team_id', 1)`) para que Postgres sea más eficiente.
- **Fuente:** Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU)

### Reglas imperativas para RLS

- Nunca uses la política `ALL` en RLS; prefiere `SELECT`, `INSERT`, `UPDATE`, `DELETE` por separado para control granular.
- En políticas RLS, usa `USING` para condiciones contra datos existentes y `WITH CHECK` para condiciones contra datos futuros.
- Siempre agrega el filtro explícito en la consulta (ej: `.eq('team_id', 1)`) aunque RLS ya lo aplique, para mejorar rendimiento.
- Habilita RLS en cada tabla que necesite protección; por defecto, sin RLS, cualquiera con la API key pública tiene acceso completo de lectura/escritura.
- Nunca asumas que la API key pública es segura; siempre protege datos sensibles con RLS desde el backend.
- **Fuentes:** Supabase (Ufx6fdRMxjU), Net Ninja (WAa3a-HxLVs)

### Gotchas de RLS

- Al activar RLS sin políticas, la aplicación deja de mostrar datos (error silencioso o datos vacíos al refrescar la página).
- Las operaciones de UPDATE y DELETE fallan si no hay políticas que las permitan.
- La eliminación desde el frontend puede parecer exitosa si se actualiza el estado local, pero al refrescar la página los datos reaparecen porque la operación en la base de datos fue rechazada.
- En políticas RLS de tipo `UPDATE`, se deben especificar tanto `USING` como `WITH CHECK`; en `SELECT` y `DELETE` solo `USING`; en `INSERT` solo `WITH CHECK`.
- **Fuentes:** Supabase (Ufx6fdRMxjU), Net Ninja (WAa3a-HxLVs)

---

## 5) Testing (Playwright E2E, Vitest, Unit)

### Configuración de Playwright

```bash
# Instalar navegadores de Playwright
npx playwright install

# Ejecutar todos los tests
npm test

# Ver reporte
npx playwright show-report

# Ejecutar en modo headed (con navegador visible)
npm run test -- --headed

# Ejecutar en modo UI interactivo
npm run test -- --ui

# Ejecutar un archivo específico
npx playwright test tests/cart.spec.js

# Ejecutar tests que coincidan con un patrón
npx playwright test -g login
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Estructura de un test file

```javascript
import { test, expect } from '@playwright/test';

test.describe('home page', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto('/');
  });

  test('should display correct page title', async ({ page }) => {
    await expect(page).toHaveTitle(/TechMart/);
  });
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Patrón acción + verificación (fundamental)

```javascript
test('should add item to cart', async ({ page }) => {
  // 1. ACCIÓN: click en "Add to Cart"
  await page.locator('text=Add to Cart').first().click();
  
  // 2. VERIFICAR feedback inmediato (toast message)
  await expect(page.locator('text=Added to cart')).toBeVisible();
  
  // 3. VERIFICAR cambio de estado (cart count actualizado)
  await expect(page.locator('[data-testid="cart-count"]')).toHaveText('1');
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Estrategias de localización (locators)

```javascript
// Por ID
page.locator('#search-input')

// Por clase CSS
page.locator('.product-card')

// Por texto exacto
page.locator('text=Add to Cart')

// Por rol de accesibilidad
page.locator('role=button[name="login"]')

// Por placeholder
page.locator('[placeholder="Search products..."]')

// Combinando selectores
page.locator('.product-card >> text=Keyboard')
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Test de API con Playwright

```javascript
test('should return all products', async ({ request }) => {
  const response = await request.get('/api/products');
  
  expect(response.ok()).toBeTruthy();
  expect(response.status()).toBe(200);
  
  const data = await response.json();
  expect(Array.isArray(data)).toBeTruthy();
  expect(data.length).toBe(6);
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Mocking de API

```javascript
// Simular API caída (500 error)
test('should handle API being down', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 500,
      body: 'Internal Server Error'
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(0);
});

// Mock de datos específicos (out of stock)
test('should show out of stock indicator', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 200,
      body: JSON.stringify([
        { id: 1, name: 'Wireless Headphones', stock: 0 },
        { id: 2, name: 'USB Cable', stock: 10 }
      ])
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(2);
  await expect(page.locator('text=Out of Stock')).toBeVisible();
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Testing de edge cases

```javascript
// Búsqueda vacía
test('should handle empty search gracefully', async ({ page }) => {
  await page.goto('/');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Búsqueda con caracteres especiales (XSS)
test('should handle special characters search', async ({ page }) => {
  await page.locator('#search-input').fill('<script>alert("xss")</script>');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(0);
});

// Checkout con carrito vacío
test('should not allow checkout with empty cart', async ({ page }) => {
  await page.goto('/checkout');
  await page.locator('#email').fill('test@test.com');
  await page.locator('#card').fill('4111111111111111');
  await page.locator('text=Place Order').click();
  await expect(page.locator('text=Cart is empty')).toBeVisible();
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Testing de accesibilidad

```javascript
// Verificar que todas las imágenes tienen alt text
test('all images should have alt text', async ({ page }) => {
  await page.goto('/');
  const images = page.locator('img');
  const count = await images.count();
  for (let i = 0; i < count; i++) {
    await expect(images.nth(i)).toHaveAttribute('alt');
  }
});

// Verificar que todos los inputs tienen labels
test('all form inputs should have labels', async ({ page }) => {
  await page.goto('/login');
  const inputs = page.locator('input');
  const count = await inputs.count();
  for (let i = 0; i < count; i++) {
    await expect(inputs.nth(i)).toHaveAttribute('aria-label');
  }
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Reglas imperativas para Testing

1. **Usa el patrón acción + verificación** en cada test: primero realiza la acción del usuario, luego verifica el feedback inmediato, y finalmente verifica el cambio de estado.
2. **Usa `page.locator()` con selectores estables y significativos**: prefiere IDs y atributos `data-test-id` sobre selectores CSS que dependen de la estructura exacta del DOM.
3. **Nunca dependas de un test de otro**: cada test debe configurar sus propios datos y limpiar después de ejecutarse.
4. **Usa `test.beforeEach()` para navegar a un estado limpio** antes de cada test en un bloque `test.describe()`.
5. **Mockea APIs cuando:** estés probando estados de error difíciles de reproducir, la API real sea lenta/inestable/costosa, necesites control preciso sobre los datos.
6. **No mockees cuando:** necesites verificar que la API real funciona (usa tests de integración para eso).
7. **Usa `page.route()` para interceptar requests HTTP** y devolver respuestas personalizadas (mockear).
8. **Prueba siempre el happy path Y los escenarios de error**: formularios vacíos, caracteres especiales, contraseñas que no coinciden, carritos vacíos.
9. **Usa nombres de test descriptivos**: "should display error when password is too short" en lugar de "test1".
10. **Integra los tests en CI/CD** para que se ejecuten automáticamente en cada cambio de código.
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Gotchas de Testing

1. **Tests flaky (inconsistentes)**: Los tests E2E a veces pasan y a veces fallan sin cambios de código debido a timing issues, variabilidad de red, inconsistencias entre navegadores.
2. **Mantenimiento costoso**: Cuando la UI cambia, los selectores pueden romperse, los flujos de test necesitan actualizarse.
3. **No olvidar instalar los navegadores de Playwright**: Ejecutar `npx playwright install` antes de correr los tests por primera vez.
4. **Los tests de accesibilidad pueden fallar incluso si visualmente todo se ve bien**: Esto es bueno, significa que se encontraron issues reales de accesibilidad.
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

---

## 6) Deploy y Producción (Vercel, Fly, Docker, Env, Performance, Observabilidad, Rate Limiting)

### Dockerfile básico para FastAPI

```dockerfile
FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Rate Limiting con SlowAPI (producción)

- Configuración completa:
```python
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
app.state.limiter = limiter
app.add_exception_handler(RateLimitExceeded, _rate_limit_exceeded_handler)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

- Aplicar en endpoints:
```python
@router.get("/{item_id}")
@limiter.limit("10/second")
async def read_item(item_id: int, request: Request, db: Session = Depends(get_d# DOCTRINA ACCIONABLE DE PRODUCCIÓN

## 1) Svelte 5 runes ($state/$derived/$effect/$props/$bindable, proxy/deep reactivity, gotchas, compartir estado)

### Creación de estado reactivo con $state

- **Usa `$state()` dentro de clases en archivos `.svelte.ts`** para crear variables reactivas:
  ```ts
  // to-dos-state.svelte.ts
  class ToDoState {
    messages = $state<string[]>([]);
    isLoading = $state(false);
  }
  ```
  (Ben Davis — https://youtu.be/kMBDsyozllk)

- **Usa objeto proxy (`$state({ value: ... })`)** cuando necesites exportar estado reactivo y permitir reasignación desde otros archivos:
  ```ts
  // lib/counter.svelte.ts
  export const count = $state({ value: 0 });
  ```
  (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **Usa extensión `.svelte.ts`** para cualquier archivo que contenga runes fuera de un componente Svelte. (Joy of Code — https://youtu.be/qI31XOrBuY0)

### Patrones para compartir estado

- **Usa `setContext`/`getContext` con una clave (Symbol o string)** para compartir instancias de clase entre componentes, nunca exportes una instancia singleton desde un módulo:
  ```ts
  // counter-state.svelte.ts
  import { getContext, setContext } from 'svelte';

  class CounterState {
    count = $state(0);
    increment() { this.count += 1; }
  }

  const KEY = Symbol('counter');

  export function setCounterState() {
    return setContext(KEY, new CounterState());
  }

  export function getCounterState(): CounterState {
    return getContext(KEY);
  }
  ```
  (Ben Davis — https://youtu.be/kMBDsyozllk)

- **Inicializa el store en el layout más alto** donde necesites compartirlo:
  ```svelte
  <!-- +layout.svelte -->
  <script lang="ts">
    import { setCounterState } from './counter-state.svelte.ts';
    setCounterState();
  </script>
  <slot />
  ```
  (Ben Davis — https://youtu.be/kMBDsyozllk)

- **Patrón con función creadora (factory)** para crear múltiples instancias de estado:
  ```ts
  // lib/counter.svelte.ts
  export function createCounter(initialValue = 0) {
    let count = $state(initialValue);
    return {
      get count() { return count; },
      set count(value: number) { count = value; },
      increment() { count += 1; }
    };
  }
  ```
  (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **Patrón con clase** para getters/setters automáticos:
  ```ts
  // lib/counter.svelte.ts
  export class Counter {
    count = $state(0);
    increment = () => { this.count += 1; };
  }
  ```
  (Joy of Code — https://youtu.be/qI31XOrBuY0)

### $effect y $derived

- **Usa `$effect` para side effects** (localStorage, console.log, etc.):
  ```ts
  // lib/counter.svelte.ts
  export const count = $state({ value: 0 });
  $effect(() => {
    console.log('count changed:', count.value);
  });
  ```
  (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **Usa `$effect.root`** cuando definas `$effect` dentro de funciones que se ejecuten fuera del ciclo de inicialización de un componente:
  ```ts
  // lib/counter.svelte.ts
  export function createCounter() {
    let count = $state(0);
    $effect.root(() => {
      $effect(() => {
        console.log('count changed:', count.value);
      });
    });
    return {
      get count() { return count; },
      increment: () => count += 1
    };
  }
  ```
  (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **Usa `$derived.by`** para crear estado derivado con lógica interna:
  ```ts
  export const counter = $derived.by(() => {
    let count = $state(0);
    return {
      get count() { return count; },
      increment: () => count += 1
    };
  });
  ```
  (Joy of Code — https://youtu.be/qI31XOrBuY0)

### Gotchas y reglas

- **Nunca crees una instancia de clase en el ámbito del módulo** (ej: `export const store = new CounterState()`) porque causa fugas de estado en SSR. (Ben Davis — https://youtu.be/kMBDsyozllk)

- **Nunca reasignes imports** de valores exportados directamente (ej: `export let count = $state(0)` no se puede reasignar desde otro archivo). (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **Destructuring rompe reactividad** si destructureas `let { count } = counter` donde `counter` usa getters. Solución: usar objeto proxy o acceder siempre a través del getter. (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **Error "effect orphan effects can only be used inside an effect during component initialization"**: Ocurre cuando usas `$effect` fuera del ciclo de inicialización de un componente. Solución: envolver en `$effect.root`. (Joy of Code — https://youtu.be/qI31XOrBuY0)

- **`$effect` no se ejecuta en el servidor**: No uses efectos para lógica que debe correr server-side. (Joy of Code — https://youtu.be/qI31XOrBuY0)

---

## 2) SvelteKit (routing, load +page.ts vs +page.server.ts, form actions, use:enhance, hooks.server.ts, auth)

### Hooks de servidor

- **Configurar hooks.server.ts con Supabase**:
  ```ts
  import { createServerClient } from '@supabase/ssr';
  import { type Handle, redirect } from '@sveltejs/kit';
  import { sequence } from '@sveltejs/kit/hooks';
  import { PUBLIC_SUPABASE_URL, PUBLIC_SUPABASE_ANON_KEY } from '$env/static/public';

  const supabase: Handle = async ({ event, resolve }) => {
    event.locals.supabase = createServerClient(PUBLIC_SUPABASE_URL, PUBLIC_SUPABASE_ANON_KEY, {
      cookies: {
        getAll: () => event.cookies.getAll(),
        setAll: (cookiesToSet) => {
          cookiesToSet.forEach(({ name, value, options }) => {
            event.cookies.set(name, value, { ...options, path: '/' });
          });
        },
      },
    });

    event.locals.safeGetSession = async () => {
      const { data: { session } } = await event.locals.supabase.auth.getSession();
      return session;
    };

    return resolve(event, {
      filterSerializedResponseHeaders(name) {
        return name === 'content-range' || name === 'x-supabase-api-version';
      },
    });
  };

  export const handle: Handle = sequence(supabase);
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Tipar locals en `src/app.d.ts`**:
  ```ts
  import { SupabaseClient, Session } from '@supabase/supabase-js';

  declare global {
    namespace App {
      interface Locals {
        supabase: SupabaseClient;
        safeGetSession: () => Promise<Session | null>;
      }
      interface PageData {
        session: Session | null;
      }
    }
  }
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

### Layout y load functions

- **Layout de servidor para pasar session al cliente**:
  ```ts
  // src/routes/+layout.server.ts
  export const load = async ({ locals: { safeGetSession } }) => {
    const session = await safeGetSession();
    return { session };
  };
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Layout con runes y suscripción a cambios de auth**:
  ```svelte
  <script lang="ts">
    import { onMount } from 'svelte';
    import { invalidate } from '$app/navigation';

    let { children, data: propsData } = $props();
    const { supabase, session } = $derived(propsData);

    $effect(() => {
      const { data: { subscription } } = supabase.auth.onAuthStateChange((event) => {
        if (event !== 'INITIAL_SESSION') {
          invalidate('supabase:auth');
        }
      });
      return () => subscription?.unsubscribe();
    });
  </script>

  <div>
    {@render children()}
  </div>
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Nunca uses `$state` ni `$effect` dentro de `load` functions** en `+page.server.ts` o `+layout.server.ts`. (Joy of Code — https://youtu.be/qI31XOrBuY0)

### Form actions y progressive enhancement

- **Form action de login**:
  ```ts
  // src/routes/login/+page.server.ts
  import { fail, redirect } from '@sveltejs/kit';
  import { AuthApiError } from '@supabase/supabase-js';
  import type { Actions } from './$types';

  export const actions: Actions = {
    login: async ({ request, locals }) => {
      const body = Object.fromEntries(await request.formData());

      const { data, error: err } = await locals.sb.auth.signInWithPassword({
        email: body.email as string,
        password: body.password as string
      });

      if (err) {
        if (err instanceof AuthApiError && err.status === 400) {
          return fail(400, { error: 'Invalid credentials' });
        }
        return fail(500, { error: 'Server error. Try again later.' });
      }

      throw redirect(303, '/');
    }
  };
  ```
  (Huntabyte — https://youtu.be/lSm0GNnh-0I)

- **Usa `use:enhance` para progressive enhancement**:
  ```svelte
  <form method="POST" use:enhance={() => {
    return async ({ result, update }) => {
      if (result.type === 'success') {
        await invalidateAll();
        alert('Updated');
      } else {
        alert('Error');
      }
    };
  }}>
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Usa `fail()` (no `invalid()`)** para errores de formulario en SvelteKit 5. (Huntabyte — https://youtu.be/lSm0GNnh-0I)

- **Usa `throw redirect(303, '/')`** en form actions y endpoints; es la sintaxis correcta en SvelteKit 5. (Huntabyte — https://youtu.be/lSm0GNnh-0I)

### Autenticación OAuth

- **Ruta de login con OAuth GitHub**:
  ```ts
  // src/routes/auth/login/+page.server.ts
  import { redirect } from '@sveltejs/kit';

  export const actions = {
    default: async ({ locals: { supabase }, url }) => {
      const { data, error } = await supabase.auth.signInWithOAuth({
        provider: 'github',
        options: {
          redirectTo: `${url.origin}/auth/callback`,
        },
      });

      if (error) throw error;
      redirect(307, data.url);
    },
  };
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Ruta de callback OAuth**:
  ```ts
  // src/routes/auth/callback/+server.ts
  import { redirect } from '@sveltejs/kit';

  export const GET = async ({ url, locals: { supabase } }) => {
    const code = url.searchParams.get('code');
    const next = url.searchParams.get('next') ?? '/';

    if (code) {
      const { error } = await supabase.auth.exchangeCodeForSession(code);
      if (error) throw error;
    }

    redirect(303, next);
  };
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

---

## 3) FastAPI (estructura por capas routers/services/schemas/dependencies, async, Pydantic v2, clean architecture, JWT)

### Reglas de async/def

- **Usa `def` (no `async def`)** en endpoints y dependencias cuando haya operaciones bloqueantes (I/O síncrono, CPU-bound pesado). FastAPI lo ejecutará en un hilo separado automáticamente. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Usa librerías async-friendly**: `asyncio.sleep` en vez de `time.sleep`, `httpx.AsyncClient` en vez de `requests`, `motor` en vez de `pymongo`. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **No ejecutes cómputo pesado (ML, procesamiento de imágenes/video) directamente en endpoints FastAPI**. Para modelos pesados usar motores dedicados (Triton, TensorFlow Serving, TorchServe). (Code Collider — https://youtu.be/kmJz8w5ij8Y)

### Pydantic v2

- **Define un modelo base Pydantic con `alias_generator` y `json_encoders` globales**:
  ```python
  class BaseModelConfig(BaseModel):
      class Config:
          from_attributes = True
          alias_generator = to_camel  # para camelCase/snake_case
          json_encoders = {
              datetime: lambda v: v.isoformat(),
              Decimal: float,
          }
  ```
  (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Usa `response_model` en los decoradores de endpoints** para documentar y validar la estructura de respuesta. Devuelve diccionarios planos; FastAPI lo convierte, valida y serializa automáticamente. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Centraliza toda validación en modelos Pydantic**; nunca en funciones del endpoint con `if` manuales. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

### Dependencias y base de datos

- **Usa `Depends(get_db)`** en cada endpoint que necesite acceso a la base de datos:
  ```python
  def get_db():
      db = SessionLocal()
      try:
          yield db
      finally:
          db.close()
  ```
  (Code with Josh — https://youtu.be/xq1Snezb1rs)

- **Usa `app.state` para almacenar el pool de conexiones** y accede mediante dependencias con `async with`. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Usa el decorador `lifespan`** en vez de `@app.on_event("startup")`/`@app.on_event("shutdown")`:
  ```python
  from contextlib import asynccontextmanager

  @asynccontextmanager
  async def lifespan(app: FastAPI):
      # startup
      app.state.db_pool = create_pool()
      yield
      # shutdown
      await app.state.db_pool.close()
  ```
  (Code Collider — https://youtu.be/kmJz8w5ij8Y)

### Configuración y seguridad

- **Guarda secretos en `.env`**, agrega `.env` a `.gitignore`, incluye `.env.example`. Usa `pydantic.BaseSettings` para validar al inicio. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Pon `docs_url=None`, `redoc_url=None`, `openapi_url=None`** en producción si la API no es pública. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Usa `BackgroundTasks` solo para tareas pequeñas, no críticas, sin necesidad de reintentos**. Si el proceso crashea antes de completar la tarea, esta falla. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

### Ejemplo de endpoints CRUD

- **Endpoint GET**:
  ```python
  @app.get("/users/{user_id}", response_model=UserResponse)
  def get_user(user_id: int, db: Session = Depends(get_db)):
      db_user = db.query(User).filter(User.id == user_id).first()
      if not db_user:
          raise HTTPException(status_code=404, detail="User not found")
      return db_user
  ```
  (Code with Josh — https://youtu.be/xq1Snezb1rs)

- **Endpoint POST**:
  ```python
  @app.post("/users/", response_model=UserResponse)
  def create_user(user: UserCreate, db: Session = Depends(get_db)):
      db_user = db.query(User).filter(User.email == user.email).first()
      if db_user:
          raise HTTPException(status_code=400, detail="User already exists")

      new_user = User(**user.dict())
      db.add(new_user)
      db.commit()
      db.refresh(new_user)
      return new_user
  ```
  (Code with Josh — https://youtu.be/xq1Snezb1rs)

- **Endpoint DELETE**:
  ```python
  @app.delete("/users/{user_id}", response_model=UserResponse)
  def delete_user(user_id: int, db: Session = Depends(get_db)):
      db_user = db.query(User).filter(User.id == user_id).first()
      if not db_user:
          raise HTTPException(status_code=404, detail="User not found")

      db.delete(db_user)
      db.commit()
      return {"message": "User deleted"}
  ```
  (Code with Josh — https://youtu.be/xq1Snezb1rs)

---

## 4) Supabase + RLS + Postgres (policies SELECT/INSERT/UPDATE/DELETE, using/with check, auth.uid/jwt, multitenant, performance, migraciones)

### Row Level Security (RLS)

- **Habilitar RLS en cada tabla**:
  ```sql
  ALTER TABLE profile ENABLE ROW LEVEL SECURITY;
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Crear política de aislamiento por tenant**:
  ```sql
  CREATE POLICY tenant_isolation_policy ON orders
  USING (tenant_id = current_setting('app.current_tenant')::uuid);
  ```
  (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)

- **Usa RLS con políticas por tenant** cuando uses base de datos compartida: asegurando que "tenant_id is always equal to the tenant ID that we defined above". (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)

### Migraciones

- **Comando para generar migraciones con Drizzle**:
  ```bash
  bun run db:generate
  ```
  En `package.json`: `"db:generate": "drizzle-kit generate"` (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Configurar Drizzle ORM**:
  ```ts
  // drizzle.config.ts
  import { defineConfig } from 'drizzle-kit';

  export default defineConfig({
    schema: './src/lib/db/schema.ts',
    out: './supabase/migrations',
    dialect: 'postgresql',
    dbCredentials: {
      url: 'postgresql://postgres:postgres@localhost:54322/postgres',
    },
  });
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Pushear migraciones a producción**:
  ```bash
  supabase db push
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

### Cliente Supabase

- **Crear cliente Drizzle**:
  ```ts
  // src/lib/db/index.ts
  import { drizzle } from 'drizzle-orm/postgres-js';
  import postgres from 'postgres';
  import * as schema from './schema';
  import { DATABASE_URL } from '$env/static/private';

  const client = postgres(DATABASE_URL);
  export const db = drizzle(client, { schema });
  ```
  (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Nunca expongas `DATABASE_URL`** en variables públicas; usa `$env/static/private`. (Ben Davis — https://youtu.be/lEWghUOta-4)

### Multi-tenancy

- **Usa RLS con políticas por tenant** como capa adicional de seguridad, nunca confíes solo en la lógica de aplicación para data isolation en shared database. (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)

- **Usa rate limiting por tenant** cuando tengas "noisy neighbors" que consumen CPU desproporcionadamente. (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)

- **Configura timeouts de queries** (ej. 2 segundos) para prevenir que un tenant degrade la experiencia de otros. (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)

- **Usa esquemas separados** cuando necesites "per tenant customization" y "stronger data isolation" sin llegar a bases de datos independientes. (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)

---

## 5) Testing (Playwright E2E, Vitest, unit, fixtures)

### Localizadores y aserciones

- **Usa localizadores user-facing** (`getByRole`, `getByText`, `getByPlaceholder`, `getByLabel`) por defecto. Solo usa `data-testid` cuando el texto sea irrelevante o cambiante:
  ```ts
  await page.getByRole('button').click();
  await page.getByPlaceholder('Search for product').fill('Xbox');
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Usa `expect` con localizadores** (auto-retrying) en lugar de aserciones síncronas:
  ```ts
  await expect(page.getByLabel('cart')).toContainText('1');
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

### API mocking

- **Usa `page.route()` para interceptar APIs**:
  ```ts
  await page.route('**/api/fruits', async route => {
    const json = [{ name: 'Playwright', id: 21 }];
    await route.fulfill({ json });
  });
  await page.goto('https://demo.playwright.dev/api-mocking');
  await page.getByText('Playwright').waitFor();
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Modificar respuestas de API existentes**:
  ```ts
  await page.route('**/api/fruits', async route => {
    const response = await route.fetch();
    const json = await response.json();
    json.push({ name: 'Debbie', id: 100, stars: 50000 });
    await route.fulfill({ response, json });
  });
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

### Clock API para testing de fecha/hora

- **Fijar el tiempo del navegador**:
  ```ts
  await page.clock.setFixedTime(new Date('2024-01-01T10:00:00'));
  await page.goto('https://example.com/clock');
  await expect(page.getByText('10:00')).toBeVisible();
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Avanzar el tiempo manualmente**:
  ```ts
  await page.clock.install();
  await page.goto('https://example.com/timer');
  await expect(page.getByText('Flash offer')).toBeVisible();
  await page.clock.fastForward('00:05:00');
  await expect(page.getByText('Offer expired')).toBeVisible();
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

### Setup tests con project dependencies

- **Definir proyecto "setup" que ejecuta login y guarda storage state**:
  ```ts
  // playwright.config.ts
  projects: [
    {
      name: 'setup',
      testMatch: /.*\.setup\.ts/,
    },
    {
      name: 'e2e logged in',
      dependencies: ['setup'],
      use: {
        storageState: 'playwright/.auth/user.json',
      },
    },
  ]
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **El test de setup guarda el storage state**:
  ```ts
  // login.setup.ts
  import { test as setup } from '@playwright/test';
  setup('do login', async ({ page }) => {
    await page.goto('https://en.wikipedia.org');
    await page.getByText('Log in').click();
    // ... llenar credenciales
    await page.context().storageState({ path: 'playwright/.auth/user.json' });
  });
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

### CLI avanzado

- **Ejecutar solo tests fallidos**:
  ```bash
  npx playwright test --last-failed
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Ejecutar solo tests de archivos modificados**:
  ```bash
  npx playwright test --only-changed
  npx playwright test --only-changed=main
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

### Sharding en CI

- **Dividir tests entre múltiples workers**:
  ```yaml
  - name: Run tests
    run: npx playwright test --shard=${{ matrix.shard }}/${{ strategy.job-total }}
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Merge reports para shards**:
  ```bash
  npx playwright merge-reports --reporter html ./all-blob-reports
  ```
  (Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

---

## 6) Deploy y producción (Vercel, Fly, Docker, env, performance, observabilidad, rate limiting)

### Deploy en Vercel

- **Instalar adaptador de Vercel**:
  ```bash
  npm install --save-dev @sveltejs/adapter-vercel
  ```
  (Brayden Girard — https://youtu.be/l21Fj0A7xn0)

- **Configurar adaptador en `svelte.config.js`**:
  ```javascript
  import adapter from '@sveltejs/adapter-vercel';

  const config = {
    kit: {
      adapter: adapter()
    }
  };

  export default config;
  ```
  (Brayden Girard — https://youtu.be/l21Fj0A7xn0)

- **Verificar build local antes de desplegar**:
  ```bash
  pnpm run build
  pnpm run preview
  ```
  (Joy of Code — https://youtu.be/uAF4Yd-gddo)

### Caché HTTP

- **Establecer cabeceras de caché en `+page.server.ts`**:
  ```ts
  export const load: PageServerLoad = async ({ setHeaders }) => {
    setHeaders({
      'cache-control': 'max-age=0, s-maxage=3600' // 1 hora en CDN
    });
  };
  ```
  (Joy of Code — https://youtu.be/uAF4Yd-gddo)

- **Cache condicional por antigüedad del contenido**:
  ```ts
  if (post.publishedAt < Date.now() - 7 * 24 * 60 * 60 * 1000) {
    setHeaders({ 'cache-control': 'public, max-age=31536000, immutable' });
  }
  ```
  (Joy of Code — https://youtu.be/uAF4Yd-gddo)

- **Usa `s-maxage` para cachear en CDN compartido** (Vercel Edge Network). Usa `max-age=0` para evitar caché en navegador cuando se usa `s-maxage`. (Joy of Code — https://youtu.be/uAF4Yd-gddo)

### Prerenderizado

- **Prerenderizar página estática y desactivar JavaScript**:
  ```ts
  export const prerender = true;
  export const csr = false;
  ```
  (Joy of Code — https://youtu.be/uAF4Yd-gddo)

- **Pre-renderizado no funciona con form actions**: Si una página usa form actions de SvelteKit, no se puede prerenderizar porque requieren un servidor. (Joy of Code — https://youtu.be/uAF4Yd-gddo)

### FastAPI en producción

- **En producción: Gunicorn + UvicornWorker**:
  ```bash
  pip install gunicorn uvicorn uvloop
  gunicorn -k uvicorn.workers.UvicornWorker -w 4 my_api:app
  ```
  Workers = (CPU cores * 2) + 1 como punto de partida. (Code Collider — https://youtu.be/kmJz8w5ij8Y)

- **Instala `uvloop`** (FastAPI lo detecta automáticamente). (Code Collider — https://youtu.be/kmJz8w5ij8Y)

### Logging estructurado

- **Usa logging estructurado con `logging` + `Structlog`/`Loguru`**. Agrega request ID mediante middleware con context vars. No loguees datos sensibles (credenciales, API keys). (Code Collider — https://youtu.be/kmJz8w5ij8Y)

### Variables de entorno

- **Agregar variables de entorno en Vercel**: `DATABASE_URL`, `PUBLIC_SUPABASE_URL`, `PUBLIC_SUPABASE_ANON_KEY`. (Ben Davis — https://youtu.be/lEWghUOta-4)

- **Usa cadena de conexión de pooling en Supabase** específicamente para entornos serverless, para evitar problemas de conexiones concurrentes. (Joy of Code — https://youtu.be/uAF4Yd-gddo)

### Rate limiting

- **Rate limiting por tenant/usuario**: "Only 10 requests per user within 10 seconds" usando nginx como proxy. (Software Developer Diaries — https://youtu.be/wrVKnQvDJy0)