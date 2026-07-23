# 08 - Props and Snippets In Svelte 5
**Fuente:** Code Hub | https://youtu.be/jpPklvWrZC8

## Qué enseña (2-3 líneas)
Cómo usar el rune `$props` para declarar props tipadas y con valores por defecto en Svelte 5, reemplazando el `export` de Svelte 4. También enseña a crear y renderizar Snippets (bloques de marcado reutilizables) tanto en la misma página como pasándolos a componentes hijos, incluyendo parámetros y paso de datos desde el padre.

## Técnicas y patrones accionables

- **Declarar props con `$props` rune (tipado básico):**
  ```svelte
  <script lang="ts">
    let { title, price } = $props();
  </script>
  ```

- **Declarar props con tipado estricto y valores por defecto:**
  ```svelte
  <script lang="ts">
    let { title = undefined, price }: { title?: string; price: number } = $props();
  </script>
  ```
  - `title` es opcional (nullable), su valor por defecto es `undefined`.
  - `price` es requerido (obliga al padre a pasarlo).

- **Usar el componente hijo desde una página padre:**
  ```svelte
  <script lang="ts">
    import Child from './components/Child.svelte';
  </script>

  <Child title="Producto A" price={100} />
  <Child price={200} /> <!-- title usará undefined -->
  ```

- **Crear un Snippet en la misma página (on-page snippet):**
  ```svelte
  {#snippet greetings()}
    <p>Hello world</p>
  {/snippet}
  ```

- **Renderizar un Snippet con `{@render}`:**
  ```svelte
  {@render greetings()}
  ```

- **Snippet con parámetros:**
  ```svelte
  {#snippet greetings(personName: string)}
    <p>Hello {personName}</p>
  {/snippet}

  {@render greetings('John')}
  ```

- **Pasar un Snippet a un componente hijo (prop tipo snippet):**
  - En el componente hijo (`Button.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { button }: { button?: Snippet } = $props();
    </script>

    {#if button}
      {@render button()}
    {/if}
    ```
  - En la página padre:
    ```svelte
    <script lang="ts">
      import Button from './components/Button.svelte';
    </script>

    <Button>
      {#snippet button()}
        <button class="bg-blue-500 px-4 py-2">Enviar</button>
        <button class="bg-gray-300 px-4 py-2">Cancelar</button>
        <p>Texto adicional</p>
      {/snippet}
    </Button>
    ```
    **Nota:** El nombre del snippet (`button`) debe coincidir exactamente con el nombre de la prop en el componente.

- **Snippet con parámetros definidos por el hijo (child provee defaults):**
  - En el componente hijo (`Header.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { header }: { header?: Snippet<[string, string]> } = $props();
    </script>

    {#if header}
      {@render header('Default Title', 'Default Subtitle')}
    {/if}
    ```
  - En la página padre:
    ```svelte
    <script lang="ts">
      import Header from './components/Header.svelte';
    </script>

    <Header>
      {#snippet header(title: string, subtitle: string)}
        <h1>{title}</h1>
        <p>{subtitle}</p>
      {/snippet}
    </Header>
    ```

- **Pasar datos del padre al snippet a través de props del componente:**
  - En el componente hijo (`Header.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { header, title, subtitle }: { header?: Snippet<[string, string]>; title: string; subtitle: string } = $props();
    </script>

    {#if header}
      {@render header(title, subtitle)}
    {/if}
    ```
  - En la página padre:
    ```svelte
    <Header title="Título desde padre" subtitle="Subtítulo desde padre">
      {#snippet header(title: string, subtitle: string)}
        <h1>{title}</h1>
        <p>{subtitle}</p>
      {/snippet}
    </Header>
    ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `$props()` en lugar de `export let`** para declarar props en Svelte 5. `export` está deprecado.
- **Usa `{#snippet}` y `{@render}` en lugar de `<slot>`** para pasar bloques de marcado a componentes hijos. `<slot>` está deprecado.
- **Nunca olvides el tipado genérico** en `$props()` si quieres type safety: `let { prop }: { prop: type } = $props()`.
- **Declara las props requeridas sin valor por defecto** para que Svelte fuerce al padre a pasarlas (error de compilación si faltan).
- **El nombre del snippet en el padre debe coincidir exactamente** con el nombre de la prop de tipo `Snippet` en el componente hijo.
- **Usa `Snippet<[param1Type, param2Type]>`** para tipar snippets que reciben parámetros desde el hijo.
- **Renderiza el snippet siempre dentro de un `{#if snippet}`** para evitar errores si el padre no lo provee.
- **Pasa los valores desde el padre al snippet mediante props del componente**, no solo con valores fijos en `{@render}`.

## Errores comunes / gotchas que menciona

- **Olvidar renderizar el snippet:** Si creas un `{#snippet}` pero no lo renderizas con `{@render}`, no se mostrará nada en pantalla.
- **No pasar parámetros requeridos al renderizar:** Si el snippet espera un parámetro (ej. `personName: string`) y no lo pasas en `{@render greetings()}`, Svelte mostrará un error.
- **Confundir el nombre del snippet con el nombre de la prop:** El snippet definido en el padre debe llamarse exactamente igual que la prop de tipo `Snippet` en el componente hijo (ej. `button` ↔ `button`).
- **No declarar las props en el componente hijo para pasar datos al snippet:** Si el padre necesita enviar datos dinámicos al snippet, debes declarar props adicionales en el hijo y pasarlas como argumentos en `{@render}`.
- **Usar `undefined` como valor por defecto en props opcionales:** Si no pasas la prop desde el padre, su valor será `undefined`, no un string vacío u otro valor personalizado a menos que lo definas explícitamente.