# Modern E2E Testing with Playwright and AI
**Fuente:** Checkly | https://youtu.be/emUaq9FPIcc

## Qué enseña (2-3 líneas)
Cómo usar LLMs (Claude Sonnet vía GitHub Copilot) y Playwright MCP para generar, depurar y refactorizar tests E2E y de API en un e-commerce Next.js, desplegándolos como monitoreo sintético en Checkly. Enfatiza que el contexto (archivos de setup, test plans, MCP) es crítico y que el output del LLM siempre debe revisarse.

## Técnicas y patrones accionables

- **Generar archivo de contexto inicial (`setup.md`)** para que el LLM entienda la arquitectura sin "picotear" el códigobase:
  ```
  prompt: "I'm new to this project and I want to create end to end test with Playwright. Can you please summarize possible pages and API routes and where they are defined? Don't share more information. Please write the result to setup.md."
  ```
  Resultado: archivo `setup.md` con rutas de páginas (home, login, search, dynamic pages) y rutas API.

- **Usar Playwright MCP para inspeccionar el sitio y generar un plan de tests (`test-plan.md`)**:
  ```
  prompt: "Can you navigate to localhost:3000 using Playwright MCP and scan the homepage and core functionality? Please create an end-to-end testing plan with Playwright. Don't write any code yet. I just want to have an idea what I could test. Use the information in setup.md. Write the test plan to test-plan.md and include three actionable test scenarios including search. Don't include any additional information."
  ```
  El LLM llama al MCP server, que controla Chrome, devuelve el accessibility tree (page snapshot), y el LLM escribe `test-plan.md`.

- **Ejecutar el plan de tests vía MCP y generar el archivo de test**:
  ```
  prompt: "Here's a Playwright test case scenario: [pegar contenido de test-plan.md]. Can you execute the test plan using Playwright MCP? Once you're done, please generate a Playwright test case in tests/webinar/search.spec.ts. The test case should include the test case scenario on top as comments."
  ```
  El LLM usa MCP para navegar, hacer clics, etc., y luego escribe `tests/webinar/search.spec.ts`.

- **Depuración automática con el botón "Fix test failure"** (VS Code extension de Playwright) o con un **agent loop**:
  ```
  prompt: "Can you run the generated Playwright test. If it fails, please fix it."
  ```
  El LLM ejecuta `npx playwright test`, lee el error, y modifica el código iterativamente hasta que pase.

- **Refactorizar a Page Object Models (POMs)**:
  ```
  prompt: "Please use Playwright MCP to run the test scenario defined in tests/webinar/search.spec.ts. Please refactor the existing test to use proper Page Object Models located in tests/webinar/poms/. Don't change the existing functionality and don't create new tests."
  ```
  El LLM crea `tests/webinar/poms/` con clases (HomePage, SearchPage, ProductPage) y modifica `search.spec.ts` para importarlas.

- **Generar tests de API con contexto del `setup.md`**:
  ```
  prompt: "There's an API route to fetch products. Can you create one Playwright test in tests/webinar/api.spec.ts to validate the GET call too? Please read the source code, run the test, and verify the result automatically. Fix it if needed."
  ```
  El LLM lee el endpoint (ej. `/api/products`), ejecuta la llamada, y genera validaciones de status 200, content-type JSON, y estructura de datos.

- **Usar `test.step()` para agrupar acciones**:
  ```
  prompt: "Can you bring in test steps? Please use Playwright's test.step method in search.spec.ts."
  ```
  El LLM envuelve bloques de acciones en `await test.step('description', async () => { ... })`.

- **Revisar POMs contra mejores prácticas**:
  ```
  prompt: "Can you check the Page Object Models in the poms directory and tell me if it's using best practices?"
  ```
  Se referencia el directorio y se usa Context7 MCP para traer documentación actualizada de Playwright.

- **Desplegar como monitoreo sintético en Checkly**:
  - Configurar `playwright.config.ts` con `baseURL` y dos proyectos (ej. `backup`, `webinar`).
  - Añadir `checkly.config.ts` con:
    ```ts
    // checkly.config.ts
    import { defineConfig } from 'checkly';
    export default defineConfig({
      projectName: '...',
      logicalId: '...',
      playwrightChecks: [
        {
          id: 'webinar-check',
          name: 'Webinar E2E',
          project: 'webinar',  // nombre del proyecto en playwright.config.ts
          locations: ['eu-central-1'],
          frequency: 10,       // minutos
        },
      ],
    });
    ```
  - Comandos:
    ```bash
    npx checkly test          # ejecuta los tests en infraestructura Checkly
    npx checkly deploy        # despliega como monitoreo sintético
    ```

## Reglas para el erudito (imperativas y verificables)

- **Usa Context7 MCP** cuando preguntes sobre APIs o features de Playwright para evitar información desactualizada (cutoff date del LLM).
- **Nunca** pidas al LLM que genere un test sin darle acceso al sitio (ni con prompts tipo "set viewport, open this, click sign, enter email"). El LLM no conoce el DOM real y alucinará selectores.
- **Siempre** escribe archivos de contexto temporales (`setup.md`, `test-plan.md`) y refiérelos en los prompts para mantener el contexto enfocado y no saturar la ventana de conversación.
- **Usa `clear`** en el chat entre tareas no relacionadas para evitar que el LLM se desvíe.
- **Revisa siempre** el código generado: los LLM pueden "complacer" al usuario haciendo que el test pase con aserciones triviales o comentando líneas.
- **Usa el botón "Fix test failure"** de la extensión VS Code de Playwright o un agent loop (`"run the test; if it fails, fix it"`) para depuración iterativa.
- **Para POMs**, primero ejecuta el test con MCP para que el LLM tenga contexto de las páginas, luego pide la refactorización.
- **Para tests de API**, proporciona el `setup.md` que ya mapea los endpoints para que el LLM no tenga que buscar en el código.

## Errores comunes / gotchas que menciona

- **Confundir LLM con Google/Stack Overflow**: preguntar "¿cómo funciona auto-waiting?" sin usar MCP de documentación (Context7) da respuestas basadas en el cutoff date del modelo (abril 2024), no en la documentación actual de Playwright.
- **Esperar que el LLM genere tests perfectos al primer intento**: el presentador tuvo que usar el botón "Fix test failure" tres veces y luego un agent loop para que el test pasara. Es normal; es como un humano "tropezando".
- **Confiar ciegamente en tests generados por IA**: el LLM puede generar tests que "complazcan" (ej. aserciones triviales, comentar líneas para forzar el pass). El desarrollador sigue siendo responsable.
- **No limpiar el contexto entre tareas**: mantener conversaciones largas y mezcladas hace que el LLM se confunda y se desvíe. Usar `clear` y archivos de contexto en disco.
- **Usar `codegen` para grabar tests y esperar que genere POMs automáticamente**: `codegen` es rápido para grabar, pero no produce Page Object Models. La solución es grabar con `codegen` y luego pasar el código al LLM para refactorizar a POMs.
- **Asumir que Playwright MCP genera código de test**: MCP solo controla el navegador y devuelve snapshots (accessibility tree). La generación del archivo `.spec.ts` la hace el LLM aparte, usando la información que MCP le devuelve.