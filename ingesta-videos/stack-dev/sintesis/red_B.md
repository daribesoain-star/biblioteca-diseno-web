# 4. Supabase, RLS y Postgres

## Habilitar RLS

```sql
alter table <schema>.<tabla> enable row level security;
```

**OBLIGATORIO** en toda tabla de un schema expuesto (public). Sin esto, ninguna policy aplica. Al activarlo, la tabla queda completamente bloqueada (deniega SELECT, INSERT, UPDATE, DELETE por defecto).
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

## Policies

- **SELECT** → `using ( (select auth.uid()) = user_id )`
- **INSERT** → `with check ( (select auth.uid()) = user_id )`
- **UPDATE** → `using(...)` (filas existentes) + `with check(...)` (filas modificadas). REQUIERE una policy SELECT correspondiente o el update falla en silencio.
- **DELETE** → `using ( (select auth.uid()) = user_id )`
- `using` sin `with check` aplica a ambos.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

### Ejemplos de políticas RLS

1. **Acceso público (solo SELECT):** `USING (true)`
2. **Propietario del registro:** `USING (auth.uid() = user_id)`
3. **Basado en grupo/equipo:** requiere tres tablas (`posts` con `team_id`, `teams`, `team_users`):
   ```sql
   USING (auth.uid() IN (SELECT user_id FROM team_users WHERE team_id = posts.team_id))
   ```
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

### Política básica para dueño del recurso (ALL operations):

```sql
CREATE POLICY "Enable all actions for users based on their user id"
ON public.post
FOR ALL
USING (auth.uid() = user_id)
WITH CHECK (auth.uid() = user_id);
```
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

### Política SELECT para posts publicados:

```sql
-- Nombre: "Enable user to select a published post"
-- USING expression:
(is_published = true)
```
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

### Política SELECT con subconsulta a otra tabla (comentarios visibles solo si el post padre es visible):

```sql
-- Tabla: comment, Operación: SELECT
-- USING expression:
EXISTS (
  SELECT 1
  FROM post
  WHERE post.id = comment.post_id
)
```
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

### Política INSERT con subconsulta + restricción de dueño:

```sql
-- Tabla: comment, Operación: INSERT
-- USING expression:
(EXISTS (
  SELECT 1
  FROM post
  WHERE post.id = comment.post_id
) AND auth.uid() = comment.user_id)
```
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

### Política DELETE para moderación (dueño del post elimina comentarios):

```sql
-- Tabla: comment, Operación: DELETE
-- USING expression:
auth.uid() IN (
  SELECT user_id
  FROM post
  WHERE post.id = comment.post_id
)
```
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

## Contexto de auth

- Roles: `anon` (no autenticado) · `authenticated` (logueado). Especificar SIEMPRE con `to authenticated`.
- **Guardia null:** `auth.uid()` retorna null si no hay usuario → `null = user_id` siempre false. Usar:
  ```sql
  using (auth.uid() is not null and auth.uid() = user_id)
  ```
- **`auth.jwt()`:** usar `app_metadata` (inmutable) para autorización, NUNCA `user_metadata` (mutable por el usuario = inseguro). Ej multi-tenant:
  ```sql
  using ( team_id in (select auth.jwt()->'app_metadata'->'teams') )
  ```
  Ojo: el JWT no siempre está "fresco" tras cambiar metadata.
- **MFA:** policy restrictiva `using ( (select auth.jwt()->>'aal') = 'aal2' )`.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

## Sincronización auth.users con tabla pública

- Función trigger con security definer:
  ```sql
  CREATE OR REPLACE FUNCTION handle_public_user()
  RETURNS trigger
  LANGUAGE plpgsql
  SECURITY DEFINER
  AS $$
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
  $$;
  ```
(Fuente: Supabase — https://youtu.be/PdEutzhsrws)

- Trigger en auth.users:
  ```sql
  CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION handle_public_user();
  ```
(Fuente: Supabase — https://youtu.be/PdEutzhsrws)

## Vistas con RLS

- Usa `security_invoker = true` en vistas para que respeten RLS de las tablas subyacentes:
  ```sql
  CREATE OR REPLACE VIEW emails_with_folder_and_users
  WITH (security_invoker = true) AS
  -- ... definición original de la vista ...
  ```
(Fuente: Supabase — https://youtu.be/PdEutzhsrws)

## Performance (crítico — benchmarks reales)

1. **Envolver funciones en `(select ...)`:** `(select auth.uid()) = user_id` → +94,97% (crea initPlan, cachea por statement no por fila).
2. **Indexar** columnas de la policy: `create index on test using btree (user_id)` → +99,94%.
3. **Filtro cliente explícito:** `.eq('user_id', userId)` además de la policy → +94,74%.
4. **Especificar `to`:** bloquea anon temprano → +99,78%.
5. **Security definer function** para lógica compleja (evita overhead RLS); NUNCA en schema expuesto.
6. **Minimizar joins:** invertir la lógica (`team_id in (select team_id from team_user where user_id=(select auth.uid()))`) → +99,78%.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

## Errores comunes

1. Olvidar habilitar RLS.
2. UPDATE sin policy SELECT (falla mudo).
3. Usar user_metadata para autorización.
4. auth.uid() sin guardia null.
5. Views que saltan RLS (<PG15; en 15+ usar `security_invoker=true`).
6. Ignorar el overhead de performance.
- **service_role** salta RLS: solo backend, NUNCA al cliente.
(Fuente: Supabase Docs oficial — https://supabase.com/docs/guides/database/postgres/row-level-security)

## Reglas clave

- **Usa `auth.uid()`** para identificar al usuario autenticado. Es una función especial de Supabase que devuelve el ID del usuario actual.
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

- **Usa `EXISTS (SELECT 1 FROM ...)`** para subconsultas de autorización. `SELECT 1` es más eficiente que `SELECT *`.
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

- **Nunca re-implementes políticas de una tabla en otra.** En lugar de duplicar la lógica de visibilidad de posts en la tabla de comentarios, haz una subconsulta a la tabla `post`.
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

- **Siempre agrega `WITH CHECK` en políticas de INSERT y UPDATE.** La condición en `USING` controla qué filas existentes se pueden modificar; `WITH CHECK` controla qué nuevas filas se pueden crear.
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

- **Usa `security definer`** en funciones trigger del sistema (como handle_public_user) para que ejecuten con privilegios de Postgres, no del usuario.
(Fuente: Supabase — https://youtu.be/PdEutzhsrws)

- Nunca uses la política `ALL` en RLS; prefiere `SELECT`, `INSERT`, `UPDATE`, `DELETE` por separado para control granular.
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

- Siempre agrega el filtro explícito en la consulta (ej: `.eq('team_id', 1)`) aunque RLS ya lo aplique, para mejorar rendimiento.
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

## Gotchas de RLS

- Al activar RLS sin políticas, la aplicación deja de mostrar datos (error silencioso o datos vacíos al refrescar la página).
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

- Las operaciones de UPDATE y DELETE fallan si no hay políticas que las permitan.
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

- La eliminación desde el frontend puede parecer exitosa si se actualiza el estado local, pero al refrescar la página los datos reaparecen porque la operación en la base de datos fue rechazada.
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

- En políticas RLS de tipo `UPDATE`, se deben especificar tanto `USING` como `WITH CHECK`; en `SELECT` y `DELETE` solo `USING`; en `INSERT` solo `WITH CHECK`.
(Fuente: Getting Started with Supabase Auth — Supabase (Ufx6fdRMxjU))

- **Las vistas por defecto bypassan RLS;** hay que agregar explícitamente `WITH (security_invoker = true)`.
(Fuente: Supabase — https://youtu.be/PdEutzhsrws)

- **Olvidar que RLS bloquea todo por defecto:** Al habilitar RLS en una tabla, inmediatamente se deniegan todas las operaciones hasta que se creen políticas explícitas.
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

- **No proteger el `user_id` en INSERT:** Si solo verificas que el post es visible, un usuario podría insertar un comentario con `user_id` de otro usuario. La solución es agregar `AND auth.uid() = comment.user_id`.
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

- **Confundir `USING` con `WITH CHECK`:** `USING` se aplica a filas existentes (SELECT, UPDATE, DELETE), `WITH CHECK` se aplica a nuevas filas (INSERT, UPDATE).
(Fuente: Supabase — https://youtu.be/Ow_Uzedfohk)

---

# 5. Testing (Playwright, Vitest)

## Playwright — Configuración

```bash
pnpm create playwright
```
Esto genera `playwright.config.ts` con directorio de tests y navegadores.
(Fuente: Tobi Mey — https://youtu.be/-uXBWrmpK80)

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
(Fuente: Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8))

## Playwright — Estructura básica de test

```typescript
import { test, expect } from '@playwright/test';

test.describe('home page', () => {
  test.beforeEach(async ({ page }) => {
    await page.goto('http://localhost:3000');
  });

  test('should have correct metadata and elements', async ({ page }) => {
    await expect(page).toHaveTitle('Cosden Solutions');
    await expect(page.getByRole('heading', { name: 'home page' })).toBeVisible();
  });
});
```
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

## Playwright — Selectores recomendados

- **`getByRole`** como selector preferido para elementos semánticos (heading, link, button) con `{ name: 'texto' }`.
- **`getByPlaceholder`** para inputs con placeholder único.
- **`getByTestId`** con `data-testid` en el HTML para elementos sin rol semántico claro.
- **`.nth(0)`** para acceder al primer elemento de una colección.
- **`.fill()`** para establecer valor de input (no `type()` a menos que necesites simular escritura carácter por carácter).
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

- **Usa localizadores user-facing** (`getByRole`, `getByText`, `getByPlaceholder`, `getByLabel`) por defecto. Solo usa `data-testid` cuando el texto sea irrelevante o cambiante:
  ```ts
  await page.getByRole('button').click();
  await page.getByPlaceholder('Search for product').fill('Xbox');
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## Playwright — Verificaciones comunes

```typescript
await expect(page).toHaveTitle('Cosden Solutions');
await expect(page.getByRole('heading')).toBeVisible();
await expect(page.getByTestId('item')).toHaveText('item one');
await expect(page.getByTestId('items-list')).toBeEmpty();
await expect(input).toBeEmpty();
```
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

- **Usa `expect` con localizadores** (auto-retrying) en lugar de aserciones síncronas:
  ```ts
  await expect(page.getByLabel('cart')).toContainText('1');
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## Patrón acción + verificación (fundamental)

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
(Fuente: Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8))

## Test de API con Playwright

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
(Fuente: Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8))

## Mocking de API

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
(Fuente: Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8))

- **Usa `page.route()` para interceptar APIs**:
  ```ts
  await page.route('**/api/fruits', async route => {
    const json = [{ name: 'Playwright', id: 21 }];
    await route.fulfill({ json });
  });
  await page.goto('https://demo.playwright.dev/api-mocking');
  await page.getByText('Playwright').waitFor();
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Modificar respuestas de API existentes**:
  ```ts
  await page.route('**/api/fruits', async route => {
    const response = await route.fetch();
    const json = await response.json();
    json.push({ name: 'Debbie', id: 100, stars: 50000 });
    await route.fulfill({ response, json });
  });
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## Clock API para testing de fecha/hora

- **Fijar el tiempo del navegador**:
  ```ts
  await page.clock.setFixedTime(new Date('2024-01-01T10:00:00'));
  await page.goto('https://example.com/clock');
  await expect(page.getByText('10:00')).toBeVisible();
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Avanzar el tiempo manualmente**:
  ```ts
  await page.clock.install();
  await page.goto('https://example.com/timer');
  await expect(page.getByText('Flash offer')).toBeVisible();
  await page.clock.fastForward('00:05:00');
  await expect(page.getByText('Offer expired')).toBeVisible();
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## Setup tests con project dependencies

- **Definir proyecto "setup" que ejecuta login y guarda storage state**:
  ```ts
  // playwright.config.ts
  projects: [
    {
      name: 'setup',
      testMatch: /.*\.setup\.ts/,
    },
    {
      name: 'e2e logged in',
      dependencies: ['setup'],
      use: {
        storageState: 'playwright/.auth/user.json',
      },
    },
  ]
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **El test de setup guarda el storage state**:
  ```ts
  // login.setup.ts
  import { test as setup } from '@playwright/test';
  setup('do login', async ({ page }) => {
    await page.goto('https://en.wikipedia.org');
    await page.getByText('Log in').click();
    // ... llenar credenciales
    await page.context().storageState({ path: 'playwright/.auth/user.json' });
  });
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## CLI avanzado

- **Ejecutar solo tests fallidos**:
  ```bash
  npx playwright test --last-failed
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Ejecutar solo tests de archivos modificados**:
  ```bash
  npx playwright test --only-changed
  npx playwright test --only-changed=main
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## Sharding en CI

- **Dividir tests entre múltiples workers**:
  ```yaml
  - name: Run tests
    run: npx playwright test --shard=${{ matrix.shard }}/${{ strategy.job-total }}
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

- **Merge reports para shards**:
  ```bash
  npx playwright merge-reports --reporter html ./all-blob-reports
  ```
(Fuente: Debbie O'Brien — https://youtu.be/ybYK9jM0lco)

## Playwright — GitHub Actions

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
(Fuente: Tobi Mey — https://youtu.be/-uXBWrmpK80)

## FastAPI: Pruebas unitarias con conftest.py

- Usa SQLite para pruebas y override de dependencias:
  ```python
  # tests/conftest.py
  import pytest
  from sqlalchemy import create_engine
  from sqlalchemy.orm import sessionmaker
  from database.core import Base, get_db
  from fastapi.testclient import TestClient
  from api import app

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
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

## FastAPI: Pruebas de servicios

```python
# tests/test_auth_service.py
def test_verify_password():
    hashed = "$2b$12$..."  # Hash de bcrypt
    assert verify_password("testpassword", hashed) == True

def test_create_access_token():
    token = create_access_token(data={"sub": "test-user-id"})
    assert token is not None
```
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

## FastAPI: Pruebas E2E con TestClient

```python
# tests/e2e/test_auth_endpoints.py
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
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

## FastAPI: Pruebas de endpoints protegidos

```python
# tests/e2e/test_todos_endpoints.py
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
```
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

## Comandos

```bash
# Ejecutar pruebas
pytest
```
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

## Reglas imperativas para Testing

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
(Fuente: Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8))

## Reglas para tests

- **Usa `test.describe`** para agrupar tests relacionados.
- **Usa `test.beforeEach`** para navegar a la URL inicial de ese grupo.
- **Cada test debe comenzar con `page.goto()`** (directamente o mediante `beforeEach`) porque cada test corre en una sesión de navegador aislada.
- **Nunca** asumas que el estado de un test persiste en otro; cada test es independiente.
- **Usa `data-testid`** para elementos sin rol semántico.
(Fuente: Cosden Solutions — https://youtu.be/3NW0Mz943_E)

## Gotchas de Testing

1. **Tests flaky (inconsistentes)**: Los tests E2E a veces pasan y a veces fallan sin cambios de código debido a timing issues, variabilidad de red, inconsistencias entre navegadores.
2. **Mantenimiento costoso**: Cuando la UI cambia, los selectores pueden romperse, los flujos de test necesitan actualizarse.
3. **No olvidar instalar los navegadores de Playwright**: Ejecutar `npx playwright install` antes de correr los tests por primera vez.
4. **Los tests de accesibilidad pueden fallar incluso si visualmente todo se ve bien**: Esto es bueno, significa que se encontraron issues reales de accesibilidad.
(Fuente: Software Testing Course – Playwright, E2E, and AI Agents — freeCodeCamp.org (jydYq7oAtD8))

---

# 6. Deploy y producción

## Vercel

- **No toques `svelte.config.js` ni crees `vercel.json`.** SvelteKit 5 detecta Vercel como adaptador automáticamente.
(Fuente: Johnny Magrippis — https://youtu.be/C0QYbIxQns4)

- **Cada push a `main` = deploy automático de producción.**
(Fuente: Johnny Magrippis — https://youtu.be/C0QYbIxQns4)

- **Cada Pull Request genera un preview environment automático** con su propia URL.
(Fuente: Johnny Magrippis — https://youtu.be/C0QYbIxQns4)

- **Configura las environment variables en Vercel antes del primer deploy** si tu app las necesita.
(Fuente: Johnny Magrippis — https://youtu.be/C0QYbIxQns4)

- **Para rollback:** usa el botón "Roll back" en el dashboard de Vercel (no requiere rebuild).
(Fuente: Vercel — https://youtu.be/QYZ1s_x5nUM)

- **Instalar adaptador de Vercel**:
  ```bash
  npm install --save-dev @sveltejs/adapter-vercel
  ```
(Fuente: Brayden Girard — https://youtu.be/l21Fj0A7xn0)

- **Configurar adaptador en `svelte.config.js`**:
  ```javascript
  import adapter from '@sveltejs/adapter-vercel';

  const config = {
    kit: {
      adapter: adapter()
    }
  };

  export default config;
  ```
(Fuente: Brayden Girard — https://youtu.be/l21Fj0A7xn0)

- **Verificar build local antes de desplegar**:
  ```bash
  pnpm run build
  pnpm run preview
  ```
(Fuente: Joy of Code — https://youtu.be/uAF4Yd-gddo)

## DigitalOcean App Platform

- Usa el adaptador Node (`sveltekit-adapter`) cuando despliegues en DigitalOcean App Platform.
(Fuente: Elans X — https://youtu.be/9FrC0kTTw64)

- Agrega comando `start` en `package.json`:
  ```json
  "scripts": {
    "start": "node build/index.js"
  }
  ```
(Fuente: Elans X — https://youtu.be/9FrC0kTTw64)

- Configura el puerto `3000` en la sección `Network` de DigitalOcean.
(Fuente: Elans X — https://youtu.be/9FrC0kTTw64)

- Activa `Auto Deploy` para que cada push a main despliegue automáticamente.
(Fuente: Elans X — https://youtu.be/9FrC0kTTw64)

## Docker + FastAPI

```dockerfile
# Dockerfile
FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY source/ ./source/
EXPOSE 8000
CMD ["uvicorn", "source.main:app", "--host", "0.0.0.0", "--port", "8000"]
```
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

```yaml
# docker-compose.yml
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
(Fuente: Eric Roby — https://youtu.be/H9Blu0kWdZE)

## Caché HTTP

- **Establecer cabeceras de caché en `+page.server.ts`**:
  ```ts
  export const load: PageServerLoad = async ({ setHeaders }) => {
    setHeaders({
      'cache-control': 'max-age=0, s-maxage=3600' // 1 hora en CDN
    });
  };
  ```
(Fuente: Joy of Code — https://youtu.be/uAF4Yd-gddo)

- **Cache condicional por antigüedad del contenido**:
  ```ts
  if (post.publishedAt < Date.now() - 7 * 24 * 60 * 60 * 1000) {
    setHeaders({ 'cache-control': 'public, max-age=31536000, immutable' });
  }
  ```
(Fuente: Joy of Code — https://youtu.be/uAF4Yd-gddo)

- **Usa `s-maxage` para cachear en CDN compartido** (Vercel Edge Network). Usa `max-age=0` para evitar caché en navegador cuando se usa `s-maxage`.
(Fuente: Joy of Code — https://youtu.be/uAF4Yd-gddo)

## Prerenderizado

- **Prerenderizar página estática y desactivar JavaScript**:
  ```ts
  export const prerender = true;
  export const csr = false;
  ```
(Fuente: Joy of Code — https://youtu.be/uAF4Yd-gddo)

- **Pre-renderizado no funciona con form actions**: Si una página usa form actions de SvelteKit, no se puede prerenderizar porque requieren un servidor.
(Fuente: Joy of Code — https://youtu.be/uAF4Yd-gddo)

## FastAPI en producción

- **En producción: Gunicorn + UvicornWorker**:
  ```bash
  pip install gunicorn uvicorn uvloop
  gunicorn -k uvicorn.workers.UvicornWorker -w 4