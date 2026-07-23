# Different Ways To Share State In Svelte 5
**Fuente:** Joy of Code | https://youtu.be/qI31XOrBuY0

## Qué enseña (2-3 líneas)
Explica cómo compartir estado reactivo fuera de componentes Svelte 5 usando runes ($state, $derived, $effect, $props). Muestra que no estás limitado a getters/setters: puedes usar funciones, clases, tuplas, objetos proxy, y destructuring con valores "boxed". También cubre por qué no debes usar runes en el servidor y cómo pasar datos con context.

## Técnicas y patrones accionables

- **Archivo especial `.svelte.ts` para runes fuera de componentes:** El compilador necesita la extensión `.svelte.ts` para saber que debe procesar runes en archivos externos. Sin ella, no escanearía cada archivo JS buscando runes por eficiencia.

- **Problema de importación y solución con objeto proxy:** No puedes exportar un `$state` simple y reasignarlo desde otro archivo porque JavaScript no permite reasignar imports. La solución es "boxear" el valor dentro de un objeto, que Svelte convierte en proxy reactivo:

```typescript
// lib/counter.svelte.ts
export const count = $state({ value: 0 });
```

```svelte
<!-- +page.svelte -->
<script lang="ts">
  import { count } from '$lib/counter.svelte';
</script>

<button onclick={() => count.value++}>
  clicks: {count.value}
</button>
```

- **Métodos dentro del objeto proxy:** Puedes agregar métodos al objeto que modifican su estado interno:

```typescript
// lib/counter.svelte.ts
export const count = $state({
  value: 0,
  increment() {
    this.value += 1;
  }
});
```

```svelte
<script lang="ts">
  import { count } from '$lib/counter.svelte';
</script>

<button onclick={() => count.increment()}>
  clicks: {count.value}
</button>
```

- **Patrón con getters y setters (accessors):** Para control granular sobre lectura/escritura:

```typescript
// lib/counter.svelte.ts
let _count = $state(0);

export const counter = {
  get count() { return _count; },
  set count(value: number) { _count = value; },
  increment() { _count += 1; }
};
```

```svelte
<script lang="ts">
  import { counter } from '$lib/counter.svelte';
</script>

<button onclick={() => counter.count++}>
  clicks: {counter.count}
</button>
```

- **Patrón con función creadora (factory):** Para crear múltiples instancias de estado:

```typescript
// lib/counter.svelte.ts
export function createCounter(initialValue = 0) {
  let count = $state(initialValue);

  return {
    get count() { return count; },
    set count(value: number) { count = value; },
    increment() { count += 1; }
  };
}
```

```svelte
<script lang="ts">
  import { createCounter } from '$lib/counter.svelte';
  const counter = createCounter();
</script>

<button onclick={() => counter.count++}>
  clicks: {counter.count}
</button>
```

- **Patrón con tupla (como Solid):** Retornar un array fijo con funciones de lectura/escritura:

```typescript
// lib/counter.svelte.ts
export function createCounter() {
  let count = $state(0);

  function read() { return count; }
  function write(value: number) { count = value; }

  return [read, write] as const;
}
```

```svelte
<script lang="ts">
  import { createCounter } from '$lib/counter.svelte';
  const [count, setCount] = createCounter();
</script>

<button onclick={() => setCount(count() + 1)}>
  clicks: {count()}
</button>
```

- **Patrón con clase:** Las clases generan automáticamente getters/setters para propiedades `$state`:

```typescript
// lib/counter.svelte.ts
export class Counter {
  count = $state(0);

  increment = () => {
    this.count += 1;
  };
}
```

```svelte
<script lang="ts">
  import { Counter } from '$lib/counter.svelte';
  const counter = new Counter();
</script>

<button onclick={counter.increment}>
  clicks: {counter.count}
</button>
```

- **Destructuring de valores proxy:** Puedes destructurear propiedades de un objeto proxy sin perder reactividad:

```typescript
// lib/counter.svelte.ts
export const counter = $state({ value: 0, increment: () => { counter.value += 1; } });
```

```svelte
<script lang="ts">
  import { counter } from '$lib/counter.svelte';
  let { value: count, increment } = counter;
</script>

<button onclick={increment}>
  clicks: {count}
</button>
```

- **Destructuring de `$derived`:** Puedes destructurear valores retornados por `$derived`:

```typescript
// lib/counter.svelte.ts
export const counter = $derived.by(() => {
  let count = $state(0);
  return {
    get count() { return count; },
    increment: () => count += 1
  };
});
```

```svelte
<script lang="ts">
  import { counter } from '$lib/counter.svelte';
  let { count, increment } = counter;
</script>

<button onclick={increment}>
  clicks: {count}
</button>
```

- **Uso de `$effect` para side effects:** Para reaccionar a cambios de estado (localStorage, console.log, etc.):

```typescript
// lib/counter.svelte.ts
export const count = $state({ value: 0 });

$effect(() => {
  console.log('count changed:', count.value);
});
```

- **`$effect.root` para efectos fuera de inicialización de componente:** Si defines un efecto dentro de una función que se ejecuta fuera del ciclo de inicialización de un componente, debes envolverlo en `$effect.root`:

```typescript
// lib/counter.svelte.ts
export function createCounter() {
  let count = $state(0);

  $effect.root(() => {
    $effect(() => {
      console.log('count changed:', count.value);
    });
  });

  return {
    get count() { return count; },
    increment: () => count += 1
  };
}
```

- **Context API para pasar estado a componentes hijos:** En `+page.svelte`:

```svelte
<script lang="ts">
  import { setContext } from 'svelte';
  import type { User } from '$lib/types';

  let { data } = $props();
  let user = $state(data.user);

  setContext('user', user);
</script>
```

En componente hijo:

```svelte
<script lang="ts">
  import { getContext } from 'svelte';
  let user = getContext('user');
</script>
```

- **En `+page.server.ts`:** No uses runes ni stores. Retorna datos planos:

```typescript
// +page.server.ts
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ locals }) => {
  const user = await locals.supabase.from('users').select('*').single();
  return { user };
};
```

## Reglas para el erudito (imperativas y verificables)

- **Usa extensión `.svelte.ts`** para cualquier archivo que contenga runes fuera de un componente Svelte.
- **Usa objeto proxy (`$state({ value: ... })`)** cuando necesites exportar estado reactivo y permitir reasignación desde otros archivos.
- **Usa getters/setters** cuando necesites control granular sobre lectura/escritura de estado compartido.
- **Usa `$effect.root`** cuando definas `$effect` dentro de funciones que se ejecuten fuera del ciclo de inicialización de un componente.
- **Usa clases** cuando quieras getters/setters automáticos generados por el compilador para propiedades `$state`.
- **Usa `$derived.by`** para crear estado derivado con lógica interna que incluya `$state`.
- **Usa Context API** para pasar estado reactivo a componentes hijos, combinado con objetos proxy o funciones.
- **Nunca uses `$state` ni `$effect`** dentro de `load` functions en `+page.server.ts` o `+layout.server.ts`.
- **Nunca reasignes imports** de valores exportados directamente (ej: `export let count = $state(0)` no se puede reasignar desde otro archivo).
- **Retorna datos planos desde `load`** y luego conviértelos a reactivos dentro del componente con `$state`.

## Errores comunes / gotchas que menciona

- **Error "cannot assign to count because it is an import":** Ocurre cuando intentas reasignar un valor exportado directamente con `$state`. Solución: boxear en objeto proxy.
- **Destructuring rompe reactividad:** Si destructureas `let { count } = counter` donde `counter` usa getters, `count` es el valor en el momento de la desestructuración y no se actualiza. Solución: usar objeto proxy o acceder siempre a través del getter.
- **Error "effect orphan effects can only be used inside an effect during component initialization":** Ocurre cuando usas `$effect` fuera del ciclo de inicialización de un componente (ej: dentro de una función factory). Solución: envolver en `$effect.root`.
- **`$effect` no se ejecuta en el servidor:** No uses efectos para lógica que debe correr server-side.
- **Estado compartido en servidor causa fuga de datos:** Si asignas datos de usuario a una variable global con `$state` dentro de `load`, todos los usuarios compartirán ese estado. Solución: retornar datos desde `load` y crear estado local en el componente.