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