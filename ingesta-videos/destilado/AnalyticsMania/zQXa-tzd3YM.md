# UTM parameters are not working in Google Analytics 4? Reasons and solutions
**Fuente:** AnalyticsMania | https://youtu.be/zQXa-tzd3YM

## Qué enseña (2-3 líneas)
Explica las causas más comunes por las que los parámetros UTM no se registran en Google Analytics 4, incluyendo redirecciones del servidor, redirecciones JavaScript, errores de sintaxis en los UTM, sobrescritura en etiquetas de Google Tag Manager o código gtag, y problemas de consentimiento. Proporciona soluciones técnicas para cada caso.

## Lecciones accionables
- **Verificar redirecciones del servidor:** Instala la extensión de Chrome "Redirect Path" (enlace en el video) para detectar si una URL con UTM es redirigida a otra página que pierde los parámetros. La solución es contactar al desarrollador para que configure el servidor y persista los UTM durante la redirección.
- **Detectar redirecciones JavaScript:** Usa "Redirect Path" y busca la etiqueta "JS" en el resultado. Si aparece, el código JavaScript del sitio está eliminando los UTM. Pide al desarrollador que elimine o modifique ese script para mantener los parámetros en la URL.
- **Validar la sintaxis exacta de UTM:** Los parámetros deben escribirse exactamente como: `?utm_source=valor&utm_medium=valor&utm_campaign=valor`. No uses nombres inventados como `utm_traffic`. Usa siempre el prefijo `utm_` en minúsculas, separa cada parámetro con `&`, y usa `?` solo al inicio. Errores comunes: falta de `&`, falta de `utm_`, uso de `?` en lugar de `&`.
- **Revisar sobrescritura de page_location en GTM:** En la etiqueta de configuración de GA4 en Google Tag Manager, verifica si el campo "Page Location" está sobrescrito con una variable que limpia la URL. Si esa variable elimina `utm_source`, `utm_medium` o `utm_campaign`, los UTM no se enviarán. Para depurar, usa el modo Preview de GTM, haz clic en "Initialization" y revisa el parámetro `page_location` enviado; si faltan los UTM, corrige la variable.
- **Verificar el código gtag nativo:** Abre las herramientas de desarrollador del navegador (F12), ve a la pestaña Network, filtra por "collect", y revisa el parámetro `dl` (document location) en la solicitud. Si el `dl` no incluye los UTM, el desarrollador está sobrescribiendo la URL en el código gtag.
- **No probar UTM en medio de una sesión activa:** Si un usuario ya tiene una sesión (ej. desde Google orgánico) y luego hace clic en un enlace con UTM, GA4 mantendrá la fuente original (Google orgánico) para esa sesión. Para pruebas, abre una sesión nueva (ventana de incógnito) o espera al día siguiente.
- **Confirmar que GA4 se carga en la landing page:** Si la página de aterrizaje no tiene el tag de GA4 (por error del desarrollador, condiciones de activación en GTM, o bloqueo), los UTM se pierden al navegar a otra página. Usa la extensión "Google Tag Assistant" o el modo Preview de GTM para verificar que el tag se dispare en la URL con UTM.
- **Manejar problemas de consentimiento:** Si el usuario llega a la landing page con UTM pero no da consentimiento (y el tag está bloqueado), y luego da consentimiento en la segunda página, los UTM ya no están en la URL. Soluciones posibles: (1) hacer que el banner de cookies sea más grande y bloquee el contenido para forzar la interacción en la primera página, (2) implementar una solución técnica para persistir UTM entre páginas (consultar con el departamento legal), (3) usar Advanced Consent Mode.

## Reglas para agentes
- Usa la extensión "Redirect Path" para diagnosticar cualquier redirección que pueda eliminar UTM.
- Nunca sobrescribas el campo `page_location` en la etiqueta de configuración de GA4 en GTM sin verificar que la variable de limpieza no elimine `utm_source`, `utm_medium` o `utm_campaign`.
- Siempre valida que los parámetros UTM sigan exactamente el formato: `?utm_source=...&utm_medium=...&utm_campaign=...` (minúsculas, prefijo `utm_`, separador `&`).
- Cuando pruebes enlaces con UTM, hazlo siempre en una sesión nueva (ventana de incógnito) para evitar que GA4 herede la fuente de una sesión activa.
- Verifica siempre que el tag de GA4 se dispare en la landing page (usando Preview de GTM o Tag Assistant) antes de asumir que los UTM funcionan.
- Si hay consent mode implementado, asegúrate de que el usuario interactúe con el banner de cookies en la primera página (por ejemplo, bloqueando el contenido) para que los UTM no se pierdan al navegar.

## Errores comunes que evita o menciona
- **Redirecciones del servidor que eliminan UTM:** El servidor redirige a otra URL sin preservar los parámetros, por lo que GA4 nunca los ve.
- **Redirecciones JavaScript que eliminan UTM:** Código JS en la página redirige al usuario y borra los UTM de la URL.
- **Sintaxis incorrecta de UTM:** Usar nombres inventados (ej. `utm_traffic`), omitir el prefijo `utm_`, usar `?` en lugar de `&` entre parámetros, o escribir en mayúsculas.
- **Sobrescritura accidental de page_location en GTM:** Una variable de limpieza de URL elimina los UTM antes de enviarlos a GA4.
- **Sobrescritura en código gtag nativo:** El desarrollador modifica el `document location` en el código de tracking, omitiendo los UTM.
- **Pruebas en medio de una sesión activa:** Hacer clic en un enlace con UTM mientras ya hay una sesión en curso; GA4 mantiene la fuente original de la sesión.
- **Landing page sin tracking de GA4:** La página de aterrizaje no tiene el tag de GA4 (por error técnico o condiciones de activación), por lo que los UTM se pierden al pasar a otra página.
- **Problemas de consentimiento:** El usuario no da consentimiento en la primera página (con UTM), el tag se bloquea, y al dar consentimiento en la segunda página los UTM ya no están en la URL.