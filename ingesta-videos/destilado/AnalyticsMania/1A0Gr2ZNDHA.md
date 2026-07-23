# Google Analytics 4 DebugView not working? Here are the solutions
**Fuente:** AnalyticsMania | https://youtu.be/1A0Gr2ZNDHA

## Qué enseña (2-3 líneas)
Este video explica cómo habilitar y solucionar problemas del DebugView en Google Analytics 4, cubriendo tres métodos principales de activación y múltiples causas de fallo como filtros de tráfico interno, extensiones bloqueadoras, server-side tagging y políticas de seguridad de contenido (CSP). También incluye una solución técnica avanzada para server-side tagging con Google Tag Manager.

## Lecciones accionables
- **Habilitar DebugView con Google Tag Manager:** Ve a Google Tag Manager → haz clic en "Preview" → conéctate a tu sitio web. Una vez conectado el Tag Assistant, verás eventos como `page_view` en DebugView.
- **Habilitar DebugView con extensión GA Debugger:** Instala la extensión "Google Analytics Debugger" → haz clic en su icono para activarlo (se pondrá "On") → recarga la página con GA4 instalado. Los eventos aparecerán en DebugView.
- **Habilitar DebugView con parámetro debug_mode:** Pide al desarrollador que incluya el parámetro `debug_mode` con valor `true` en las solicitudes a GA4, idealmente solo en entornos de prueba.
- **Solucionar filtro de tráfico interno:** Ve a Administrar → Filtros de datos → verifica si el filtro de tráfico interno está "Activo". Luego ve a Administrar → Transmisiones de datos → selecciona tu web → Configurar ajustes de etiqueta → Mostrar todo → Definir tráfico interno. Si tu IP está en alguna regla y el filtro está activo, DebugView no mostrará datos. Opciones: (1) usa una VPN como NordVPN para cambiar tu IP temporalmente, o (2) desactiva temporalmente el filtro cambiándolo a "Inactivo" o "En pruebas" y espera 1-2 minutos.
- **Solucionar extensiones bloqueadoras:** Desactiva temporalmente todas las extensiones del navegador (AdBlock, Ghostery, etc.) → verifica si DebugView funciona → reactívalas una por una para identificar la culpable.
- **Solucionar navegador Brave:** Brave bloquea códigos de tracking por defecto. Usa otro navegador (Chrome, Firefox, Edge) para depurar.
- **Solucionar bug de conteo en DebugView:** Si ves "0 dispositivos" en el desplegable de DebugView, haz clic en el menú desplegable; a veces los dispositivos aparecen al expandirlo.
- **Solucionar server-side tagging con GTM:**
    1. Ve al contenedor server-side de GTM.
    2. En "Variables", crea una variable de tipo "Valor indefinido" (undefined value) y nómbrala, ej. "undefined".
    3. En "Variables integradas", habilita "Debug Mode".
    4. Crea una variable de tipo "Tabla de búsqueda" (lookup table):
        - Variable de entrada: `Debug Mode`
        - Filas: si `true` → devuelve `true`; si `false` → devuelve la variable "undefined" (no `false`).
    5. En la etiqueta GA4, agrega un parámetro de evento: nombre `debug_mode`, valor la variable de tabla de búsqueda creada.
    6. Activa el modo Preview del contenedor server-side; así se enviará `debug_mode: true` y aparecerán los eventos en DebugView.
- **Solucionar Content Security Policy (CSP):** Abre las herramientas de desarrollador (F12) → Consola → recarga la página. Si ves errores de CSP relacionados con `googletagmanager.com` o `analytics.google.com`, el desarrollador debe actualizar la CSP siguiendo la documentación oficial de Google Tag Manager y Google Analytics 4.
- **Solucionar consentimiento de cookies:** Si hay un popup de cookies, borra las cookies del navegador → recarga el sitio → acepta el consentimiento (mientras tienes GA Debugger o GTM Preview activo) y verifica si aparecen datos en DebugView.

## Reglas para agentes
- Usa el parámetro `debug_mode=true` solo en entornos de prueba o desarrollo, nunca en producción para todos los visitantes.
- Cuando el filtro de tráfico interno esté activo, usa una VPN o desactiva temporalmente el filtro para depurar; nunca asumas que DebugView funcionará con el filtro activo.
- En server-side tagging, nunca uses `false` como valor de retorno en la tabla de búsqueda para el modo debug; siempre usa una variable de tipo "Valor indefinido" (undefined).
- Si usas Brave browser para depurar, cambia a otro navegador; nunca confíes en que Brave permita el tracking por defecto.
- Verifica siempre la consola del navegador en busca de errores CSP antes de asumir otros problemas.

## Errores comunes que evita o menciona
- **Filtro de tráfico interno activo:** Excluye tu IP de DebugView incluso si tienes el filtro de tráfico de desarrollador activado. El filtro de desarrollador no anula al de tráfico interno.
- **Extensiones bloqueadoras (AdBlock, Ghostery):** Bloquean los códigos de tracking de GA4 y GTM, impidiendo que aparezcan datos en DebugView.
- **Navegador Brave:** Bloquea códigos de tracking de marketing y analítica por defecto.
- **Bug visual de DebugView:** Muestra "0 dispositivos" aunque haya dispositivos conectados; hay que hacer clic en el desplegable para verlos.
- **Server-side tagging sin ajuste:** La extensión GA Debugger no funciona con server-side tagging porque las solicitudes van al servidor propio, no directamente a Google. Se requiere la configuración de tabla de búsqueda descrita.
- **Content Security Policy (CSP) desactualizada:** Bloquea dominios de Google Tag Manager o Google Analytics; el desarrollador debe actualizarla con las URLs oficiales.
- **Consentimiento de cookies no aceptado:** Si el usuario rechaza las cookies, GA4 no se activa y DebugView no recibe datos.