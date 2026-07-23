# SvelteKit
**Fuente:** Consulting Ninja | https://youtu.be/TMLS_2VtyGU

## Qué enseña
Cómo subir archivos desde un formulario HTML usando form actions de SvelteKit. Cubre la validación del lado del servidor (extensión del archivo), el manejo de errores con `fail` y la comunicación de resultados al cliente mediante `export let form`.

## Técnicas y patrones accionables

- **Conectar un formulario a una action nombrada:**
  En `+page.svelte`:
  ```svelte
  <form method="POST" action="?/upload">
      <input type="file" name="fileUpload" />
      <button type="submit">Upload</button>
  </form>
  ```

- **Definir la action en el servidor:**
  Archivo: `src/routes/+page.server.js`
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

- **Recibir datos del formulario en el cliente:**
  En `+page.svelte` dentro de una etiqueta `<script>`:
  ```svelte
  <script>
      export let form;
  </script>
  ```

- **Mostrar mensajes condicionales basados en el resultado de la action:**
  ```svelte
  {#if form?.error}
      <p>Failed to upload, wrong format</p>
  {/if}

  {#if form?.success}
      <p>File uploaded</p>
  {/if}
  ```

- **Validar extensión del archivo en el servidor:**
  Usar `file.endsWith()` dentro de un bucle `for` para comparar con una lista de extensiones permitidas.

- **Devolver error con `fail`:**
  `fail(statusCode, data)` recibe un código de estado HTTP y un objeto serializable que se envía al cliente.

- **Requisito de serialización:**
  Todo lo que se devuelva desde una action (tanto en `fail` como en el objeto de éxito) debe ser serializable con `JSON.stringify`. Tipos como `BigInt` no funcionan.

## Reglas para el erudito (imperativas y verificables)

- Usa `method="POST"` en el formulario para que se ejecute la action del servidor.
- Usa `action="?/nombreAction"` para enlazar a una action específica; si es la action por defecto (sin nombre), omite el atributo `action`.
- Usa `await request.formData()` dentro de la action para obtener los datos del formulario.
- Usa `data.get('nameDelInput')` para extraer cada campo del formulario.
- Usa `export let form` en el componente para acceder a los datos devueltos por la action.
- Usa `{#if form?.propiedad}` para mostrar contenido condicional basado en la respuesta de la action.
- Nunca devuelvas objetos no serializables (ej. `BigInt`) desde una action.
- Para subir archivos, usa `<input type="file" name="nombre" />` dentro del formulario.

## Errores comunes / gotchas que menciona

- Olvidar importar `fail` desde `@sveltejs/kit` provoca un error de referencia.
- Si el objeto devuelto no es serializable (por ejemplo, contiene `BigInt`), la action falla silenciosamente.
- El nombre del input (`name="fileUpload"`) debe coincidir exactamente con el usado en `data.get('fileUpload')`.
- La validación de extensión con `file.endsWith()` distingue entre mayúsculas y minúsculas; el tutorial usa minúsculas (`.png`, `.gif`, etc.).