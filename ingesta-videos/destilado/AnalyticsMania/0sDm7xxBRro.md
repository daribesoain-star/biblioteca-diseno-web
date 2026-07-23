# Google Analytics key events not working? Here are the solutions
**Fuente:** AnalyticsMania | https://youtu.be/0sDm7xxBRro

## Qué enseña (2-3 líneas)
Este video enseña a diagnosticar y solucionar por qué los key events (conversiones) en Google Analytics 4 no se registran correctamente. Cubre desde errores de configuración técnica (límites de caracteres, mayúsculas/minúsculas, triggers en GTM) hasta problemas de consentimiento, tráfico interno, bloqueadores de anuncios y reglas de modificación de eventos.

## Lecciones accionables
- **Límite de 40 caracteres en nombre del evento:** Si el nombre del evento supera los 40 caracteres, Google Analytics no añade automáticamente el parámetro `_c` en la solicitud de red, necesario para que el evento sea tratado como key event. Verifica que todos los nombres de eventos tengan ≤ 40 caracteres.
- **Marcar evento como key event manualmente:** Ve a Admin → Events y activa el toggle junto al evento deseado. Si el evento es nuevo y no aparece, ve a Admin → Key events → New key event e ingresa el nombre exacto del evento (sensible a mayúsculas/minúsculas).
- **Case sensitivity en nombres de eventos:** Google Analytics es sensible a mayúsculas/minúsculas. Si envías `form_submission` pero registras un key event como `Form_submission`, no funcionará. Usa el nombre exacto que aparece en los reports.
- **Verificar triggers en GTM con Preview Mode:** En GTM Preview Mode, tras una acción (ej. envío de formulario), revisa si el tag se disparó. Si no, haz clic en el tag para ver las condiciones del trigger y compáralas con los valores reales (usa la pestaña "Values" para ver el valor actual de variables como `Page Path`).
- **Corregir typos en condiciones de triggers:** Ejemplo: si el trigger busca `Page Path contains /thank-you-` pero la URL real es `/thank-you/`, el tag no se disparará. Corrige el guion por la barra inclinada.
- **Consent Mode básico:** Si el tag GA4 tiene configurado "Require additional consent for tag to fire" = `analytics_storage`, y el usuario rechaza el consentimiento, el tag no se dispara. Revisa en Preview Mode → Tags → clic en el tag → "Consent" para ver qué storage se requirió y si fue denegado.
- **Consent Mode avanzado:** Si el tag se dispara pero `analytics_storage` está denegado, el evento se envía con estado `G1 100` (ad_storage=denied, analytics_storage=denied). Estos eventos no aparecen en Debug View y pueden no aparecer en reports regulares (depende de data modeling).
- **Excluir tráfico interno:** Ve a Admin → Data Filters y verifica si hay un filtro "Internal Traffic" activo. Luego ve a Admin → Data Streams → clic en tu stream web → Configure tag settings → Show more → Define internal traffic. Si hay una regla con tu IP, tus propios key events no se registrarán. Compara tu IP actual (búscala en Google) con la regla.
- **Ad blockers y extensiones de privacidad:** Extensiones como AdBlock, Ghostery o VPNs (ej. NordVPN) pueden bloquear Google Analytics o GTM. Desactívalas temporalmente para probar si tus key events aparecen.
- **Publicar cambios en GTM:** Ve a tu contenedor GTM → Overview. Si ves "Workspace changes", esos cambios no están publicados. Haz clic en "Submit" y completa el proceso para que los cambios estén en vivo.
- **Transacciones duplicadas (purchase events):** Si envías un evento `purchase` con un `transaction_id` que ya fue enviado anteriormente, el duplicado será ignorado. Usa siempre un `transaction_id` único para cada compra.
- **Cross-domain tracking:** Si tu journey de usuario cruza dominios (ej. de example1.com a example2.com), implementa cross-domain tracking. Sin él, los key events en example2 pueden atribuirse incorrectamente (ej. a "direct").
- **Verificar snippet GTM en thank-you page:** Si tu key event ocurre en una thank-you page, asegúrate de que el snippet del contenedor GTM esté instalado en esa página. Activa Preview Mode y navega a la thank-you page; si Tag Assistant sigue conectado, el snippet está presente.
- **Esperar 48 horas para datos procesados:** Los key events configurados hoy pueden tardar hasta 48 horas en aparecer en los reports de GA4. Verifica primero en Debug View que los eventos están llegando, luego espera.
- **Reglas de modificación de eventos (Modify events):** Ve a Admin → Events → Modify event. Si hay reglas activas, revísalas. Ejemplo: una regla que renombra `form_submission` a `form_submission_old` hará que el key event original (marcado para `form_submission`) deje de funcionar porque el evento ya no coincide.

## Reglas para agentes
- Usa el nombre exacto del evento (case-sensitive) al registrar un key event manualmente en Admin → Key events → New key event.
- Cuando configures triggers en GTM, verifica siempre los valores reales de las variables en Preview Mode (pestaña "Values") antes de asumir que el trigger funciona.
- Si un tag GA4 no se dispara en Preview Mode, revisa primero la pestaña "Consent" del tag para ver si fue bloqueado por falta de consentimiento.
- Nunca asumas que un evento con estado de consentimiento `G1 100` aparecerá en Debug View o en reports inmediatos; puede requerir data modeling.
- Siempre compara tu IP actual con las reglas de "Define internal traffic" cuando no veas tus propios key events de prueba.
- Nunca publiques cambios en GTM sin antes probarlos en Preview Mode con al menos una acción real (ej. envío de formulario).
- Si envías eventos `purchase`, nunca reutilices un `transaction_id` ya enviado; el duplicado será ignorado automáticamente.
- Cuando trabajes con múltiples dominios, implementa cross-domain tracking antes de medir key events que crucen entre ellos.
- Espera al menos 48 horas después de la configuración para evaluar si los key events aparecen en los reports de GA4.
- Revisa siempre la sección "Modify events" en Admin → Events cuando un key event deje de funcionar sin cambios aparentes en la configuración del tag.

## Errores comunes que evita o menciona
- **Nombres de eventos > 40 caracteres:** El parámetro `_c` no se añade, el evento no se trata como key event aunque aparezca en reports.
- **Typos al registrar key events manualmente:** Mayúsculas/minúsculas incorrectas o caracteres extra (ej. guion en lugar de barra) hacen que el key event no coincida con el evento real.
- **Triggers mal configurados en GTM:** Condiciones que no coinciden con los valores reales (ej. `Page Path contains /thank-you-` cuando la URL es `/thank-you/`).
- **Tags bloqueados por consentimiento:** Si `analytics_storage` es requerido pero denegado, el tag no se dispara (consent mode básico) o el evento se envía sin datos de cookies (consent mode avanzado).
- **Tráfico interno excluido sin saberlo:** La IP del administrador está en una regla de exclusión, por lo que sus propias conversiones no se registran.
- **Ad blockers y VPNs:** Bloquean los scripts de GA4 o GTM, impidiendo que los key events se envíen desde el navegador del usuario.
- **Cambios sin publicar en GTM:** Los tags y triggers configurados en un workspace no publicado no afectan a los visitantes reales.
- **Transacciones duplicadas:** Enviar el mismo `transaction_id` dos veces hace que el segundo evento sea ignorado.
- **Cross-domain tracking ausente:** Los key events en un dominio secundario se atribuyen incorrectamente (ej. a "direct").
- **Snippet GTM faltante en thank-you page:** Si el contenedor GTM no está instalado en la página de agradecimiento, el key event no se dispara.
- **Reglas de modificación de eventos que renombran eventos:** Una regla que cambia el nombre del evento (ej. de `form_submission` a `form_submission_old`) rompe la correspondencia con el key event registrado.