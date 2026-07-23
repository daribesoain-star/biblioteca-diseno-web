# 10 common Server-side Google Tag Manager mistakes
**Fuente:** AnalyticsMania | https://youtu.be/1igvZkIhx9c

## Qué enseña
Cómo identificar y corregir los 10 errores más frecuentes en la configuración de Google Tag Manager del lado del servidor (sGTM), incluyendo dominio personalizado, extensión de cookies, enriquecimiento de datos y deduplicación de eventos. Explica el paso a paso técnico para maximizar la precisión de atribución y evitar bloqueos por navegadores o extensiones.

## Lecciones accionables
- **Usar dominio personalizado en lugar del URL por defecto del proveedor:** Reemplazar URLs como `https://gtm-xxxxx.cloudfunctions.net` o `https://xxxxx.stape.io` por un subdominio propio (ej. `gtm.tudominio.com`) o configuración same-origin (`tudominio.com/sgtm`). Esto permite extender la vida de cookies y evita ser tratado como tercer dominio.
- **Actualizar todas las etiquetas del contenedor web para que apunten al servidor:** En etiquetas de Google Analytics, usar el parámetro `server_container_url` con el URL del contenedor servidor. En etiquetas como Stape Data Tag, ingresar el URL en el campo dedicado. Aplicar a TODAS las etiquetas que tengan esta opción.
- **Configurar same-origin setup para extender la vida de cookies (ITP):** Colocar el contenedor servidor en la misma ruta que el sitio web (ej. `tudominio.com/sgtm`) usando un balanceador de carga o CDN que comparta la misma IP. Si no es posible (ej. Shopify), usar una función como "Cookie Keeper" de Stape que restaura cookies en cada recarga.
- **Actualizar el snippet del contenedor web de GTM:** Reemplazar `googletagmanager.com` en el código del snippet por el dominio propio. En Stape, usar la función "Custom Loader" ingresando el dominio, el ID del contenedor web y la plataforma (WordPress, Magento, Other) para generar el código personalizado.
- **Cambiar la estructura del request URL para evitar bloqueos:** Habilitar "Enhanced ad blocker protection" en el Custom Loader de Stape. Esto oculta parámetros como `tid` y `G-XXXXX` en los requests, haciendo que las extensiones no reconozcan tráfico de Google Analytics.
- **Implementar enriquecimiento de datos (data enrichment):** No solo reenviar datos del navegador. Antes de enviar a vendors, hacer requests a CRM, e-commerce o bases de datos NoSQL (Firestore, Stape Store) para agregar datos como email, nombre, apellido. Usar variables como `{{event}}`, `{{user_data}}` y parámetros como `em`, `fn`, `ln` en etiquetas de Facebook Conversions API.
- **Respetar el consentimiento del usuario:** No enviar requests al servidor si el consentimiento está denegado. Si se usa Consent Mode avanzado, las señales de consentimiento (`gcs`, `gcd`) deben propagarse al servidor. En etiquetas de servidor, condicionar el envío de datos de usuario (`user_data`) al estado de consentimiento.
- **Usar Data Tag en lugar de Google Analytics si no se usa GA:** En el contenedor web, usar la plantilla "Data Tag" (de Stape) en vez de GA4. Configurar eventos (page_view, purchase) e incluir `server_container_url`, `user_data` y `event_data`. Es más ligero (~130 KB vs menos) y no requiere GA.
- **Implementar deduplicación de eventos (event_id):** En configuraciones híbridas (pixel nativo + servidor), enviar el mismo `event_id` en ambos lados. En el contenedor web, generar el `event_id` con una variable (ej. `{{Random Number}}` o `{{Transaction ID}}`) y pasarlo tanto a la etiqueta que envía al servidor como a la etiqueta del pixel de Facebook.
- **Asegurar que las etiquetas relacionadas disparen en el mismo trigger:** Para que el `event_id` sea idéntico, la etiqueta que envía al servidor y la etiqueta del pixel nativo deben usar el mismo trigger (ej. ambas en "DOM Ready" o "Window Loaded"). Si disparan en triggers diferentes, los IDs diferirán y habrá duplicados.

## Reglas para agentes
- **Usa un dominio personalizado (subdominio o same-origin) siempre** que configures un contenedor servidor; nunca uses el URL por defecto del proveedor.
- **Actualiza TODAS las etiquetas del contenedor web** que tengan la opción `server_container_url` o campo equivalente; si alguna no se actualiza, los datos se enviarán directamente a Google y se perderá atribución.
- **Configura same-origin setup** (misma IP que el sitio web) para extender la vida de cookies; si no es posible, usa una herramienta de restauración de cookies como Cookie Keeper.
- **Reemplaza el snippet de GTM en el sitio web** para que cargue desde tu dominio propio, no desde `googletagmanager.com`.
- **Habilita la protección contra bloqueadores de anuncios** (enhanced ad blocker protection) en el custom loader para ocultar parámetros identificables de Google.
- **Enriquece los datos antes de enviarlos a vendors** usando CRM, e-commerce o bases de datos; no te limites a reenviar datos del navegador.
- **Respeta el consentimiento del usuario** en el servidor: no envíes datos personales si el consentimiento está denegado; propaga las señales de consent mode.
- **Usa Data Tag en el contenedor web** si no necesitas Google Analytics; es más ligero y evita dependencias innecesarias.
- **Incluye `event_id` en TODAS las conversiones** cuando uses configuración híbrida (pixel nativo + servidor) para evitar duplicados.
- **Asegura que las etiquetas que comparten `event_id` disparen en el MISMO trigger** en el contenedor web.

## Errores comunes que evita o menciona
- Usar el URL por defecto del proveedor de hosting (Google Cloud Run, Stape) en lugar de un dominio personalizado, lo que impide extender cookies y causa que sea tratado como tercer dominio.
- No actualizar las etiquetas del contenedor web para que envíen datos al servidor, resultando en envíos directos a Google y pérdida de atribución (más valores "not set" en informes).
- No configurar same-origin setup para extender la vida de cookies bajo ITP de Apple, limitando cookies a 24 horas o 7 días.
- No actualizar el snippet de GTM en el sitio web, manteniendo `googletagmanager.com` en lugar del dominio propio.
- No cambiar la estructura del request URL, dejando parámetros visibles como `tid` y `G-XXXXX` que son bloqueados por extensiones.
- No hacer enriquecimiento de datos (solo reenviar datos del navegador), resultando en baja calidad de matching en plataformas como Facebook.
- Ignorar el consentimiento del usuario, asumiendo que sGTM exime de cumplir con GDPR u otras regulaciones.
- Usar etiquetas de Google Analytics en el contenedor web aunque no se use GA, añadiendo peso innecesario (~130 KB) y dependencia.
- Olvidar la deduplicación de eventos (event_id) en configuraciones híbridas, causando datos duplicados en Facebook, Snapchat, TikTok, etc.
- Disparar etiquetas relacionadas en triggers diferentes, generando event_id distintos y duplicación persistente.