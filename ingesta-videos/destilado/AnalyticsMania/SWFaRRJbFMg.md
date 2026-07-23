# Source/Medium not set in GA4? Here are the reasons and potential fixes
**Fuente:** AnalyticsMania | https://youtu.be/SWFaRRJbFMg

## Qué enseña
Explica por qué aparecen valores "not set" en los informes de Source/Medium en Google Analytics 4 y proporciona soluciones técnicas detalladas para cada causa, incluyendo problemas con etiquetas, Measurement Protocol, audience triggers, UTM parameters, bots y datos no procesados.

## Lecciones accionables
- **Prioriza el orden de disparo de etiquetas**: La Google Tag (config tag) debe dispararse siempre antes que cualquier Google Analytics 4 event tag. Si la config tag dispara en "Container Loaded" y la event tag en "Initialization", cambia la config tag a "Initialization" y la event tag a "All Pages" o un trigger específico posterior.
- **Configura el parámetro server_container_url en todas las etiquetas GA4**: En Google Tag Manager (GTM) con server-side tagging, añade el parámetro `server_container_url` con tu servidor endpoint (ej. `https://tu-servidor.com`) en cada etiqueta de evento GA4, aunque técnicamente las hereden de la config tag. Esto evita que eventos sin ese parámetro se envíen directamente a GA4 y causen "not set".
- **Elimina códigos GA hardcodeados si usas server-side GTM**: Si tienes códigos de seguimiento GA4 incrustados directamente en el código fuente del sitio web (hardcoded) que envían datos al mismo Measurement ID que las etiquetas de GTM con server-side tagging, esos eventos bypassan el servidor y generan "not set". Migra todo el tracking a GTM con server-side.
- **Para Measurement Protocol, usa siempre clientID y sessionID reales**: Los desarrolladores deben obtener el `client_id` y `session_id` de la cookie `_ga` del navegador del visitante actual. En la cookie `_ga` (ej. `_ga_MEASUREMENT_ID`), el valor `s` seguido de un número es el `session_id` (debe enviarse como número, no string), y el `client_id` son los números separados por punto. Ejemplo de parámetros en la solicitud POST: `client_id=1234567890.1234567890` y `session_id=987654321` (numérico).
- **Para eventos al pasado con Measurement Protocol, usa timestamp_micros**: Si envías eventos a una sesión que ocurrió hace hasta 72 horas, incluye el parámetro `timestamp_micros` con el timestamp en microsegundos de ese momento. Si la sesión es de hace más de 72 horas, no se adjuntará y el evento quedará sin source/medium.
- **Evita audience triggers en GA4**: En Admin > Audiences, revisa cada audiencia haciendo clic en los tres puntos > Edit. Si ves un "audience trigger" con un nombre de evento (ej. "AU_entered_form_submit_audience"), elimínalo. Estos eventos no se adjuntan a ninguna sesión y generan "not set" masivo.
- **Revisa UTM parameters obligatorios**: Asegúrate de que todos tus enlaces con UTM incluyan al menos `utm_source` y `utm_medium` (son obligatorios). Si solo tienes `utm_campaign` sin los otros dos, el tráfico se marcará como "not set".
- **Analiza datos con al menos 48 horas de antigüedad**: En informes como Traffic Acquisition, evita incluir datos de hoy y ayer. Selecciona un período que excluya las últimas 48 horas para reducir el "not set" causado por datos no procesados (Google reporta que datos no procesados también aparecen como "not set").
- **Implementa filtros de bots con IP addresses**: En Admin > Data Filters, crea un filtro tipo "Internal Traffic" con nombre "bot_traffic", estado "Active". Luego en Admin > Data Streams > tu stream > Configure Tag Settings > Show More > Define Internal Traffic, crea una regla con `traffic_type` = "bot" y `IP address matches regex` con las IPs identificadas. Esto excluye eventos de esas IPs.
- **Usa Cloudflare o CDN con antibot**: Implementa un CDN como Cloudflare (que tiene protección antibot automática) para reducir tráfico de bots antes de que llegue a GA4.
- **Si usas server-side tagging con Stape**: Activa la función de bot detection que añade un `bot_score` (1-100, donde 100 es muy probable bot). Configura triggers en server-side GTM para no disparar etiquetas si `bot_score > 90`.

## Reglas para agentes
- Usa siempre `server_container_url` en todas las etiquetas GA4 cuando implementes server-side tagging en GTM, incluso si la config tag lo tiene.
- Nunca envíes eventos con Measurement Protocol usando un `client_id` o `session_id` inventados o generados aleatoriamente; deben ser valores reales de la cookie `_ga` del usuario actual.
- Nunca envíes el `session_id` como string en Measurement Protocol; debe ser un valor numérico (integer).
- No incluyas datos de hoy ni de ayer en informes de adquisición; espera al menos 48 horas para análisis confiables.
- Elimina cualquier audience trigger en GA4 que genere eventos automáticos (como "AU_*") para evitar "not set" masivo.
- Cuando uses UTM parameters, siempre incluye `utm_source` y `utm_medium` como mínimo; nunca uses solo `utm_campaign`.
- Para eventos al pasado con Measurement Protocol, no intentes enviar datos a sesiones de más de 72 horas atrás; no se adjuntarán.
- Implementa un CDN con protección antibot (ej. Cloudflare) antes de cualquier otra medida contra bots.
- Si identificas picos de tráfico sospechosos, verifica las IPs en los server logs y agrégalas como filtro de tráfico interno con `traffic_type = "bot"`.

## Errores comunes que evita o menciona
- **Etiquetas de evento GA4 disparándose antes que la config tag**: Causa que eventos no tengan contexto de sesión y aparezcan como "not set". Solución: ajustar triggers para que la config tag dispare primero.
- **Falta del parámetro server_container_url en etiquetas GA4 con server-side tagging**: Eventos enviados directamente a GA4 sin pasar por el servidor pierden la atribución de source/medium.
- **Códigos GA hardcodeados coexistiendo con server-side GTM**: Datos duplicados o sin contexto de servidor generan "not set".
- **Measurement Protocol con clientID o sessionID incorrectos**: Usar IDs inventados o sessionID no existente impide que el evento se adjunte a una sesión real, resultando en "not set".
- **Measurement Protocol con sessionID como string**: El sessionID debe ser numérico; si se envía como texto, el evento no se procesa correctamente.
- **Envío de eventos a sesiones de más de 72 horas**: Aunque se use timestamp_micros, Google Analytics no permite adjuntar eventos a sesiones anteriores a 72 horas.
- **Audience triggers en GA4**: Generan eventos automáticos que no están vinculados a ninguna sesión, causando un alto porcentaje de "not set" en informes de adquisición.
- **UTM parameters incompletos**: Faltar `utm_source` o `utm_medium` (obligatorios) provoca que el tráfico se clasifique como "not set".
- **Análisis de datos recientes (menos de 48 horas)**: Datos no procesados por Google aparecen como "not set" en informes de adquisición.
- **Tráfico de bots no mitigado**: Picos de tráfico de bots generan eventos sin source/medium. Soluciones reactivas como filtros de IP o CDN ayudan, pero no eliminan completamente el problema.