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