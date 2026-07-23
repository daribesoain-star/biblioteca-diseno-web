

===== doc_fastapi_estructura.md =====
# FastAPI — estructura de app grande (doctrina oficial)
**Fuente:** FastAPI Docs oficial | https://fastapi.tiangolo.com/tutorial/bigger-applications/

## Estructura recomendada
```
app/
  __init__.py
  main.py            # entrypoint, incluye routers
  dependencies.py    # dependencias compartidas
  routers/
    __init__.py
    items.py         # APIRouter de items
    users.py
  internal/
    admin.py
```

## APIRouter
```python
from fastapi import APIRouter, Depends, HTTPException
from ..dependencies import get_token_header

router = APIRouter(
    prefix="/items",
    tags=["items"],
    dependencies=[Depends(get_token_header)],
    responses={404: {"description": "Not found"}},
)

@router.get("/")
async def read_items(): ...
@router.get("/{item_id}")
async def read_item(item_id: str):
    if item_id not in db: raise HTTPException(404, "Item not found")
    ...
```

## Dependencias compartidas (dependencies.py)
```python
from typing import Annotated
from fastapi import Header, HTTPException
async def get_token_header(x_token: Annotated[str, Header()]):
    if x_token != "...": raise HTTPException(400, "X-Token invalid")
```

## main.py (incluir routers)
```python
from fastapi import Depends, FastAPI
from .routers import items, users
from .internal import admin
app = FastAPI(dependencies=[Depends(get_query_token)])
app.include_router(users.router)
app.include_router(items.router)
app.include_router(admin.router, prefix="/admin", tags=["admin"], dependencies=[Depends(get_token_header)])
```

## Patrones clave
- Imports relativos: `.` mismo paquete, `..` padre.
- `include_router(...)` acepta prefix/tags/dependencies/responses (se aplican a todas las rutas).
- **Evitar colisión:** importar el MÓDULO (`from .routers import items`), no el `router` suelto (el segundo pisa al primero).
- Un mismo router se puede incluir con distintos prefijos (`/api/v1`, `/api/latest`); routers pueden anidar otros routers.
- Orden de ejecución de dependencias: router → decorador → parámetros. Todas antes de la función.
- Correr: `fastapi dev`.


===== doc_supabase_rls.md =====
# Supabase RLS — doctrina oficial
**Fuente:** Supabase Docs oficial | https://supabase.com/docs/guides/database/postgres/row-level-security

## Habilitar RLS
- `alter table <schema>.<tabla> enable row level security;` — OBLIGATORIO en toda tabla de un schema expuesto (public). Sin esto, ninguna policy aplica.
- Grants por rol antes de habilitar: `anon` (SELECT), `authenticated` (CRUD), `service_role` (CRUD).

## Policies (implícitas como WHERE)
- **SELECT** → `using ( (select auth.uid()) = user_id )`.
- **INSERT** → `with check ( (select auth.uid()) = user_id )`.
- **UPDATE** → `using(...)` (filas existentes) + `with check(...)` (filas modificadas). REQUIERE una policy SELECT correspondiente o el update falla en silencio.
- **DELETE** → `using ( (select auth.uid()) = user_id )`.
- `using` sin `with check` aplica a ambos.

## Contexto de auth
- Roles: `anon` (no autenticado) · `authenticated` (logueado). Especificar SIEMPRE con `to authenticated`.
- `auth.uid()` retorna null si no hay usuario → `null = user_id` siempre false. Guardar: `using (auth.uid() is not null and auth.uid() = user_id)`.
- `auth.jwt()`: usar `app_metadata` (inmutable) para autorización, NUNCA `user_metadata` (mutable por el usuario = inseguro). Ej multi-tenant: `using ( team_id in (select auth.jwt()->'app_metadata'->'teams') )`. Ojo: el JWT no siempre está "fresco" tras cambiar metadata.
- MFA: policy restrictiva `using ( (select auth.jwt()->>'aal') = 'aal2' )`.

## Performance (crítico — benchmarks reales)
1. **Envolver funciones en `(select ...)`**: `(select auth.uid()) = user_id` → +94,97% (crea initPlan, cachea por statement no por fila).
2. **Indexar** columnas de la policy: `create index on test using btree (user_id)` → +99,94%.
3. **Filtro cliente explícito**: `.eq('user_id', userId)` además de la policy → +94,74%.
4. **Especificar `to`**: bloquea anon temprano → +99,78%.
5. **Security definer function** para lógica compleja (evita overhead RLS); NUNCA en schema expuesto.
6. **Minimizar joins**: invertir la lógica (`team_id in (select team_id from team_user where user_id=(select auth.uid()))`) → +99,78%.

## Errores comunes
1. Olvidar habilitar RLS. 2. UPDATE sin policy SELECT (falla mudo). 3. Usar user_metadata para autorización. 4. auth.uid() sin guardia null. 5. Views que saltan RLS (<PG15; en 15+ usar `security_invoker=true`). 6. Ignorar el overhead de performance.
- **service_role** salta RLS: solo backend, NUNCA al cliente.


===== doc_svelte5_effect.md =====
# Svelte 5 — rune $effect (doctrina oficial)
**Fuente:** Svelte Docs oficial | https://svelte.dev/docs/svelte/$effect

- Corre DESPUÉS de montar el DOM, y re-corre en un microtask tras cambiar dependencias (batched). NO corre en SSR.
- **Tracking automático** de `$state`/`$derived`/`$props` LEÍDOS síncronamente (incluye lecturas vía funciones). Lo leído tras `await`/`setTimeout` NO se trackea. Depende de reasignación de objeto, no de mutación de propiedad; solo re-corre por lo leído en su ÚLTIMA ejecución (deps condicionales).
- **Cleanup:** retornar función → corre antes de re-ejecutar, al desmontar, o al re-correr el effect padre. Ej: `$effect(() => { const i = setInterval(...); return () => clearInterval(i) })`.
- **`$effect.pre`:** corre ANTES del update del DOM (ej autoscroll/medir antes de pintar).
- **`$effect.root`:** scope manual sin auto-cleanup; retorna `destroy()` para limpiar a mano.
- **⛔ NUNCA usar $effect para sincronizar estado.** Anti-patrón: `$effect(() => { doubled = count*2 })`. Correcto: `let doubled = $derived(count*2)` (o `$derived.by(...)` para lógica compleja). En 5.25+ los derived se pueden sobreescribir directo (optimistic UI) → otro uso de $effect que se elimina.
- **Loops infinitos:** no leer y escribir el mismo `$state` dentro del effect; si es inevitable, envolver la escritura en `untrack()`.
- **Uso legítimo (escape hatch):** analytics, manipulación directa del DOM, integrar libs de terceros, canvas. NO gestión de estado de rutina.


===== doc_svelte5_state.md =====
# Svelte 5 — rune $state (doctrina oficial)
**Fuente:** Svelte Docs oficial | https://svelte.dev/docs/svelte/$state

- Básico: `let count = $state(0)` — se usa como variable JS normal, reactiva.
- **Reactividad profunda por proxy:** `$state([...])`/`$state({...})` crea proxies recursivos; `todos[0].done = x` y `todos.push(...)` disparan updates. Se proxifica hasta topar con clases/objetos no-planos.
- **Gotcha destructuring:** `let { done } = todos[0]` ROMPE la reactividad (se evalúa en el momento). No destructurar estado reactivo que vas a mutar.
- **Clases:** los instances NO se proxifican → usar `$state` en los campos: `class Todo { done = $state(false); constructor(text){ this.text = $state(text); } }`. Los métodos pierden `this` → llamar con arrow: `onclick={() => todo.reset()}` (NO `onclick={todo.reset}`).
- **`$state.raw`:** solo reasignación, sin proxy (menos overhead para estructuras grandes/inmutables): `person = {...}` funciona, `person.age += 1` NO.
- **`$state.snapshot(x)`:** extrae objeto plano (no-proxy) para libs externas / `structuredClone`.
- **Compartir estado entre módulos (pass-by-value):** NO se puede `export let count = $state(0)` + reasignar. Soluciones: (1) exportar objeto y mutar propiedad: `export const counter = $state({count:0}); export function increment(){ counter.count += 1 }`. (2) getter/setter: `export function getCount(){ return count }`.
- Regla: mutar proxy = update granular; reasignar = reemplaza entero.


===== doc_sveltekit_form_actions.md =====
# SvelteKit form actions + load — doctrina oficial
**Fuente:** SvelteKit Docs oficial | https://svelte.dev/docs/kit/form-actions

## Actions (en +page.server.ts, siempre POST)
- **Default:** `export const actions = { default: async (event) => {...} }`.
- **Named** (varios forms): `actions = { login: async()=>{}, register: async()=>{} }` → `<form method="POST" action="?/register">`.
- Reciben `RequestEvent`; leer con `const data = await request.formData()`.
- Validación: `return fail(400, { email, missing: true })` (status 400-599 + data). Éxito: `return { success: true }` (objeto serializable).
- `redirect(303, url)` para redirigir tras éxito.
- Ejemplo login: leer email/password → `fail` si falta o incorrecto → `cookies.set('sessionid', ..., { path:'/' })` → `redirect(303, redirectTo)`.

## use:enhance (progressive enhancement)
- `import { enhance } from '$app/forms'` + `<form method="POST" use:enhance>` = comportamiento por defecto sin recargar.
- Custom: `use:enhance={({formData, cancel}) => { return async ({result, update}) => { if(result.type==='redirect') goto(result.location); else await applyAction(result); } }}`. `update()` dispara la lógica por defecto.

## Consumir el resultado en +page.svelte
- `let { form } = $props();` → `{#if form?.missing}<p class="error">...</p>{/if}` y `value={form?.email ?? ''}`. El `form` prop vive hasta la próxima navegación.
- Tras una action la página se re-renderiza (salvo redirect/error) con el return como `form`.

## Load: +page.ts vs +page.server.ts
- **+page.server.ts** (solo servidor; aquí van las actions y acceso a DB/cookies): `export const load = async ({cookies}) => { return { user: await db.getUserFromSession(cookies.get('sessionid')) } }`.
- **+page.ts** (universal, corre también en cliente): `export const load = async ({fetch}) => { return { data: await fetch('/api/data').then(r=>r.json()) } }`.
- Regla: datos sensibles/secretos/DB → server load; fetch de APIs públicas → universal load.


===== -uXBWrmpK80.md =====
# End to End Testing is now EASY (don't ignore testing)
**Fuente:** Tobi Mey | https://youtu.be/-uXBWrmpK80

## Qué enseña (2-3 líneas)
El tutorial explica cómo implementar testing end-to-end con Playwright y Browserbase Stagehand, mostrando que los tests E2E son esenciales para aplicaciones serias. Enseña a configurar Playwright, escribir tests básicos, integrarlos con GitHub Actions, y cómo la IA de Stagehand resuelve el problema de tests frágiles que se rompen con cambios pequeños en la UI.

## Técnicas y patrones accionables

- **Configurar Playwright:**
  ```bash
  pnpm create playwright
  ```
  Esto genera un archivo `playwright.config.ts` donde se define el directorio de tests y los navegadores a probar (Chrome, Firefox, Safari). El creador recomienda probar en todos los navegadores, aunque en el ejemplo solo usa Chromium.

- **Estructura básica de un test E2E con Playwright:**
  Archivo: `*.spec.ts`
  ```typescript
  import { test, expect } from '@playwright/test';

  test.describe('multi-step form', () => {
    test.beforeEach(async ({ page }) => {
      await page.goto('/');
    });

    test('should have multi-step form visible', async ({ page }) => {
      await expect(page.locator('text=multi-step form')).toBeVisible();
      await expect(page.locator('.progress-bar')).toBeVisible();
    });

    test('should navigate forward', async ({ page }) => {
      await page.click('button:has-text("Next")');
      // más aserciones...
    });

    test('should fill inputs', async ({ page }) => {
      await page.fill('input[name="firstName"]', 'John');
    });
  });
  ```

- **Integración con GitHub Actions:**
  Archivo: `.github/workflows/e2e.yml`
  ```yaml
  name: End to End Tests
  on:
    pull_request:
      branches: [main]
  jobs:
    test:
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v3
        - uses: actions/setup-node@v3
        - run: pnpm install
        - run: pnpm exec playwright install
        - run: pnpm build
        - run: pnpm exec playwright test
  ```

- **Uso de Browserbase Stagehand (alternativa a Playwright puro):**
  ```typescript
  import { Stagehand } from '@browserbasehq/stagehand';

  const stagehand = new Stagehand({ env: 'BROWSERBASE' });

  await stagehand.page.goto('https://tudominio.com');
  await stagehand.page.act('input the first name');
  await stagehand.page.act('click the next button');
  ```

- **Generar scripts con Browserbase Director:**
  - Usar la herramienta Director para grabar interacciones (ej: "Go on German Amazon and find AirPods Pro 3").
  - Director genera comandos Stagehand como:
    ```typescript
    await page.act('type "AirPods Pro 3" into the search box');
    ```
  - Copiar el script generado directamente al código.

- **Ejecutar tests con Stagehand:**
  ```bash
  pnpm run test:bb-stagehand
  ```
  Esto inicia una máquina en Browserbase y permite ver en vivo lo que el AI browser está haciendo (con video y logs en el dashboard).

## Reglas para el erudito (imperativas y verificables)

- **Usa Playwright para E2E** cuando necesites tests tradicionales con selectores específicos (IDs, clases, texto exacto).
- **Usa Stagehand** cuando quieras tests resistentes a cambios de UI (IDs, nombres de campos, clases) porque la IA interpreta instrucciones en lenguaje natural.
- **Usa GitHub Actions** para ejecutar tests automáticamente en cada pull request, no localmente (para no olvidar ejecutarlos).
- **Prueba en todos los navegadores** (Chrome, Firefox, Safari) configurándolos en `playwright.config.ts`, no solo en Chromium.
- **Define el dominio en Stagehand** apuntando al entorno de Browserbase, no a localhost, para obtener observabilidad (videos, logs).
- **Usa Director** para generar scripts Stagehand automáticamente grabando flujos de usuario, en lugar de escribirlos manualmente.

## Errores comunes / gotchas que menciona

- **Tests frágiles por cambios en la UI:** Si cambias un nombre de clase, un ID o un texto (ej: "multi-step form" a "multi-step test form", o "personal info" a "info"), los tests de Playwright tradicionales se rompen. Stagehand resuelve esto porque usa IA que entiende instrucciones como "input the first name" sin depender de selectores específicos.
- **Olvidar ejecutar tests localmente:** Si no automatizas con GitHub Actions, es fácil olvidar correr los tests después de cada cambio.
- **Complejidad aparente de configuraciones:** El archivo `playwright.config.ts` y el workflow YAML de GitHub Actions se ven complejos, pero en realidad son configuraciones predeterminadas que funcionan sin modificaciones mayores.
- **No usar Stagehand para todo:** Si bien Stagehand resuelve la fragilidad, el creador muestra que se puede usar Playwright + Browserbase como entorno (sin Stagehand) para obtener beneficios de observabilidad, pero el problema de tests frágiles persiste.

===== 3AIPUA1vPfM.md =====
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

===== 3NW0Mz943_E.md =====
# React Testing with Playwright (Complete Tutorial)
**Fuente:** Cosden Solutions | https://youtu.be/3NW0Mz943_E

## Qué enseña
Enseña a configurar y escribir tests end-to-end con Playwright para aplicaciones React. Cubre la instalación, la estructura de tests con `describe` y `test`, el uso de hooks como `beforeEach`, la navegación entre páginas, la interacción con elementos del DOM (inputs, botones, enlaces) y la verificación de estados (título, visibilidad, contenido de listas, campos vacíos). También explica el principio de qué testear (flujos de usuario completos) versus qué no testear.

## Técnicas y patrones accionables

- **Instalación de Playwright en proyecto existente:**
  ```bash
  pnpm create playwright
  ```
  - Responde a las preguntas: carpeta de tests (default `tests/`), GitHub Actions workflow (opcional), instalar browsers (default).

- **Estructura básica de un archivo de test (`example.spec.ts`):**
  ```typescript
  import { test, expect } from '@playwright/test';

  test.describe('home page', () => {
    test.beforeEach(async ({ page }) => {
      await page.goto('http://localhost:3000');
    });

    test('should have correct metadata and elements', async ({ page }) => {
      await expect(page).toHaveTitle('Cosden Solutions');
      await expect(page.getByRole('heading', { name: 'home page' })).toBeVisible();
      await expect(page.getByRole('link', { name: 'form' })).toBeVisible();
    });

    test('should redirect to form page on click', async ({ page }) => {
      await page.getByRole('link', { name: 'form' }).click();
      await expect(page).toHaveTitle('form');
    });
  });
  ```

- **Grupos de tests con `test.describe`:**
  ```typescript
  test.describe('form page', () => {
    test.beforeEach(async ({ page }) => {
      await page.goto('http://localhost:3000/form');
    });

    test('should have correct metadata and elements', async ({ page }) => {
      await expect(page).toHaveTitle('form');
      await expect(page.getByRole('heading', { name: 'form' })).toBeVisible();
      await expect(page.getByPlaceholder('Enter item')).toBeVisible();
      await expect(page.getByRole('button', { name: 'Add' })).toBeVisible();
    });
  });
  ```

- **Uso de `data-testid` para seleccionar elementos:**
  En el componente React:
  ```tsx
  <ul data-testid="items-list">
    {items.map((item, index) => (
      <li key={index} data-testid="item">{item}</li>
    ))}
  </ul>
  ```
  En el test:
  ```typescript
  test('should have empty items list on start', async ({ page }) => {
    const itemsList = page.getByTestId('items-list');
    await expect(itemsList).toBeEmpty();
  });

  test('should add item to list', async ({ page }) => {
    const input = page.getByPlaceholder('Enter item');
    await input.fill('item one');
    await page.getByRole('button', { name: 'Add' }).click();

    const item = page.getByTestId('item').nth(0);
    await expect(item).toHaveText('item one');
    await expect(input).toBeEmpty();
  });
  ```

- **Comandos para ejecutar tests:**
  ```bash
  npx playwright test          # Ejecuta todos los tests en terminal (3 workers paralelos)
  npx playwright test --ui     # Abre interfaz visual interactiva para depuración
  ```

- **Patrón de hook `beforeEach` para evitar repetición:**
  ```typescript
  test.describe('home page', () => {
    test.beforeEach(async ({ page }) => {
      await page.goto('http://localhost:3000');
    });
    // Todos los tests dentro de este describe comienzan en localhost:3000
  });
  ```

- **Verificación de título de página:**
  ```typescript
  await expect(page).toHaveTitle('Cosden Solutions');
  ```

- **Verificación de visibilidad de elementos:**
  ```typescript
  await expect(page.getByRole('heading', { name: 'home page' })).toBeVisible();
  await expect(page.getByRole('link', { name: 'form' })).toBeVisible();
  await expect(page.getByPlaceholder('Enter item')).toBeVisible();
  await expect(page.getByRole('button', { name: 'Add' })).toBeVisible();
  ```

- **Interacción con inputs y botones:**
  ```typescript
  await input.fill('item one');                    // Escribe en el input
  await page.getByRole('button', { name: 'Add' }).click();  // Click en botón
  await page.getByRole('link', { name: 'form' }).click();   // Click en enlace
  ```

- **Verificación de contenido de lista y campo vacío:**
  ```typescript
  await expect(itemsList).toBeEmpty();             // Lista vacía
  await expect(item).toHaveText('item one');       // Elemento con texto específico
  await expect(input).toBeEmpty();                 // Input vacío después de agregar
  ```

## Reglas para el erudito

- **Usa `test.describe`** para agrupar tests relacionados (ej: todos los tests de una página).
- **Usa `test.beforeEach`** dentro de un `describe` para navegar a la URL inicial de ese grupo, evitando repetir `page.goto()` en cada test.
- **Usa `getByRole`** como selector preferido para elementos semánticos (heading, link, button) con la opción `{ name: 'texto' }` para filtrar por texto visible.
- **Usa `getByPlaceholder`** para inputs que tengan un placeholder único.
- **Usa `getByTestId`** con el atributo `data-testid` en el HTML para elementos que no tienen un rol semántico claro o cuando necesitas seleccionar elementos repetidos (ej: items de una lista).
- **Usa `.nth(0)`** para acceder al primer elemento de una colección con el mismo `data-testid`.
- **Usa `.fill()`** para establecer el valor de un input (no uses `type()` a menos que necesites simular escritura carácter por carácter).
- **Usa `.click()`** para hacer clic en enlaces, botones o cualquier elemento clickeable.
- **Usa `toBeVisible()`** para verificar que un elemento está presente y visible en la pantalla.
- **Usa `toHaveTitle()`** para verificar el título de la página después de una navegación.
- **Usa `toHaveText()`** para verificar el texto exacto de un elemento.
- **Usa `toBeEmpty()`** para verificar que un contenedor (ej: `<ul>`) no tiene hijos.
- **Cada test debe comenzar con `page.goto()`** (ya sea directamente o mediante `beforeEach`) porque cada test corre en una sesión de navegador aislada.
- **Nunca** asumas que el estado de un test persiste en otro; cada test es independiente.
- **Separa tests en archivos diferentes** en proyectos reales, agrupando por funcionalidad o página.

## Errores comunes / gotchas que menciona

- **Olvidar navegar a la página antes de hacer aserciones:** Si no llamas a `page.goto()` antes de `expect`, el test falla porque no sabe en qué URL está.
- **Repetir `page.goto()` en cada test en lugar de usar `beforeEach`:** Lleva a código duplicado y difícil de mantener.
- **No usar `data-testid` para elementos sin rol semántico:** Dificulta la selección precisa de elementos en el test.
- **Confiar en que el test pasa sin verificar que realmente falle cuando debe:** Se recomienda romper intencionalmente el test (ej: cambiar el texto esperado) para confirmar que el mecanismo de detección funciona.
- **No revisar el archivo de ejemplo `demo-todo-app.spec.ts`** que Playwright genera automáticamente: Contiene patrones avanzados y mejores prácticas que se pueden reutilizar.

===== 4GT5-f1Hh_w.md =====
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

===== 52nXUwQWeKI.md =====
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