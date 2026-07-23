# Form Actions Made Simple
**Fuente:** Huntabyte | https://youtu.be/52nXUwQWeKI
## Qué enseña (2-3 líneas)
Implementación de form actions en SvelteKit 5: desde acciones por defecto hasta acciones nombradas, manejo de validación con retorno de datos al formulario, y progressive enhancement con `use:enhance` para mejorar la UX sin perder funcionalidad sin JavaScript. Todo aplicado a un gestor de contactos con operaciones CRUD básicas.

## Técnicas y patrones accionables

- **Definir acción por defecto en `+page.server.ts`:**
  ```typescript
  export const actions = {
    default: async ({ request }) => {
      const formData = await request.formData();
      console.log(formData);
    }
  };
  ```

- **Extraer valores individuales del formData:**
  ```typescript
  const name = formData.get('name');
  const email = formData.get('email');
  const company = formData.get('company');
  const job = formData.get('job');
  ```

- **Generar ID único con crypto:**
  ```typescript
  const id = crypto.randomUUID();
  ```

- **Retornar datos al cliente desde la action:**
  ```typescript
  return { success: true };
  ```

- **Acceder al objeto `form` en el cliente (`+page.svelte`):**
  ```svelte
  <script lang="ts">
    export let form;
    console.log(form); // { success: true }
  </script>
  ```

- **Validación básica con retorno de `fail` (de `@sveltejs/kit`):**
  ```typescript
  import { fail } from '@sveltejs/kit';

  if (name.length < 2) {
    return fail(400, {
      error: true,
      message: 'Name must be at least 2 characters',
      name,
      email,
      company,
      job
    });
  }
  ```

- **Poblar inputs con datos retornados tras validación fallida:**
  ```svelte
  <input name="name" value={form?.name ?? ''} />
  <input name="email" value={form?.email ?? ''} />
  <input name="company" value={form?.company ?? ''} />
  <input name="job" value={form?.job ?? ''} />
  ```

- **Acción nombrada (`create`) en `+page.server.ts`:**
  ```typescript
  export const actions = {
    create: async ({ request }) => {
      const formData = await request.formData();
      const name = formData.get('name');
      // ... construir contacto y guardar
      return { success: true };
    }
  };
  ```

- **Invocar acción nombrada desde el formulario:**
  ```svelte
  <form method="POST" action="?/create">
  ```

- **Formulario de eliminación con input oculto:**
  ```svelte
  <form method="POST" action="?/delete">
    <input type="hidden" name="id" value={contact.id} />
    <button type="submit">Delete</button>
  </form>
  ```

- **Acción `delete` en `+page.server.ts`:**
  ```typescript
  delete: async ({ request }) => {
    const formData = await request.formData();
    const id = formData.get('id');
    // Filtrar array (o eliminar de DB)
    contacts = contacts.filter(contact => contact.id !== id);
    return { success: true };
  }
  ```

- **Progressive enhancement básico con `use:enhance`:**
  ```svelte
  <script lang="ts">
    import { enhance } from '$app/forms';
  </script>

  <form method="POST" action="?/create" use:enhance>
  ```

- **Progressive enhancement avanzado con callback personalizado:**
  ```svelte
  <form
    method="POST"
    action="?/create"
    use:enhance={({ form, data, action, cancel }) => {
      // Antes del envío al servidor
      return async ({ result, update }) => {
        // Después de la respuesta del servidor
        if (result.type === 'success') {
          form.reset();
        }
        if (result.type === 'invalid') {
          const { applyAction } = await import('$app/forms');
          await applyAction(result);
        }
        update(); // Invalida datos y re-ejecuta load
      };
    }}
  >
  ```

- **Redirección tras acción exitosa:**
  ```typescript
  import { redirect } from '@sveltejs/kit';

  create: async ({ request }) => {
    // ... guardar en DB
    throw redirect(303, '/contacts');
  }
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `export const actions = { default: async ({ request }) => {...} }`** cuando solo necesites una acción en la página.
- **Usa acciones nombradas (`create`, `delete`, etc.)** cuando tengas múltiples formularios en la misma página.
- **Usa `?/nombreAccion`** en el atributo `action` del formulario para invocar una acción nombrada.
- **Usa `fail(statusCode, data)`** para retornar errores de validación con datos parciales.
- **Usa `form?.campo ?? ''`** en los inputs para preservar valores tras validación fallida.
- **Usa `use:enhance`** sin argumentos para progressive enhancement básico (evita recarga completa).
- **Usa `use:enhance` con callback** cuando necesites lógica personalizada (resetear formulario solo en éxito, mostrar errores, etc.).
- **Usa `form.reset()`** dentro del callback de `use:enhance` para limpiar el formulario tras envío exitoso.
- **Usa `applyAction(result)`** dentro del callback para manejar respuestas `invalid` con JavaScript habilitado.
- **Usa `update()`** dentro del callback para invalidar datos y re-ejecutar la función `load`.
- **Usa `throw redirect(status, path)`** para redirigir tras una acción exitosa (ej: formulario en página separada).
- **Nunca confíes en valores de inputs ocultos** para autorización; siempre verifica en el servidor.
- **Nunca retornes datos sensibles** en el objeto de retorno de la acción (se envía al cliente).

## Errores comunes / gotchas que menciona

- **Olvidar especificar `method="POST"`** en el formulario: sin esto, la acción nunca se ejecuta.
- **Usar acción `default` cuando hay múltiples formularios**: causa error "no action with name default found". Solución: usar acciones nombradas.
- **El formulario se resetea completamente** tras validación fallida si no retornas los valores de los campos. Solución: retornar los valores en el objeto de `fail`.
- **La página se recarga completamente** al enviar el formulario sin `use:enhance`. Solución: agregar `use:enhance` para evitar recarga.
- **El formulario no se limpia tras envío exitoso** con `use:enhance` básico. Solución: usar callback personalizado con `form.reset()` condicional.
- **Los datos de la tabla no se actualizan** tras crear/eliminar con `use:enhance`. Solución: llamar a `update()` en el callback para re-ejecutar `load`.
- **Los errores de validación no se muestran** con JavaScript habilitado si solo usas `use:enhance` básico. Solución: usar `applyAction(result)` en el callback para respuestas `invalid`.
- **El input oculto es visible y editable** por el usuario en el DOM. No almacenes valores secretos allí; siempre valida autorización en el servidor.