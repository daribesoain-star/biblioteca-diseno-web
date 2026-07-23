# SvelteKit 
**Fuente:** Consulting Ninja | https://youtu.be/fY34H1IfA94

## Qué enseña (2-3 líneas)
Tutorial sobre formularios en SvelteKit: tipado de form actions con TypeScript (Actions, RequestEvent, ActionFailure) y uso de `use:enhance` para evitar recargas completas de página. Cubre desde lo básico sin tipos hasta el tipado completo con interfaces y tipos genéricos.

## Técnicas y patrones accionables

- **Archivo `+page.server.ts` con una action nombrada:**
  ```typescript
  export const actions = {
    act: async ({ request }) => {
      const data = await request.formData();
      const firstName = data.get('firstName');
      const lastName = data.get('lastName');
      const age = data.get('age');
      // ...
    }
  };
  ```

- **Uso de `fail` de SvelteKit para errores:**
  ```typescript
  import { fail } from '@sveltejs/kit';

  if (age === 'Old AF') {
    return fail(400, { tooOld: true, type: 'fail', firstName, lastName, age });
  }
  ```

- **Tipado progresivo de form actions:**

  1. Crear interfaz para los datos del formulario:
  ```typescript
  interface MyData {
    tooOld: boolean;
    type: string;
    firstName: FormDataEntryValue;
    lastName: FormDataEntryValue;
    age: FormDataEntryValue | string;
    [key: string]: any; // índice de firma para ActionFailure
  }
  ```

  2. Importar tipos necesarios:
  ```typescript
  import type { Actions, RequestEvent, ActionFailure } from '@sveltejs/kit';
  ```

  3. Tipar `actions` y `request`:
  ```typescript
  export const actions: Actions = {
    act: async ({ request }: { request: RequestEvent }) => {
      // ...
    }
  };
  ```

  4. Tipar el retorno como Promise con unión de tipos:
  ```typescript
  act: async ({ request }: { request: RequestEvent }): Promise<MyData | ActionFailure<MyData>> => {
    // ...
    return { tooOld: false, type: 'success', firstName, lastName, age };
  }
  ```

- **`use:enhance` en `+page.svelte` para evitar recarga completa:**
  ```svelte
  <script>
    import { enhance } from '$app/forms';
  </script>

  <form method="POST" action="?/act" use:enhance>
    <!-- campos del formulario -->
  </form>
  ```

- **Callback de `use:enhance` con validación frontal y cancelación:**
  ```svelte
  <form method="POST" action="?/act" use:enhance={({ formData, cancel }) => {
    if (formData.get('firstName') === 'Dave') {
      cancel();
    }
  }}>
  ```

- **Parámetros del callback de `use:enhance`:**
  ```typescript
  use:enhance={({ form, formData, action, cancel }) => {
    // form: HTMLFormElement
    // formData: FormData
    // action: string (URL de la acción)
    // cancel: () => void
  }}
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `FormDataEntryValue`** como tipo para valores obtenidos con `data.get()` antes de hacer conversión explícita.
- **Importa tipos con `import type`** desde `@sveltejs/kit` para `Actions`, `RequestEvent` y `ActionFailure`.
- **Añade `[key: string]: any`** a tu interfaz de datos cuando uses `ActionFailure<T>` para evitar error de "index signature for type string is missing".
- **Usa `fail(statusCode, data)`** para retornar errores desde form actions; el primer argumento es el código HTTP.
- **Usa `use:enhance`** en formularios como predeterminado en producción para eliminar recargas completas de página.
- **Usa el callback de `use:enhance`** para validaciones frontales y cancelación con `cancel()` antes del envío.

## Errores comunes / gotchas que menciona

- **Error de tipo al no convertir `FormDataEntryValue`:** Si declaras campos como `string` pero obtienes valores con `data.get()`, TypeScript se queja porque el tipo devuelto es `FormDataEntryValue`. Solución: usar `FormDataEntryValue` directamente o convertir explícitamente.
- **Olvidar importar tipos con `import type`:** Los tipos `Actions`, `RequestEvent`, `ActionFailure` deben importarse con `import type` desde `@sveltejs/kit`.
- **Falta de índice de firma en interfaz:** Al usar `ActionFailure<MyData>`, la interfaz `MyData` necesita `[key: string]: any` para que TypeScript acepte el retorno de `fail()`.
- **`use:enhance` sin callback no evita la recarga:** Si solo pones `use:enhance` sin argumentos, la recarga se evita pero no hay control adicional. Para validación frontal se necesita el callback con `cancel()`.