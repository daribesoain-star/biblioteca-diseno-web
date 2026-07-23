# SvelteKit form actions + load — doctrina oficial
**Fuente:** SvelteKit Docs oficial | https://svelte.dev/docs/kit/form-actions

## Actions (en +page.server.ts, siempre POST)
- **Default:** `export const actions = { default: async (event) => {...} }`.
- **Named** (varios forms): `actions = { login: async()=>{}, register: async()=>{} }` → `<form method="POST" action="?/register">`.
- Reciben `RequestEvent`; leer con `const data = await request.formData()`.
- Validación: `return fail(400, { email, missing: true })` (status 400-599 + data). Éxito: `return { success: true }` (objeto serializable).
- `redirect(303, url)` para redirigir tras éxito.
- Ejemplo login: leer email/password → `fail` si falta o incorrecto → `cookies.set('sessionid', ..., { path:'/' })` → `redirect(303, redirectTo)`.

## use:enhance (progressive enhancement)
- `import { enhance } from '$app/forms'` + `<form method="POST" use:enhance>` = comportamiento por defecto sin recargar.
- Custom: `use:enhance={({formData, cancel}) => { return async ({result, update}) => { if(result.type==='redirect') goto(result.location); else await applyAction(result); } }}`. `update()` dispara la lógica por defecto.

## Consumir el resultado en +page.svelte
- `let { form } = $props();` → `{#if form?.missing}<p class="error">...</p>{/if}` y `value={form?.email ?? ''}`. El `form` prop vive hasta la próxima navegación.
- Tras una action la página se re-renderiza (salvo redirect/error) con el return como `form`.

## Load: +page.ts vs +page.server.ts
- **+page.server.ts** (solo servidor; aquí van las actions y acceso a DB/cookies): `export const load = async ({cookies}) => { return { user: await db.getUserFromSession(cookies.get('sessionid')) } }`.
- **+page.ts** (universal, corre también en cliente): `export const load = async ({fetch}) => { return { data: await fetch('/api/data').then(r=>r.json()) } }`.
- Regla: datos sensibles/secretos/DB → server load; fetch de APIs públicas → universal load.
