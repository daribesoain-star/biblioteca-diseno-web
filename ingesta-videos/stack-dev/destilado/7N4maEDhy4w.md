# Learn How To Derive Values In Svelte 5 Without Side Effects
**Fuente:** Joy of Code | https://youtu.be/7N4maEDhy4w

## Qué enseña (2-3 líneas)
Explica el sistema de reactividad de Svelte 5 (runes: `$state`, `$derived`, `$effect`) y cómo funcionan las señales internamente. Enseña cuándo usar `$derived` en lugar de `$effect` para sincronizar estado, por qué evitar efectos secundarios dentro de derivados, y patrones para manejar estado sincronizado sin romper la reactividad.

## Técnicas y patrones accionables

- **Declarar estado reactivo con `$state`:**
  ```svelte
  let a = $state(0);
  ```

- **Derivar valores con `$derived`:**
  ```svelte
  let b = $derived(a * 2);
  ```

- **Usar `$derived.by` para lógica más compleja (equivalente a `$derived`):**
  ```svelte
  let b = $derived.by(() => a * 2);
  ```

- **Retornar múltiples valores desde `$derived.by`:**
  ```svelte
  let b = $derived.by(() => {
    return {
      double: a * 2,
      quadruple: a * 4
    };
  });
  // En template: {b.double} {b.quadruple}
  ```

- **Actualizar arrays con mutación directa (gracias a proxies):**
  ```svelte
  let arr = $state([1, 2, 3]);
  arr.push(4); // Funciona sin reassignar
  ```

- **Exportar estado global desde archivos `.svelte.ts` o `.svelte.js`:**
  ```ts
  // store.svelte.ts
  export let globalState = $state(0);
  ```

- **Sincronizar dos valores sin usar `$effect` — usar funciones regulares:**
  ```svelte
  <script>
    let total = $state(100);
    let spent = $state(0);
    let left = $state(total);

    function updateSpent(event) {
      spent = Number(event.target.value);
      left = total - spent;
    }

    function updateLeft(event) {
      left = Number(event.target.value);
      spent = total - left;
    }
  </script>

  <input type="number" bind:value={total} />
  <input type="number" value={spent} oninput={updateSpent} />
  <input type="number" value={left} oninput={updateLeft} />
  ```

- **Crear un derivado escribible con getter/setter (para bind):**
  ```svelte
  <script>
    let total = $state(100);
    let spent = $state(0);

    let left = {
      get value() {
        return total - spent;
      },
      set value(newValue) {
        spent = total - newValue;
      }
    };
  </script>

  <input type="number" bind:value={total} />
  <input type="number" bind:value={spent} />
  <input type="number" bind:value={left.value} />
  ```

- **Usar `$effect` solo para efectos secundarios (localStorage, console.log):**
  ```svelte
  $effect(() => {
    console.log('a actualizado:', a);
    localStorage.setItem('a', String(a));
  });
  ```

- **Evitar bucles infinitos con `untrack` (caso avanzado):**
  ```svelte
  import { untrack } from 'svelte';

  $effect(() => {
    // a no es reactivo aquí
    console.log(untrack(() => a));
    // b sí lo es
    console.log(b);
  });
  ```

- **Crear una clase con estado reactivo y getters/setters personalizados:**
  ```svelte
  <script>
    class Temperature {
      #celsius = $state(0);
      #fahrenheit = $state(32);

      get celsius() {
        return this.#celsius;
      }
      set celsius(value) {
        this.#celsius = value;
        this.#fahrenheit = value * 9/5 + 32;
      }

      get fahrenheit() {
        return this.#fahrenheit;
      }
      set fahrenheit(value) {
        this.#fahrenheit = value;
        this.#celsius = (value - 32) * 5/9;
      }
    }

    const temp = new Temperature();
  </script>

  <input type="number" bind:value={temp.celsius} />
  <input type="number" bind:value={temp.fahrenheit} />
  ```

- **Usar una clase para encapsular lógica de moneda (coin flip):**
  ```svelte
  <script>
    class Coin {
      side = $state('');
      history = $state([]);

      flip = () => {
        this.side = Math.random() < 0.5 ? 'heads' : 'tails';
        this.history = [...this.history, this.side];
      };
    }

    const coin = new Coin();
  </script>

  <button onclick={coin.flip}>Flip</button>
  <p>{coin.side}</p>
  <ul>
    {#each coin.history as item}
      <li>{item}</li>
    {/each}
  </ul>
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `$derived` cuando necesites un valor que dependa de otro estado reactivo.** No uses `$effect` para sincronizar estado.
- **Nunca mutes estado (`$state`) dentro de `$derived`.** El compilador lanza error: "updating state inside `$derived` is forbidden".
- **Nunca uses `$effect` para sincronizar valores entre sí.** Los efectos se ejecutan en la cola de microtareas, después de que el stack esté vacío, lo que produce valores desactualizados.
- **Usa `$effect` solo para efectos secundarios:** console.log, localStorage, fetch, etc.
- **Usa funciones regulares o getters/setters para sincronizar estado bidireccionalmente.** No intentes bindear un `$derived` porque es readonly.
- **Usa `$derived.by` cuando necesites lógica más compleja que una expresión simple.** Es equivalente a `$derived`.
- **Usa `untrack` solo en casos avanzados para evitar dependencias reactivas dentro de un efecto.**
- **Prefiere `$derived` sobre funciones inline en templates cuando la computación es costosa.** `$derived` solo recalcula cuando sus dependencias cambian; una función se ejecuta en cada render.
- **Para valores triviales (ej: `items.length`), no necesitas `$derived`.** Úsalo directamente en el template.
- **Usa clases o funciones con getters/setters para crear estado reactivo con lógica personalizada.** Svelte convierte `$state` en getters/setters automáticamente.

## Errores comunes / gotchas que menciona

- **Usar `$effect` para sincronizar estado:** El efecto se ejecuta después de que el stack esté vacío (cola de microtareas), por lo que el valor leído dentro del efecto puede estar desactualizado si se lee inmediatamente después de actualizar el estado.
- **Mutar estado dentro de `$derived`:** El compilador lo prohíbe explícitamente. Se puede evadir retornando una función desde `$derived.by` y ejecutándola, pero es una mala práctica.
- **Usar `$derived` para mantener estado interno con closures:** Si el valor derivado no cambia (ej: mismo resultado de `Math.random`), el derivado no se re-ejecuta, por lo que el closure no se actualiza.
- **Asumir que `$derived` se re-ejecuta siempre que se lee:** Los derivados son perezosos (lazy); solo se re-ejecutan cuando el valor de salida cambia realmente.
- **Usar `this` en métodos de clase sin bindear:** Al pasar un método como callback (ej: `onclick={coin.flip}`), `this` apunta al elemento DOM. Solución: usar arrow functions o bind en el constructor.
- **Olvidar que los derivados son readonly:** No se puede usar `bind:value` directamente con `$derived`. Se necesita un getter/setter o una función.