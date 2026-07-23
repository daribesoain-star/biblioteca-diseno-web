

===== kMBDsyozllk.md =====
# The thing that makes Svelte 5 special
**Fuente:** Ben Davis | https://youtu.be/kMBDsyozllk

## Qué enseña (2-3 líneas)
Cómo usar runes ($state, $derived, $effect) con clases JavaScript y context para crear stores reactivos compartidos en SvelteKit 5. Muestra el patrón de encapsular lógica de estado en archivos `.svelte.ts` con clases, y cómo compartir instancias entre componentes usando `setContext`/`getContext` sin fugas de estado en SSR.

## Técnicas y patrones accionables

- **Crear un store con clase en archivo `.svelte.ts`**:
  ```ts
  // to-dos-state.svelte.ts
  interface ToDoState {
    messages: string[];
    isLoading: boolean;
    sendMessage: (text: string) => void;
  }

  class ToDoState implements ToDoState {
    messages = $state<string[]>([]);
    isLoading = $state(false);

    sendMessage(text: string) {
      this.isLoading = true;
      this.messages.push(text);
      // lógica asíncrona...
      setTimeout(() => {
        this.messages.push("respuesta fake");
        this.isLoading = false;
      }, 400);
    }
  }
  ```

- **Usar el store dentro de un componente**:
  ```svelte
  <!-- +page.svelte -->
  <script lang="ts">
    import { ToDoState } from './to-dos-state.svelte.ts';
    const chatState = new ToDoState();
  </script>

  {#each chatState.messages as msg}
    <p>{msg}</p>
  {/each}
  <button onclick={() => chatState.sendMessage("hola")}>Enviar</button>
  ```

- **Compartir estado entre componentes con context**:
  ```ts
  // counter-state.svelte.ts
  import { getContext, setContext } from 'svelte';

  class CounterState {
    count = $state(0);

    increment() { this.count += 1; }
    decrement() { this.count -= 1; }
  }

  const KEY = Symbol('counter');

  export function setCounterState() {
    return setContext(KEY, new CounterState());
  }

  export function getCounterState(): CounterState {
    return getContext(KEY);
  }
  ```

- **Inicializar store en layout y consumir en páginas**:
  ```svelte
  <!-- +layout.svelte -->
  <script lang="ts">
    import { setCounterState } from './counter-state.svelte.ts';
    setCounterState();
  </script>
  <slot />
  ```

  ```svelte
  <!-- +page.svelte o Counter.svelte -->
  <script lang="ts">
    import { getCounterState } from './counter-state.svelte.ts';
    const counter = getCounterState();
  </script>

  <button onclick={() => counter.increment()}>{counter.count}</button>
  ```

- **Patrón global toast con context**:
  ```ts
  // toast-state.svelte.ts
  class ToastState {
    open() { /* lógica */ }
    close() { /* lógica */ }
  }
  ```
  Se inicializa en `+layout.svelte` raíz con `setToastState()` y se consume en cualquier componente hijo con `getToastState().open()`.

## Reglas para el erudito (imperativas y verificables)

- **Usa `$state()` dentro de clases en archivos `.svelte.ts`** para crear variables reactivas, igual que en el script de un componente.
- **Usa `setContext`/`getContext` con una clave (Symbol o string)** para compartir instancias de clase entre componentes, nunca exportes una instancia singleton desde un módulo.
- **Nunca crees una instancia de clase en el ámbito del módulo** (ej: `export const store = new CounterState()`) porque causa fugas de estado en SSR.
- **Inicializa el store en el layout más alto** donde necesites compartirlo (ej: `+layout.svelte`), no en cada página.
- **Usa `getContext` sin argumentos** si solo tienes un store de ese tipo en el árbol; usa claves diferentes para múltiples stores del mismo tipo.
- **Implementa una interfaz** para tipar explícitamente los campos y métodos del store.

## Errores comunes / gotchas que menciona

- **Crear instancia singleton exportada**: `export const counter = new CounterState()` en un módulo `.svelte.ts` causa "weird leaking with serverside rendering" (fugas de estado entre usuarios en SSR).
- **No usar context para compartir**: si inicializas el store dentro de un componente (`new ToDoState()` en `+page.svelte`), ese estado no es accesible desde otros componentes/páginas hermanas.
- **Olvidar que Svelte funciona como árbol**: el layout es padre de las páginas, las páginas son padres de los componentes importados. El context fluye hacia abajo, no hacia arriba ni entre hermanos sin un ancestro común.

===== kmJz8w5ij8Y.md =====
# 15 FastAPI Best Practices For Production
**Fuente:** Code Collider | https://youtu.be/kmJz8w5ij8Y

## Qué enseña (2-3 líneas)
El tutorial cubre 15 prácticas esenciales para llevar FastAPI a producción: desde reglas de `async`/`def`, manejo de conexiones a bases de datos, logging estructurado, tareas en segundo plano, validación con Pydantic, hasta despliegue con Gunicorn y uvloop. Está orientado a evitar errores comunes y optimizar rendimiento en aplicaciones I/O-bound.

## Técnicas y patrones accionables

- **Nunca usar `async def` para operaciones bloqueantes**: Si el endpoint ejecuta `time.sleep()`, lectura/escritura de archivos, HTTP con `requests`, o queries con `pymongo.MongoClient`, definirlo con `def` (no `async def`). FastAPI lo ejecutará en un hilo separado automáticamente.
- **Usar librerías async-friendly**: `asyncio.sleep` en vez de `time.sleep`, `httpx.AsyncClient` en vez de `requests`, `motor` en vez de `pymongo`.
- **No hacer cómputo pesado en endpoints**: FastAPI es para I/O-bound. Para ML ligero (<100ms inferencia, bajo tráfico) puede funcionar; para modelos pesados usar motores dedicados (Triton, TensorFlow Serving, TorchServe) y FastAPI solo para validar inputs y enrutar. Para cómputo muy largo: sistema de cola + worker (RabbitMQ + Celery).
- **Reglas de `async def`/`def` también aplican a dependencias**: Usar `def` si la dependencia hace operaciones bloqueantes; `async def` si es ligera, CPU-bound y no bloqueante. No hacer cómputo pesado dentro de dependencias.
- **Usar `BackgroundTasks` para tareas "fire-and-forget"**: Ej: enviar email de confirmación, loguear eventos. No usar para tareas que requieran entrega garantizada, reintentos, o larga duración. Si el proceso crashea antes de completar la tarea, esta falla.
- **Deshabilitar Swagger/ReDoc en producción**: Configurar `docs_url=None`, `redoc_url=None`, `openapi_url=None` en settings de producción.
- **Crear un modelo base Pydantic personalizado**: Para configuraciones globales (alias generator para camelCase/snake_case, encoders globales para `datetime`→string, `Decimal`→float, `ObjectId`→string).
- **No construir manualmente el modelo de respuesta**: Si se define `response_model`, devolver un diccionario plano; FastAPI lo convierte, valida y serializa automáticamente.
- **Validar con Pydantic, no con código propio**: Mover toda validación a modelos Pydantic. Si Pydantic no soporta algo, agregar validación personalizada dentro del modelo, no en la función del endpoint.
- **Usar dependencias para validación con base de datos**: Ej: verificar si un recurso pertenece al usuario actual. Crear una dependencia reutilizable. FastAPI cachea dependencias por request (solo se evalúa una vez).
- **Usar pool de conexiones con dependency injection**: Dos formas:
  1. **Almacenar pool en `app.state`** (recomendado): Inicializar en `lifespan`, crear dependencia que obtenga conexión con `async with` para liberación automática.
  2. **Pool global-style**: Variable global poblada durante el lifespan.
- **Usar `lifespan` en vez de `@app.on_event("startup")`/`@app.on_event("shutdown")`**: Unifica setup y cleanup. Si el startup falla, lifespan asegura cleanup (no garantizado con el método antiguo).
- **No hardcodear secretos**: Usar archivo `.env` (agregar a `.gitignore`), incluir `.env.example` como template. Centralizar en clase `Settings` con `pydantic.BaseSettings` (valida al iniciar, falla temprano). Alternativa: Dynaconf.
- **Logging estructurado**: Usar módulo `logging` + `Loguru` o `Structlog`. Asignar niveles (DEBUG, INFO, WARNING, ERROR, CRITICAL). Configurar nivel según entorno (DEBUG en desarrollo, INFO/ERROR en producción). Agregar contexto (request ID, user ID) mediante middleware con variables de contexto. No loguear datos sensibles (credenciales, API keys). Centralizar logs con Filebeat → Elasticsearch.
- **Despliegue**: En local: Uvicorn solo. En producción: Uvicorn con Gunicorn usando `UvicornWorker`. Instalar `uvloop` (FastAPI lo detecta automáticamente). Workers = (CPU cores * 2) + 1 como punto de partida (ajustar con benchmarks). Considerar Docker para escalar.

## Reglas para el erudito (imperativas y verificables)

- Usa `def` (no `async def`) en endpoints y dependencias cuando haya operaciones bloqueantes (I/O síncrono, CPU-bound pesado).
- Usa `asyncio.sleep`, `httpx.AsyncClient`, `motor` en vez de sus contrapartes síncronas.
- No ejecutes cómputo pesado (ML, procesamiento de imágenes/video) directamente en endpoints FastAPI.
- Usa `BackgroundTasks` solo para tareas pequeñas, no críticas, sin necesidad de reintentos.
- Pon `docs_url=None`, `redoc_url=None`, `openapi_url=None` en producción si la API no es pública.
- Define un modelo base Pydantic con `alias_generator` y `json_encoders` globales.
- Devuelve diccionarios planos en endpoints con `response_model`; no construyas el modelo manualmente.
- Centraliza toda validación en modelos Pydantic; nunca en funciones del endpoint con `if` manuales.
- Crea dependencias para validación que requiera queries a DB; FastAPI las cachea por request.
- Usa `app.state` para almacenar el pool de conexiones y accede mediante dependencias con `async with`.
- Usa el decorador `lifespan` en vez de `@app.on_event("startup")`/`@app.on_event("shutdown")`.
- Guarda secretos en `.env`, agrega `.env` a `.gitignore`, incluye `.env.example`. Usa `pydantic.BaseSettings` para validar al inicio.
- Usa logging estructurado con `logging` + `Structlog`/`Loguru`; agrega request ID mediante middleware con context vars.
- En producción: Gunicorn + UvicornWorker, instala `uvloop`, workers = (CPU cores * 2) + 1 como base.

## Errores comunes / gotchas que menciona

- Poner `time.sleep()` o `requests.get()` dentro de `async def` bloquea todo el servidor.
- Usar `BackgroundTasks` para tareas que requieren garantía de entrega o reintentos (se pierden si el proceso crashea).
- Exponer Swagger/ReDoc en producción revela endpoints inseguros o incompletos.
- Devolver `datetime` o `Decimal` directamente causa error de serialización JSON (hay que definir encoders globales).
- Construir manualmente el modelo de respuesta cuando ya hay `response_model` es redundante y no da beneficio.
- Esparcir validación con `if` en endpoints: errores inconsistentes, códigos 400 sin explicación, lógica duplicada, OpenAPI docs incompletos.
- Hardcodear secretos en el código fuente (API keys, contraseñas, tokens).
- Usar `print()` para logging: sin niveles, sin contexto (request ID, timestamp), imposible filtrar en producción.
- No centralizar logs cuando hay múltiples instancias de la aplicación.
- Usar Uvicorn solo en producción (debe ir con Gunicorn + UvicornWorker).
- No instalar `uvloop` (pérdida de rendimiento).
- Usar workers fijos sin benchmarkear según CPU.

===== l21Fj0A7xn0.md =====
# How to Deploy SvelteKit to Vercel
**Fuente:** Brayden Girard | https://youtu.be/l21Fj0A7xn0

## Qué enseña (2-3 líneas)
Cómo desplegar un proyecto SvelteKit en Vercel usando el adaptador oficial `@sveltejs/adapter-vercel`. Cubre la instalación del adaptador, configuración en `svelte.config.js`, inicialización de Git, push a GitHub e importación del repositorio en Vercel para un deploy completo (frontend en CDN + serverless functions).

## Técnicas y patrones accionables

- **Instalar el adaptador de Vercel como dependencia de desarrollo:**
  ```bash
  npm install --save-dev @sveltejs/adapter-vercel
  ```

- **Configurar el adaptador en `svelte.config.js`:**
  ```javascript
  import adapter from '@sveltejs/adapter-vercel';

  const config = {
    kit: {
      adapter: adapter()
    }
  };

  export default config;
  ```

- **Inicializar repositorio Git y hacer commit:**
  ```bash
  git init
  git add .
  git commit -m "vercel deploy"
  ```

- **Conectar repositorio local con GitHub:**
  ```bash
  git remote add origin https://github.com/tu-usuario/vercel-sveltekit.git
  git branch -M main
  git push -u origin main
  ```

- **Desplegar en Vercel:**
  1. Ir a [vercel.com](https://vercel.com)
  2. Crear nuevo proyecto → "Import from Git Repository"
  3. Seleccionar el repositorio de GitHub
  4. No cambiar ninguna configuración → presionar "Deploy"
  5. El build despliega automáticamente:
     - Frontend → CDN de Vercel
     - Server-side code → Serverless Functions de Vercel

- **Verificar el deploy:** Click en "Visit" para abrir la URL temporal asignada por Vercel.

## Reglas para el erudito (imperativas y verificables)

- Usa `npm init svelte@next` para crear un proyecto SvelteKit con la configuración por defecto.
- Instala `@sveltejs/adapter-vercel` como dependencia de desarrollo (`--save-dev`).
- Modifica únicamente `svelte.config.js` para agregar el adaptador; no toques otros archivos de configuración para el deploy básico.
- No cambies ninguna configuración en el dashboard de Vercel al importar el proyecto; los defaults funcionan.
- Asegúrate de que el repositorio de GitHub ya esté creado antes de hacer `git remote add origin`.

## Errores comunes / gotchas que menciona

- No menciona errores específicos en la transcripción. El tutorial es directo y no reporta gotchas.

===== lEWghUOta-4.md =====
# 2024 Supabase + Sveltekit Tutorial (0 to prod)
**Fuente:** Ben Davis | https://youtu.be/lEWghUOta-4

## Qué enseña (2-3 líneas)
Tutorial completo para construir una app full-stack con SvelteKit 5 (runes), Supabase (local y producción), autenticación OAuth con GitHub, base de datos con Drizzle ORM, RLS, y deploy a Vercel. Cubre desde la configuración local del stack hasta el despliegue en producción.

## Técnicas y patrones accionables

- **Inicializar proyecto SvelteKit 5 con runes:**
  ```bash
  npm svelte@latest
  # Seleccionar: skeleton project, TypeScript, ESLint, prettier, Svelte 5 preview
  ```
  Eliminar `.npmrc` si se usa Bun.

- **Inicializar Supabase local:**
  ```bash
  supabase init
  ```
  Requisitos: Docker Desktop y Supabase CLI.

- **Configurar `supabase/config.toml` para OAuth local:**
  ```toml
  [auth]
  site_url = "http://localhost:5173"
  additional_redirect_urls = ["http://localhost:5173"]

  [auth.external.github]
  enabled = true
  client_id = "env(GITHUB_CLIENT_ID)"
  secret = "env(GITHUB_CLIENT_SECRET)"
  redirect_uri = "http://127.0.0.1:54321/auth/v1/callback"
  ```

- **Variables de entorno locales (`.env`):**
  ```
  GITHUB_CLIENT_ID=tu_client_id
  GITHUB_CLIENT_SECRET=tu_client_secret
  DATABASE_URL="postgresql://postgres:postgres@localhost:54322/postgres"
  PUBLIC_SUPABASE_URL="http://127.0.0.1:54321"
  PUBLIC_SUPABASE_ANON_KEY="tu_anon_key_local"
  ```

- **Configurar Drizzle ORM (`drizzle.config.ts`):**
  ```typescript
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

- **Esquema de base de datos (`src/lib/db/schema.ts`):**
  ```typescript
  import { pgTable, text, uuid } from 'drizzle-orm/pg-core';

  export const profileTable = pgTable('profile', {
    id: uuid('id').primaryKey(),
    firstName: text('first_name').notNull(),
    lastName: text('last_name').notNull(),
    email: text('email').notNull(),
  });
  ```

- **Cliente Drizzle (`src/lib/db/index.ts`):**
  ```typescript
  import { drizzle } from 'drizzle-orm/postgres-js';
  import postgres from 'postgres';
  import * as schema from './schema';
  import { DATABASE_URL } from '$env/static/private';

  const client = postgres(DATABASE_URL);
  export const db = drizzle(client, { schema });
  ```

- **Migración con RLS habilitado (en `supabase/migrations/`):**
  ```sql
  CREATE TABLE IF NOT EXISTS "profile" (
    "id" uuid PRIMARY KEY NOT NULL,
    "first_name" text NOT NULL,
    "last_name" text NOT NULL,
    "email" text NOT NULL
  );
  ALTER TABLE "profile" ENABLE ROW LEVEL SECURITY;
  ```

- **Comando para generar migraciones:**
  ```bash
  bun run db:generate
  ```
  En `package.json`: `"db:generate": "drizzle-kit generate"`

- **Iniciar Supabase local:**
  ```bash
  supabase start
  ```
  Obtener credenciales con: `supabase status`

- **Configurar hooks de servidor (`src/hooks.server.ts`):**
  ```typescript
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

- **Tipos para locals (`src/app.d.ts`):**
  ```typescript
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

- **Layout de servidor (`src/routes/+layout.server.ts`):**
  ```typescript
  export const load = async ({ locals: { safeGetSession } }) => {
    const session = await safeGetSession();
    return { session };
  };
  ```

- **Layout con runes (`src/routes/+layout.svelte`):**
  ```svelte
  <script lang="ts">
    import { onMount } from 'svelte';
    import { invalidate } from '$app/navigation';
    import { SupabaseClient, Session } from '@supabase/supabase-js';

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
    <h2>Hello from layout</h2>
    {@render children()}
  </div>
  ```

- **Ruta de login (`src/routes/auth/login/+page.server.ts`):**
  ```typescript
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

- **Ruta de callback (`src/routes/auth/callback/+server.ts`):**
  ```typescript
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

- **Ruta de logout (`src/routes/auth/logout/+server.ts`):**
  ```typescript
  import { redirect } from '@sveltejs/kit';

  export const GET = async ({ locals: { supabase } }) => {
    await supabase.auth.signOut();
    redirect(307, '/');
  };
  ```

- **Función utilitaria para perfil (`src/lib/auth/index.ts`):**
  ```typescript
  import { error } from '@sveltejs/kit';
  import { db } from '$lib/db';
  import { profileTable } from '$lib/db/schema';
  import { eq } from 'drizzle-orm';

  export const getOrCreateUserProfile = async (locals: App.Locals) => {
    const session = await locals.safeGetSession();
    if (!session?.user) return null;

    const currentProfile = await db.query.profileTable.findFirst({
      where: eq(profileTable.id, session.user.id),
    });

    if (currentProfile) return currentProfile;

    const [newProfile] = await db.insert(profileTable)
      .values({
        id: session.user.id,
        firstName: '',
        lastName: '',
        email: session.user.email ?? '',
      })
      .returning();

    if (!newProfile) throw error(500, 'Could not create profile');
    return newProfile;
  };
  ```

- **Page server con load y actions (`src/routes/+page.server.ts`):**
  ```typescript
  import { error } from '@sveltejs/kit';
  import { db } from '$lib/db';
  import { profileTable } from '$lib/db/schema';
  import { eq } from 'drizzle-orm';
  import { getOrCreateUserProfile } from '$lib/auth';
  import { zfd } from 'zod-form-data';

  export const load = async ({ locals }) => {
    const userProfile = await getOrCreateUserProfile(locals);
    return { userProfile };
  };

  export const actions = {
    default: async ({ request, locals }) => {
      const userProfile = await getOrCreateUserProfile(locals);
      if (!userProfile) throw error(401, 'You need to be logged in');

      const schema = zfd.formData({
        firstName: zfd.text(),
        lastName: zfd.text(),
        email: zfd.text(),
      });

      const data = schema.safeParse(await request.formData());
      if (!data.success) throw error(400, 'Invalid form data');

      await db.update(profileTable)
        .set({
          firstName: data.data.firstName,
          lastName: data.data.lastName,
          email: data.data.email,
        })
        .where(eq(profileTable.id, userProfile.id));

      return { success: true };
    },
  };
  ```

- **Page con runes y progressive enhancement (`src/routes/+page.svelte`):**
  ```svelte
  <script lang="ts">
    import { enhance } from '$app/forms';
    import { invalidateAll } from '$app/navigation';
    import Button from '$lib/components/ui/button.svelte';
    import Card, { CardContent, CardHeader } from '$lib/components/ui/card.svelte';
    import Input from '$lib/components/ui/input.svelte';
    import Label from '$lib/components/ui/label.svelte';

    let { data } = $props();
    const { userProfile } = $derived(data);

    let firstName = $state('');
    let lastName = $state('');
    let email = $state('');

    $effect(() => {
      if (userProfile) {
        firstName = userProfile.firstName;
        lastName = userProfile.lastName;
        email = userProfile.email;
      }
    });
  </script>

  {#if userProfile}
    <Card>
      <CardHeader>Manage your profile</CardHeader>
      <CardContent>
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
          <div>
            <Label for="email">Email</Label>
            <Input id="email" bind:value={email} disabled />
          </div>
          <div>
            <Label for="firstName">First Name</Label>
            <Input id="firstName" bind:value={firstName} />
          </div>
          <div>
            <Label for="lastName">Last Name</Label>
            <Input id="lastName" bind:value={lastName} />
          </div>
          <Button type="submit">Update</Button>
        </form>
      </CardContent>
    </Card>
    <a href="/auth/logout"><Button>Log out</Button></a>
  {:else}
    <a href="/auth/login"><Button>Log into the site</Button></a>
  {/if}
  ```

- **Deploy a producción:**
  1. Crear proyecto en Supabase dashboard (micro instance, US East).
  2. Vincular proyecto local: `supabase link --project-ref <ref>`
  3. Pushear migraciones: `supabase db push`
  4. Configurar en Supabase: deshabilitar email auth, habilitar GitHub provider con callback URL de producción.
  5. En Vercel: importar repo, framework preset SvelteKit, añadir env vars:
     - `DATABASE_URL` (production connection string de Supabase)
     - `PUBLIC_SUPABASE_URL` (project URL)
     - `PUBLIC_SUPABASE_ANON_KEY` (anon key)
  6. En GitHub OAuth app: homepage URL = Vercel URL, callback URL = la de Supabase auth.

## Reglas para el erudito (imperativas y verificables)

- **Usa `supabase init`** antes de cualquier configuración local.
- **Usa `http://127.0.0.1:54321/auth/v1/callback`** como redirect URI en GitHub OAuth para desarrollo local.
- **Usa `ALTER TABLE ... ENABLE ROW LEVEL SECURITY`** en cada migración para bloquear acceso público HTTP.
- **Usa `sequence()` de `@sveltejs/kit/hooks`** para componer múltiples handlers en `hooks.server.ts`.
- **Usa `$effect` en lugar de `onMount`** para escuchar cambios de autenticación en SvelteKit 5.
- **Usa `{@render children()}`** en lugar de `<slot />` en SvelteKit 5.
- **Usa `zfd.formData()` de `zod-form-data`** para validar formularios con tipos correctos (text, no string).
- **Usa `use:enhance`** para progressive enhancement en formularios.
- **Nunca expongas `DATABASE_URL`** en variables públicas; usa `$env/static/private`.
- **Nunca uses `supabase.auth.getUser()`** directamente en load functions sin llamar a `safeGetSession()` primero.
- **Nunca uses email authentication** si prefieres OAuth social; deshabilítalo en Supabase dashboard.

## Errores comunes / gotchas que menciona

- **Error de redirect URI en GitHub OAuth:** La callback URL debe ser exactamente `http://127.0.0.1:54321/auth/v1/callback` para local, no `localhost`.
- **Error de variable de entorno `GITHUB_CLIENT_SECRET`:** En `config.toml`, la clave es `secret`, no `client_secret`.
- **Error de caché en SvelteKit:** Si los cambios no se reflejan, eliminar `.svelte-kit` y reinstalar (`bun i && bun run dev`).
- **Error de efecto infinito:** Al pasar todo `propsData` a `$effect`, se re-ejecuta constantemente. Destructurar solo lo necesario (`const { supabase, session } = $derived(propsData)`).
- **Error de form actions con OAuth:** No mezclar form actions con redirecciones OAuth; usar rutas GET separadas (`/auth/github/+server.ts`).
- **Error de perfil nulo:** `safeGetSession()` debe llamarse explícitamente en cada load/action; no asumir que `locals.user` existe.
- **Error de deploy en Vercel:** Si falla con error de git, versionar package.json (ej: `"version": "0.0.2"`) y hacer push.
- **Error de callback en producción:** Configurar Site URL en Supabase Auth Settings con la URL de Vercel (sin slash final).

===== lSm0GNnh-0I.md =====
# SvelteKit Authentication with Supabase
**Fuente:** Huntabyte | https://youtu.be/lSm0GNnh-0I

## Qué enseña (2-3 líneas)
A implementar autenticación completa (registro, inicio de sesión, cierre de sesión) en SvelteKit 5 usando Supabase, combinando cliente y servidor con progressive enhancement. Cubre configuración de hooks, layout server load, form actions, y suscripción a cambios de estado de autenticación.

## Técnicas y patrones accionables

- **Crear cliente Supabase en `src/lib/supabase.ts`:**
  ```ts
  import { createClient } from '@supabase/auth-helpers-sveltekit'
  import { PUBLIC_SUPABASE_ANON_KEY, PUBLIC_SUPABASE_URL } from '$env/static/public'
  
  export const supabaseClient = createClient(PUBLIC_SUPABASE_URL, PUBLIC_SUPABASE_ANON_KEY)
  ```

- **Configurar `src/hooks.server.ts` con handle function:**
  ```ts
  import { getSupabase } from '@supabase/auth-helpers-sveltekit'
  import type { Handle } from '@sveltejs/kit'
  
  export const handle: Handle = async ({ event, resolve }) => {
    const { session, supabaseClient } = await getSupabase(event)
    event.locals.sb = supabaseClient
    event.locals.session = session
    return resolve(event)
  }
  ```

- **Configurar `src/hooks.client.ts`:**
  ```ts
  import '$lib/supabase'
  ```

- **Tipar locals y page data en `src/app.d.ts`:**
  ```ts
  declare global {
    namespace App {
      interface Locals {
        sb: import('@supabase/supabase-js').SupabaseClient
        session: import('@supabase/supabase-js').Session | null
      }
      interface PageData {
        session: import('@supabase/supabase-js').Session | null
      }
    }
  }
  ```

- **Crear `src/routes/+layout.server.ts` para pasar session al cliente:**
  ```ts
  import { getServerSession } from '@supabase/auth-helpers-sveltekit'
  import type { LayoutServerLoad } from './$types'
  
  export const load: LayoutServerLoad = async (event) => {
    return {
      session: await getServerSession(event)
    }
  }
  ```

- **Suscripción a cambios de auth en `src/routes/+layout.svelte`:**
  ```svelte
  <script lang="ts">
    import { onMount } from 'svelte'
    import { invalidateAll } from '$app/navigation'
    import { supabaseClient } from '$lib/supabase'
    
    onMount(() => {
      const { subscription } = supabaseClient.auth.onAuthStateChange(() => {
        invalidateAll()
      })
      return subscription.unsubscribe
    })
  </script>
  ```

- **Form action de registro en `src/routes/register/+page.server.ts`:**
  ```ts
  import { fail, redirect } from '@sveltejs/kit'
  import { AuthApiError } from '@supabase/supabase-js'
  import type { Actions } from './$types'
  
  export const actions: Actions = {
    register: async ({ request, locals }) => {
      const body = Object.fromEntries(await request.formData())
      
      const { data, error: err } = await locals.sb.auth.signUp({
        email: body.email as string,
        password: body.password as string
      })
      
      if (err) {
        if (err instanceof AuthApiError && err.status === 400) {
          return fail(400, { error: 'Invalid email or password' })
        }
        return fail(500, { error: 'Server error. Please try again later.' })
      }
      
      throw redirect(303, '/')
    }
  }
  ```

- **Form action de login en `src/routes/login/+page.server.ts`:**
  ```ts
  import { fail, redirect } from '@sveltejs/kit'
  import { AuthApiError } from '@supabase/supabase-js'
  import type { Actions } from './$types'
  
  export const actions: Actions = {
    login: async ({ request, locals }) => {
      const body = Object.fromEntries(await request.formData())
      
      const { data, error: err } = await locals.sb.auth.signInWithPassword({
        email: body.email as string,
        password: body.password as string
      })
      
      if (err) {
        if (err instanceof AuthApiError && err.status === 400) {
          return fail(400, { error: 'Invalid credentials' })
        }
        return fail(500, { error: 'Server error. Try again later.' })
      }
      
      throw redirect(303, '/')
    }
  }
  ```

- **Endpoint de logout en `src/routes/logout/+page.server.ts`:**
  ```ts
  import { error, redirect } from '@sveltejs/kit'
  import type { RequestHandler } from './$types'
  
  export const POST: RequestHandler = async ({ locals }) => {
    const { error: err } = await locals.sb.auth.signOut()
    
    if (err) {
      throw error(500, 'Something went wrong logging you out')
    }
    
    throw redirect(303, '/')
  }
  ```

- **Progressive enhancement en logout (cliente):**
  ```svelte
  <script lang="ts">
    import { enhance } from '$app/forms'
    import { supabaseClient } from '$lib/supabase'
    
    const submitLogout: SubmitFunction = async ({ cancel }) => {
      const { error } = await supabaseClient.auth.signOut()
      if (error) console.log(error)
      cancel()
    }
  </script>
  
  <form action="/logout" method="POST" use:enhance={submitLogout}>
    <button type="submit" class="button button-primary">Log out</button>
  </form>
  ```

- **Mostrar estado de sesión en `+page.svelte`:**
  ```svelte
  <script lang="ts">
    import type { PageData } from './$types'
    
    let { data }: { data: PageData } = $props()
  </script>
  
  {#if data.session}
    <p>Welcome {data.session.user.email}</p>
  {:else}
    <a href="/login">Login</a>
    <a href="/register">Register</a>
  {/if}
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `locals.sb`** en lugar de crear un nuevo cliente Supabase en cada load function o action; el hook `handle` ya lo inyecta.
- **Usa `throw redirect(303, '/')** en form actions y endpoints; es la sintaxis correcta en SvelteKit 5.
- **Usa `fail()`** (no `invalid()`) para errores de formulario en SvelteKit 5.
- **Usa `AuthApiError`** para detectar errores de validación de Supabase (status 400).
- **Usa `invalidateAll()`** dentro del callback de `onAuthStateChange` para forzar la recarga de load functions cuando cambia el estado de autenticación.
- **Nunca** uses el mismo nombre `error` para la variable de error de Supabase y la función `error` de SvelteKit; renómbrala como `err`.
- **Configura** la URL del sitio en Supabase Dashboard > Authentication > URL Configuration: `http://localhost:5173` para desarrollo.
- **Crea** `hooks.client.ts` con `import '$lib/supabase'` para inicializar el cliente en el navegador.

## Errores comunes / gotchas que menciona

- **Error de importación en layout.server.ts:** Asegurarse de que la ruta a `$lib/supabase` sea correcta (ej. `$lib/supabase` no `lib/supabase`).
- **Conflicto de nombres `error`:** Si se usa `error` como variable de Supabase, no se puede usar `throw error()` de SvelteKit. Renombrar a `err`.
- **Suscripción no limpia:** Si no se retorna `subscription.unsubscribe` en `onMount`, la suscripción persiste y causa memory leaks.
- **Sin progressive enhancement, el logout no actualiza la UI:** Si se usa solo el cliente para logout sin invalidar, la sesión en page data queda desactualizada. La suscripción en layout resuelve esto.
- **TypeScript en body de form actions:** `body.email` es `FormDataEntryValue`, no `string`. Usar `as string` para evitar errores de tipo.

===== qI31XOrBuY0.md =====
# Different Ways To Share State In Svelte 5
**Fuente:** Joy of Code | https://youtu.be/qI31XOrBuY0

## Qué enseña (2-3 líneas)
Explica cómo compartir estado reactivo fuera de componentes Svelte 5 usando runes ($state, $derived, $effect, $props). Muestra que no estás limitado a getters/setters: puedes usar funciones, clases, tuplas, objetos proxy, y destructuring con valores "boxed". También cubre por qué no debes usar runes en el servidor y cómo pasar datos con context.

## Técnicas y patrones accionables

- **Archivo especial `.svelte.ts` para runes fuera de componentes:** El compilador necesita la extensión `.svelte.ts` para saber que debe procesar runes en archivos externos. Sin ella, no escanearía cada archivo JS buscando runes por eficiencia.

- **Problema de importación y solución con objeto proxy:** No puedes exportar un `$state` simple y reasignarlo desde otro archivo porque JavaScript no permite reasignar imports. La solución es "boxear" el valor dentro de un objeto, que Svelte convierte en proxy reactivo:

```typescript
// lib/counter.svelte.ts
export const count = $state({ value: 0 });
```

```svelte
<!-- +page.svelte -->
<script lang="ts">
  import { count } from '$lib/counter.svelte';
</script>

<button onclick={() => count.value++}>
  clicks: {count.value}
</button>
```

- **Métodos dentro del objeto proxy:** Puedes agregar métodos al objeto que modifican su estado interno:

```typescript
// lib/counter.svelte.ts
export const count = $state({
  value: 0,
  increment() {
    this.value += 1;
  }
});
```

```svelte
<script lang="ts">
  import { count } from '$lib/counter.svelte';
</script>

<button onclick={() => count.increment()}>
  clicks: {count.value}
</button>
```

- **Patrón con getters y setters (accessors):** Para control granular sobre lectura/escritura:

```typescript
// lib/counter.svelte.ts
let _count = $state(0);

export const counter = {
  get count() { return _count; },
  set count(value: number) { _count = value; },
  increment() { _count += 1; }
};
```

```svelte
<script lang="ts">
  import { counter } from '$lib/counter.svelte';
</script>

<button onclick={() => counter.count++}>
  clicks: {counter.count}
</button>
```

- **Patrón con función creadora (factory):** Para crear múltiples instancias de estado:

```typescript
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

```svelte
<script lang="ts">
  import { createCounter } from '$lib/counter.svelte';
  const counter = createCounter();
</script>

<button onclick={() => counter.count++}>
  clicks: {counter.count}
</button>
```

- **Patrón con tupla (como Solid):** Retornar un array fijo con funciones de lectura/escritura:

```typescript
// lib/counter.svelte.ts
export function createCounter() {
  let count = $state(0);

  function read() { return count; }
  function write(value: number) { count = value; }

  return [read, write] as const;
}
```

```svelte
<script lang="ts">
  import { createCounter } from '$lib/counter.svelte';
  const [count, setCount] = createCounter();
</script>

<button onclick={() => setCount(count() + 1)}>
  clicks: {count()}
</button>
```

- **Patrón con clase:** Las clases generan automáticamente getters/setters para propiedades `$state`:

```typescript
// lib/counter.svelte.ts
export class Counter {
  count = $state(0);

  increment = () => {
    this.count += 1;
  };
}
```

```svelte
<script lang="ts">
  import { Counter } from '$lib/counter.svelte';
  const counter = new Counter();
</script>

<button onclick={counter.increment}>
  clicks: {counter.count}
</button>
```

- **Destructuring de valores proxy:** Puedes destructurear propiedades de un objeto proxy sin perder reactividad:

```typescript
// lib/counter.svelte.ts
export const counter = $state({ value: 0, increment: () => { counter.value += 1; } });
```

```svelte
<script lang="ts">
  import { counter } from '$lib/counter.svelte';
  let { value: count, increment } = counter;
</script>

<button onclick={increment}>
  clicks: {count}
</button>
```

- **Destructuring de `$derived`:** Puedes destructurear valores retornados por `$derived`:

```typescript
// lib/counter.svelte.ts
export const counter = $derived.by(() => {
  let count = $state(0);
  return {
    get count() { return count; },
    increment: () => count += 1
  };
});
```

```svelte
<script lang="ts">
  import { counter } from '$lib/counter.svelte';
  let { count, increment } = counter;
</script>

<button onclick={increment}>
  clicks: {count}
</button>
```

- **Uso de `$effect` para side effects:** Para reaccionar a cambios de estado (localStorage, console.log, etc.):

```typescript
// lib/counter.svelte.ts
export const count = $state({ value: 0 });

$effect(() => {
  console.log('count changed:', count.value);
});
```

- **`$effect.root` para efectos fuera de inicialización de componente:** Si defines un efecto dentro de una función que se ejecuta fuera del ciclo de inicialización de un componente, debes envolverlo en `$effect.root`:

```typescript
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

- **Context API para pasar estado a componentes hijos:** En `+page.svelte`:

```svelte
<script lang="ts">
  import { setContext } from 'svelte';
  import type { User } from '$lib/types';

  let { data } = $props();
  let user = $state(data.user);

  setContext('user', user);
</script>
```

En componente hijo:

```svelte
<script lang="ts">
  import { getContext } from 'svelte';
  let user = getContext('user');
</script>
```

- **En `+page.server.ts`:** No uses runes ni stores. Retorna datos planos:

```typescript
// +page.server.ts
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ locals }) => {
  const user = await locals.supabase.from('users').select('*').single();
  return { user };
};
```

## Reglas para el erudito (imperativas y verificables)

- **Usa extensión `.svelte.ts`** para cualquier archivo que contenga runes fuera de un componente Svelte.
- **Usa objeto proxy (`$state({ value: ... })`)** cuando necesites exportar estado reactivo y permitir reasignación desde otros archivos.
- **Usa getters/setters** cuando necesites control granular sobre lectura/escritura de estado compartido.
- **Usa `$effect.root`** cuando definas `$effect` dentro de funciones que se ejecuten fuera del ciclo de inicialización de un componente.
- **Usa clases** cuando quieras getters/setters automáticos generados por el compilador para propiedades `$state`.
- **Usa `$derived.by`** para crear estado derivado con lógica interna que incluya `$state`.
- **Usa Context API** para pasar estado reactivo a componentes hijos, combinado con objetos proxy o funciones.
- **Nunca uses `$state` ni `$effect`** dentro de `load` functions en `+page.server.ts` o `+layout.server.ts`.
- **Nunca reasignes imports** de valores exportados directamente (ej: `export let count = $state(0)` no se puede reasignar desde otro archivo).
- **Retorna datos planos desde `load`** y luego conviértelos a reactivos dentro del componente con `$state`.

## Errores comunes / gotchas que menciona

- **Error "cannot assign to count because it is an import":** Ocurre cuando intentas reasignar un valor exportado directamente con `$state`. Solución: boxear en objeto proxy.
- **Destructuring rompe reactividad:** Si destructureas `let { count } = counter` donde `counter` usa getters, `count` es el valor en el momento de la desestructuración y no se actualiza. Solución: usar objeto proxy o acceder siempre a través del getter.
- **Error "effect orphan effects can only be used inside an effect during component initialization":** Ocurre cuando usas `$effect` fuera del ciclo de inicialización de un componente (ej: dentro de una función factory). Solución: envolver en `$effect.root`.
- **`$effect` no se ejecuta en el servidor:** No uses efectos para lógica que debe correr server-side.
- **Estado compartido en servidor causa fuga de datos:** Si asignas datos de usuario a una variable global con `$state` dentro de `load`, todos los usuarios compartirán ese estado. Solución: retornar datos desde `load` y crear estado local en el componente.

===== uAF4Yd-gddo.md =====
# Deploy Your SvelteKit App Using Vercel And Supabase
**Fuente:** Joy of Code | https://youtu.be/uAF4Yd-gddo

## Qué enseña (2-3 líneas)
Cómo desplegar una aplicación full-stack SvelteKit con base de datos PostgreSQL en Supabase y hosting en Vercel. Cubre desde la creación del proyecto, configuración de Prisma, despliegue en Vercel, hasta optimización con cabeceras de caché HTTP y prerenderizado estático.

## Técnicas y patrones accionables

- **Crear proyecto desde plantilla:**
  ```bash
  pnpx degit joyofcode/sveltekit-deploy .
  ```
  (copia el repositorio de GitHub sin historial)

- **Instalar dependencias:**
  ```bash
  pnpm install
  ```

- **Configurar variable de entorno local:**
  Renombrar `.env.example` a `.env` y agregar la cadena de conexión de Supabase (pooling connection string desde Project Settings > Database).

- **Sincronizar esquema Prisma con Supabase (prototipado rápido):**
  ```bash
  pnpx prisma db push
  ```
  (crea las tablas en Supabase sin usar migraciones)

- **Instalar adaptador de Vercel para SvelteKit:**
  ```bash
  pnpm add -D @sveltejs/adapter-vercel
  ```

- **Configurar adaptador en `svelte.config.js`:**
  ```javascript
  import adapter from '@sveltejs/adapter-vercel';
  // ... resto de configuración
  ```

- **Verificar build local antes de desplegar:**
  ```bash
  pnpm run build
  pnpm run preview
  ```
  (expone errores de task runners antes del deploy)

- **Desplegar en Vercel:**
  1. Ir a [vercel.com](https://vercel.com) > "Add New Project"
  2. Importar repositorio de GitHub
  3. Agregar variable de entorno `DATABASE_URL` con la cadena de conexión de Supabase
  4. Presionar "Deploy"

- **Establecer cabeceras de caché en `+page.server.ts`:**
  ```typescript
  import type { PageServerLoad } from './$types';

  export const load: PageServerLoad = async ({ setHeaders }) => {
    setHeaders({
      'cache-control': 'max-age=0, s-maxage=3600' // 1 hora en CDN
    });
    // ... lógica de carga
  };
  ```

- **Prerenderizar página estática y desactivar JavaScript en `+page.server.ts`:**
  ```typescript
  export const prerender = true;
  export const csr = false;
  ```

- **Cache condicional por antigüedad del contenido:**
  ```typescript
  // Ejemplo conceptual: si el post tiene más de 7 días, cachear para siempre
  if (post.publishedAt < Date.now() - 7 * 24 * 60 * 60 * 1000) {
    setHeaders({ 'cache-control': 'public, max-age=31536000, immutable' });
  }
  ```

- **Establecer caché en endpoints standalone (RSS):**
  ```typescript
  // En el handler del endpoint
  return new Response(rssXml, {
    headers: {
      'Content-Type': 'application/xml',
      'cache-control': 'max-age=0, s-maxage=3600'
    }
  });
  ```

## Reglas para el erudito (imperativas y verificables)

- Usa `pnpm` como gestor de paquetes por defecto (recomendación del autor).
- Usa `pnpx degit` para clonar plantillas sin historial de git.
- Usa `prisma db push` solo para prototipado; en producción usa `prisma migrate`.
- Usa `setHeaders` desde `PageServerLoad` para definir cabeceras HTTP en rutas SvelteKit.
- Usa `s-maxage` para cachear en CDN compartido (Vercel Edge Network).
- Usa `max-age=0` para evitar caché en navegador cuando se usa `s-maxage`.
- Usa `export const prerender = true` para páginas estáticas que no necesitan servidor.
- Usa `export const csr = false` para páginas que no necesitan JavaScript del lado cliente.
- Nunca compartas el archivo `.env` ni la contraseña de Supabase en repositorios públicos.
- Nunca despliegues sin ejecutar `pnpm run build` localmente primero para detectar errores.
- Nunca uses `s-maxage` en rutas de dashboard o contenido dinámico que requiera datos frescos siempre.

## Errores comunes / gotchas que menciona

- **Error de build en Vercel:** No entrar en pánico; el log de build en Vercel es el mismo que el local (`pnpm run build`). Leer el error y buscar en Google.
- **Error interno en dashboard después del deploy:** Puede deberse a que el sitio necesita "asentarse" (esperar unos minutos). Revisar logs en Vercel > Deployment > Functions.
- **Confundir `max-age` con `s-maxage`:** `max-age` controla caché del navegador; `s-maxage` controla caché del CDN compartido. Usar `max-age=0` cuando se usa `s-maxage` para evitar doble caché.
- **Pre-renderizado no funciona con form actions:** Si una página usa form actions de SvelteKit, no se puede prerenderizar porque requieren un servidor.
- **No olvidar agregar variable de entorno `DATABASE_URL` en Vercel antes de desplegar:** Si se omite, el build falla o la app no puede conectar a la base de datos.
- **Usar cadena de conexión de pooling en Supabase:** Específicamente para entornos serverless, para evitar problemas de conexiones concurrentes.

===== wrVKnQvDJy0.md =====
# Think Multi-Tenancy Is Easy? Think Again...
**Fuente:** Software Developer Diaries | https://youtu.be/wrVKnQvDJy0

## Qué enseña (2-3 líneas)
Explica los tres modelos de aislamiento de datos en aplicaciones multi-tenant (base de datos compartida, esquemas separados, bases de datos separadas), analizando sus ventajas, desventajas y cómo mitigar problemas como "noisy neighbors" con RLS, rate limiting y bulkhead pattern. Cubre conceptos de tenant-aware logic, data isolation, compliance y performance en sistemas SaaS.

## Técnicas y patrones accionables

- **Row Level Security (RLS) en PostgreSQL para aislamiento en base de datos compartida:**
  ```sql
  -- Habilitar RLS en la tabla
  ALTER TABLE orders ENABLE ROW LEVEL SECURITY;
  
  -- Crear política de aislamiento por tenant
  CREATE POLICY tenant_isolation_policy ON orders
  USING (tenant_id = current_setting('app.current_tenant')::uuid);
  ```

- **Sharding horizontal por tenant:** Dividir datos en shards donde "customer one and two are always going to be in the first shard, customer three and four are in the second shard".

- **Rate limiting por tenant/usuario (nginx):** "Only 10 requests per user within 10 seconds" usando nginx como proxy.

- **Prevención de long-running queries:** "Make sure that every database statement doesn't take more than 2 seconds" configurando timeouts.

- **Per-tenant connection pooling:** Limitar el pool size por tenant para evitar que un tenant acapare conexiones.

- **Bulkhead pattern / cell-based architecture:** Aislar recursos por tenant para evitar "noisy neighbors" (mencionado como tema para próximo video).

- **Esquemas separados por tenant (PostgreSQL/SQL Server):** Un solo database con múltiples schemas (schema_a, schema_b, schema_c) con la misma estructura de tablas pero namespaced.

- **Bases de datos separadas por tenant:** Para máxima isolation, spinning up "a new database for every tenant" cuando se requiere cumplimiento regulatorio o clientes enterprise/gobierno.

## Reglas para el erudito (imperativas y verificables)

- **Usa RLS con políticas por tenant** cuando uses base de datos compartida: "create policy called tenant_isolation_policy on the same table" asegurando que "tenant_id is always equal to the tenant ID that we defined above".
- **Nunca confíes solo en la lógica de aplicación** para data isolation en shared database; implementa RLS a nivel de base de datos como capa adicional de seguridad.
- **Usa rate limiting por tenant** cuando tengas "noisy neighbors" que consumen CPU desproporcionadamente.
- **Configura timeouts de queries** (ej. 2 segundos) para prevenir que un tenant degrade la experiencia de otros.
- **Usa esquemas separados** cuando necesites "per tenant customization" y "stronger data isolation" sin llegar a bases de datos independientes.
- **Usa bases de datos separadas** solo para "enterprises, government clients and regulated industries" donde el costo adicional se justifica por "maximum data isolation and security".
- **Aplica migraciones a múltiples schemas** cuando uses el modelo de schemas separados, siendo consciente de que "migrations need to be applied to multiple schemas" y puede volverse "cumbersone".

## Errores comunes / gotchas que menciona

- **Noisy neighbors:** Un tenant que utiliza "more than half of the CPU power" haciendo que "tenant B and tenant C barely get any power to work with" – sus aplicaciones se vuelven lentas y las respuestas API muy lentas.
- **Schema count limitation:** En PostgreSQL "there's no hard limit but the performance is going to suffer"; en MySQL "there's no limitation but the performance is going to suffer again"; en SQL Server "no hard limit but metadata queries and indexing slows down".
- **Backup/restore por tenant vs por database:** En shared database "if your database is gone your data for all of the tenants are gone not only one tenant" – no puedes restaurar un solo tenant individualmente.
- **Diferente significado de "schema" entre bases de datos:** "For SQL Server and PostgreSQL these are the schemas" (dentro de un database), pero "for Oracle and MySQL it works different" – Oracle/MySQL "store different schemas in different databases which is a completely different way of thinking".
- **Data isolation risk en shared database:** "You really have to make sure that tenant A whenever you're making database query doesn't accidentally fish the data for tenant B as well" – riesgo de fuga de datos entre tenants.

===== xq1Snezb1rs.md =====
# FastAPI SQLAlchemy Tutorial 2025 — Build a REST API with SQL
**Fuente:** Code with Josh | https://youtu.be/xq1Snezb1rs

## Qué enseña (2-3 líneas)
Integración de SQL en FastAPI usando SQLAlchemy como ORM para construir una API REST con operaciones CRUD completas. Cubre desde la configuración de la base de datos SQLite, creación de modelos de base de datos y modelos Pydantic, hasta la implementación y prueba de endpoints GET, POST, PUT y DELETE.

## Técnicas y patrones accionables

### Instalación de dependencias
```bash
pip install fastapi
pip install sqlalchemy
pip install uvicorn
```

### Configuración de base de datos SQLite con SQLAlchemy
```python
# my_api.py
from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, Session
from pydantic import BaseModel
from typing import Optional, List

app = FastAPI(title="Integration with SQL", description="Code with Josh")

# Database setup
engine = create_engine("sqlite:///users.db", connect_args={"check_same_thread": False})
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()
```

### Modelo de base de datos SQLAlchemy
```python
class User(Base):
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100), nullable=False)
    email = Column(String, unique=True, nullable=False)
    role = Column(String, nullable=True)
```

### Modelos Pydantic para la API
```python
class UserCreate(BaseModel):
    name: str
    email: str
    role: str

class UserResponse(BaseModel):
    id: int
    name: str
    email: str
    role: str
    
    class Config:
        from_attributes = True
```

### Dependencia para obtener sesión de base de datos
```python
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```

### Endpoint GET (obtener usuario por ID)
```python
@app.get("/users/{user_id}", response_model=UserResponse)
def get_user(user_id: int, db: Session = Depends(get_db)):
    db_user = db.query(User).filter(User.id == user_id).first()
    if not db_user:
        raise HTTPException(status_code=404, detail="User not found")
    return db_user
```

### Endpoint POST (crear usuario)
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

### Endpoint PUT (actualizar usuario)
```python
@app.put("/users/{user_id}", response_model=UserResponse)
def update_user(user_id: int, user: UserCreate, db: Session = Depends(get_db)):
    db_user = db.query(User).filter(User.id == user_id).first()
    if not db_user:
        raise HTTPException(status_code=404, detail="User does not exist")
    
    for field, value in user.dict().items():
        setattr(db_user, field, value)
    
    db.commit()
    db.refresh(db_user)
    return db_user
```

### Endpoint DELETE (eliminar usuario)
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

### Endpoint GET ALL (obtener todos los usuarios)
```python
@app.get("/users/", response_model=List[UserResponse])
def get_all_users(db: Session = Depends(get_db)):
    return db.query(User).all()
```

### Comando para ejecutar el servidor
```bash
uvicorn my_api:app --reload
```

### Inicialización de la base de datos (crear tablas)
```python
Base.metadata.create_all(bind=engine)
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `connect_args={"check_same_thread": False}`** cuando uses SQLite con FastAPI para evitar errores de concurrencia de hilos.
- **Usa `autocommit=False` y `autoflush=False`** en `sessionmaker` para tener control explícito sobre cuándo se persisten los datos.
- **Usa `from_attributes = True`** en la clase `Config` de los modelos Pydantic de respuesta para permitir la conversión automática desde objetos SQLAlchemy.
- **Usa `Depends(get_db)`** en cada endpoint que necesite acceso a la base de datos para inyectar la sesión correctamente.
- **Usa `db.commit()` después de cada operación de escritura** (add, update, delete) para persistir los cambios en la base de datos.
- **Usa `db.refresh()` después de commit** para obtener el objeto actualizado con valores generados por la base de datos (como IDs autoincrementales).
- **Usa `db.query(Model).filter().first()`** para obtener un único registro y verificar existencia antes de operar.
- **Usa `HTTPException(status_code=404)`** cuando un recurso no existe, con mensaje descriptivo en `detail`.
- **Usa `response_model`** en los decoradores de endpoints para documentar y validar la estructura de respuesta.
- **Usa `--reload`** en uvicorn durante desarrollo para recarga automática al modificar código.
- **Nunca retornes un objeto eliminado** después de `db.delete()` y `db.commit()` porque la sesión ya no lo reconoce como persistente.

## Errores comunes / gotchas que menciona

- **Error "Internal Server Error" al crear usuario por primera vez**: Ocurre cuando se modifica el modelo de base de datos después de haber creado el archivo `.db`. Solución: eliminar el archivo `users.db` y reiniciar el servidor para que se regenere con la nueva estructura.
- **Error "cannot access local variable 'user' when it's not associated with the value"**: Ocurre por error tipográfico al nombrar variables (ej: `user_id` vs `user_id`). Verificar consistencia en nombres de parámetros.
- **Error "SQLAlchemy instance is not persistent with this session" al eliminar**: Ocurre al intentar retornar el objeto eliminado después de `db.delete()` y `db.commit()`. Solución: retornar un mensaje de confirmación en lugar del objeto eliminado.
- **Error al crear usuario con email duplicado**: El modelo tiene `unique=True` en el campo email, pero no se maneja explícitamente. Solución: agregar verificación de existencia antes de crear (como se muestra en el endpoint POST).
- **Olvidar `db.commit()`**: Si no se llama a `commit()`, los cambios no se persisten en la base de datos aunque no haya error visible.

===== ybYK9jM0lco.md =====
# Advanced Playwright Techniques for Flawless Testing - Debbie O'Brien -
**Fuente:** NDC Conferences | https://youtu.be/ybYK9jM0lco

## Qué enseña (2-3 líneas)
Técnicas avanzadas de Playwright para testing end-to-end: API mocking, testing de fecha/hora con la nueva Clock API, setup tests con project dependencies, sharding y escalado en CI, y uso de herramientas como codegen, UI mode, trace viewer y GitHub Copilot para acelerar el desarrollo de tests.

## Técnicas y patrones accionables

- **Usar localizadores accesibles (user-facing locators):** Preferir `getByRole`, `getByText`, `getByPlaceholder`, `getByLabel` sobre XPath o selectores CSS. Ejemplo:
  ```typescript
  await page.getByRole('button').click();
  await page.getByPlaceholder('Search for product').fill('Xbox');
  ```

- **Usar aserciones auto-retrying de Playwright:** Siempre usar `expect` con localizadores (ej. `await expect(page.getByLabel('cart')).toContainText('1')`) en lugar de aserciones estándar que no esperan.

- **Anotaciones en tests:** Agregar metadatos en el HTML report usando `test.info().annotations`:
  ```typescript
  test('test with annotations', async ({ page }) => {
    test.info().annotations.push({
      type: 'issues',
      description: 'https://github.com/org/repo/issues/123'
    });
    // ... test logic
  });
  ```

- **Test steps:** Agrupar pasos lógicos con `test.step()` para mejor visualización en el reporte:
  ```typescript
  await test.step('Create first todo', async () => {
    // ... acciones
  });
  ```
  Usar `{ box: true }` para que los errores apunten al paso exacto:
  ```typescript
  await test.step('Create first todo', async () => {
    // ...
  }, { box: true });
  ```

- **API mocking con `page.route()`:** Interceptar llamadas a APIs y devolver datos mockeados:
  ```typescript
  await page.route('**/api/fruits', async route => {
    const json = [{ name: 'Playwright', id: 21 }];
    await route.fulfill({ json });
  });
  await page.goto('https://demo.playwright.dev/api-mocking');
  await page.getByText('Playwright').waitFor();
  ```

- **Modificar respuestas de API existentes:** Obtener la respuesta real y agregar campos:
  ```typescript
  await page.route('**/api/fruits', async route => {
    const response = await route.fetch();
    const json = await response.json();
    json.push({ name: 'Debbie', id: 100, stars: 50000 });
    await route.fulfill({ response, json });
  });
  ```

- **Monitorear requests/responses sin modificar:**
  ```typescript
  // Usar page.waitForRequest() o page.waitForResponse() para verificar que se llamó a la API
  ```

- **Testing de fecha/hora con Clock API (nuevo):** Fijar el tiempo del navegador:
  ```typescript
  await page.clock.setFixedTime(new Date('2024-01-01T10:00:00'));
  await page.goto('https://example.com/clock');
  await expect(page.getByText('10:00')).toBeVisible();
  ```

- **Avanzar el tiempo manualmente con `page.clock.fastForward()`:**
  ```typescript
  await page.clock.install();
  await page.goto('https://example.com/timer');
  await expect(page.getByText('Flash offer')).toBeVisible();
  await page.clock.fastForward('00:05:00');
  await expect(page.getByText('Offer expired')).toBeVisible();
  ```

- **Setup tests con project dependencies (solo JS/TS):** Definir un proyecto "setup" que ejecuta login y guarda storage state, y proyectos dependientes que lo reutilizan:
  ```typescript
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
  El test de setup guarda el storage state:
  ```typescript
  // login.setup.ts
  import { test as setup } from '@playwright/test';
  setup('do login', async ({ page }) => {
    await page.goto('https://en.wikipedia.org');
    await page.getByText('Log in').click();
    // ... llenar credenciales
    await page.context().storageState({ path: 'playwright/.auth/user.json' });
  });
  ```
  Si el setup falla, los tests dependientes no se ejecutan.

- **CLI: `--last-failed`:** Ejecutar solo los tests que fallaron en la última ejecución:
  ```bash
  npx playwright test --last-failed
  ```

- **CLI: `--only-changed` (nuevo):** Ejecutar solo tests de archivos modificados desde el último commit:
  ```bash
  npx playwright test --only-changed
  ```
  También funciona contra una rama específica o commit:
  ```bash
  npx playwright test --only-changed=main
  npx playwright test --only-changed=<commit-hash>
  ```
  Si se modifica un archivo importado (no spec), ejecuta todos los tests de los spec files que lo importan.

- **Sharding en CI:** Dividir tests entre múltiples workers en GitHub Actions:
  ```yaml
  - name: Run tests
    run: npx playwright test --shard=${{ matrix.shard }}/${{ strategy.job-total }}
  ```
  Ajustar el número de shards (probar con 4, no más de 6 para evitar overhead por descarga de browsers).

- **Merge reports para shards:** Combinar reportes HTML de múltiples shards en uno solo:
  ```bash
  npx playwright merge-reports --reporter html ./all-blob-reports
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa localizadores user-facing** (`getByRole`, `getByText`, `getByPlaceholder`, `getByLabel`) por defecto. Solo usa `data-testid` cuando el texto sea irrelevante o cambiante (ej. IDs de productos).
- **Nunca uses XPath o selectores CSS** como estrategia principal; son frágiles y no accesibles.
- **Usa `expect` con localizadores** (auto-retrying) en lugar de aserciones síncronas (ej. `assert.equal`). Las aserciones nativas no esperan a que el DOM se actualice.
- **Usa `test.step()` con `{ box: true }`** cuando agrupes pasos, para que los errores apunten al paso exacto.
- **Usa `page.clock.setFixedTime()`** para tests que dependen de fecha/hora; **nunca** dependas del reloj del sistema.
- **Usa `page.clock.fastForward()`** para acelerar timeouts (ej. sesiones que expiran, ofertas temporales) en lugar de `waitForTimeout`.
- **Usa project dependencies** para login o cualquier setup costoso que múltiples tests necesiten. Si el setup falla, los tests dependientes no se ejecutan automáticamente.
- **Usa `--only-changed`** como feedback loop rápido en pre-commit hooks o desarrollo local, **no** como única estrategia en CI (complementar con nightly runs completos).
- **Usa `--last-failed`** para re-ejecutar solo tests fallidos después de arreglarlos.
- **Ajusta el número de shards** experimentalmente: más shards no siempre es más rápido por el overhead de descarga de browsers. Probar con 4 como punto de partida.
- **Usa merge-reports** cuando uses sharding para tener un único reporte HTML consolidado.

## Errores comunes / gotchas que menciona

- **Localizadores duplicados:** Si hay dos elementos con el mismo texto o rol en la página, Playwright timeout porque no sabe cuál usar. Usar localizadores más específicos (ej. `getByRole('button', { name: 'Submit' })`).
- **Usar aserciones que no son auto-retrying:** Si usas `assert.equal(text, '...')` en lugar de `await expect(locator).toHaveText('...')`, el test puede pasar hoy y fallar mañana (flaky).
- **Confiar ciegamente en codegen o Copilot:** Siempre revisar y mejorar los localizadores generados. Copilot puede generar selectores CSS en lugar de user-facing locators si no se le especifica.
- **Sharding excesivo:** No asumir que más shards = más velocidad. Probar con diferentes números porque cada shard descarga su propio browser.
- **`--only-changed` no es un reemplazo de la suite completa en CI:** Usarlo solo para feedback rápido local o pre-commit. En CI, combinarlo con ejecuciones nocturnas completas.
- **Clock API no afecta cookies de sesión del servidor:** Solo controla `new Date()` y temporizadores en el navegador. Para sesiones del lado servidor, se necesita otro enfoque.
- **Project dependencies son solo para JS/TS:** En Python, C# y Java no existe este mecanismo; se debe usar otro patrón para setup tests.
- **Microsoft Playwright Testing (cloud) es un servicio de pago:** Playwright en sí es open source y gratuito. El servicio cloud de Azure es un producto aparte que requiere suscripción.