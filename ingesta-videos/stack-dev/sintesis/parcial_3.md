# DOCTRINA ACCIONABLE DE PRODUCCIÓN

## 1) Svelte 5 Runes ($state/$derived/$effect/$props/$bindable)

### $props rune (reemplaza `export let`)

- Declara props con tipado estricto y valores por defecto:
```svelte
<script lang="ts">
  let { title = undefined, price }: { title?: string; price: number } = $props();
</script>
```
- `title` es opcional (valor por defecto `undefined`), `price` es requerido.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Usa `$props()` en lugar de `export let` para declarar props en Svelte 5. `export` está deprecado.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

### Snippets ({#snippet} y {@render}) reemplazan <slot>

- Crear y renderizar un Snippet en la misma página:
```svelte
{#snippet greetings()}
  <p>Hello world</p>
{/snippet}

{@render greetings()}
```
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Snippet con parámetros:
```svelte
{#snippet greetings(personName: string)}
  <p>Hello {personName}</p>
{/snippet}

{@render greetings('John')}
```
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Pasar Snippet a componente hijo (prop tipo `Snippet`):
  - Componente hijo (`Button.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { button }: { button?: Snippet } = $props();
    </script>

    {#if button}
      {@render button()}
    {/if}
    ```
  - Página padre:
    ```svelte
    <Button>
      {#snippet button()}
        <button class="bg-blue-500 px-4 py-2">Enviar</button>
      {/snippet}
    </Button>
    ```
  - **Regla:** El nombre del snippet en el padre debe coincidir exactamente con el nombre de la prop de tipo `Snippet` en el componente hijo.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Tipar snippets que reciben parámetros desde el hijo:
```svelte
<script lang="ts">
  import type { Snippet } from 'svelte';
  let { header }: { header?: Snippet<[string, string]> } = $props();
</script>
```
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

- Renderiza el snippet siempre dentro de un `{#if snippet}` para evitar errores si el padre no lo provee.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

### Gotchas de Svelte 5

- **Olvidar renderizar el snippet:** Si creas un `{#snippet}` pero no lo renderizas con `{@render}`, no se mostrará nada en pantalla.
- **No pasar parámetros requeridos al renderizar:** Si el snippet espera un parámetro y no lo pasas en `{@render}`, Svelte mostrará un error.
- **Confundir el nombre del snippet con el nombre de la prop:** El snippet definido en el padre debe llamarse exactamente igual que la prop de tipo `Snippet` en el componente hijo.
- **Fuente:** 08 - Props and Snippets In Svelte 5 — Code Hub (jpPklvWrZC8)

---

## 2) SvelteKit (Routing, Load, Form Actions, use:enhance, Auth)

### Form Actions con tipado TypeScript

- Archivo `+page.server.ts` con action nombrada:
```typescript
export const actions = {
  act: async ({ request }) => {
    const data = await request.formData();
    const firstName = data.get('firstName');
    const lastName = data.get('lastName');
    const age = data.get('age');
  }
};
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Uso de `fail` para errores:
```typescript
import { fail } from '@sveltejs/kit';

if (age === 'Old AF') {
  return fail(400, { tooOld: true, type: 'fail', firstName, lastName, age });
}
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Tipado completo de form actions:
```typescript
import type { Actions, RequestEvent, ActionFailure } from '@sveltejs/kit';

interface MyData {
  tooOld: boolean;
  type: string;
  firstName: FormDataEntryValue;
  lastName: FormDataEntryValue;
  age: FormDataEntryValue | string;
  [key: string]: any; // índice de firma para ActionFailure
}

export const actions: Actions = {
  act: async ({ request }: { request: RequestEvent }): Promise<MyData | ActionFailure<MyData>> => {
    // ...
    return { tooOld: false, type: 'success', firstName, lastName, age };
  }
};
```
- **Regla:** Añade `[key: string]: any` a tu interfaz de datos cuando uses `ActionFailure<T>` para evitar error de "index signature for type string is missing".
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

### use:enhance para evitar recarga completa

```svelte
<script>
  import { enhance } from '$app/forms';
</script>

<form method="POST" action="?/act" use:enhance>
  <!-- campos del formulario -->
</form>
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Callback de `use:enhance` con validación frontal y cancelación:
```svelte
<form method="POST" action="?/act" use:enhance={({ formData, cancel }) => {
  if (formData.get('firstName') === 'Dave') {
    cancel();
  }
}}>
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

- Parámetros del callback de `use:enhance`:
```typescript
use:enhance={({ form, formData, action, cancel }) => {
  // form: HTMLFormElement
  // formData: FormData
  // action: string (URL de la acción)
  // cancel: () => void
}}
```
- **Fuente:** SvelteKit — Consulting Ninja (fY34H1IfA94)

### Form Actions para subida de archivos

- Conectar formulario a action nombrada:
```svelte
<form method="POST" action="?/upload">
  <input type="file" name="fileUpload" />
  <button type="submit">Upload</button>
</form>
```
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

- Definir action en el servidor (`+page.server.js`):
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
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

- Recibir datos del formulario en el cliente:
```svelte
<script>
  export let form;
</script>

{#if form?.error}
  <p>Failed to upload, wrong format</p>
{/if}

{#if form?.success}
  <p>File uploaded</p>
{/if}
```
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

### Reglas imperativas para Form Actions

- Usa `method="POST"` en el formulario para que se ejecute la action del servidor.
- Usa `action="?/nombreAction"` para enlazar a una action específica; si es la action por defecto (sin nombre), omite el atributo `action`.
- Usa `await request.formData()` dentro de la action para obtener los datos del formulario.
- Usa `data.get('nameDelInput')` para extraer cada campo del formulario.
- Usa `export let form` en el componente para acceder a los datos devueltos por la action.
- Nunca devuelvas objetos no serializables (ej. `BigInt`) desde una action.
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

### Gotchas de Form Actions

- Olvidar importar `fail` desde `@sveltejs/kit` provoca un error de referencia.
- Si el objeto devuelto no es serializable (por ejemplo, contiene `BigInt`), la action falla silenciosamente.
- El nombre del input (`name="fileUpload"`) debe coincidir exactamente con el usado en `data.get('fileUpload')`.
- **Fuente:** SvelteKit — Consulting Ninja (TMLS_2VtyGU)

---

## 3) FastAPI (Estructura por capas, Async, Pydantic v2, JWT)

### Estructura con APIRouter

- Separar endpoints en routers con `APIRouter`:
```python
from fastapi import APIRouter

router = APIRouter(prefix="/items")

@router.get("/{item_id}")
async def read_item(item_id: int, db: Session = Depends(get_database)):
    db_item = read_database_item(item_id, db)
    return Item(id=db_item.id, name=db_item.name, description=db_item.description)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

- Incluir routers en `main.py`:
```python
from routers.items import router as items_router
from routers.automations import router as automations_router

app.include_router(items_router)
app.include_router(automations_router)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Separación de operaciones (capa de servicios)

- Mover la lógica de negocio a funciones en un directorio separado (ej. `db/items.py`):
```python
from pydantic import BaseModel

class Item(BaseModel):
    id: int
    name: str
    description: str | None = None

class ItemCreate(BaseModel):
    name: str
    description: str | None = None

class ItemUpdate(BaseModel):
    name: str | None = None
    description: str | None = None
```
- **Regla:** Los endpoints deben ser casi vacíos, solo llamando a las operaciones.
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Inyección de dependencias para sesiones de BD

```python
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, Session

engine = create_engine("sqlite:///./test.db")
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

def get_database():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```
- **Regla:** Usa un generador con `try/finally` para la sesión de BD (`yield db` / `db.close()`). Nunca dejes conexiones abiertas.
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Async SQLAlchemy con FastAPI

- Configuración de `database.py` (motor y sesión asíncronos):
```python
from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker

DATABASE_URL = "postgresql+psycopg://user:pass@localhost/dbname"

engine = create_async_engine(DATABASE_URL)

AsyncSessionLocal = async_sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)
```
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

- Dependencia FastAPI para inyectar sesión asíncrona:
```python
async def get_session():
    async with AsyncSessionLocal() as session:
        yield session
```
- **Regla:** La función debe ser `async` y usar `async with`.
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

- Consulta moderna con `select` y `scalars`:
```python
from sqlalchemy import select

@app.get("/movies")
async def get_movies(session: AsyncSession = Depends(get_session)):
    result = await session.execute(select(Movie))
    movies = result.scalars().all()
    return movies
```
- **Regla:** Usa `select(Model)` en lugar de `session.query(Model)` para consultas con drivers asíncronos.
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

- Lifespan de FastAPI con operaciones asíncronas:
```python
from contextlib import asynccontextmanager
from fastapi import FastAPI

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    await init_db()
    async with AsyncSessionLocal() as session:
        m1 = Movie(title="Movie 1")
        m2 = Movie(title="Movie 2")
        session.add_all([m1, m2])
        await session.commit()
    yield
    # Shutdown
    async with AsyncSessionLocal() as session:
        await session.execute(delete(Movie))
        await session.commit()

app = FastAPI(lifespan=lifespan)
```
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

### Pydantic v2

- Definir un modelo básico con `BaseModel`:
```python
from pydantic import BaseModel

class User(BaseModel):
    name: str
    email: str
    account_id: int
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Usar tipos especiales como `EmailStr`:
```python
from pydantic import EmailStr

class User(BaseModel):
    name: str
    email: EmailStr
    account_id: int
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Añadir validación personalizada con el decorador `@validator`:
```python
from pydantic import BaseModel, validator

class User(BaseModel):
    name: str
    email: str
    account_id: int

    @validator("account_id")
    def account_id_must_be_positive(cls, value):
        if value <= 0:
            raise ValueError(f"account_id must be positive, got {value}")
        return value
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Serializar a JSON y diccionario:
```python
user_json = user.json()  # Devuelve string JSON
user_dict = user.dict()  # Devuelve dict de Python
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

- Deserializar desde JSON string:
```python
user = User.parse_raw('{"name": "Jack", "email": "jack@example.com", "account_id": 1234}')
```
- **Fuente:** Pydantic Tutorial — pixegami (XIdQ6gO3Anc)

### Rate Limiting con SlowAPI

- Configuración:
```python
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
app.state.limiter = limiter
app.add_exception_handler(RateLimitExceeded, _rate_limit_exceeded_handler)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

- Aplicar el decorador `@limiter.limit()` en los endpoints (debajo del decorador de ruta):
```python
@router.get("/{item_id}")
@limiter.limit("10/second")
async def read_item(item_id: int, request: Request, db: Session = Depends(get_database)):
    ...
```
- **Regla:** El decorador `@limiter.limit` debe ir **debajo** de `@router.get(...)`.
- **Regla:** Pasa `request: Request` como argumento al endpoint cuando uses SlowAPI con `get_remote_address`.
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Reglas imperativas para FastAPI

- **Usa `APIRouter` con `prefix`** cuando tengas múltiples grupos de endpoints. Nunca pongas todas las rutas en `main.py`.
- **Separa las operaciones de los endpoints**: crea funciones en `db/` que reciban la sesión de BD y devuelvan modelos Pydantic, no objetos de BD directamente.
- **Usa `create_async_engine`** cuando quieras operaciones de base de datos no bloqueantes en FastAPI.
- **Usa `async_sessionmaker`** en lugar de `sessionmaker` para generar sesiones asíncronas.
- **Marca como `async`** toda función que maneje sesiones asíncronas (dependencias, lifespan, endpoints).
- **Usa `async with`** para contextos de sesión y conexión (nunca `with` simple).
- **Usa `await`** en toda operación de base de datos: `session.execute()`, `session.commit()`, `session.flush()`.
- **Usa `run_sync`** para ejecutar funciones síncronas de SQLAlchemy (como `create_all`) dentro de un contexto async.
- **Nunca** ejecutes operaciones bloqueantes (síncronas) dentro de funciones `async` de FastAPI.
- **Define modelos Pydantic separados para creación y actualización**: `ItemCreate` (name requerido, description opcional) y `ItemUpdate` (name y description ambos opcionales).
- **Fuentes:** BugBytes (T0JXFhJ7pM0), ArjanCodes (XlnmN4BfCxw)

### Gotchas de FastAPI Async

- **Olvidar `await` en `session.execute()`**: produce `AttributeError: coroutine object has no attribute 'scalars'`.
- **Usar `session.query()` con driver async**: no funciona. Migrar a `session.execute(select(...))`.
- **No marcar la dependencia `get_session` como `async`**: la función debe ser `async` para poder usar `async with`.
- **Usar `with` en lugar de `async with`** en contextos de sesión o conexión: causa errores de tipo `TypeError: 'AsyncSession' object does not support the context manager protocol`.
- **URL de base de datos incorrecta**: para psycopg async usar `postgresql+psycopg://...` (no `+psycopg2`).
- **No instalar `sqlalchemy[asyncio]`**: el paquete base no incluye las extensiones asyncio.
- **Fuente:** Async SQLAlchemy — BugBytes (T0JXFhJ7pM0)

---

## 4) Supabase + RLS + Postgres

### Row-Level Security (RLS) Policies

- **Tipos de políticas:** `SELECT`, `INSERT`, `UPDATE`, `DELETE` (evitar `ALL` para mayor control granular).
- **Sintaxis de políticas:**
  - `SELECT`: `USING (condición)`
  - `INSERT`: `WITH CHECK (condición)`
  - `UPDATE`: `USING (condición)` + `WITH CHECK (condición)`
  - `DELETE`: `USING (condición)`
- **`USING`** compara la condición contra datos existentes.
- **`WITH CHECK`** compara la condición contra datos futuros después del cambio.
- **Fuente:** Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU)

### Ejemplos de políticas RLS

1. **Acceso público (solo SELECT):** `USING (true)`
2. **Propietario del registro:** `USING (auth.uid() = user_id)`
3. **Basado en grupo/equipo:** requiere tres tablas (`posts` con `team_id`, `teams`, `team_users`):
   ```sql
   USING (auth.uid() IN (SELECT user_id FROM team_users WHERE team_id = posts.team_id))
   ```
- **Fuente:** Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU)

### Habilitar RLS en una tabla

- Por defecto, al activar RLS, todas las operaciones quedan bloqueadas hasta que crees políticas explícitas.
- **Fuente:** Supabase Tutorial #10 - Intro to RLS & Policies — Net Ninja (WAa3a-HxLVs)

### Crear política de lectura para todos (SELECT)

- Policy definition: `true` (sin condiciones adicionales).
- **Fuente:** Supabase Tutorial #10 - Intro to RLS & Policies — Net Ninja (WAa3a-HxLVs)

### Optimización de rendimiento con RLS

- Aunque RLS actúa como filtro, se debe agregar explícitamente el filtro en la consulta (ej: `.eq('team_id', 1)`) para que Postgres sea más eficiente.
- **Fuente:** Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU)

### Reglas imperativas para RLS

- Nunca uses la política `ALL` en RLS; prefiere `SELECT`, `INSERT`, `UPDATE`, `DELETE` por separado para control granular.
- En políticas RLS, usa `USING` para condiciones contra datos existentes y `WITH CHECK` para condiciones contra datos futuros.
- Siempre agrega el filtro explícito en la consulta (ej: `.eq('team_id', 1)`) aunque RLS ya lo aplique, para mejorar rendimiento.
- Habilita RLS en cada tabla que necesite protección; por defecto, sin RLS, cualquiera con la API key pública tiene acceso completo de lectura/escritura.
- Nunca asumas que la API key pública es segura; siempre protege datos sensibles con RLS desde el backend.
- **Fuentes:** Supabase (Ufx6fdRMxjU), Net Ninja (WAa3a-HxLVs)

### Gotchas de RLS

- Al activar RLS sin políticas, la aplicación deja de mostrar datos (error silencioso o datos vacíos al refrescar la página).
- Las operaciones de UPDATE y DELETE fallan si no hay políticas que las permitan.
- La eliminación desde el frontend puede parecer exitosa si se actualiza el estado local, pero al refrescar la página los datos reaparecen porque la operación en la base de datos fue rechazada.
- En políticas RLS de tipo `UPDATE`, se deben especificar tanto `USING` como `WITH CHECK`; en `SELECT` y `DELETE` solo `USING`; en `INSERT` solo `WITH CHECK`.
- **Fuentes:** Supabase (Ufx6fdRMxjU), Net Ninja (WAa3a-HxLVs)

---

## 5) Testing (Playwright E2E, Vitest, Unit)

### Configuración de Playwright

```bash
# Instalar navegadores de Playwright
npx playwright install

# Ejecutar todos los tests
npm test

# Ver reporte
npx playwright show-report

# Ejecutar en modo headed (con navegador visible)
npm run test -- --headed

# Ejecutar en modo UI interactivo
npm run test -- --ui

# Ejecutar un archivo específico
npx playwright test tests/cart.spec.js

# Ejecutar tests que coincidan con un patrón
npx playwright test -g login
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Estructura de un test file

```javascript
import { test, expect } from '@playwright/test';

test.describe('home page', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto('/');
  });

  test('should display correct page title', async ({ page }) => {
    await expect(page).toHaveTitle(/TechMart/);
  });
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Patrón acción + verificación (fundamental)

```javascript
test('should add item to cart', async ({ page }) => {
  // 1. ACCIÓN: click en "Add to Cart"
  await page.locator('text=Add to Cart').first().click();
  
  // 2. VERIFICAR feedback inmediato (toast message)
  await expect(page.locator('text=Added to cart')).toBeVisible();
  
  // 3. VERIFICAR cambio de estado (cart count actualizado)
  await expect(page.locator('[data-testid="cart-count"]')).toHaveText('1');
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Estrategias de localización (locators)

```javascript
// Por ID
page.locator('#search-input')

// Por clase CSS
page.locator('.product-card')

// Por texto exacto
page.locator('text=Add to Cart')

// Por rol de accesibilidad
page.locator('role=button[name="login"]')

// Por placeholder
page.locator('[placeholder="Search products..."]')

// Combinando selectores
page.locator('.product-card >> text=Keyboard')
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Test de API con Playwright

```javascript
test('should return all products', async ({ request }) => {
  const response = await request.get('/api/products');
  
  expect(response.ok()).toBeTruthy();
  expect(response.status()).toBe(200);
  
  const data = await response.json();
  expect(Array.isArray(data)).toBeTruthy();
  expect(data.length).toBe(6);
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Mocking de API

```javascript
// Simular API caída (500 error)
test('should handle API being down', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 500,
      body: 'Internal Server Error'
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(0);
});

// Mock de datos específicos (out of stock)
test('should show out of stock indicator', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 200,
      body: JSON.stringify([
        { id: 1, name: 'Wireless Headphones', stock: 0 },
        { id: 2, name: 'USB Cable', stock: 10 }
      ])
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(2);
  await expect(page.locator('text=Out of Stock')).toBeVisible();
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Testing de edge cases

```javascript
// Búsqueda vacía
test('should handle empty search gracefully', async ({ page }) => {
  await page.goto('/');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Búsqueda con caracteres especiales (XSS)
test('should handle special characters search', async ({ page }) => {
  await page.locator('#search-input').fill('<script>alert("xss")</script>');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(0);
});

// Checkout con carrito vacío
test('should not allow checkout with empty cart', async ({ page }) => {
  await page.goto('/checkout');
  await page.locator('#email').fill('test@test.com');
  await page.locator('#card').fill('4111111111111111');
  await page.locator('text=Place Order').click();
  await expect(page.locator('text=Cart is empty')).toBeVisible();
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Testing de accesibilidad

```javascript
// Verificar que todas las imágenes tienen alt text
test('all images should have alt text', async ({ page }) => {
  await page.goto('/');
  const images = page.locator('img');
  const count = await images.count();
  for (let i = 0; i < count; i++) {
    await expect(images.nth(i)).toHaveAttribute('alt');
  }
});

// Verificar que todos los inputs tienen labels
test('all form inputs should have labels', async ({ page }) => {
  await page.goto('/login');
  const inputs = page.locator('input');
  const count = await inputs.count();
  for (let i = 0; i < count; i++) {
    await expect(inputs.nth(i)).toHaveAttribute('aria-label');
  }
});
```
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Reglas imperativas para Testing

1. **Usa el patrón acción + verificación** en cada test: primero realiza la acción del usuario, luego verifica el feedback inmediato, y finalmente verifica el cambio de estado.
2. **Usa `page.locator()` con selectores estables y significativos**: prefiere IDs y atributos `data-test-id` sobre selectores CSS que dependen de la estructura exacta del DOM.
3. **Nunca dependas de un test de otro**: cada test debe configurar sus propios datos y limpiar después de ejecutarse.
4. **Usa `test.beforeEach()` para navegar a un estado limpio** antes de cada test en un bloque `test.describe()`.
5. **Mockea APIs cuando:** estés probando estados de error difíciles de reproducir, la API real sea lenta/inestable/costosa, necesites control preciso sobre los datos.
6. **No mockees cuando:** necesites verificar que la API real funciona (usa tests de integración para eso).
7. **Usa `page.route()` para interceptar requests HTTP** y devolver respuestas personalizadas (mockear).
8. **Prueba siempre el happy path Y los escenarios de error**: formularios vacíos, caracteres especiales, contraseñas que no coinciden, carritos vacíos.
9. **Usa nombres de test descriptivos**: "should display error when password is too short" en lugar de "test1".
10. **Integra los tests en CI/CD** para que se ejecuten automáticamente en cada cambio de código.
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

### Gotchas de Testing

1. **Tests flaky (inconsistentes)**: Los tests E2E a veces pasan y a veces fallan sin cambios de código debido a timing issues, variabilidad de red, inconsistencias entre navegadores.
2. **Mantenimiento costoso**: Cuando la UI cambia, los selectores pueden romperse, los flujos de test necesitan actualizarse.
3. **No olvidar instalar los navegadores de Playwright**: Ejecutar `npx playwright install` antes de correr los tests por primera vez.
4. **Los tests de accesibilidad pueden fallar incluso si visualmente todo se ve bien**: Esto es bueno, significa que se encontraron issues reales de accesibilidad.
- **Fuente:** Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8)

---

## 6) Deploy y Producción (Vercel, Fly, Docker, Env, Performance, Observabilidad, Rate Limiting)

### Dockerfile básico para FastAPI

```dockerfile
FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

### Rate Limiting con SlowAPI (producción)

- Configuración completa:
```python
from slowapi import Limiter, _rate_limit_exceeded_handler
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
app.state.limiter = limiter
app.add_exception_handler(RateLimitExceeded, _rate_limit_exceeded_handler)
```
- **Fuente:** How I Actually Build FastAPI Backends for Production — ArjanCodes (XlnmN4BfCxw)

- Aplicar en endpoints:
```python
@router.get("/{item_id}")
@limiter.limit("10/second")
async def read_item(item_id: int, request: Request, db: Session = Depends(get_d