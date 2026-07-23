# 04 - Runes In Svelte 5: Reactivity With state, effect and derived Runes Explained!
**Fuente:** Code Hub | https://youtu.be/3AIPUA1vPfM

## Qué enseña
Explica el nuevo sistema de reactividad en Svelte 5 llamado "runes", mostrando cómo declarar estado reactivo explícito con `$state`, crear valores computados con `$derived`, manejar efectos secundarios con `$effect`, y actualizar el estado para disparar reactividad. Compara la reactividad implícita de Svelte 4 con la explícita de Svelte 5.

## Técnicas y patrones accionables

- **Declarar estado reactivo con `$state`**
  ```svelte
  <script>
    let count = $state(0);
  </script>
  ```

- **Usar estado reactivo en el template**
  ```svelte
  <p>{count}</p>
  ```

- **Actualizar estado reactivo desde eventos del DOM**
  ```svelte
  <button onclick={() => count++}>
    Increment
  </button>
  ```

- **Crear valores computados con `$derived`**
  ```svelte
  <script>
    let count = $state(0);
    let doubleCount = $derived(count * 2);
  </script>
  ```

- **Manejar efectos secundarios con `$effect`**
  ```svelte
  <script>
    let count = $state(0);
    $effect(() => {
      console.log(count);
    });
  </script>
  ```

- **Función de reseteo de estado**
  ```svelte
  <script>
    let count = $state(0);
    let doubleCount = $derived(count * 2);

    function reset() {
      count = 0;
    }
  </script>

  <button onclick={reset}>Reset</button>
  ```

- **Combinar runes en un componente completo**
  ```svelte
  <script>
    let count = $state(0);
    let doubleCount = $derived(count * 2);

    $effect(() => {
      console.log(count, doubleCount);
    });

    function increment() {
      count++;
    }

    function reset() {
      count = 0;
    }
  </script>

  <button onclick={increment}>Increment</button>
  <button onclick={reset}>Reset</button>
  <p>Count: {count}</p>
  <p>Double: {doubleCount}</p>
  ```

## Reglas para el erudito

- Usa `$state()` para declarar cualquier variable que deba ser reactiva y actualizar el DOM automáticamente cuando cambie.
- Usa `$derived()` para valores que dependen de otros estados reactivos; son de solo lectura y se recalculan automáticamente cuando sus dependencias cambian.
- Usa `$effect()` para efectos secundarios que deben ejecutarse después de que el DOM se haya actualizado (logging, fetch, manipulación del DOM).
- Nunca intentes asignar un valor directamente a una variable declarada con `$derived()` — son valores computados de solo lectura.
- Svelte 5 agrupa (batch) múltiples actualizaciones de estado para mejor rendimiento, no necesitas preocuparte por renders innecesarios.
- Las variables sin `$state` son "simples statements": código JavaScript regular que se ejecuta una vez al inicializar el componente, no son reactivas.

## Errores comunes / gotchas que menciona

- En Svelte 4 la reactividad era implícita (Svelte hacía reactivas las variables automáticamente según su uso); en Svelte 5 debes declarar explícitamente la reactividad con `$state`, lo que hace el código más fácil de entender y depurar.
- `$effect` se ejecuta después de que el DOM se ha actualizado, no antes — es importante para efectos que dependen del estado actualizado del DOM.
- Los valores computados con `$derived` son optimizados por Svelte para recalcularse solo cuando es necesario, lo que los hace muy eficientes.