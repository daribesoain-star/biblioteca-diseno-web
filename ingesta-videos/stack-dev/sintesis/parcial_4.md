# DOCTRINA ACCIONABLE DE PRODUCCIÓN

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