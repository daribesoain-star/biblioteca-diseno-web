

===== 5DhyIOxX7AI.md =====
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

===== 7N4maEDhy4w.md =====
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

===== 9FrC0kTTw64.md =====
# How to deploy Svelte Kit on DigitalOcean App Platform (Vercel and Coolify alternative)
**Fuente:** Elans X | https://youtu.be/9FrC0kTTw64

## Qué enseña
Desplegar una aplicación SvelteKit 5 (con runes) en DigitalOcean App Platform usando el adaptador Node, incluyendo la configuración de repositorio GitHub, ajustes de plataforma (tamaño, región, variables de entorno, puerto) y el proceso de auto-deploy.

## Técnicas y patrones accionables

- **Crear proyecto SvelteKit 5:**
  ```bash
  npx sv create .
  ```
  Seleccionar: `minimal` → sin TypeScript → `tailwind` → `sveltekit-adapter` → gestor de paquetes: `npm`

- **Agregar comando `start` en `package.json`:**
  ```json
  "scripts": {
    "start": "node build/index.js"
  }
  ```

- **Crear repositorio en GitHub (privado) y subir código:**
  ```bash
  git init
  git add .
  git commit -m "first commit"
  git branch -M main
  git remote add origin https://github.com/<tu-usuario>/<tu-repo>.git
  git push -u origin main
  ```

- **Configurar DigitalOcean App Platform:**
  1. Click `Create` → `App Platform`
  2. Conectar cuenta GitHub y seleccionar repositorio
  3. Activar `Auto Deploy` (despliegue automático al hacer push)
  4. En `Size` seleccionar `$5/month`
  5. Renombrar app (opcional) y elegir región (ej: Frankfurt)
  6. En `Network` → `Edit` → agregar puerto `3000` (SvelteKit con adaptador Node usa puerto 3000)
  7. Click `Create App`

- **Verificar logs de despliegue:**
  - Ir a la pestaña `Logs` para ver el proceso de build
  - En `Runtime Logs` confirmar: `app is listening on port 3000`

- **Agregar dominio personalizado:**
  - Ir a `Settings` → `Domains` (disponible una vez desplegado exitosamente)

## Reglas para el erudito (imperativas y verificables)

- Usa `npx sv create` para iniciar un proyecto SvelteKit 5, no `npm create svelte`
- Usa el adaptador Node (`sveltekit-adapter`) cuando despliegues en DigitalOcean App Platform
- Configura el puerto `3000` en la sección `Network` de DigitalOcean, nunca otro puerto
- Activa `Auto Deploy` para que cada push a main despliegue automáticamente
- Usa `$5/month` como tamaño mínimo de instancia para ahorrar costos
- Define variables de entorno a nivel de app (afecta todas las instancias) o a nivel de componente (solo esa instancia) según necesidad
- Nunca uses TypeScript si quieres seguir exactamente el tutorial (selecciona "no" cuando pregunte)

## Errores comunes / gotchas que menciona

- **Warnings en logs de build:** "mostly harmless if they are not critical" — no detienen el despliegue
- **Dominio personalizado:** No se puede agregar hasta que la app esté desplegada exitosamente; requiere configuración DNS adicional (no cubierta en el video)
- **Puerto incorrecto:** Si no se configura el puerto 3000 en `Network`, la app no responderá
- **Costo por defecto:** DigitalOcean aplica automáticamente un plan de $24/mes; hay que cambiarlo manualmente a $5/mes en la sección `Size`

===== C0QYbIxQns4.md =====
# How to: Deploy SvelteKit apps to Vercel 🚀
**Fuente:** Johnny Magrippis | https://youtu.be/C0QYbIxQns4

## Qué enseña
Desplegar cualquier app de SvelteKit en Vercel sin tocar archivos de configuración. Cubre el flujo completo desde el repositorio local hasta el deploy automático en producción y preview environments, aprovechando la detección automática del adaptador de Vercel.

## Técnicas y patrones accionables

- **Inicializar Git y commitear todo el proyecto local:**
  ```bash
  git init
  git add .
  git commit -m "Initial commit"
  ```

- **Crear repositorio en GitHub sin inicializar nada** (README, .gitignore, licencia) porque ya tienes todo el código listo para pushear.

- **Vincular repositorio local con GitHub y pushear:**
  ```bash
  git remote add origin <URL_del_repo>
  git branch -M main
  git push -u origin main
  ```

- **Ir al dashboard de Vercel** → "New Project" → seleccionar el repositorio de GitHub recién creado → "Import".

- **No modificar nada en la pantalla de configuración de Vercel.** Vercel detecta automáticamente que es SvelteKit y aplica el adaptador sin necesidad de `svelte.config.js`, `vercel.json` ni ninguna otra configuración.

- **Si la app necesita variables de entorno** (API keys, URLs de base de datos), agregarlas en la sección "Environment Variables" antes de hacer clic en "Deploy". Si no necesita ninguna, simplemente presionar "Deploy".

- **El deploy tarda unos minutos.** Una vez completado, cualquier push a la rama `main` genera automáticamente un nuevo deployment de producción.

- **Cada Pull Request genera un preview environment automático** con su propia URL, ideal para revisión visual y pruebas end-to-end antes de mergear.

- **Verificar el deploy:** Ir al dashboard de Vercel o al enlace del deployment en GitHub para ver la app funcionando, incluyendo rutas API que devuelvan JSON.

## Reglas para el erudito (imperativas y verificables)

- **Usa `git init` y haz commit antes de crear el repo en GitHub.** No dejes que GitHub inicialice nada (README, .gitignore, licencia) porque sobrescribiría tu código local.
- **No toques `svelte.config.js` ni crees `vercel.json`.** SvelteKit 5 detecta Vercel como adaptador automáticamente.
- **Usa el free tier de Vercel para frontends.** Es generoso y no tiene cold starts, a diferencia de Heroku free tier que duerme los servicios.
- **Configura las environment variables en Vercel antes del primer deploy** si tu app las necesita (Stripe, SendGrid, Postgres URL, etc.).
- **Cada push a `main` = deploy automático de producción.** No necesitas triggers manuales.
- **Cada Pull Request = preview environment automático.** Aprovéchalo para revisión visual y tests end-to-end.

## Errores comunes / gotchas que menciona

- **No usar control de versiones:** El wizard de SvelteKit no lo configura automáticamente (a diferencia de Create React App). Olvidar `git init` y commit antes de crear el repo en GitHub rompe el flujo.
- **Inicializar el repo de GitHub con README o .gitignore:** Si lo haces, tendrás conflictos al pushear tu código local porque las historias de Git no coinciden.
- **Asumir que necesitas configurar el adaptador manualmente:** No es necesario. SvelteKit auto-detecta Vercel y aplica el adaptador sin configuración extra.
- **Usar Heroku free tier para frontends:** El cold start (tiempo que tarda en despertar el servicio) es un problema grave para apps que deben responder rápido. Vercel no tiene este problema en su free tier.

===== H9Blu0kWdZE.md =====
# You're Probably Building FASTAPI Apps WRONG (Clean Architecture)
**Fuente:** Eric Roby | https://youtu.be/H9Blu0kWdZE

## Qué enseña (2-3 líneas)
Construir una aplicación FastAPI profesional siguiendo Clean Architecture con capas de dominio (entidades), aplicación (lógica de negocio) e infraestructura (base de datos, rate limiting). Incluye configuración de logging, rate limiting con slowapi, autenticación JWT con bcrypt, pruebas unitarias y end-to-end, y despliegue con Docker y PostgreSQL.

## Técnicas y patrones accionables

### Estructura de directorios
```
clean-architecture/
├── source/
│   ├── main.py
│   ├── api.py
│   ├── logging.py
│   ├── rate_limiting.py
│   ├── exceptions.py
│   ├── __init__.py
│   ├── entities/
│   │   ├── __init__.py
│   │   ├── todo.py
│   │   └── user.py
│   ├── database/
│   │   ├── __init__.py
│   │   └── core.py
│   ├── auth/
│   │   ├── __init__.py
│   │   ├── controller.py
│   │   ├── service.py
│   │   └── model.py
│   ├── users/
│   │   ├── __init__.py
│   │   ├── controller.py
│   │   ├── service.py
│   │   └── model.py
│   └── todos/
│       ├── __init__.py
│       ├── controller.py
│       ├── service.py
│       └── model.py
├── tests/
│   ├── __init__.py
│   ├── conftest.py
│   ├── test_auth_service.py
│   ├── test_users_service.py
│   ├── test_todos_service.py
│   └── e2e/
│       ├── test_auth_endpoints.py
│       ├── test_users_endpoints.py
│       └── test_todos_endpoints.py
├── requirements.txt
├── requirements-dev.txt
├── Dockerfile
├── docker-compose.yml
└── .env
```

### main.py
```python
from database import engine, Base
from entities import *
from api import app

# Solo descomentar cuando se crean nuevas tablas por primera vez
# Base.metadata.create_all(bind=engine)
```

### logging.py
```python
import logging
from enum import Enum

class LogFormat(Enum):
    DEBUG = "DEBUG"
    INFO = "INFO"
    WARNING = "WARNING"
    ERROR = "ERROR"

def configure_logging(level: LogFormat):
    # Configuración básica de logging
    logging.basicConfig(level=level.value)
```

### rate_limiting.py
```python
from slowapi import Limiter
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
```

### database/core.py
```python
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
from dotenv import load_dotenv
import os

load_dotenv()

DATABASE_URL = os.getenv("DATABASE_URL", "sqlite:///./test.db")

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

db_session = get_db  # Dependency injection
```

### entities/todo.py
```python
from sqlalchemy import Column, String, Boolean, DateTime, Integer, ForeignKey
from sqlalchemy.dialects.postgresql import UUID
from database.core import Base
import uuid
from datetime import datetime

class Priority(Enum):
    LOW = 0
    MEDIUM = 1
    HIGH = 2
    CRITICAL = 3
    URGENT = 4

class Todo(Base):
    __tablename__ = "todos"
    
    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    user_id = Column(UUID(as_uuid=True), ForeignKey("users.id"), nullable=False)
    description = Column(String, nullable=False)
    due_date = Column(DateTime, nullable=True)
    is_completed = Column(Boolean, default=False)
    created_at = Column(DateTime, default=datetime.utcnow)
    completed_at = Column(DateTime, nullable=True)
    priority = Column(Integer, default=Priority.MEDIUM.value)
    
    def __str__(self):
        return f"Todo(id={self.id}, description={self.description})"
```

### entities/user.py
```python
from sqlalchemy import Column, String
from sqlalchemy.dialects.postgresql import UUID
from database.core import Base
import uuid

class User(Base):
    __tablename__ = "users"
    
    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    email = Column(String, unique=True, nullable=False)
    first_name = Column(String, nullable=False)
    last_name = Column(String, nullable=False)
    password = Column(String, nullable=False)
```

### auth/model.py
```python
from pydantic import BaseModel
from uuid import UUID

class UserRegister(BaseModel):
    email: str
    first_name: str
    last_name: str
    password: str

class Token(BaseModel):
    access_token: str
    token_type: str = "bearer"

class TokenData(BaseModel):
    user_id: UUID
```

### auth/service.py
```python
from jose import JWTError, jwt
from passlib.context import CryptContext
from datetime import datetime, timedelta
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from sqlalchemy.orm import Session
from database.core import get_db
from entities.user import User
from auth import models
import logging

SECRET_KEY = "your-secret-key"  # Mover a .env
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="auth/token")

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)

def get_password_hash(password: str) -> str:
    return pwd_context.hash(password)

def authenticate_user(db: Session, email: str, password: str):
    user = db.query(User).filter(User.email == email).first()
    if not user or not verify_password(password, user.password):
        logging.warning(f"Failed authentication attempt for {email}")
        return False
    return user

def create_access_token(data: dict, expires_delta: timedelta = None):
    to_encode = data.copy()
    expire = datetime.utcnow() + (expires_delta or timedelta(minutes=15))
    to_encode.update({"exp": expire})
    return jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)

def verify_token(token: str) -> models.TokenData:
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        user_id: str = payload.get("sub")
        if user_id is None:
            raise HTTPException(status_code=401, detail="Invalid token")
        return models.TokenData(user_id=user_id)
    except JWTError:
        logging.warning("Token verification failed")
        raise HTTPException(status_code=401, detail="Token verification failed")

def get_current_user(token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)):
    token_data = verify_token(token)
    user = db.query(User).filter(User.id == token_data.user_id).first()
    if user is None:
        raise HTTPException(status_code=401, detail="User not found")
    return user

def register_user(db: Session, request: models.UserRegister):
    hashed_password = get_password_hash(request.password)
    new_user = User(
        email=request.email,
        first_name=request.first_name,
        last_name=request.last_name,
        password=hashed_password
    )
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    logging.info(f"Registered user: {new_user.email}")
    return new_user

def login_for_access_token(db: Session, username: str, password: str):
    user = authenticate_user(db, username, password)
    if not user:
        raise HTTPException(status_code=401, detail="Incorrect email or password")
    access_token = create_access_token(data={"sub": str(user.id)})
    return models.Token(access_token=access_token, token_type="bearer")
```

### auth/controller.py
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from auth import service, models
from rate_limiting import limiter
from fastapi import Request

router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register", response_model=models.Token)
@limiter.limit("5/hour")  # 5 registros por hora por IP
def register_user(request: Request, user: models.UserRegister, db: Session = Depends(get_db)):
    return service.register_user(db, user)

@router.post("/token", response_model=models.Token)
def login(request: Request, form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    return service.login_for_access_token(db, form_data.username, form_data.password)
```

### users/model.py
```python
from pydantic import BaseModel
from uuid import UUID

class UserResponse(BaseModel):
    id: UUID
    email: str
    first_name: str
    last_name: str

class PasswordChange(BaseModel):
    current_password: str
    new_password: str
    new_password_confirm: str
```

### users/service.py
```python
from sqlalchemy.orm import Session
from entities.user import User
from users import models
from auth.service import get_password_hash, verify_password
import logging

def get_user_by_id(db: Session, user_id: str):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return models.UserResponse(
        id=user.id,
        email=user.email,
        first_name=user.first_name,
        last_name=user.last_name
    )

def change_password(db: Session, user_id: str, password_change: models.PasswordChange):
    user = db.query(User).filter(User.id == user_id).first()
    if not verify_password(password_change.current_password, user.password):
        raise HTTPException(status_code=400, detail="Current password is incorrect")
    if password_change.new_password != password_change.new_password_confirm:
        raise HTTPException(status_code=400, detail="New passwords do not match")
    user.password = get_password_hash(password_change.new_password)
    db.commit()
    logging.info(f"Password changed for user {user_id}")
```

### users/controller.py
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from users import service, models
from auth.service import get_current_user
from entities.user import User

router = APIRouter(prefix="/users", tags=["users"])

@router.get("/me", response_model=models.UserResponse)
def get_current_user(current_user: User = Depends(get_current_user)):
    return service.get_user_by_id(db, current_user.id)

@router.put("/password")
def change_password(password_change: models.PasswordChange, current_user: User = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.change_password(db, current_user.id, password_change)
```

### todos/model.py
```python
from pydantic import BaseModel
from uuid import UUID
from datetime import datetime
from typing import Optional

class TodoBase(BaseModel):
    description: str
    due_date: Optional[datetime] = None
    priority: int = 1

class TodoCreate(TodoBase):
    pass

class TodoResponse(TodoBase):
    id: UUID
    is_completed: bool
    completed_at: Optional[datetime] = None
    
    class Config:
        from_attributes = True
```

### todos/service.py
```python
from sqlalchemy.orm import Session
from entities.todo import Todo
from todos import models
from auth.models import TokenData
import logging

def create_todo(db: Session, current_user: TokenData, todo: models.TodoCreate):
    new_todo = Todo(
        user_id=current_user.user_id,
        description=todo.description,
        due_date=todo.due_date,
        priority=todo.priority
    )
    db.add(new_todo)
    db.commit()
    db.refresh(new_todo)
    logging.info(f"Created todo {new_todo.id} for user {current_user.user_id}")
    return new_todo

def get_todos(db: Session, current_user: TokenData):
    return db.query(Todo).filter(Todo.user_id == current_user.user_id).all()

def get_todo_by_id(db: Session, todo_id: str, current_user: TokenData):
    todo = db.query(Todo).filter(Todo.id == todo_id, Todo.user_id == current_user.user_id).first()
    if not todo:
        raise HTTPException(status_code=404, detail="Todo not found")
    return todo

def update_todo(db: Session, todo_id: str, todo_update: models.TodoCreate, current_user: TokenData):
    todo = get_todo_by_id(db, todo_id, current_user)
    todo.description = todo_update.description
    todo.due_date = todo_update.due_date
    todo.priority = todo_update.priority
    db.commit()
    db.refresh(todo)
    return todo

def complete_todo(db: Session, todo_id: str, current_user: TokenData):
    todo = get_todo_by_id(db, todo_id, current_user)
    todo.is_completed = not todo.is_completed
    todo.completed_at = datetime.utcnow() if todo.is_completed else None
    db.commit()
    db.refresh(todo)
    return todo

def delete_todo(db: Session, todo_id: str, current_user: TokenData):
    todo = get_todo_by_id(db, todo_id, current_user)
    db.delete(todo)
    db.commit()
    logging.info(f"Deleted todo {todo_id}")
```

### todos/controller.py
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from todos import service, models
from auth.service import get_current_user
from auth.models import TokenData

router = APIRouter(prefix="/todos", tags=["todos"])

@router.post("/", response_model=models.TodoResponse)
def create_todo(todo: models.TodoCreate, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.create_todo(db, current_user, todo)

@router.get("/", response_model=list[models.TodoResponse])
def get_todos(current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.get_todos(db, current_user)

@router.get("/{todo_id}", response_model=models.TodoResponse)
def get_todo(todo_id: str, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.get_todo_by_id(db, todo_id, current_user)

@router.put("/{todo_id}", response_model=models.TodoResponse)
def update_todo(todo_id: str, todo: models.TodoCreate, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.update_todo(db, todo_id, todo, current_user)

@router.patch("/{todo_id}/complete", response_model=models.TodoResponse)
def complete_todo(todo_id: str, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.complete_todo(db, todo_id, current_user)

@router.delete("/{todo_id}")
def delete_todo(todo_id: str, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.delete_todo(db, todo_id, current_user)
```

### exceptions.py
```python
class TodoError(Exception):
    pass

class TodoNotFound(TodoError):
    pass

class TodoCreationError(TodoError):
    pass

class UserBaseError(Exception):
    pass
```

### api.py
```python
from fastapi import FastAPI
from auth.controller import router as auth_router
from users.controller import router as users_router
from todos.controller import router as todos_router

app = FastAPI()

app.include_router(auth_router)
app.include_router(users_router)
app.include_router(todos_router)
```

### tests/conftest.py
```python
import pytest
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from database.core import Base, get_db
from fastapi.testclient import TestClient
from api import app

# Base de datos SQLite para pruebas
SQLALCHEMY_DATABASE_URL = "sqlite:///./test.db"
engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False})
TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base.metadata.create_all(bind=engine)

def override_get_db():
    try:
        db = TestingSessionLocal()
        yield db
    finally:
        db.close()

app.dependency_overrides[get_db] = override_get_db

@pytest.fixture
def client():
    return TestClient(app)

@pytest.fixture
def db_session():
    db = TestingSessionLocal()
    yield db
    db.close()
```

### tests/test_auth_service.py
```python
import pytest
from auth.service import verify_password, authenticate_user, create_access_token, verify_token

def test_verify_password():
    hashed = "$2b$12$..."  # Hash de bcrypt
    assert verify_password("testpassword", hashed) == True

def test_authenticate_user(db_session):
    user = authenticate_user(db_session, "test@example.com", "password123")
    assert user is not False

def test_create_access_token():
    token = create_access_token(data={"sub": "test-user-id"})
    assert token is not None

def test_verify_token():
    token = create_access_token(data={"sub": "test-user-id"})
    token_data = verify_token(token)
    assert token_data.user_id == "test-user-id"
```

### tests/test_users_service.py
```python
import pytest
from users.service import get_user_by_id, change_password

def test_get_user_by_id(db_session):
    user = get_user_by_id(db_session, "some-uuid")
    assert user is not None

def test_change_password_success(db_session):
    result = change_password(db_session, "user-id", {
        "current_password": "oldpass",
        "new_password": "newpass",
        "new_password_confirm": "newpass"
    })
    assert result is None  # No error

def test_change_password_mismatch(db_session):
    with pytest.raises(Exception):
        change_password(db_session, "user-id", {
            "current_password": "oldpass",
            "new_password": "newpass1",
            "new_password_confirm": "newpass2"
        })
```

### tests/test_todos_service.py
```python
import pytest
from todos.service import create_todo, get_todos, get_todo_by_id, complete_todo, delete_todo

def test_create_todo(db_session):
    todo = create_todo(db_session, {"user_id": "user-id"}, {"description": "Test todo"})
    assert todo.description == "Test todo"

def test_get_todos(db_session):
    todos = get_todos(db_session, {"user_id": "user-id"})
    assert len(todos) >= 0

def test_complete_todo(db_session):
    todo = complete_todo(db_session, "todo-id", {"user_id": "user-id"})
    assert todo.is_completed == True

def test_delete_todo(db_session):
    delete_todo(db_session, "todo-id", {"user_id": "user-id"})
    # Verificar que ya no existe
```

### tests/e2e/test_auth_endpoints.py
```python
def test_register_user(client):
    response = client.post("/auth/register", json={
        "email": "test@example.com",
        "first_name": "Test",
        "last_name": "User",
        "password": "password123"
    })
    assert response.status_code == 200
    assert "access_token" in response.json()

def test_login(client):
    response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    assert response.status_code == 200
    assert "access_token" in response.json()
```

### tests/e2e/test_users_endpoints.py
```python
def test_get_current_user(client):
    # Primero obtener token
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.get("/users/me", headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert "email" in response.json()

def test_change_password(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.put("/users/password", json={
        "current_password": "password123",
        "new_password": "newpassword123",
        "new_password_confirm": "newpassword123"
    }, headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
```

### tests/e2e/test_todos_endpoints.py
```python
def test_create_todo(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.post("/todos/", json={
        "description": "Test todo",
        "priority": 1
    }, headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert "id" in response.json()

def test_get_todos(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.get("/todos/", headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert isinstance(response.json(), list)
```

### Dockerfile
```dockerfile
FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY source/ ./source/

EXPOSE 8000

CMD ["uvicorn", "source.main:app", "--host", "0.0.0.0", "--port", "8000"]
```

### docker-compose.yml
```yaml
version: '3.8'

services:
  postgres:
    image: postgres:latest
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: clean_fastapi
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

  app:
    build: .
    ports:
      - "8000:8000"
    environment:
      DATABASE_URL: postgresql://user:password@postgres:5432/clean_fastapi
    depends_on:
      - postgres

volumes:
  postgres_data:
```

### .env
```
DATABASE_URL=postgresql://user:password@localhost:5432/clean_fastapi
SECRET_KEY=your-super-secret-key-change-in-production
```

### Comandos
```bash
# Instalar dependencias de desarrollo
pip install -r requirements-dev.txt

# Ejecutar aplicación
uvicorn source.main:app --reload

# Ejecutar pruebas
pytest

# Desplegar con Docker
docker compose up --build

# Detener Docker
docker compose down
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `@limiter.limit("5/hour")`** en endpoints sensibles como registro para prevenir ataques de spam/DDoS
- **Nunca descomentes `Base.metadata.create_all(bind=engine)`** en producción o en pruebas; solo úsalo para crear tablas nuevas por primera vez
- **Usa `from_attributes = True`** en la clase `Config` de Pydantic para permitir conversión desde objetos SQLAlchemy
- **Usa `Depends(get_current_user)`** en todos los endpoints protegidos para validar autenticación JWT
- **Usa `Depends(get_db)`** en todos los servicios para inyección de dependencias de sesión de base de datos
- **Usa `logging.warning()`** en fallos de autenticación para auditoría sin exponer datos sensibles
- **Usa `logging.info()`** en operaciones exitosas como registro de usuarios o creación de todos
- **Usa `uuid.uuid4`** como default para IDs en lugar de autoincrement para evitar enumeración de recursos
- **Usa `bcrypt`** con `passlib` para hashing de contraseñas, nunca almacenes contraseñas en texto plano
- **Usa `HS256`** como algoritmo JWT con expiración de 30 minutos (`ACCESS_TOKEN_EXPIRE_MINUTES = 30`)
- **Usa `pytest`** para ejecutar todas las pruebas unitarias y end-to-end
- **Usa `TestClient` de FastAPI** para pruebas end-to-end simulando peticiones HTTP reales
- **Usa SQLite en memoria** para pruebas unitarias para evitar dependencias externas
- **Usa `docker compose up --build`** para desplegar aplicación y PostgreSQL juntos
- **Usa variables de entorno** con `.env` para secretos como `DATABASE_URL` y `SECRET_KEY`
- **Usa `get_remote_address`** de slowapi para rate limiting basado en IP

## Errores comunes / gotchas que menciona

- **Error de importación `models` vs `model`**: El presentador cometió el error de nombrar el archivo `model.py` pero importarlo como `models` en múltiples lugares (auth, users, todos). La corrección fue cambiar todas las importaciones a `model` (singular).
- **`Base.metadata.create_all` rompe pruebas**: Si se deja descomentado en `main.py`, interfiere con las pruebas unitarias que usan su propia base de datos de prueba. Solo debe descomentarse temporalmente para crear nuevas tablas.
- **Rate limiter requiere `request` aunque no se use**: El parámetro `request: Request` en el controlador es necesario para que el rate limiter pueda obtener la IP del cliente, aunque no se use explícitamente en la función.
- **Deprecation warnings en pytest**: El presentador menciona que las advertencias de deprecación en pytest pueden ignorarse porque "a menudo duran más allá de la versión o nunca se corrigen".
- **No olvidar `__init__.py`**: Cada paquete Python necesita un archivo `__init__.py` (aunque esté vacío) para que los módulos sean importables correctamente.
- **JWT token expira en 30 minutos**: Si no se configura correctamente, los tokens expiran y los usuarios obtienen errores 401 no autenticados.
- **La URL de base de datos debe coincidir**: En `docker-compose.yml` la URL debe usar el nombre del servicio (`postgres`) como host, no `localhost`.

===== KL6CjNxkZDQ.md =====
# Async in practice: how to achieve concurrency in FastAPI (and what to avoid doing!)
**Fuente:** Evgeny Maksimov | https://youtu.be/KL6CjNxkZDQ

## Qué enseña (2-3 líneas)
Explica cómo funciona la concurrencia en FastAPI, diferenciando entre tareas CPU-bound e I/O-bound, y muestra por qué escribir `async` delante de cualquier función no garantiza asincronía. Enseña patrones concretos para usar correctamente `async/await`, `asyncio.gather`, `BackgroundTasks`, y ejecución en procesos separados, evitando bloqueos del event loop.

## Técnicas y patrones accionables

- **Para tareas I/O-bound (red, archivos, bases de datos):** Usar librerías asíncronas nativas (`httpx.AsyncClient`, `aiofiles`, `asyncpg`, `databases`, `aioredis`). No escribir `async` delante de librerías síncronas como `requests`.

```python
# MAL: bloquea el event loop
@app.post("/bad-requests")
async def bad_requests():
    for url in URL_LIST:
        requests.get(url)  # síncrono, bloquea
    return "done"

# BIEN: usa httpx asíncrono y gather
import httpx
import asyncio

@app.post("/good-requests")
async def good_requests():
    async with httpx.AsyncClient() as client:
        tasks = [client.get(url) for url in URL_LIST]
        await asyncio.gather(*tasks)
    return "done"
```

- **Para tareas CPU-bound (cálculos pesados):** No usar `async` porque el event loop se bloquea igual. Enviar a un proceso separado con `loop.run_in_executor` con `ProcessPoolExecutor`:

```python
import asyncio
from concurrent.futures import ProcessPoolExecutor

def cpu_bound_task(data):
    # cálculo pesado síncrono
    result = sum(i * i for i in range(10**7))
    return result

@app.post("/cpu-process")
async def cpu_process():
    loop = asyncio.get_event_loop()
    with ProcessPoolExecutor() as executor:
        result = await loop.run_in_executor(executor, cpu_bound_task, data)
    return {"result": result, "time": "6s"}
```

- **Para tareas CPU-bound que no necesitan devolver resultado inmediato:** Usar `BackgroundTasks` de FastAPI:

```python
from fastapi import BackgroundTasks

def heavy_calculation(file_path: str):
    # cálculo que toma 6 segundos
    time.sleep(6)
    # guardar resultado en DB o archivo

@app.post("/background-calc")
async def background_calc(background_tasks: BackgroundTasks):
    background_tasks.add_task(heavy_calculation, "file.txt")
    return {"status": "started"}  # retorna inmediatamente
```

- **Lectura de archivos:** Da igual usar `aiofiles` (asíncrono) o `open` (síncrono) porque FastAPI mete las funciones síncronas en un thread pool automáticamente. Pero leer en chunks para no saturar memoria:

```python
# Síncrono (FastAPI lo ejecuta en thread pool)
@app.post("/read-sync")
def read_sync():
    with open("bigfile.bin", "rb") as f:
        while chunk := f.read(8 * 1024 * 1024):  # 8 MB chunks
            process(chunk)
    return "done"

# Asíncrono con aiofiles (también va a thread pool internamente)
import aiofiles

@app.post("/read-async")
async def read_async():
    async with aiofiles.open("bigfile.bin", "rb") as f:
        while chunk := await f.read(8 * 1024 * 1024):
            process(chunk)
    return "done"
```

- **Para bases de datos:** Si no necesitas alta concurrencia (>1000 req/min), usa librerías síncronas normales (SQLite, psycopg2). FastAPI las ejecutará en threads. Si necesitas alta carga, usa las versiones asíncronas:

```python
# Síncrono (recomendado para baja/media carga)
import sqlite3

@app.get("/users-sync")
def get_users_sync():
    conn = sqlite3.connect("db.sqlite")
    cursor = conn.execute("SELECT * FROM users")
    return cursor.fetchall()

# Asíncrono (para alta carga)
import asyncpg

@app.get("/users-async")
async def get_users_async():
    conn = await asyncpg.connect("postgresql://...")
    rows = await conn.fetch("SELECT * FROM users")
    await conn.close()
    return rows
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `async` solo si la librería que llamas es asíncrona.** Si no estás seguro, no pongas `async` delante de la función; FastAPI la ejecutará en un thread pool y será concurrente igual.
- **Nunca escribas `async` delante de una función que usa `requests`, `open()` síncrono, `time.sleep()`, o cualquier librería síncrona.** Bloquearás el event loop y harás tu app más lenta que la versión síncrona.
- **Usa `asyncio.gather()` para lanzar múltiples tareas I/O-bound concurrentemente.** Si solo haces `await` una tras otra, es secuencial y no ganas nada.
- **Para CPU-bound, nunca confíes en `async`.** Usa `loop.run_in_executor` con `ProcessPoolExecutor` si necesitas el resultado, o `BackgroundTasks` si no lo necesitas inmediatamente.
- **Para CPU-bound pesado (>10 segundos), no uses `BackgroundTasks`.** Usa un worker externo con Celery + Redis/RabbitMQ.
- **Lee archivos grandes en chunks de 1-8 MB.** No cargues el archivo completo en memoria porque un archivo de 14 GB puede hacer fallar tu servidor.
- **Si tu app no necesita alta concurrencia, usa librerías síncronas de base de datos.** Es más simple y no afecta el rendimiento.

## Errores comunes / gotchas que menciona

- **Escribir `async` delante de funciones síncronas esperando magia.** Ejemplo: `async def read_file(): return open("file").read()` — esto bloquea el event loop porque `open().read()` es síncrono. FastAPI no lo mete en thread pool porque detecta que es `async`.
- **Usar `requests` dentro de una función `async`.** Bloquea todo el servidor. La versión correcta es `httpx.AsyncClient` con `asyncio.gather`.
- **Pensar que `async` resuelve CPU-bound.** El ejemplo del video: una función `async` que hace cálculo pesado bloquea el endpoint de salud (`/greeting`) aunque tenga `async`. La versión síncrona (sin `async`) no bloquea porque FastAPI la ejecuta en thread pool.
- **No usar `asyncio.gather` y hacer `await` secuencial de tareas asíncronas.** Ejemplo: `result1 = await task1(); result2 = await task2()` — esto ejecuta task2 solo después de que termine task1, perdiendo la concurrencia.
- **Usar `BackgroundTasks` para tareas CPU-bound pesadas.** No está diseñado para eso; puede saturar los threads. Usar Celery para trabajos pesados.
- **Cargar archivos completos en memoria.** Si alguien sube un archivo de 14 GB y tu servidor tiene 8 GB de RAM, falla. Leer en chunks es obligatorio.
- **Confundir concurrencia con paralelismo.** `async/await` en Python es concurrencia en un solo hilo (cooperativa), no paralelismo real. Para paralelismo CPU se necesitan procesos separados.

===== NDoVTJak8Mk.md =====
# 15 - Master Route Data Loading In Svelte 5 - load() Function, Error Handling & Data Invalidation
**Fuente:** Code Hub | https://youtu.be/NDoVTJak8Mk

## Qué enseña (2-3 líneas)
Este tutorial enseña el sistema de carga de datos por ruta en SvelteKit 5 usando la función `load()`, incluyendo fetching básico y avanzado (paralelo con `Promise.all`, dependencias secuenciales), manejo de errores con páginas de error personalizadas, e invalidación/revalidación de datos con `depends()`, `invalidate()` e `invalidateAll()`. Cubre tanto load functions universales (`+page.ts`) como de servidor (`+page.server.ts`).

## Técnicas y patrones accionables

### 1. Load function básica con ruta dinámica
**Archivo:** `users/[id]/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface User {
  id: number;
  name: string;
  email: string;
  phone: string;
  website: string;
}

export const load: PageLoad = async ({ params, fetch }) => {
  const response = await fetch(`https://jsonplaceholder.typicode.com/users/${params.id}`);
  
  if (!response.ok) {
    throw new Error('Failed to fetch user');
  }
  
  const user: User = await response.json();
  return { user };
};
```

**Archivo:** `users/[id]/+page.svelte`
```svelte
<script lang="ts">
  import type { PageData } from './$types';
  let { data }: { data: PageData } = $props();
</script>

<div class="p-4">
  <h1 class="text-2xl font-bold">{data.user.name}</h1>
  <p>{data.user.email}</p>
  <p>{data.user.phone}</p>
  <p>{data.user.website}</p>
</div>
```

### 2. Fetching paralelo con Promise.all y dependencias secuenciales
**Archivo:** `posts/[id]/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface User {
  id: number;
  name: string;
  email: string;
}

interface Post {
  id: number;
  title: string;
  body: string;
  userId: number;
}

interface Comment {
  id: number;
  name: string;
  email: string;
  body: string;
}

export const load: PageLoad = async ({ params, fetch }) => {
  const postId = params.id;
  
  const [postResponse, commentResponse] = await Promise.all([
    fetch(`https://jsonplaceholder.typicode.com/posts/${postId}`),
    fetch(`https://jsonplaceholder.typicode.com/posts/${postId}/comments`)
  ]);
  
  if (!postResponse.ok) throw new Error('Failed to fetch post');
  if (!commentResponse.ok) throw new Error('Failed to fetch comments');
  
  const post: Post = await postResponse.json();
  const comments: Comment[] = await commentResponse.json();
  
  // Dependencia secuencial: necesita el userId del post
  const authorResponse = await fetch(`https://jsonplaceholder.typicode.com/users/${post.userId}`);
  if (!authorResponse.ok) throw new Error('Failed to fetch author');
  const author: User = await authorResponse.json();
  
  return { post, author, comments };
};
```

**Archivo:** `posts/[id]/+page.svelte`
```svelte
<script lang="ts">
  import type { PageData } from './$types';
  let { data }: { data: PageData } = $props();
</script>

<div class="p-4">
  <article>
    <h1 class="text-2xl font-bold">{data.post.title}</h1>
    <p>Author: {data.author.name}</p>
    <p>{data.post.body}</p>
  </article>
  
  <section>
    <h2>Comments ({data.comments.length})</h2>
    {#each data.comments as comment}
      <div>
        <h3>{comment.name}</h3>
        <p>{comment.email}</p>
        <p>{comment.body}</p>
      </div>
    {/each}
  </section>
</div>
```

### 3. Manejo de errores con página personalizada
**Archivo:** `profile/[id]/+page.ts`
```typescript
import { error } from '@sveltejs/kit';
import type { PageLoad } from './$types';

interface User {
  id: number;
  name: string;
  email: string;
  phone: string;
  website: string;
}

interface UserPost {
  id: number;
  title: string;
  body: string;
}

export const load: PageLoad = async ({ params, fetch }) => {
  const userId = params.id;
  
  if (!userId || isNaN(Number(userId))) {
    throw error(400, 'Invalid user ID');
  }
  
  try {
    const userResponse = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}`);
    
    if (userResponse.status === 404) {
      throw error(404, 'User not found');
    }
    
    if (!userResponse.ok) {
      throw error(userResponse.status, 'Failed to fetch user');
    }
    
    const user: User = await userResponse.json();
    let posts: UserPost[] = [];
    let hasPostsError = false;
    
    try {
      const postsResponse = await fetch(`https://jsonplaceholder.typicode.com/users/${userId}/posts`);
      if (postsResponse.ok) {
        posts = await postsResponse.json();
      } else {
        console.error('Failed to fetch posts');
        hasPostsError = true;
      }
    } catch (err) {
      console.error('Error fetching posts:', err);
      hasPostsError = true;
    }
    
    return { user, posts, hasPostsError: posts.length === 0 };
    
  } catch (fetchError) {
    if (fetchError instanceof Error && 'status' in fetchError) {
      throw fetchError;
    }
    console.error('Unexpected error:', fetchError);
    throw error(500, 'Internal server error');
  }
};
```

**Archivo:** `profile/[id]/+error.svelte`
```svelte
<script lang="ts">
  import { page } from '$app/stores';
  import { goto } from '$app/navigation';
  
  function goBack() {
    history.back();
  }
  
  function goHome() {
    goto('/');
  }
  
  function retry() {
    location.reload();
  }
</script>

<div class="flex flex-col items-center justify-center min-h-screen">
  <div class="text-center">
    <!-- SVG icon here -->
    <h1 class="text-4xl font-bold">
      {$page.status === 404 ? 'Page Not Found' : 
       $page.status === 400 ? 'Bad Request' : 
       'Something went wrong'}
    </h1>
    <p class="mt-4 text-gray-600">
      {$page.error?.message ?? 'An unexpected error occurred'}
    </p>
    
    <div class="mt-8 space-x-4">
      <button onclick={retry} class="px-4 py-2 bg-blue-500 text-white rounded">
        Try Again
      </button>
      <button onclick={goBack} class="px-4 py-2 bg-gray-500 text-white rounded">
        Go Back
      </button>
      <button onclick={goHome} class="px-4 py-2 bg-green-500 text-white rounded">
        Go Home
      </button>
    </div>
  </div>
</div>
```

**Archivo:** `profile/[id]/+page.svelte`
```svelte
<script lang="ts">
  import type { PageData } from './$types';
  let { data }: { data: PageData } = $props();
</script>

<div class="p-4">
  <div>
    <h1 class="text-2xl font-bold">User Profile</h1>
    <div>
      <h2>User Details</h2>
      <p>{data.user.name}</p>
      <p>{data.user.email}</p>
      <p>{data.user.phone}</p>
      <p>{data.user.website}</p>
    </div>
    
    <div>
      <h2>Recent Posts</h2>
      {#if data.hasPostsError}
        <p>Failed to load posts</p>
      {:else if data.posts.length === 0}
        <p>No posts found</p>
      {:else}
        {#each data.posts.slice(0, 3) as post}
          <div>
            <h3>{post.title}</h3>
            <p>{post.body}</p>
          </div>
        {/each}
      {/if}
    </div>
  </div>
</div>
```

### 4. Invalidación de datos con depends() e invalidate()
**Archivo:** `todos/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface Todo {
  id: number;
  title: string;
  completed: boolean;
  userId: number;
}

export const load: PageLoad = async ({ depends, fetch }) => {
  depends('app:todos');
  
  const response = await fetch('https://jsonplaceholder.typicode.com/todos?_limit=10');
  
  if (!response.ok) {
    throw new Error('Failed to fetch todos');
  }
  
  const todos: Todo[] = await response.json();
  return { todos, lastUpdated: new Date().toISOString() };
};
```

**Archivo:** `todos/+page.svelte`
```svelte
<script lang="ts">
  import { invalidate, invalidateAll } from '$app/navigation';
  import { onMount } from 'svelte';
  import type { PageData } from './$types.js';
  
  let { data }: { data: PageData } = $props();
  
  let autoRefresh = $state(false);
  let refreshInterval: ReturnType<typeof setInterval> | null = $state(null);
  
  function refreshTodos() {
    invalidate('app:todos');
  }
  
  function refreshAll() {
    invalidateAll();
  }
  
  function toggleTodo(todoId: number) {
    console.log('Toggle todo:', todoId);
    // En app real: API call aquí
    invalidate('app:todos');
  }
  
  function toggleAutoRefresh() {
    if (autoRefresh) {
      if (refreshInterval) {
        clearInterval(refreshInterval);
        refreshInterval = null;
      }
      autoRefresh = false;
    } else {
      refreshInterval = setInterval(() => {
        invalidate('app:todos');
      }, 5000);
      autoRefresh = true;
    }
  }
  
  onMount(() => {
    return () => {
      if (refreshInterval !== null) {
        clearInterval(refreshInterval);
      }
    };
  });
</script>

<div class="p-4">
  <div>
    <h1 class="text-2xl font-bold">Todos</h1>
    <p>Last updated: {data.lastUpdated}</p>
    
    <div class="space-x-2 mt-4">
      <button onclick={refreshTodos} class="px-3 py-1 bg-blue-500 text-white rounded">
        Refresh Todos
      </button>
      <button onclick={refreshAll} class="px-3 py-1 bg-green-500 text-white rounded">
        Refresh All
      </button>
      <button 
        onclick={toggleAutoRefresh}
        class="px-3 py-1 rounded"
        class:bg-red-500={autoRefresh}
        class:bg-gray-500={!autoRefresh}
        class:text-white={true}
      >
        {autoRefresh ? 'Stop Auto Refresh' : 'Start Auto Refresh'}
      </button>
    </div>
    
    {#each data.todos as todo}
      <div class="flex items-center gap-2 mt-2">
        <input type="checkbox" checked={todo.completed} onchange={() => toggleTodo(todo.id)} />
        <span>{todo.title}</span>
        <span class="text-gray-500 text-sm">(ID: {todo.id})</span>
      </div>
    {/each}
    
    {#if autoRefresh}
      <p class="text-green-600 mt-2">Auto-refreshing every 5 seconds...</p>
    {/if}
  </div>
</div>
```

### 5. Invalidación granular con múltiples dependencias
**Archivo:** `todos/[id]/+page.ts`
```typescript
import type { PageLoad } from './$types';

interface Todo {
  id: number;
  title: string;
  completed: boolean;
  userId: number;
}

interface User {
  id: number;
  name: string;
  email: string;
}

export const load: PageLoad = async ({ params, fetch, url, depends }) => {
  const todoId = params.id;
  
  depends(`app:todo:${todoId}`);
  depends('app:todos');
  depends(url);
  
  const [todoResponse, userResponse] = await Promise.all([
    fetch(`https://jsonplaceholder.typicode.com/todos/${todoId}`),
    fetch(`https://jsonplaceholder.typicode.com/users/1`) // hardcoded para ejemplo
  ]);
  
  if (!todoResponse.ok) {
    throw new Error('Failed to fetch todo');
  }
  
  const todo: Todo = await todoResponse.json();
  const user: User = userResponse.ok 
    ? await userResponse.json()
    : { id: 0, name: 'Unknown', email: 'unknown@example.com' };
  
  return { todo, user, lastUpdated: new Date().toISOString() };
};
```

**Archivo:** `todos/[id]/+page.svelte`
```svelte
<script lang="ts">
  import { invalidate, goto } from '$app/navigation';
  import type { PageData } from './$types';
  
  let { data }: { data: PageData } = $props();
  
  function updateTodo() {
    invalidate(`app:todo:${data.todo.id}`);
  }
  
  function deleteTodo() {
    invalidate('app:todos');
    goto('/todos');
  }
  
  function goBack() {
    goto('/todos');
  }
</script>

<div class="p-4">
  <div>
    <h1 class="text-2xl font-bold">Todo Detail</h1>
    <button onclick={goBack} class="px-3 py-1 bg-gray-500 text-white rounded mb-4">
      Back to Todos
    </button>
    
    <div>
      <h2>Title</h2>
      <p>{data.todo.title}</p>
    </div>
    
    <div>
      <h2>Status</h2>
      <p>{data.todo.completed ? 'Completed' : 'Pending'}</p>
    </div>
    
    <div>
      <h2>User</h2>
      <p>{data.user.name}</p>
      <p>{data.user.email}</p>
    </div>
    
    <p class="text-sm text-gray-500 mt-4">Last updated: {data.lastUpdated}</p>
    
    <div class="mt-4 space-x-2">
      <button onclick={updateTodo} class="px-3 py-1 bg-blue-500 text-white rounded">
        Update Todo
      </button>
      <button onclick={deleteTodo} class="px-3 py-1 bg-red-500 text-white rounded">
        Delete Todo
      </button>
    </div>
  </div>
</div>
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `+page.server.ts`** cuando necesites acceso a variables de entorno, bases de datos, sistema de archivos o secretos del servidor.
- **Usa `+page.ts` (universal)** cuando el fetching pueda hacerse desde cliente o servidor, como APIs públicas.
- **Usa `Promise.all()`** para fetching paralelo de datos independientes; usa `await` secuencial cuando un fetch dependa del resultado de otro.
- **Usa `depends('app:key')`** en load functions para crear claves de invalidación personalizadas.
- **Usa `invalidate('app:key')`** para recargar load functions específicas; usa `invalidateAll()` solo cuando múltiples datos puedan haber cambiado.
- **Usa `throw error(statusCode, message)`** de `@sveltejs/kit` para errores controlados con códigos HTTP.
- **Crea `+error.svelte`** en el mismo nivel de ruta para páginas de error personalizadas.
- **Usa `onMount` con cleanup** (`return () => clearInterval(...)`) para evitar memory leaks con intervalos o suscripciones.
- **Usa `$state()`** para variables reactivas en componentes; usa `$props()` para desestructurar `data` del tipo `PageData`.
- **Nunca** hagas fetch directamente en componentes si puedes usar load functions; la carga previa al render mejora UX y evita flickers.
- **Nunca** olvides verificar `response.ok` después de cada fetch; lanza error con mensaje descriptivo.
- **Nunca** uses `invalidateAll()` cuando solo necesitas recargar una parte específica de los datos; es ineficiente.

## Errores comunes / gotchas que menciona

- **Error de tipos en `$types`**: Si `import type { PageLoad } from './$types'` da error, ejecuta la app (`npm run dev`) para que SvelteKit genere los tipos automáticamente.
- **Olvidar propiedades en interfaces**: Si usas una interfaz que no incluye todas las propiedades que devuelve la API (ej: `Comment` sin `body`), TypeScript lanza error. Debes agregar todas las propiedades que uses.
- **No validar parámetros de ruta**: Si no verificas que `params.id` sea un número válido, puedes recibir errores inesperados. Usa `isNaN(Number(userId))` para validar.
- **No limpiar intervalos**: Si usas `setInterval` para auto-refresh sin cleanup en `onMount`, el intervalo sigue ejecutándose incluso después de que el componente se destruye, causando memory leaks y requests innecesarias.
- **Dependencia cíclica con `depends(url)`**: Pasar `url` como clave de dependencia hace que la load function se re-ejecute automáticamente cuando cambian los parámetros de ruta, lo cual es útil pero puede causar loops si no se maneja con cuidado.
- **Error 404 vs 500**: Distingue entre errores del cliente (404, 400) y del servidor (500) usando `error.status` en la página de error para mostrar mensajes contextuales diferentes.
- **`Promise.all` falla rápido**: Si una promesa en `Promise.all` rechaza, todo el método rechaza inmediatamente. Para manejar fallos parciales, usa try/catch individuales como en el ejemplo de `profile/[id]/+page.ts`.

===== Ow_Uzedfohk.md =====
# Implement Authorization using Row Level Security (RLS) with Supabase (Step By Step Guide)
**Fuente:** Supabase | https://youtu.be/Ow_Uzedfohk

## Qué enseña
Este tutorial enseña a implementar Row Level Security (RLS) en Supabase para controlar el acceso a datos a nivel de base de datos, eliminando la necesidad de un API intermedio. Cubre políticas de SELECT, INSERT, UPDATE y DELETE, incluyendo subconsultas entre tablas para autorización contextual (ej. comentarios visibles solo si el post padre es visible).

## Técnicas y patrones accionables

- **Habilitar RLS en una tabla desde el Dashboard de Supabase:**
  - Ir a `Authentication > Policies`
  - Activar RLS en la tabla deseada (ej. `post`). Al activarlo, la tabla queda completamente bloqueada (deniega SELECT, INSERT, UPDATE, DELETE por defecto).

- **Crear política desde plantilla (todos los permisos para el dueño del recurso):**
  - Seleccionar "Enable delete access for users based on their user ID" (plantilla inferior).
  - Cambiar la operación a `ALL` (cubre SELECT, INSERT, UPDATE, DELETE).
  - Nombre sugerido: `"Enable all actions for users based on user id"`.
  - Condición generada automáticamente:
    ```sql
    (auth.uid() = user_id)
    ```
  - Para UPDATE, agregar la misma condición en `WITH CHECK` (copiar y pegar).

- **Crear política desde cero (SELECT para posts publicados):**
  - Nombre: `"Enable user to select a published post"`
  - Operación: `SELECT`
  - Condición:
    ```sql
    (is_published = true)
    ```

- **Crear política con subconsulta a otra tabla (SELECT en comentarios):**
  - Tabla: `comment`
  - Operación: `SELECT`
  - Nombre: `"Enable user to view comments for posts they can view"`
  - Condición:
    ```sql
    EXISTS (
      SELECT 1
      FROM post
      WHERE post.id = comment.post_id
    )
    ```
  - Explicación: `SELECT 1` devuelve `true` si la subconsulta encuentra un post que el usuario puede ver (por las políticas RLS del post). No se necesita re-implementar las reglas del post.

- **Crear política con subconsulta + restricción de dueño (INSERT en comentarios):**
  - Operación: `INSERT`
  - Nombre: `"Allow users to insert comments on posts they can see"`
  - Condición (USING):
    ```sql
    (EXISTS (
      SELECT 1
      FROM post
      WHERE post.id = comment.post_id
    ) AND auth.uid() = comment.user_id)
    ```
  - Nota: `WITH CHECK` debe tener la misma condición.

- **Crear política para moderación (DELETE de comentarios por dueño del post):**
  - Operación: `DELETE`
  - Nombre: `"User can moderate comments on their posts"`
  - Condición:
    ```sql
    auth.uid() IN (
      SELECT user_id
      FROM post
      WHERE post.id = comment.post_id
    )
    ```
  - Explicación: Verifica que el usuario autenticado sea el dueño del post al que pertenece el comentario.

- **Ejecutar SQL manualmente (equivalente a crear política desde UI):**
  ```sql
  CREATE POLICY "Enable all actions for users based on their user id"
  ON public.post
  FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
  ```

- **Arquitectura RLS vs API tradicional:**
  - Cliente → API → Base de datos (tradicional: API tiene clave especial, decide confianza).
  - Cliente → Base de datos (RLS: cliente envía token de autorización, la base de datos aplica políticas).

## Reglas para el erudito (imperativas y verificables)

- **Usa RLS como capa de seguridad obligatoria, no opcional:** Siempre habilita RLS en todas las tablas que contengan datos sensibles. No confíes solo en la lógica del frontend o API.
- **Usa `auth.uid()` para identificar al usuario autenticado:** Es una función especial de Supabase que devuelve el ID del usuario actual. No uses variables de sesión manuales.
- **Usa `EXISTS (SELECT 1 FROM ...)` para subconsultas de autorización:** No necesitas los datos de la subconsulta, solo saber si existe. `SELECT 1` es más eficiente que `SELECT *`.
- **Nunca re-implementes políticas de una tabla en otra:** En lugar de duplicar la lógica de visibilidad de posts en la tabla de comentarios, haz una subconsulta a la tabla `post` y deja que sus propias políticas RLS filtren.
- **Siempre agrega `WITH CHECK` en políticas de INSERT y UPDATE:** La condición en `USING` controla qué filas existentes se pueden modificar; `WITH CHECK` controla qué nuevas filas se pueden crear. Deben coincidir para evitar inconsistencias.
- **Usa `FOR ALL` solo cuando quieras aplicar la misma política a SELECT, INSERT, UPDATE y DELETE:** Si necesitas reglas diferentes, crea políticas separadas por operación.
- **Prueba siempre los casos borde:** Después de crear políticas, verifica que usuarios no autorizados no puedan acceder a datos incluso si navegan directamente a URLs o envían solicitudes maliciosas.

## Errores comunes / gotchas que menciona

- **Olvidar que RLS bloquea todo por defecto:** Al habilitar RLS en una tabla, inmediatamente se deniegan todas las operaciones hasta que se creen políticas explícitas. En el tutorial, al activar RLS en `post`, ni el dueño podía ver sus propios posts.
- **No proteger el `user_id` en INSERT:** En la política de INSERT para comentarios, si solo verificas que el post es visible, un usuario podría insertar un comentario con `user_id` de otro usuario. La solución es agregar `AND auth.uid() = comment.user_id`.
- **Asumir que la UI protege contra acciones no autorizadas:** En el tutorial, Gary podía ver la URL de edición del post de Ash y hacer clic en "delete". Aunque la UI no mostraba error, la política RLS impidió la eliminación. La base de datos es la última línea de defensa.
- **No considerar la moderación de contenido:** Inicialmente, solo el dueño del comentario podía eliminarlo. Para que el dueño del post pueda moderar, se necesitó una política adicional con subconsulta que verifica la propiedad del post padre.
- **Confundir `USING` con `WITH CHECK`:** `USING` se aplica a filas existentes (SELECT, UPDATE, DELETE), `WITH CHECK` se aplica a nuevas filas (INSERT, UPDATE). Si solo pones condición en `USING` para INSERT, la inserción fallará porque no hay fila existente que evaluar.

===== PdEutzhsrws.md =====
# Advanced Row Level Security (RLS) Policies // Authorization Deep Dive
**Fuente:** Supabase | https://youtu.be/PdEutzhsrws

## Qué enseña (2-3 líneas)
Cómo implementar autorización en una aplicación existente usando políticas RLS en Supabase. Cubre la creación de relaciones uno a uno entre esquemas (public y auth), triggers y funciones Postgres con security definer, y políticas RLS para SELECT, INSERT y DELETE con subconsultas anidadas.

## Técnicas y patrones accionables

- **Crear columna UUID con FK a auth.users:**
  - En Supabase Dashboard > Table Editor > users: añadir columna `supabase_id` tipo UUID
  - Configurar FK: referencia `auth.users.id`, on update: "no action", on delete: "set null"
  - Marcar como unique (relación uno a uno)

- **Función trigger para sincronizar usuarios (security definer):**
  ```sql
  -- En Supabase > Database > Functions > Create a new function
  -- Nombre: handle_public_user
  -- Schema: public
  -- Return type: trigger
  -- Security: security definer (en advanced settings)
  BEGIN
    INSERT INTO public.users (supabase_id, email)
    VALUES (
      NEW.id,
      NEW.raw_user_meta_data ->> 'email'
    )
    ON CONFLICT (email) DO UPDATE
    SET supabase_id = NEW.id;
    RETURN NEW;
  END;
  ```

- **Trigger en auth.users:**
  ```sql
  -- En SQL Editor
  CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION handle_public_user();
  ```

- **Habilitar RLS en vistas (security_invoker):**
  ```sql
  CREATE OR REPLACE VIEW emails_with_folder_and_users
  WITH (security_invoker = true) AS
  -- ... definición original de la vista ...
  ```

- **Política SELECT para emails (usuarios ven solo los suyos):**
  ```sql
  -- Nombre: users can read their emails
  -- Acción: SELECT
  -- Target roles: public
  -- USING expression:
  (
    recipient_id IN (
      SELECT id FROM public.users WHERE supabase_id = auth.uid()
    )
    OR
    sender_id IN (
      SELECT id FROM public.users WHERE supabase_id = auth.uid()
    )
  )
  ```

- **Política SELECT para email_folders (usando EXISTS con subconsulta a emails):**
  ```sql
  -- Nombre: users can select email folders
  -- Acción: SELECT
  -- Target roles: authenticated
  -- USING expression:
  EXISTS (
    SELECT 1 FROM emails
    WHERE emails.id = email_id
  )
  ```

- **Política DELETE para emails (solo sender):**
  ```sql
  -- Nombre: user can delete their emails
  -- Acción: DELETE
  -- Target roles: authenticated
  -- USING expression:
  sender_id IN (
    SELECT id FROM public.users WHERE supabase_id = auth.uid()
  )
  ```

- **Política DELETE para email_folders (validando sender via subconsulta anidada):**
  ```sql
  -- Nombre: enable delete for sender
  -- Acción: DELETE
  -- Target roles: authenticated
  -- USING expression:
  auth.uid() IN (
    SELECT supabase_id FROM public.users
    WHERE id IN (
      SELECT sender_id FROM emails
      WHERE emails.id = email_id
    )
  )
  ```

- **Política INSERT para emails:**
  ```sql
  -- Nombre: users can insert their own emails
  -- Acción: INSERT
  -- Target roles: authenticated
  -- WITH CHECK expression:
  sender_id IN (
    SELECT id FROM public.users WHERE supabase_id = auth.uid()
  )
  ```

- **Política INSERT para email_folders (misma lógica que DELETE):**
  ```sql
  -- WITH CHECK expression:
  auth.uid() IN (
    SELECT supabase_id FROM public.users
    WHERE id IN (
      SELECT sender_id FROM emails
      WHERE emails.id = email_id
    )
  )
  ```

- **Actualizar función send_email para usar auth.uid():**
  ```sql
  -- En Database > Functions > edit send_email
  -- Reemplazar sender_id = 1 por:
  sender_id := (
    SELECT id FROM public.users
    WHERE supabase_id = auth.uid()
  );
  ```

## Reglas para el erudito (imperativas y verificables)

- Usa `security definer` en funciones trigger del sistema (como handle_public_user) para que ejecuten con privilegios de Postgres, no del usuario
- Usa `security_invoker = true` en vistas para que respeten RLS de las tablas subyacentes
- Usa `ON CONFLICT (email) DO UPDATE` en triggers de sincronización para manejar usuarios que ya existen como destinatarios
- Usa `EXISTS (SELECT 1 FROM emails WHERE emails.id = email_id)` en políticas de tablas relacionadas para delegar autorización a la tabla principal
- Usa subconsultas anidadas con `auth.uid()` para mapear entre UUID de auth.users y IDs enteros de public.users
- Establece FK con `ON DELETE SET NULL` cuando eliminar un usuario no debe cascadear a sus datos
- Marca la columna supabase_id como UNIQUE para garantizar relación uno a uno
- Asigna target roles a "authenticated" en políticas que requieren usuario logueado

## Errores comunes / gotchas que menciona

- Las vistas **por defecto bypassan RLS**; hay que agregar explícitamente `WITH (security_invoker = true)`
- Habilitar RLS en una tabla **deniega automáticamente** todas las operaciones (SELECT, INSERT, UPDATE, DELETE) hasta que se escriban políticas específicas
- Si una tabla referenciada (como email_folders) no tiene RLS habilitado, las políticas de la tabla principal (emails) no se aplican a través de la vista
- Al eliminar un email, la FK con CASCADE en email_folders requiere también una política DELETE en email_folders, no solo en emails
- Las funciones trigger deben usar `RETURN NEW;` al final para que el trigger funcione correctamente
- Los tipos de datos deben coincidir para establecer FK: auth.users.id es UUID, public.users.id es integer → se necesita columna UUID separada

===== QYZ1s_x5nUM.md =====
# SvelteKit 1.0 is here! (Deploying to Vercel)
**Fuente:** Vercel | https://youtu.be/QYZ1s_x5nUM

## Qué enseña (2-3 líneas)
Introducción a SvelteKit 1.0, sus características principales (SSR, enrutamiento basado en directorios, layouts, load function) y despliegue en Vercel con integración Git, preview deployments, rollbacks instantáneos y Edge Functions. También cubre los cambios breaking de la versión 1.0 respecto a versiones anteriores.

## Técnicas y patrones accionables

- **Despliegue desde template de Vercel:** Ir al marketplace de templates de Vercel, buscar "SvelteKit", seleccionar template y hacer clic en "Deploy".
- **Integración Git nativa:** Vercel soporta GitHub, GitLab y Bitbucket. Al hacer push a una rama, Vercel detecta el commit, construye y despliega automáticamente.
- **Preview deployments:** Al pushear a una rama que no sea `main`, Vercel genera una URL de preview con un toolbar para compartir y dejar comentarios.
- **Promover a producción:** Desde el dashboard de Vercel, usar los tres puntos → "Promote to Production" para llevar una rama a producción sin mergear a `main`.
- **Rollback instantáneo:** En el dashboard, tres puntos sobre un deployment → "Roll back" para revertir al deployment anterior sin reconstruir la aplicación.
- **Analytics:** Agregar Vercel Analytics al proyecto para visualizar Core Web Vitals, total de page views, top pages y browsers.
- **Serverless Functions automáticas:** Al desplegar en Vercel, las funciones serverless se configuran automáticamente. Se pueden ver los logs de funciones en el dashboard.
- **Edge Functions:** SvelteKit soporta Edge Functions de Vercel para ejecutar JavaScript en la red edge global, sirviendo páginas renderizadas dinámicamente a velocidad de CDN.

**Cambios de SvelteKit 1.0 (nuevo sistema de archivos):**
- **Rutas basadas en directorios:** Antes: `about.svelte` creaba `/about`. Ahora: se usa `+page.svelte` dentro de una carpeta `about/`.
- **Archivo de layout:** Antes: `__layout.svelte`. Ahora: `+layout.svelte`.
- **Layouts agrupados:** Carpetas con paréntesis `(grupo)` no afectan la ruta pero actúan como rutas raíz para layouts anidados.
- **Load function movida a endpoint:** Antes se definía en un bloque `<script context="module">` dentro del page component. Ahora se exporta desde un archivo `+page.js` (o `+page.server.js`) hermano del `+page.svelte`.

**Ejemplo de load function (nueva forma):**
Archivo `routes/vercel/+page.js`:
```js
export function load() {
  return {
    // datos a pasar a la página
  };
}
```
Archivo `routes/vercel/+page.svelte`:
```svelte
<script>
  export let data;
</script>
<!-- data está tipada fuertemente -->
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `+page.svelte`** en lugar de `index.svelte` o `about.svelte` para definir rutas.
- **Usa `+layout.svelte`** en lugar de `__layout.svelte` para layouts compartidos.
- **Usa carpetas con paréntesis `(grupo)`** cuando necesites agrupar layouts sin afectar la URL.
- **Define la load function en `+page.js` o `+page.server.js`** (archivo hermano del page component), no en un bloque `context module`.
- **Exporta `data` como prop** en el componente Svelte para recibir los datos retornados por `load`.
- **Para deploy en Vercel:** usa el template marketplace, integración Git, o CLI/API. No requiere configuración manual de serverless functions.
- **Para rollback:** usa el botón "Roll back" en el dashboard de Vercel (no requiere rebuild).
- **Para preview deployments:** haz push a cualquier rama que no sea `main`.

## Errores comunes / gotchas que menciona

- **Cambio de nomenclatura de archivos:** Si vienes de versiones anteriores, `index.svelte` ya no funciona; debes usar `+page.svelte`. Similarmente, `__layout.svelte` se reemplaza por `+layout.svelte`.
- **Load function ya no va en context module:** El bloque `<script context="module">` dentro del page component fue eliminado. La load function ahora debe estar en un archivo separado (`+page.js` o `+page.server.js`).
- **Named layouts eliminados:** Ya no se pueden tener múltiples layouts en un mismo directorio con nombres como `index@about.svelte`. Se reemplazan por layouts agrupados con paréntesis.
- **Compatibilidad con versiones anteriores:** Hubo múltiples breaking changes; se recomienda revisar la migration guide oficial para una lista completa.