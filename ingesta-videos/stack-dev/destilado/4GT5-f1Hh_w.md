# Svelte 5: effect and derived (basics)
**Fuente:** HunterScript | https://youtu.be/4GT5-f1Hh_w
## Qué enseña (2-3 líneas)
Explica cómo usar las runes `$derived` y `$effect` en Svelte 5 para reemplazar las declaraciones reactivas (`$:`) de Svelte 4. Muestra que `$derived` calcula valores reactivos a partir de `$state`, y `$effect` ejecuta efectos secundarios sin necesidad de arreglo de dependencias, reemplazando el lifecycle hook `onMount`.

## Técnicas y patrones accionables
- **`$derived`**: Declarar un valor derivado reactivo a partir de una variable `$state`:
  ```svelte
  <script>
    let count = $state(0);
    let doubled = $derived(count * 2);
  </script>
  ```
  Al incrementar `count`, `doubled` se recalcula automáticamente.

- **`$effect`**: Ejecutar un efecto secundario que se dispara automáticamente cuando cambian las dependencias `$state`:
  ```svelte
  <script>
    let count = $state(0);
    $effect(() => {
      console.log('current count:', count);
    });
  </script>
  ```
  No se necesita arreglo de dependencias; Svelte compila y rastrea automáticamente las variables `$state` usadas dentro del efecto.

- **`$effect` como reemplazo de `onMount`**: El efecto se ejecuta cuando el DOM está montado:
  ```svelte
  <script>
    $effect(() => {
      console.log('Component mounted');
    });
  </script>
  ```
  Al refrescar la página, el efecto se dispara inmediatamente con el valor inicial.

- **Anidar efectos**: Se pueden anidar `$effect` dentro de otros `$effect`:
  ```svelte
  <script>
    $effect(() => {
      $effect(() => {
        // efecto anidado
      });
    });
  </script>
  ```
  (Se recomienda evitar anidar efectos para mantener el código mantenible.)

- **Función de limpieza en `$effect`**: Retornar una función para cleanup cuando el componente se desmonta:
  ```svelte
  <script>
    $effect(() => {
      // setup
      return () => {
        // cleanup al desmontar
      };
    });
  </script>
  ```

## Reglas para el erudito (imperativas y verificables)
- Usa `$derived` cuando necesites un valor que se recalcula automáticamente a partir de uno o más `$state`.
- Usa `$effect` para efectos secundarios (logs, suscripciones, etc.) que deben reaccionar a cambios en `$state`.
- No declares arreglo de dependencias en `$effect`; Svelte lo maneja automáticamente por compilación.
- Evita anidar `$effect` siempre que sea posible para mantener el código mantenible.
- Retorna una función de cleanup desde `$effect` si necesitas liberar recursos al desmontar el componente.
- Usa `$effect` como reemplazo directo de `onMount` para código que debe ejecutarse una vez al montar.

## Errores comunes / gotchas que menciona
- En Svelte 4 se usaba `$:` (declaración reactiva) que confluía valores derivados y efectos secundarios; en Svelte 5 se separan en `$derived` y `$effect` para mejor control en aplicaciones grandes.
- No confundir `$effect` con `useEffect` de React: en Svelte 5 no hay arreglo de dependencias, el compilador rastrea automáticamente las variables `$state` usadas.
- Anidar efectos puede volverse peligroso y difícil de mantener; se recomienda evitarlo.