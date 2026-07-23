# Tracking conversions with Tiktok Events API and GTM (2026) | Tiktok Conversions API
**Fuente:** AnalyticsMania | https://youtu.be/as3ttwsVJG0

## Qué enseña (2-3 líneas)
Este tutorial explica cómo configurar TikTok Events API usando server-side Google Tag Manager (sGTM) con el template de Stape, tanto con solo servidor como combinado con el pixel del lado del cliente. Cubre la deduplicación de eventos mediante event ID, el envío de datos de e-commerce GA4 y la inclusión de datos de usuario como email.

## Lecciones accionables
- **Opción 1 (solo servidor):** Usa solo tags TikTok en el contenedor server-side. Flujo: sitio web → GTM web (con tag GA4) → servidor → TikTok Events API. No cargas pixel en el navegador, mejorando velocidad de página.
- **Opción 2 (recomendada por TikTok):** Mantén pixel TikTok en el contenedor web Y tags en el servidor. TikTok deduplica automáticamente si envías event ID coincidente.
- **Instalación del template:** En el contenedor server-side, ve a Templates → Tag Templates → Search Gallery → busca "TikTok" → selecciona el template de **Stape** → Add to Workspace.
- **Obtener Access Token y Pixel ID:** Ve a ads.tiktok.com → Events Manager → selecciona advertiser → Connect Data Source → Web → ingresa URL → Manual Setup → nombra el pixel → en el paso "Events API", genera el token y cópialo. El Pixel ID está en la misma página.
- **Configurar tag Page View (servidor):** Crea tag → TikTok Events API → pega Access Token y Pixel ID → marca checkbox "Create TikTok cookie for attribution" → Trigger: evento personalizado `event name equals page_view` Y `client name equals G4` (o el nombre de tu cliente GA4).
- **Configurar tag Purchase (servidor):** Copia el tag Page View → cambia event name a `purchase` → Trigger: `event name equals purchase` Y `client name equals G4`. El template reconoce automáticamente la estructura de e-commerce GA4.
- **Testeo en vivo:** En Events Manager → Test Events → copia el **Test Event Code** → pégalo en el campo "Test event code" del tag Purchase (NO en Page View, TikTok no lo soporta directamente). Después de probar, **elimina el código de prueba** antes de publicar.
- **Opción 2 - Pixel web:** En el contenedor web, instala el template oficial "TikTok Pixel" desde Templates → Search Gallery. Luego crea un tag Custom HTML con el **base code** de TikTok (Events Manager → Data Sources → tu pixel → Settings → Install Base Code → copia el código). Fíralo en `All Pages - Initialization`.
- **Envío de datos de producto desde GA4 al pixel web:** Crea variable Data Layer `ecommerce` (versión 1). Crea variable Custom JavaScript con el código del blog post (enlace en video) que transforma GA4 ecommerce al formato TikTok. En el tag TikTok Pixel, selecciona "Complete Payment" → desmarca "Multiple Contents" → en "Contents" inserta la variable Custom JS → en "Value" usa variable Data Layer `ecommerce.value` → en "Currency" escribe o usa variable.
- **Deduplicación con Event ID:** Instala el template "Event ID" de Stape en el contenedor web (Templates → Variable Templates → Search Gallery). Crea una variable con ese template. En el tag TikTok Pixel web, en "Event ID" inserta esa variable. En el tag Purchase del servidor, en "Event ID" inserta la misma variable. **Ambos tags deben dispararse con el mismo trigger** para que el ID sea idéntico.
- **Envío de email del usuario:** En el contenedor web, crea variable Data Layer `user_email`. En el tag TikTok Pixel, en "Parameter Override" → "Plain Parameters" → agrega `email` con esa variable (el template lo hashea automáticamente). En el contenedor web, en el tag GA4 que envía datos al servidor, agrega el parámetro `user_data` → crea variable "User Provided Data" → en "Email" inserta la variable `user_email`. El template de Stape en el servidor tomará ese email del `user_data`, lo hasheará y lo enviará a TikTok.

## Reglas para agentes
- Usa el template de **Stape** para TikTok Events API en server-side GTM, no el oficial, porque reconoce automáticamente la estructura GA4.
- Cuando configures solo servidor (sin pixel web), **marca siempre** el checkbox "Create TikTok cookie for attribution" en el tag Page View.
- Para testear eventos en vivo, **incluye el Test Event Code** solo en tags que no sean Page View (TikTok no soporta Page View en test events).
- **Elimina siempre** el Test Event Code de todos los tags antes de publicar en producción, o los eventos reales no se contabilizarán.
- Para deduplicación, **usa el mismo trigger** para el tag web y el tag server-side del mismo evento, y **usa la misma variable Event ID** en ambos.
- Cuando envíes email, **no lo hashes manualmente**; el template de TikTok (web) y el de Stape (servidor) lo hacen automáticamente.
- Si usas el pixel web con GA4, **desmarca "Multiple Contents"** y usa una variable Custom JS para transformar los datos, porque el template oficial no soporta GA4 nativamente.

## Errores comunes que evita o menciona
- **No olvidar el Event ID:** Si envías el mismo evento desde web y servidor sin event ID coincidente, TikTok los tratará como dos conversiones separadas, duplicando las métricas.
- **No usar el mismo trigger:** Para que el Event ID sea idéntico, ambos tags (web y servidor) deben dispararse exactamente con el mismo trigger.
- **Dejar el Test Event Code en producción:** Los eventos enviados con el código de prueba no se incluyen en los informes reales. El video muestra explícitamente que hay que eliminarlo.
- **El tag Page View no aparece en test events:** TikTok no soporta Page View en la sección de test events, por lo que no debes esperar verlo allí.
- **El template oficial de TikTok pixel no soporta GA4:** Si intentas usar "Multiple Contents" con GA4 directamente, no funcionará. Debes usar una variable Custom JS para transformar los datos.
- **No incluir el base code del pixel:** Si solo instalas el tag template sin el base code (Custom HTML), el pixel no se cargará en el sitio.