# Advanced Playwright Techniques for Flawless Testing - Debbie O'Brien -
**Fuente:** NDC Conferences | https://youtu.be/ybYK9jM0lco

## Qué enseña (2-3 líneas)
Técnicas avanzadas de Playwright para testing end-to-end: API mocking, testing de fecha/hora con la nueva Clock API, setup tests con project dependencies, sharding y escalado en CI, y uso de herramientas como codegen, UI mode, trace viewer y GitHub Copilot para acelerar el desarrollo de tests.

## Técnicas y patrones accionables

- **Usar localizadores accesibles (user-facing locators):** Preferir `getByRole`, `getByText`, `getByPlaceholder`, `getByLabel` sobre XPath o selectores CSS. Ejemplo:
  ```typescript
  await page.getByRole('button').click();
  await page.getByPlaceholder('Search for product').fill('Xbox');
  ```

- **Usar aserciones auto-retrying de Playwright:** Siempre usar `expect` con localizadores (ej. `await expect(page.getByLabel('cart')).toContainText('1')`) en lugar de aserciones estándar que no esperan.

- **Anotaciones en tests:** Agregar metadatos en el HTML report usando `test.info().annotations`:
  ```typescript
  test('test with annotations', async ({ page }) => {
    test.info().annotations.push({
      type: 'issues',
      description: 'https://github.com/org/repo/issues/123'
    });
    // ... test logic
  });
  ```

- **Test steps:** Agrupar pasos lógicos con `test.step()` para mejor visualización en el reporte:
  ```typescript
  await test.step('Create first todo', async () => {
    // ... acciones
  });
  ```
  Usar `{ box: true }` para que los errores apunten al paso exacto:
  ```typescript
  await test.step('Create first todo', async () => {
    // ...
  }, { box: true });
  ```

- **API mocking con `page.route()`:** Interceptar llamadas a APIs y devolver datos mockeados:
  ```typescript
  await page.route('**/api/fruits', async route => {
    const json = [{ name: 'Playwright', id: 21 }];
    await route.fulfill({ json });
  });
  await page.goto('https://demo.playwright.dev/api-mocking');
  await page.getByText('Playwright').waitFor();
  ```

- **Modificar respuestas de API existentes:** Obtener la respuesta real y agregar campos:
  ```typescript
  await page.route('**/api/fruits', async route => {
    const response = await route.fetch();
    const json = await response.json();
    json.push({ name: 'Debbie', id: 100, stars: 50000 });
    await route.fulfill({ response, json });
  });
  ```

- **Monitorear requests/responses sin modificar:**
  ```typescript
  // Usar page.waitForRequest() o page.waitForResponse() para verificar que se llamó a la API
  ```

- **Testing de fecha/hora con Clock API (nuevo):** Fijar el tiempo del navegador:
  ```typescript
  await page.clock.setFixedTime(new Date('2024-01-01T10:00:00'));
  await page.goto('https://example.com/clock');
  await expect(page.getByText('10:00')).toBeVisible();
  ```

- **Avanzar el tiempo manualmente con `page.clock.fastForward()`:**
  ```typescript
  await page.clock.install();
  await page.goto('https://example.com/timer');
  await expect(page.getByText('Flash offer')).toBeVisible();
  await page.clock.fastForward('00:05:00');
  await expect(page.getByText('Offer expired')).toBeVisible();
  ```

- **Setup tests con project dependencies (solo JS/TS):** Definir un proyecto "setup" que ejecuta login y guarda storage state, y proyectos dependientes que lo reutilizan:
  ```typescript
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
  El test de setup guarda el storage state:
  ```typescript
  // login.setup.ts
  import { test as setup } from '@playwright/test';
  setup('do login', async ({ page }) => {
    await page.goto('https://en.wikipedia.org');
    await page.getByText('Log in').click();
    // ... llenar credenciales
    await page.context().storageState({ path: 'playwright/.auth/user.json' });
  });
  ```
  Si el setup falla, los tests dependientes no se ejecutan.

- **CLI: `--last-failed`:** Ejecutar solo los tests que fallaron en la última ejecución:
  ```bash
  npx playwright test --last-failed
  ```

- **CLI: `--only-changed` (nuevo):** Ejecutar solo tests de archivos modificados desde el último commit:
  ```bash
  npx playwright test --only-changed
  ```
  También funciona contra una rama específica o commit:
  ```bash
  npx playwright test --only-changed=main
  npx playwright test --only-changed=<commit-hash>
  ```
  Si se modifica un archivo importado (no spec), ejecuta todos los tests de los spec files que lo importan.

- **Sharding en CI:** Dividir tests entre múltiples workers en GitHub Actions:
  ```yaml
  - name: Run tests
    run: npx playwright test --shard=${{ matrix.shard }}/${{ strategy.job-total }}
  ```
  Ajustar el número de shards (probar con 4, no más de 6 para evitar overhead por descarga de browsers).

- **Merge reports para shards:** Combinar reportes HTML de múltiples shards en uno solo:
  ```bash
  npx playwright merge-reports --reporter html ./all-blob-reports
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa localizadores user-facing** (`getByRole`, `getByText`, `getByPlaceholder`, `getByLabel`) por defecto. Solo usa `data-testid` cuando el texto sea irrelevante o cambiante (ej. IDs de productos).
- **Nunca uses XPath o selectores CSS** como estrategia principal; son frágiles y no accesibles.
- **Usa `expect` con localizadores** (auto-retrying) en lugar de aserciones síncronas (ej. `assert.equal`). Las aserciones nativas no esperan a que el DOM se actualice.
- **Usa `test.step()` con `{ box: true }`** cuando agrupes pasos, para que los errores apunten al paso exacto.
- **Usa `page.clock.setFixedTime()`** para tests que dependen de fecha/hora; **nunca** dependas del reloj del sistema.
- **Usa `page.clock.fastForward()`** para acelerar timeouts (ej. sesiones que expiran, ofertas temporales) en lugar de `waitForTimeout`.
- **Usa project dependencies** para login o cualquier setup costoso que múltiples tests necesiten. Si el setup falla, los tests dependientes no se ejecutan automáticamente.
- **Usa `--only-changed`** como feedback loop rápido en pre-commit hooks o desarrollo local, **no** como única estrategia en CI (complementar con nightly runs completos).
- **Usa `--last-failed`** para re-ejecutar solo tests fallidos después de arreglarlos.
- **Ajusta el número de shards** experimentalmente: más shards no siempre es más rápido por el overhead de descarga de browsers. Probar con 4 como punto de partida.
- **Usa merge-reports** cuando uses sharding para tener un único reporte HTML consolidado.

## Errores comunes / gotchas que menciona

- **Localizadores duplicados:** Si hay dos elementos con el mismo texto o rol en la página, Playwright timeout porque no sabe cuál usar. Usar localizadores más específicos (ej. `getByRole('button', { name: 'Submit' })`).
- **Usar aserciones que no son auto-retrying:** Si usas `assert.equal(text, '...')` en lugar de `await expect(locator).toHaveText('...')`, el test puede pasar hoy y fallar mañana (flaky).
- **Confiar ciegamente en codegen o Copilot:** Siempre revisar y mejorar los localizadores generados. Copilot puede generar selectores CSS en lugar de user-facing locators si no se le especifica.
- **Sharding excesivo:** No asumir que más shards = más velocidad. Probar con diferentes números porque cada shard descarga su propio browser.
- **`--only-changed` no es un reemplazo de la suite completa en CI:** Usarlo solo para feedback rápido local o pre-commit. En CI, combinarlo con ejecuciones nocturnas completas.
- **Clock API no afecta cookies de sesión del servidor:** Solo controla `new Date()` y temporizadores en el navegador. Para sesiones del lado servidor, se necesita otro enfoque.
- **Project dependencies son solo para JS/TS:** En Python, C# y Java no existe este mecanismo; se debe usar otro patrón para setup tests.
- **Microsoft Playwright Testing (cloud) es un servicio de pago:** Playwright en sí es open source y gratuito. El servicio cloud de Azure es un producto aparte que requiere suscripción.