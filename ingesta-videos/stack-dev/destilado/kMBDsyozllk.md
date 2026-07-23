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