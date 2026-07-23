# datalayer push not working? Here are reasons and solutions
**Fuente:** AnalyticsMania | https://youtu.be/fRSW-5iUHrQ

## Qué enseña (2-3 líneas)
Explica las causas más comunes por las que `dataLayer.push()` no funciona en Google Tag Manager y cómo solucionarlas: errores de sintaxis, renombrado del dataLayer, sobrescritura del array, problemas de timing e iframes. Proporciona soluciones técnicas verificables para cada caso.

## Lecciones accionables
- **Verificar sintaxis exacta:** El objeto debe escribirse `dataLayer` (con L mayúscula, el resto minúsculas). Cualquier variación como `datalayer` o `data layer` falla. Ejemplo correcto: `dataLayer.push({'event': 'test'});`
- **Comprobar si el dataLayer fue renombrado:** En GTM, ve a Container ID > snippet. Busca en el código fuente de la página `gtm.js` y localiza el nombre real (ej: `customDataLayer`). Si está renombrado, usa ese nombre en lugar de `dataLayer`. Ejemplo: `customDataLayer.push({'event': 'test'});`
- **Detectar sobrescritura del dataLayer:** Busca en el código fuente de la página `dataLayer =` (sin window). Si aparece algo como `dataLayer = []` o `dataLayer = {...}` después del snippet de GTM, rompe la funcionalidad. La sintaxis correcta es: `window.dataLayer = window.dataLayer || [];`
- **Solucionar problemas de timing:** Si aparece el error "dataLayer is not defined" en consola, el código push se ejecuta antes de que GTM cree el dataLayer. Dos soluciones:
  1. Mover el código push debajo del snippet de GTM.
  2. Agregar antes del push: `window.dataLayer = window.dataLayer || [];` (esto crea el array si no existe).
- **Manejar iframes:** Si el push ocurre dentro de un iframe y GTM está en la página padre, el push no es accesible. Usar `postMessage()` para comunicar datos del iframe al padre, y luego el padre hace el push al dataLayer.
- **Depurar con preview mode:** Activar preview en GTM, abrir consola del navegador, ejecutar el push y verificar si el evento aparece en la vista de preview.

## Reglas para agentes
- Usa `window.dataLayer = window.dataLayer || [];` antes de cualquier `dataLayer.push()` cuando no tengas control sobre el orden de carga de scripts.
- Nunca uses `dataLayer = []` o `dataLayer = {...}` sin el condicional `window.dataLayer || []` porque sobrescribe el dataLayer existente y rompe GTM.
- Siempre verifica el nombre exacto del dataLayer en el snippet de GTM (busca `gtm.js` en el código fuente) antes de hacer push, especialmente en sitios con personalizaciones.
- Cuando trabajes con iframes, nunca asumas que un push dentro del iframe es visible en la página padre; implementa `postMessage` para la comunicación.
- Siempre escribe `dataLayer` con L mayúscula y el resto minúsculas; es sensible a mayúsculas/minúsculas.

## Errores comunes que evita o menciona
- **Errores tipográficos:** Usar `datalayer` (minúscula) o faltar llaves `{}` o paréntesis en el push.
- **DataLayer renombrado:** Intentar hacer push a `dataLayer` cuando el snippet usa otro nombre (ej: `customDataLayer`).
- **Sobrescritura del dataLayer:** Código posterior que asigna `dataLayer = []` sin el condicional, eliminando el array funcional de GTM.
- **Problemas de timing:** Ejecutar `dataLayer.push()` antes de que el snippet de GTM haya creado el dataLayer, causando error "dataLayer is not defined".
- **Iframes ignorados:** Asumir que pushes dentro de un iframe son accesibles desde la página padre sin usar `postMessage`.