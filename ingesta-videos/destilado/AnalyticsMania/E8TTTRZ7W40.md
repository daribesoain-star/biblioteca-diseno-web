# Snapchat conversions API with Google Tag Manager || Snapchat CAPI with sGTM
**Fuente:** AnalyticsMania | https://youtu.be/E8TTTRZ7W40

## Qué enseña
Configurar Snapchat Conversions API (CAPI) usando server-side Google Tag Manager (sGTM) para enviar eventos como page view y purchase, con o sin Snapchat Pixel en el navegador. Incluye deduplicación de eventos mediante event ID para evitar datos inflados en Snapchat Ads Manager.

## Lecciones accionables
- **Opción 1 (solo servidor):** Usa el tag "Snapchat conversion API" de la galería de templates en sGTM. Configura pixel ID y access token desde Snapchat Ads Manager > Events Manager > crear pixel web > Conversions API.
- **Opción 2 (servidor + pixel):** Agrega el template "Snap Pixel" en el contenedor web de GTM. Crea tags separados para page view y purchase, usando el mismo trigger que sus respectivos tags GA4.
- **Envío de page view desde sGTM:** Crea trigger con condiciones: `event name equals page view` AND `client name equals GA4`. El tag Snapchat CAPI se dispara con ese trigger.
- **Envío de purchase desde sGTM:** Crea un tag GA4 event en el contenedor web con `event name = purchase` y `send e-commerce data from data layer`. En sGTM, copia el tag de page view, cambia `event name` a `purchase`, y crea trigger: `event name equals purchase` AND `client name equals GA4`.
- **Envío de user email:** En el contenedor web, crea variable de data layer para `user email`. Luego crea variable "User Provided Data" con configuración manual, asignando email a esa variable. En el tag GA4 purchase, agrega parámetro `user_data` con valor de la variable "User Provided Data". El tag Snapchat CAPI lo captura automáticamente.
- **Deduplicación de eventos:** Instala el template "Unique Event ID" de Stape en el contenedor web. Crea una variable de tipo "Unique Event ID". En cada tag GA4 (page view y purchase), agrega parámetro `event_id` con esa variable. En cada tag Snap Pixel, en el campo "client duplication ID", inserta la misma variable.
- **Desactivar page view automático en GA4 config tag:** Agrega parámetro `send page view = false` para evitar duplicados con el tag GA4 event de page view.
- **Variables custom para e-commerce:** Para item IDs, crea variable "Custom JavaScript" con código que recorre `ecommerce.items` y extrae `item_id`. Para cantidad total de items, usa código similar que sume `quantity`. Ambas variables referencian una variable de data layer `ecommerce` con versión 1.
- **Testeo:** Usa la extensión "Snap Pixel Helper" en Chrome para verificar eventos del pixel. En sGTM, revisa el tag "outgoing request" para confirmar datos enviados a Snapchat.

## Reglas para agentes
- Usa `client name equals GA4` en los triggers de sGTM cuando los eventos provengan de Google Analytics 4.
- Nunca uses el mismo trigger para un tag Snap Pixel y un tag GA4 event si no tienen el mismo `event_id` para deduplicación.
- Siempre configura `event_id` en ambos lados (pixel y CAPI) para el mismo evento; de lo contrario, Snapchat contará duplicados.
- Cuando envíes user email, asegúrate de que la variable "User Provided Data" esté configurada con `manual configuration` y el email correcto.
- Si usas datos e-commerce que no siguen la nomenclatura GA4, debes mapear manualmente los parámetros en el tag Snapchat CAPI usando variables "Event Data".
- Publica los cambios en ambos contenedores (web y server) después de probar en modo preview.

## Errores comunes que evita o menciona
- **Eventos duplicados sin deduplicación:** Si envías el mismo evento desde pixel y CAPI sin `event_id` idéntico, Snapchat infla las métricas. La solución es usar "Unique Event ID" en ambos lados.
- **Test events de Snapchat no funcionan en tiempo real:** El creador menciona resultados mixtos; a veces no muestra eventos aunque se envíen correctamente. No es un indicador confiable.
- **Olvidar desactivar page view automático en GA4 config tag:** Si no se desactiva, el GA4 config tag enviará page views automáticos que no tendrán `event_id`, causando duplicados con el tag GA4 event de page view.
- **No incluir user email en el envío:** Si el email no está en `user_data` del evento GA4, el tag Snapchat CAPI no lo capturará automáticamente. Debe enviarse explícitamente como parámetro en el tag GA4.
- **Usar triggers incorrectos para pixel y GA4:** Ambos tags (pixel y GA4 event) deben usar exactamente el mismo trigger para que el `event_id` coincida.