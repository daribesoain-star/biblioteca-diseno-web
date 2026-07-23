# Server-side Tagging for Shopify (2026) | SGTM for Shopify with Stape
**Fuente:** AnalyticsMania | https://youtu.be/bDgKcolJfJ0

## Qué enseña (2-3 líneas)
Configuración completa de server-side tagging para Shopify usando Stape como hosting del servidor GTM. Cubre instalación del plugin Stape en Shopify, importación de plantillas de contenedor para Google Analytics 4, Meta y Google Ads, mapeo de dominio personalizado, y solución de problemas específicos de Shopify como URLs de checkout distorsionadas y limitaciones del preview mode.

## Lecciones accionables
- **Crear cuenta en Stape:** ir a `stape.io`, ingresar email, seleccionar ubicación del servidor (ej. "EU" si el tráfico es mayoritariamente europeo), aceptar términos y confirmar email
- **Crear contenedor server-side GTM en Stape:** hacer clic en "Create SGTM container", asignar nombre (ej. "GTM playground Shopify")
- **Obtener configuración del contenedor desde Google Tag Manager:** ir a `tagmanager.google.com`, crear nuevo contenedor, seleccionar "Server container", elegir "Manual provisioning", copiar la configuración JSON y pegarla en Stape
- **Mapear dominio personalizado en Stape:** usar un subdominio NO obvio (ej. "abc.tudominio.com" en lugar de "sgtm.tudominio.com") para evitar bloqueos de extensiones de navegador; agregar dos registros CNAME en el proveedor DNS (Cloudflare u otro): `CNAME abc` → valor de Stape, y `CNAME load.abc` → segundo valor de Stape; deshabilitar proxying en Cloudflare
- **Instalar plugin Stape en Shopify:** ir a `apps.shopify.com`, buscar "Stape", instalar, activar el widget, luego en el plugin ingresar el ID del contenedor web GTM (no el server) en "Insert the Google Tag Manager script"
- **Habilitar e-commerce data layer en el plugin:** marcar checkbox en pestaña "Data Layer", luego crear un Custom Pixel en Shopify: `Settings → Customer Events → Add custom pixel`, nombrarlo (ej. "st e-commerce"), permisos "Not required", pegar el código proporcionado por Stape, guardar y conectar
- **Importar plantillas de contenedor GTM desde GitHub:** descargar desde `github.com/stape-io/shopify-gtm-container-templates` los pares de plantillas (web + server) según necesidad: `ga4-google-ads` para GA4 + Google Ads, `meta` para Facebook, o combinadas
- **Configurar variables manuales en el contenedor web GTM:** ir a `Folders → Settings`, editar:
  - `G4 measurement ID`: copiar desde `Google Analytics → Admin → Data Streams → [tu stream] → Measurement ID`
  - `Meta pixel ID`: copiar desde `business.facebook.com → Events Manager → [tu pixel] → Settings → Data set ID`
  - `Server container URL`: `https://[tu-subdominio]` sin trailing slash
- **Configurar variables manuales en el contenedor server GTM:** ir a `Folders → Settings`, editar:
  - `Meta pixel ID`: mismo valor que en web
  - `Meta API token`: en `business.facebook.com → Events Manager → [tu pixel] → Settings → Access token → Generate access token`
  - `Google Ads conversion ID`: desde `ads.google.com → Conversions → Summary → [crear o seleccionar conversión] → Use Google Tag Manager`
  - `Google Ads conversion label (purchase)`: copiar desde la conversión "Purchase"
  - `Google Ads conversion label (add_to_cart)`: copiar desde la conversión "Add to cart"
  - `Google Ads conversion label (begin_checkout)`: copiar desde la conversión "Begin checkout"
- **Agregar Server Container URL en configuración del contenedor server:** ir a `Admin → Container Settings → Add URL`, ingresar `https://[tu-subdominio]`
- **Probar eventos pre-checkout con preview mode:** en web GTM hacer clic en "Preview", ingresar URL de Shopify, conectar; verificar que tags GA4 y Meta disparen en page view, view item, add_to_cart
- **Probar eventos de checkout (limitación Shopify):** publicar cambios del contenedor web, luego usar `Developer Tools → Network → filtrar por "collect"` para ver requests enviados al subdominio propio; verificar eventos `begin_checkout`, `add_shipping_info`, `add_payment_info`, `purchase`
- **Forzar debug mode en GA4 para checkout:** en contenedor server GTM, ir a `Tags → GA4 Base Tag → Event Parameters → Add row → debug_mode → true`, guardar y refrescar preview mode del server
- **Corregir page location distorsionada en checkout:** en contenedor web GTM:
  1. Crear variable "Data Layer Variable" con nombre `actual_url` y valor `dl - actualUrl`
  2. En el tag GA4 de page view, en "Event Settings Variable", agregar parámetro `page_location` con valor `{{actual_url}}`
  3. Cambiar trigger del tag de "DOM Ready" a "Custom Event" con nombre de evento `gtm.dom` (o el que corresponda según la plantilla)
  4. En la variable `actual_url`, establecer default value como `{{Page URL}}`
- **Activar Custom Loader en Stape:** en plugin Shopify, habilitar checkbox "Custom Loader", ingresar Container Identifier (desde `Stape → Powerups → Custom Loader → Use` o desde web GTM → ID del contenedor), habilitar "GA4 adblock bypass", seleccionar plataforma "Shopify", generar y copiar el identificador
- **Activar Cookie Keeper (plan pago):** en `Stape → Powerups → Cookie Keeper → Use`, habilitar, seleccionar cookies a extender (Google Analytics, _ga, _gid, _st, LinkedIn, etc.), configurar expiración personalizada si es necesario

## Reglas para agentes
- Usa siempre un subdominio NO relacionado con analytics/tracking (ej. "abc.tudominio.com") para el server container, nunca "sgtm", "analytics", "data" o "tracking"
- Nunca uses el dominio proporcionado por Stape (terceros) como endpoint final; siempre mapea un dominio personalizado para mantener los beneficios de server-side tagging (extensión de cookies, proxying)
- Cuando configures los registros CNAME en Cloudflare, desactiva siempre el proxying (nube naranja → gris) para los registros del server container
- En el campo "Server container URL" tanto en web GTM como en server GTM, nunca agregues trailing slash al final
- Para probar eventos de checkout en Shopify, publica primero los cambios del contenedor web y usa Developer Tools del navegador; el preview mode de GTM no funciona en páginas de checkout
- Si usas las plantillas de Stape, verifica siempre que la variable `page_location` en eventos de checkout contenga la URL real del sitio, no la URL distorsionada con "web pixel"
- Activa el Custom Loader solo después de tener el dominio personalizado verificado y funcionando

## Errores comunes que evita o menciona
- **Preview mode no funciona en checkout de Shopify:** el tag assistant de GTM deja de cargar en las páginas de checkout; solución: publicar cambios y usar Developer Tools → Network para verificar requests
- **URL de página distorsionada en checkout:** Shopify modifica la URL que GTM puede leer en checkout, mostrando rutas como "web pixel" en lugar de la URL real; solución: crear variable `actual_url` desde data layer y sobrescribir `page_location` en los tags GA4
- **Dos eventos add_to_cart duplicados en server container:** uno proviene del tag GA4 y otro del tag de datos; es normal y no afecta el envío a GA4 porque el tag GA4 solo dispara en el evento G4 correspondiente
- **Extensiones de navegador bloquean subdominios obvios:** no usar "sgtm", "analytics" o "data" como subdominio porque extensiones como uBlock Origin los detectan y bloquean
- **Custom pixel de Shopify no conectado:** después de crear el pixel "st e-commerce", hay que hacer clic en "Connect" para que el data layer funcione correctamente
- **Olvidar guardar cambios en pestaña Data Layer del plugin:** si no se guarda con el checkbox habilitado, los eventos e-commerce no se enviarán al data layer
- **No publicar cambios en server container después de pruebas:** el data client debe estar en modo "live" (no solo preview) para que funcione en producción