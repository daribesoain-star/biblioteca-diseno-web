# 1. Svelte 5 runes

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

- **Retornar múltiples valores desde `$derived.by`:**
  ```svelte
  let b = $derived.by(() => {
    return {
      double: a * 2,
      quadruple: a * 4
    };
  });
  ```
  (Fuente: Joy of Code — https://youtu.be/7N4maEDhy4w)

- **Nunca** mutes estado dentro de `$derived`. El compilador lanza error: "updating state inside `$derived` is forbidden".
  (Fuente: Joy of Code — https://youtu.be/7N4maEDhy4w)

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

- **Nunca** uses `$effect` para lógica que solo debe ejecutarse una vez al montar; usa `onMount` en su lugar.
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

### $props y $bindable

- **Declarar props con tipado estricto y valores por defecto:**
  ```svelte
  <script lang="ts">
    interface Props {
      title: string;
      description: string;
      rating: number;
      isActive: boolean;
    }
    let { title, description, rating, isActive }: Props = $props();
  </script>
  ```
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

- **Usa valores por defecto en la desestructuración para props opcionales:**
  ```svelte
  let { type = 'info', message, dismissible = false }: Props = $props();
  ```
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

- **Usa `$bindable(valorPorDefecto)` para permitir binding bidireccional desde el padre:**
  ```svelte
  import { bindable } from 'svelte';
  let { value = $bindable(0) }: Props = $props();
  ```
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

- **Nunca** declares props sin interfaz TypeScript si esperas múltiples props; siempre define `interface Props`.
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

### Snippets ({#snippet} y {@render})

- **Crear y renderizar un Snippet en la misma página:**
  ```svelte
  {#snippet greetings()}
    <p>Hello world</p>
  {/snippet}
  {@render greetings()}
  ```
  (Fuente: 08 - Props and Snippets In Svelte 5 — Code Hub — jpPklvWrZC8)

- **Snippet con parámetros:**
  ```svelte
  {#snippet greetings(personName: string)}
    <p>Hello {personName}</p>
  {/snippet}
  {@render greetings('John')}
  ```
  (Fuente: 08 - Props and Snippets In Svelte 5 — Code Hub — jpPklvWrZC8)

- **Pasar Snippet a componente hijo (prop tipo `Snippet`):**
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
  (Fuente: 08 - Props and Snippets In Svelte 5 — Code Hub — jpPklvWrZC8)

### Compartir estado global

- **Exporta estado global desde archivos `.svelte.ts` o `.svelte.js`:**
  ```ts
  // store.svelte.ts
  export let globalState = $state(0);
  ```
  (Fuente: Joy of Code — https://youtu.be/7N4maEDhy4w)

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
  (Fuente: Ben Davis — https://youtu.be/kMBDsyozllk)

- **Inicializa el store en el layout más alto** donde necesites compartirlo:
  ```svelte
  <!-- +layout.svelte -->
  <script lang="ts">
    import { setCounterState } from './counter-state.svelte.ts';
    setCounterState();
  </script>
  <slot />
  ```
  (Fuente: Ben Davis — https://youtu.be/kMBDsyozllk)

### Ciclo de vida

- **Usa `onMount` para ejecutar código después del primer render:**
  ```svelte
  import { onMount, onDestroy } from 'svelte';
  onMount(() => {
    console.log('Componente montado en el DOM');
    return () => { console.log('Cleanup de onMount'); };
  });
  ```
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

- **Usa `onDestroy` para limpiar recursos (intervalos, observadores, suscripciones):**
  ```svelte
  onDestroy(() => {
    console.log('Componente siendo eliminado del DOM');
  });
  ```
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

### Gotchas

- **Olvidar importar `bindable` desde 'svelte'** cuando se usa `$bindable()` en un componente hijo.
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

- **No usar `bind:` en el padre** cuando el hijo tiene `$bindable`: el binding solo funciona si el padre usa `bind:value={variable}`.
  (Fuente: Code Hub — https://youtu.be/5DhyIOxX7AI)

- **Usar `this` en métodos de clase sin bindear:** Al pasar un método como callback, `this` apunta al elemento DOM. Solución: usar arrow functions.
  (Fuente: Joy of Code — https://youtu.be/7N4maEDhy4w)

- **Los derivados son readonly:** No se puede usar `bind:value` directamente con `$derived`. Se necesita un getter/setter.
  (Fuente: Joy of Code — https://youtu.be/7N4maEDhy4w)

- **Error "effect orphan effects can only be used inside an effect during component initialization"**: Ocurre cuando usas `$effect` fuera del ciclo de inicialización de un componente. Solución: envolver en `$effect.root`.
  (Fuente: Joy of Code — https://youtu.be/qI31XOrBuY0)

- **`$effect` no se ejecuta en el servidor**: No uses efectos para lógica que debe correr server-side.
  (Fuente: Joy of Code — https://youtu.be/qI31XOrBuY0)

---

# 2. SvelteKit (routing, load, form actions, hooks, auth)

### Routing y archivos

- **Usa `+page.svelte`** en lugar de `index.svelte` o `about.svelte` para definir rutas.
  (Fuente: Vercel — https://youtu.be/QYZ1s_x5nUM)

- **Usa `+layout.svelte`** en lugar de `__layout.svelte` para layouts compartidos.
  (Fuente: Vercel — https://youtu.be/QYZ1s_x5nUM)

- **Usa carpetas con paréntesis `(grupo)`** cuando necesites agrupar layouts sin afectar la URL.
  (Fuente: Vercel — https://youtu.be/QYZ1s_x5nUM)

### Load functions

- **Define la load function en `+page.ts` o `+page.server.ts`** (archivo hermano del page component), no en un bloque `context module`.
  (Fuente: Vercel — https://youtu.be/QYZ1s_x5nUM)

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

- **Load function básica con ruta dinámica:**
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
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Usa `Promise.all()` para fetching paralelo de datos independientes:**
  ```typescript
  const [postResponse, commentResponse] = await Promise.all([
    fetch(`https://api.example.com/posts/${postId}`),
    fetch(`https://api.example.com/posts/${postId}/comments`)
  ]);
  ```
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Usa `await` secuencial cuando un fetch dependa del resultado de otro:**
  ```typescript
  const post = await postResponse.json();
  const authorResponse = await fetch(`https://api.example.com/users/${post.userId}`);
  ```
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

### Manejo de errores

- **Usa `throw error(statusCode, message)` de `@sveltejs/kit` para errores controlados:**
  ```typescript
  import { error } from '@sveltejs/kit';
  if (!userId || isNaN(Number(userId))) throw error(400, 'Invalid user ID');
  if (userResponse.status === 404) throw error(404, 'User not found');
  ```
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Crea `+error.svelte` en el mismo nivel de ruta para páginas de error personalizadas:**
  ```svelte
  <script lang="ts">
    import { page } from '$app/stores';
    function retry() { location.reload(); }
    function goHome() { goto('/'); }
  </script>
  <h1>{$page.status === 404 ? 'Page Not Found' : 'Something went wrong'}</h1>
  <p>{$page.error?.message ?? 'An unexpected error occurred'}</p>
  ```
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

### Invalidación de datos

- **Usa `depends('app:key')` en load functions para crear claves de invalidación personalizadas:**
  ```typescript
  export const load: PageLoad = async ({ depends, fetch }) => {
    depends('app:todos');
    // ... fetch data
    return { todos, lastUpdated: new Date().toISOString() };
  };
  ```
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Usa `invalidate('app:key')` para recargar load functions específicas:**
  ```svelte
  import { invalidate, invalidateAll } from '$app/navigation';
  function refreshTodos() { invalidate('app:todos'); }
  ```
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Usa `invalidateAll()` solo cuando múltiples datos puedan haber cambiado.**
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Nunca** uses `invalidateAll()` cuando solo necesitas recargar una parte específica de los datos; es ineficiente.
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

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

- **Form action de login con Supabase:**
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
  (Fuente: Huntabyte — https://youtu.be/lSm0GNnh-0I)

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

- **Callback de `use:enhance` con validación frontal y cancelación:**
  ```svelte
  <form method="POST" action="?/act" use:enhance={({ formData, cancel }) => {
    if (formData.get('firstName') === 'Dave') {
      cancel();
    }
  }}>
  ```
  (Fuente: SvelteKit — Consulting Ninja — fY34H1IfA94)

### Hooks de servidor

- **Configurar hooks.server.ts con Supabase:**
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
  (Fuente: Ben Davis — https://youtu.be/lEWghUOta-4)

- **Tipar locals en `src/app.d.ts`:**
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
  (Fuente: Ben Davis — https://youtu.be/lEWghUOta-4)

### Layout y load functions con auth

- **Layout de servidor para pasar session al cliente:**
  ```ts
  // src/routes/+layout.server.ts
  export const load = async ({ locals: { safeGetSession } }) => {
    const session = await safeGetSession();
    return { session };
  };
  ```
  (Fuente: Ben Davis — https://youtu.be/lEWghUOta-4)

- **Layout con runes y suscripción a cambios de auth:**
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
  (Fuente: Ben Davis — https://youtu.be/lEWghUOta-4)

### Autenticación OAuth

- **Ruta de login con OAuth GitHub:**
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
  (Fuente: Ben Davis — https://youtu.be/lEWghUOta-4)

- **Ruta de callback OAuth:**
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
  (Fuente: Ben Davis — https://youtu.be/lEWghUOta-4)

### Gotchas

- **Error de tipos en `$types`:** Si `import type { PageLoad } from './$types'` da error, ejecuta la app (`npm run dev`) para que SvelteKit genere los tipos automáticamente.
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **No validar parámetros de ruta:** Usa `isNaN(Number(userId))` para validar.
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **No limpiar intervalos:** Usa `onMount` con cleanup `return () => clearInterval(...)` para evitar memory leaks.
  (Fuente: Code Hub — https://youtu.be/NDoVTJak8Mk)

- **Nunca uses `$state` ni `$effect` dentro de `load` functions** en `+page.server.ts` o `+layout.server.ts`.
  (Fuente: Joy of Code — https://youtu.be/qI31XOrBuY0)

---

# 3. FastAPI (estructura, async, Pydantic, clean architecture)

### Estructura de aplicación grande (Clean Architecture)

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
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

### Pydantic v2 models

- **Define un modelo base Pydantic con `from_attributes = True`:**
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
  (Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

- **Usar tipos especiales como `EmailStr`:**
  ```python
  from pydantic import EmailStr

  class User(BaseModel):
      name: str
      email: EmailStr
      account_id: int
  ```
  (Fuente: Pydantic Tutorial — pixegami — XIdQ6gO3Anc)

- **Añadir validación personalizada con el decorador `@validator`:**
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
  (Fuente: Pydantic Tutorial — pixegami — XIdQ6gO3Anc)

- **Define modelos Pydantic separados para creación y actualización:**
  ```python
  class ItemCreate(BaseModel):
      name: str
      description: str | None = None

  class ItemUpdate(BaseModel):
      name: str | None = None
      description: str | None = None
  ```
  (Fuente: