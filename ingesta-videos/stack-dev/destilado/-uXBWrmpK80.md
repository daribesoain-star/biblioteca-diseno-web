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