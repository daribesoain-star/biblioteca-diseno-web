# Google Ads conversion tracking for Shopify with Server-side Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/rO-tXWrD1oY

## Qué enseña (2-3 líneas)
Configurar el seguimiento de conversiones de Google Ads en Shopify usando server-side Google Tag Manager (sGTM) con Stape. Cubre la instalación del conversion linker, la extracción manual del GCLID desde cookies cuando el checkout de Shopify no pasa automáticamente la información, y el uso de transformaciones para inyectar el click ID en la URL antes de enviar la conversión a Google.

## Lecciones accionables
- **Configuración previa necesaria en el web container:**
  - Tener un GA4 config tag (Google tag) con el parámetro `server_container_url` apuntando al dominio personalizado de sGTM (Stape). El tag NO debe enviar page view; se usa un tag separado para eso.
  - Usar un **event settings variable** que contenga el mismo `server_container_url`. Todos los event tags (purchase, page_view) deben usar esta variable.
  - Tener un tag de purchase que envíe el evento `purchase` con datos de e-commerce al sGTM.

- **Corregir la URL de página en checkout (web container):**
  - En el GA4 config tag, agregar el parámetro `page_location` con una variable de data layer que lea `actual URL`.
  - Crear la variable DLV: nombre `actual URL`, default value = `{{Page URL}}` (built-in).
  - En el event settings variable, agregar el mismo parámetro `page_location` con la variable `actual URL` para que todos los event tags lo hereden.

- **Configurar el server container (sGTM):**
  - **GA4 tag:** Tag Configuration = Google Analytics GA4. Trigger: custom, condiciones: `Client Name` equals `GA4` (mayúsculas). Activar en todos los GA4 requests.
  - **Conversion Linker tag:** Tag Configuration = Conversion Linker. Trigger: mismo `Client Name` equals `GA4`. Se encarga de setear la cookie `_gcl_aw` con el GCLID.
  - **Google Ads Conversion Tracking tag:** Pegar `Conversion ID` y `Conversion Label` desde Google Ads. Trigger: custom, condiciones: `Event Name` equals `purchase` AND `Client Name` equals `GA4`.

- **Enviar user data (enhanced conversions) desde el web container:**
  - En el checkout, abrir DevTools > Console > seleccionar `web pixel sandbox custom` > escribir `dataLayer` (con L mayúscula) para ver el evento `purchase` y dentro `userData`.
  - Crear variable DLV: `userData.email`.
  - Crear variable **User Provided Data**: manual configuration, campo `email` = la variable DLV anterior.
  - En el tag de purchase del web container, agregar parámetro `user_data` (minúsculas) = la variable User Provided Data.

- **Solución para que el Google Ads tag en sGTM acceda al GCLID en checkout (workaround crítico):**
  - **Paso 1 (web container):** Crear variable **First Party Cookie** con nombre `_gcl_aw` (el nombre exacto de la cookie que setea conversion linker).
  - **Paso 2 (web container):** En el event settings variable, agregar un parámetro personalizado: `custom _gcl_aw` = la variable de cookie recién creada. Esto hará que todos los eventos (incluyendo purchase desde checkout) envíen el valor de la cookie como un parámetro extra.
  - **Paso 3 (sGTM):** Crear variable **Event Data** que lea `custom _gcl_aw` (exactamente como se envía).
  - **Paso 4 (sGTM):** Importar el template **GCLID from FPG Claw** (desde el repositorio de GitHub vinculado en el video). Crear variable usando ese template, input = la variable Event Data del paso anterior. Esto extrae solo el GCLID del valor completo de la cookie.
  - **Paso 5 (sGTM):** Importar el template **URL Builder** (desde la galería de Stape). Crear variable URL Builder: input URL = variable Event Data que lea `page_location`; agregar parámetro `gclid` = la variable del paso 4 (GCLID extraído).
  - **Paso 6 (sGTM):** Crear una **Transformation** de tipo **Augment Event**. Configurar: override `page_location` = la variable URL Builder del paso 5. Condición: aplicar solo si `custom _gcl_aw` does not equal `undefined`. Affected tags: include tag types = `Google Ads Conversion Tracking`. Esto modifica la URL en el evento para que el Google Ads tag vea el GCLID.

- **Publicación y prueba:**
  - Publicar el web container (necesario porque preview mode no funciona en checkout de Shopify).
  - En sGTM, usar preview mode. Ir al sitio, agregar manualmente `?gclid=99999` a la URL para simular un click ID.
  - Completar una compra. Verificar que en sGTM el Google Ads tag muestre un outgoing request con el parámetro `gclaw` conteniendo el ID.

## Reglas para agentes
- **Usa** el event settings variable en el web container para centralizar parámetros como `server_container_url` y `page_location`; así todos los event tags heredan los cambios automáticamente.
- **Nunca** confíes en que el checkout de Shopify pase automáticamente las cookies al servidor; siempre extrae manualmente el `_gcl_aw` cookie y envíala como parámetro personalizado (`custom _gcl_aw`).
- **Usa** la transformación Augment Event con condición `custom _gcl_aw does not equal undefined` y afectando solo tags de tipo `Google Ads Conversion Tracking` para evitar modificar URLs de otros tags.
- **Nunca** uses preview mode del web container para probar el checkout; publica el container y usa el preview mode del server container combinado con la URL manual `?gclid=XXXXX`.
- **Usa** el template "GCLID from FPG Claw" (de Stape/GitHub) para extraer el GCLID del valor completo de la cookie, ya que no hay función nativa en sGTM para hacerlo.
- **Verifica** que el GA4 config tag en el web container tenga `page_location` override con la variable `actual URL` para evitar URLs ofuscadas en checkout.

## Errores comunes que evita o menciona
- **El conversion linker setea la cookie `_gcl_aw`, pero el Google Ads conversion tag NO puede acceder a ella cuando el request viene desde el checkout de Shopify**, porque las cookies no se pasan automáticamente al servidor en ese entorno. El workaround es enviar el valor de la cookie como un parámetro extra en el request.
- **El preview mode de GTM no funciona en el checkout de Shopify** debido a limitaciones del sandbox. Solución: publicar el web container y usar el preview mode del server container junto con una URL que contenga `?gclid=XXXXX`.
- **No usar el event settings variable** lleva a tener que editar manualmente cada tag individualmente, aumentando el riesgo de errores y omisiones.
- **Olvidar configurar el default value en la variable DLV `actual URL`** con `{{Page URL}}` causa que si el data layer no tiene ese valor, el tag use undefined.
- **No incluir la condición `custom _gcl_aw does not equal undefined` en la transformación** provoca que se intente modificar la URL incluso cuando no hay GCLID, lo que puede romper otros tags.
- **No publicar el web container antes de probar el checkout** impide que los cambios (como el envío del parámetro `custom _gcl_aw`) estén activos durante la compra.