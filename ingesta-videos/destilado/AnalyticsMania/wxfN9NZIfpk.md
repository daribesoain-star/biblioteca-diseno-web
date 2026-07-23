# Google Analytics 4 cross-domain tracking not working? Here are the solutions
**Fuente:** AnalyticsMania | https://youtu.be/wxfN9NZIfpk

## Qué enseña
Diagnóstico y solución de los problemas más comunes que impiden el correcto funcionamiento del seguimiento entre dominios (cross-domain tracking) en Google Analytics 4. Cubre desde errores de configuración básica hasta casos avanzados como iframes, redirecciones, Content Security Policy y consentimiento.

## Lecciones accionables
- **Verificar dominios configurados en GA4:** Ve a Admin → Data Streams → selecciona el stream → Configure tag settings → Configure your domains. Asegúrate de incluir **todos** los dominios del recorrido del usuario (ej: websitea.com, websiteb.com). Revisa que no haya errores tipográficos.
- **Confirmar que ambos sitios usan el mismo Measurement ID:** Si usas contenedores separados de Google Tag Manager, abre ambos contenedores, localiza la etiqueta Google tag (relacionada con GA4) y verifica que el Tag ID sea idéntico. Si usas el mismo contenedor en ambos sitios, esto ya está correcto.
- **Comprobar que el código de GA4 existe en el sitio B:** Abre Developer Tools (Chrome: tres puntos → More tools → Developer tools) → pestaña Network → filtra por `analytics` o `collect`. Recarga la página. Si ves requests, GA está instalado. Si no ves nada, el código falta. En caso de server-side tagging, los URLs pueden estar modificados; investiga más a fondo.
- **Validar que las cookies `_ga` coinciden entre dominios:** En el sitio A: Developer Tools → Application → Cookies → selecciona el dominio → busca `_ga`. Anota los últimos 4 dígitos del valor. Repite en el sitio B. Si son diferentes, algo está sobrescribiendo la cookie (código en el sitio B, modificaciones en GTM con parámetros como `cookie_prefix`, `cookie_domain` o `client_id`).
- **Detectar redirecciones que eliminan el parámetro cross-domain:** Usa la extensión Chrome "Redirect Path". Si al hacer clic en un enlace decorado (con parámetro `_gl`) ocurre una redirección y el parámetro desaparece, el tracking falla. La solución: pedir a los desarrolladores que no eliminen parámetros URL durante las redirecciones (verificar si la redirección es JavaScript o server-side).
- **Manejar iframes correctamente:** No pongas GA4 dentro del iframe. En su lugar, instala GA4 solo en la página padre y usa APIs de JavaScript para enviar eventos del iframe (ej: data layer events) a la página padre. Esto evita problemas de cookies entre dominios distintos.
- **Revisar Content Security Policy (CSP) en el sitio B:** Abre Developer Tools → pestaña Console. Busca errores que mencionen `content security policy` junto con `googletagmanager.com` o `googleanalytics.com`. Si aparecen, pide a los desarrolladores que agreguen reglas CSP que permitan esos dominios.
- **Verificar el consentimiento entre dominios:** Dale consentimiento en el sitio A. Luego ve al sitio B y comprueba si el popup de consentimiento aparece de nuevo. Si aparece y el usuario deniega, el cross-domain falla. Investiga si tu Consent Management Platform (CMP) soporta múltiples dominios para compartir el estado de consentimiento. Si el sitio B no tiene popup, el tracking asume consentimiento denegado por defecto.
- **Comprobar el parámetro `linker_accept_incoming`:** Si GA4 está instalado directamente con gtag.js (sin GTM), busca en el código fuente de la página B una línea como `gtag('config', 'G-XXXXXXX', { 'linker': { 'accept_incoming': false } })`. Si es `false`, cámbialo a `true` o elimina esa configuración.
- **Saber que GA4 no decora formularios ni botones:** GA4 solo decora enlaces (`<a>` tags con `href`). Para formularios y botones (`<button>` tags) que redirigen a otro dominio, necesitas implementar una solución manual: en el sitio A, los desarrolladores deben obtener el client_id y session_id y agregarlos al URL de redirección; en el sitio B, deben leer esos valores y pasarlos al cargar el Google tag.

## Reglas para agentes
- **Usa el mismo Measurement ID** en todos los dominios del recorrido del usuario; si usas contenedores GTM separados, verifica que el Tag ID coincida.
- **Nunca asumas que GA4 está instalado** en un sitio solo porque el otro lo tiene; verifica con Developer Tools (Network tab, filtro `analytics` o `collect`).
- **Siempre compara las cookies `_ga`** entre dominios; si los últimos 4 dígitos difieren, hay una sobrescritura que debes investigar.
- **Nunca coloques GA4 dentro de un iframe** de otro dominio; usa la página padre como único punto de tracking y envía eventos desde el iframe mediante JavaScript.
- **Cuando encuentres redirecciones que eliminan parámetros**, exige a los desarrolladores que preserven todos los parámetros URL durante la redirección.
- **Si ves errores de Content Security Policy** en la consola del navegador relacionados con Google domains, solicita a los desarrolladores que actualicen las reglas CSP para permitir `googletagmanager.com` y `googleanalytics.com`.
- **Nunca confíes en que GA4 decorará formularios o botones**; solo decora enlaces (`<a>` tags). Para formularios y botones, implementa la solución manual de pasar client_id y session_id vía URL.
- **Verifica el parámetro `linker_accept_incoming`** en el código gtag.js; si está presente y es `false`, cámbialo a `true` o elimínalo.

## Errores comunes que evita o menciona
- **Olvidar configurar los dominios** en GA4 o tener errores tipográficos en la lista de dominios.
- **Usar diferentes Measurement IDs** en cada sitio (especialmente con contenedores GTM separados).
- **Falta del código de GA4** en el sitio B (no asumir que está instalado).
- **Cookies `_ga` diferentes** entre dominios debido a sobrescritura por código personalizado o configuraciones avanzadas en GTM.
- **Redirecciones que eliminan el parámetro `_gl`** (cross-domain parameter) necesario para el tracking.
- **Poner GA4 dentro de iframes** de otro dominio, lo que rompe el tracking y las cookies.
- **Content Security Policy bloqueando** Google Tag Manager o Google Analytics en el sitio B.
- **Consentimiento no compartido** entre dominios: el popup aparece de nuevo en el sitio B y el usuario deniega, o el sitio B no tiene popup y asume denegación.
- **Parámetro `linker_accept_incoming` en `false`** en el código gtag.js del sitio B, impidiendo que lea el parámetro cross-domain.
- **Asumir que GA4 decora formularios y botones** (solo decora enlaces `<a>`).