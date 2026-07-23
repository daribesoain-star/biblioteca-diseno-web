# Facebook Conversions API for Shopify with Google Tag Manager (FB CAPI) 
**Fuente:** AnalyticsMania | https://youtu.be/pMUoWALa3kA

## Qué enseña (2-3 líneas)
Implementación completa de Facebook Conversions API (CAPI) en Shopify usando server-side Google Tag Manager (sGTM) alojado en Stape, incluyendo envío dual con Facebook Pixel y deduplicación mediante event ID. Cubre configuración de tags Data Tag de Stape en el contenedor web, mapeo de variables de data layer, y creación de tags CAPI en el contenedor servidor.

## Lecciones accionables
- **Instalar plugin Stape en Shopify:** Ir a Shopify > Settings > Customer events > Custom pixels, seguir instrucciones de Stape para inyectar script de GTM web y mapear dominio personalizado.
- **Configurar Data Tag en contenedor web:** Ir a Templates > Tag templates > Search gallery > "Data Tag" (Stape) > Add to workspace. Crear tag con tipo "Data Tag", mantener event como "page_view", ingresar server container URL (sin trailing slash). Crear variable constante para la URL del servidor.
- **Crear trigger DOM Ready:** Trigger configuration > DOM Ready. Usar para page view.
- **Configurar variables de data layer:** Para currency usar `e-commerce.currency`, para value usar `e-commerce.value`, para items usar `e-commerce.items`.
- **Importar variable "Universal Conversions Variable":** Descargar `template.tpl` del repositorio GitHub (link en descripción del video). Ir a Templates > Variable templates > New > Import. Seleccionar "Meta Pixel / CAPI" como platform. Para content IDs: input array = variable `e-commerce.items`, mapear item_id, item_name, price, quantity. Para contents: mismo proceso.
- **Configurar Add to Cart tag (web):** Copiar tag page view, cambiar event a "add_to_cart". En event data agregar: `currency` (variable e-commerce.currency), `value` (e-commerce.value), `meta_content_ids` (variable content IDs), `meta_contents` (variable contents). Trigger: custom event "add_to_cart_step".
- **Configurar Purchase tag (web):** Copiar tag add to cart, cambiar event a "purchase". Marcar checkbox "pass cookie info" (necesario para checkout de Shopify). En event data agregar: `transaction_id` (variable e-commerce.transaction_id), `email_address` (variable user_data.email). Trigger: custom event "purchase_step".
- **Publicar contenedor web para probar checkout:** El preview mode de GTM no funciona en checkout de Shopify. Publicar cambios, luego en checkout abrir DevTools > Console, cambiar entorno a "web pixel sandbox custom [número]" y escribir `dataLayer` (con L mayúscula) para ver data layer.
- **Importar Data Client en contenedor servidor:** Descargar `template.tpl` del repositorio GitHub (link en descripción). Ir a Templates > Client templates > New > Import. Crear cliente con tipo "Data Client", mantener settings por defecto.
- **Importar Facebook Conversions API tag en contenedor servidor:** Templates > Tag templates > Search gallery > "Facebook Conversion API" > Add to workspace.
- **Configurar Page View tag (servidor):** Tag type "Facebook Conversions API", override event "PageView", action source "website". Crear variables constantes para Facebook Pixel ID y Access Token (desde Events Manager > Settings > Data set ID y Generate access token). Trigger: custom con condiciones: `Event Name` equals `page_view` AND `Client Name` equals `data_client` (case-sensitive).
- **Configurar Add to Cart tag (servidor):** Copiar page view, cambiar event a "AddToCart". En custom data agregar: `content_ids` (variable event data `meta_content_ids`), `contents` (event data `meta_contents`), `value` (event data `value`), `currency` (event data `currency`). Trigger: `Event Name` equals `add_to_cart` AND `Client Name` equals `data_client`.
- **Configurar Purchase tag (servidor):** Copiar add to cart, cambiar event a "Purchase". En custom data agregar `order_id` (event data `transaction_id`). En user data agregar `email` (event data `email_address`). Trigger: `Event Name` equals `purchase` AND `Client Name` equals `data_client`.
- **Usar Test Events de Facebook:** Copiar Test ID desde Events Manager > Test events. Pegar en campo "Test Event Code" de cada tag CAPI en servidor (temporalmente, para pruebas). Quitar antes de publicar.
- **Configurar Facebook Pixel (web) con Stape:** Templates > Tag templates > Search gallery > "Facebook Pixel by Stape" > Add to workspace. Crear tag con pixel ID (variable constante). Habilitar advanced matching. Deshabilitar "Automatic configuration" y "History event tracking". Trigger: DOM Ready para page view.
- **Agregar event ID para deduplicación:** Importar template "Unique Event ID" desde Search gallery. En cada Data Tag (web), agregar en event data: `event_id` = variable "Unique Event ID". En cada Facebook Pixel tag (web), en "Server-side tracking" insertar misma variable.
- **Publicación final:** Eliminar Test IDs de todos los tags CAPI en servidor. Publicar ambos contenedores (web y servidor).

## Reglas para agentes
- Usa `e-commerce.currency`, `e-commerce.value`, `e-commerce.items` como nombres exactos de variables de data layer para Shopify con Stape.
- Usa `add_to_cart_step` y `purchase_step` como nombres exactos de eventos custom en triggers de web GTM.
- Nunca uses DOM Ready como trigger para add to cart o purchase; usa custom event triggers con los nombres exactos del data layer.
- Nunca publiques tags CAPI con Test IDs activos; elimínalos antes de publicar en producción.
- Usa la variable "Unique Event ID" en todos los tags (Data Tag y Facebook Pixel) que envíen el mismo evento para permitir deduplicación.
- Cuando configures triggers en servidor, incluye siempre la condición `Client Name equals data_client` (case-sensitive) además de `Event Name`.
- Para checkout de Shopify, marca el checkbox "pass cookie info" en el Data Tag de purchase y publica el contenedor web antes de probar (preview mode no funciona en checkout).
- Usa el entorno "web pixel sandbox custom [número]" en DevTools Console para inspeccionar data layer durante checkout de Shopify.

## Errores comunes que evita o menciona
- **Checkout tracking limitado:** El preview mode de GTM no funciona en checkout de Shopify. Es necesario publicar el contenedor web y usar DevTools con entorno sandbox para ver data layer.
- **Error de currency mal escrito:** El parámetro `currency` debe escribirse exactamente así (sin errores tipográficos como "curreny"). El video muestra un fallo por este error.
- **Duplicación de eventos sin event ID:** Si se envían eventos desde pixel web y CAPI servidor sin event ID, Facebook los trata como duplicados. Usar Unique Event ID en ambos tags para deduplicación.
- **Test IDs en producción:** Olvidar eliminar el Test Event Code de los tags CAPI antes de publicar causa que los eventos no se procesen correctamente en producción.
- **Triggers incorrectos en servidor:** No incluir la condición `Client Name equals data_client` puede causar que los tags se disparen con eventos de otros clientes.
- **Formato de datos incorrecto para Facebook:** Los arrays `content_ids` y `contents` deben transformarse al formato que Facebook espera usando la variable "Universal Conversions Variable" (no enviar el raw data layer).