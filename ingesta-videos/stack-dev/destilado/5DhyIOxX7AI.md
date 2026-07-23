# 13 - Advance Component Concepts: Component Lifecycle, Props Validation, Component Events & Bindings
**Fuente:** Code Hub | https://youtu.be/5DhyIOxX7AI

## Qué enseña
Explica los ciclos de vida de componentes en Svelte 5 (onMount, onDestroy, $effect.pre, $effect), validación de props con TypeScript y funciones personalizadas, props por defecto, eventos de componente para comunicación hijo→padre, y bindings bidireccionales con la rune `$bindable`.

## Técnicas y patrones accionables

### Ciclo de vida del componente

**Archivo:** `src/lib/components/LifecycleDemo.svelte`

```svelte
<script>
  import { onMount, onDestroy } from 'svelte';

  let count = $state(0);
  let mounted = $state(false);
  let previousCount = 0; // no reactivo

  onMount(() => {
    console.log('Componente montado en el DOM');
    mounted = true;

    // Cleanup function: se ejecuta cuando el componente se desmonta
    return () => {
      console.log('Cleanup de onMount');
    };
  });

  onDestroy(() => {
    console.log('Componente siendo eliminado del DOM');
  });

  // Se ejecuta ANTES de que el componente se actualice por cambios de estado
  $effect.pre(() => {
    console.log('Valor anterior:', previousCount);
    previousCount = count;
  });

  // Se ejecuta DESPUÉS de que el componente se actualiza
  $effect(() => {
    console.log('Valor actual:', count);
  });

  function increment() {
    count += 1;
  }
</script>

<div>
  <h1>{count}</h1>
  <button onclick={increment}>Incrementar</button>
</div>
```

**Archivo:** `src/routes/+page.svelte`

```svelte
<script>
  import LifecycleDemo from '$lib/components/LifecycleDemo.svelte';

  let showComponent = $state(true);
</script>

<button onclick={() => showComponent = !showComponent}>
  {showComponent ? 'Destruir componente' : 'Crear componente'}
</button>

{#if showComponent}
  <LifecycleDemo />
{/if}
```

**Orden de ejecución observado en consola:**
1. `$effect.pre` (antes de montar)
2. `onMount`
3. `$effect` (después de montar)
4. Al hacer clic en incrementar: `$effect.pre` (valor anterior) → `$effect` (valor actual)
5. Al destruir: cleanup de `onMount` → `onDestroy`

### Validación de props con TypeScript y validación runtime

**Archivo:** `src/lib/components/Card.svelte`

```svelte
<script lang="ts">
  interface Props {
    title: string;
    description: string;
    rating: number;
    isActive: boolean;
  }

  let { title, description, rating, isActive }: Props = $props();

  function validateProps() {
    if (rating < 1 || rating > 5) {
      throw new Error('Rating debe estar entre 1 y 5');
    }
    if (title.length < 3) {
      throw new Error('Title debe tener al menos 3 caracteres');
    }
  }

  validateProps();
</script>

<div style="background-color: {isActive ? '#e0f7fa' : '#f5f5f5'}">
  <h3>{title}</h3>
  <p>{description}</p>
  <div style="margin-top: 8px;">
    <span style="color: yellow;">
      {#each Array(rating) as _}
        ❤️
      {/each}
    </span>
    <span style="color: gray;">
      {#each Array(5 - rating) as _}
        🤍
      {/each}
    </span>
  </div>
  <p>{isActive ? 'Activo' : 'Inactivo'}</p>
</div>
```

**Uso en página principal:**

```svelte
<script>
  import Card from '$lib/components/Card.svelte';
</script>

<Card title="Título válido" description="Descripción" rating={4} isActive={true} />
<Card title="Otro título" description="Otra descripción" rating={6} isActive={false} />
<!-- rating=6 lanza error en consola: "Rating debe estar entre 1 y 5" -->
```

### Props por defecto

**Archivo:** `src/lib/components/Alert.svelte`

```svelte
<script lang="ts">
  interface Props {
    type?: 'info' | 'success' | 'error';
    message: string;
    dismissible?: boolean;
  }

  let {
    type = 'info',       // valor por defecto
    message,
    dismissible = false  // valor por defecto
  }: Props = $props();

  let visible = $state(true);

  const colors = {
    info: 'bg-blue-100 border-blue-500 text-blue-700',
    success: 'bg-green-100 border-green-500 text-green-700',
    error: 'bg-red-100 border-red-500 text-red-700'
  };
</script>

{#if visible}
  <div class="p-4 mb-4 border-l-4 rounded {colors[type]}">
    <p>{message}</p>
    {#if dismissible}
      <button
        onclick={() => visible = false}
        class="mt-2 hover:opacity-75"
      >
        Cerrar
      </button>
    {/if}
  </div>
{/if}
```

**Uso en página principal:**

```svelte
<script>
  import Alert from '$lib/components/Alert.svelte';
</script>

<!-- Usa type='info' por defecto, sin botón de cerrar -->
<Alert message="Mensaje informativo" />

<!-- Props explícitos -->
<Alert type="success" message="Operación exitosa" dismissible={true} />
<Alert type="error" message="Error crítico" dismissible={true} />
```

### Eventos de componente (hijo → padre)

**Archivo:** `src/lib/components/MessageSender.svelte`

```svelte
<script lang="ts">
  interface Props {
    onclick: (message: string) => void;
  }

  let { onclick }: Props = $props();

  function sendMessage() {
    onclick('¡Mensaje desde el componente hijo!');
  }
</script>

<button onclick={sendMessage} class="px-4 py-2 bg-blue-500 text-white rounded">
  Enviar mensaje
</button>
```

**Archivo:** `src/routes/+page.svelte`

```svelte
<script>
  import MessageSender from '$lib/components/MessageSender.svelte';

  let message = $state('Mensaje inicial');

  function handleClick(childMessage: string) {
    message = childMessage;
  }
</script>

<MessageSender onclick={handleClick} />
<p>{message}</p>
```

### Bindings bidireccionales con `$bindable`

**Archivo:** `src/lib/components/Slider.svelte`

```svelte
<script lang="ts">
  import { bindable } from 'svelte';

  interface Props {
    value: number;
  }

  let { value = $bindable(0) }: Props = $props();
</script>

<input type="range" min={0} max={100} bind:value class="w-full" />

<div class="flex justify-between mt-2">
  <span>0</span>
  <span class="text-lg font-bold">{value}</span>
  <span>100</span>
</div>
```

**Archivo:** `src/routes/+page.svelte`

```svelte
<script>
  import Slider from '$lib/components/Slider.svelte';

  let sliderValue = $state(30);
  let confirmedValue = $state(0);
</script>

<Slider bind:value={sliderValue} />

<button
  class="mt-4 px-4 py-2 bg-green-500 text-white rounded"
  onclick={() => confirmedValue = sliderValue}
>
  Confirmar valor
</button>

<p>Valor confirmado: {confirmedValue}</p>
```

## Reglas para el erudito

- **Usa `$state()`** para variables reactivas dentro del componente.
- **Usa `$props()`** para recibir props desde el componente padre.
- **Usa `$bindable(valorPorDefecto)`** dentro de `$props()` cuando quieras permitir binding bidireccional desde el padre con `bind:`.
- **Usa `onMount`** para ejecutar código después del primer render (fetch de datos, suscripciones).
- **Usa `onDestroy`** para limpiar recursos (intervalos, observadores, suscripciones).
- **Usa `$effect.pre`** para ejecutar código ANTES de que el DOM se actualice por cambios de estado.
- **Usa `$effect`** para ejecutar código DESPUÉS de que el DOM se actualiza.
- **Usa `onMount` con return de función cleanup** para ejecutar lógica de limpieza al desmontar el componente.
- **Usa TypeScript interfaces** para definir la forma de las props y obtener type-checking en tiempo de compilación.
- **Usa validación runtime** (ej: `if (rating < 1) throw new Error(...)`) dentro del script del componente para validaciones complejas que TypeScript no puede cubrir.
- **Usa valores por defecto** en la desestructuración de `$props()` para props opcionales: `let { type = 'info' }: Props = $props()`.
- **Nunca** uses `$effect` para lógica que solo debe ejecutarse una vez al montar; usa `onMount` en su lugar.
- **Nunca** declares props sin interfaz TypeScript si esperas múltiples props; siempre define `interface Props` para mantener el código mantenible.

## Errores comunes / gotchas que menciona

- **Error en `$effect.pre` mostrando valor actual en lugar del anterior:** Ocurre si no se actualiza la variable `previousCount` correctamente dentro del efecto. La solución es asignar `previousCount = count` dentro de `$effect.pre` para capturar el valor antes del cambio.
- **Lanzar errores con `throw new Error` en validación de props no es ideal para producción:** El tutorial lo usa solo con fines demostrativos. En producción, considera devolver valores por defecto o mostrar mensajes de error en UI en lugar de lanzar excepciones.
- **Olvidar importar `bindable` desde 'svelte'** cuando se usa `$bindable()` en un componente hijo. Sin la importación, el binding bidireccional no funcionará.
- **No usar `bind:` en el padre** cuando el hijo tiene `$bindable`: el binding solo funciona si el padre usa `bind:value={variable}` al instanciar el componente. Si solo se pasa `value={variable}`, es unidireccional.
- **Confundir `$effect.pre` con `onMount`:** `$effect.pre` se ejecuta antes de cada actualización (incluyendo la inicial antes de montar), mientras que `onMount` solo se ejecuta una vez después del primer render.