# Google Tag Manager Server-side Tagging Tutorial 2026 || Server-side tracking with GTM
**Fuente:** AnalyticsMania | https://youtu.be/vm8u4BckuRI

## Qué enseña (2-3 líneas)
Este tutorial enseña a implementar un setup híbrido de server-side tagging con Google Tag Manager y Google Analytics 4, desde la creación del contenedor server-side hasta el proxy de recursos para evadir bloqueadores. Cubre el hosting en Stape, el mapeo de dominio personalizado con configuración same-origin en Cloudflare, y la configuración de clientes y tags en el contenedor server-side.

## Lecciones accionables
- **Crear contenedor server-side en GTM:** Ve a tagmanager.google.com → clic en los tres puntos → "Create Container" → selecciona "Server" → nómbralo (ej. "tudominio.com SGTM") → elige "Manually provision server" → copia la configuración del contenedor.
- **Configurar hosting en Stape:** Regístrate en stape.io (plan gratuito disponible) → clic en "Create SGTM container" → pega la configuración del contenedor de GTM → selecciona ubicación del servidor (EU o fuera de EU) → elige plan "Free" → espera a que el estado del servidor muestre un badge verde.
- **Verificar servidor:** Copia el dominio de Stape → pégalo en el navegador añadiendo `/healthy` → debe mostrar "ok".
- **Mapear dominio personalizado (same-origin setup):** En Stape, clic en "Add custom domain" → ingresa un subdominio (ej. `data.tudominio.com`) → selecciona "Global CDN" → elige "Manually" → copia los dos registros CNAME → en Cloudflare (o tu proveedor DNS): añade dos registros CNAME con proxy desactivado → clic en "Verify" en Stape (puede tardar hasta 72 horas).
- **Crear Worker en Cloudflare para same-origin:** En Cloudflare → Workers & Routes → "Manage Workers" → "Create Worker" → selecciona "Hello World" → nómbralo (ej. "SGTM-same-origin") → reemplaza el código con el proporcionado en el video (disponible en la descripción) → modifica `const domain = "data.tudominio.com"` y `const subfolder = "/som"` (elige un nombre no relacionado con analytics, ej. `/xyz`) → "Deploy".
- **Configurar rutas en Cloudflare:** Ve a Workers Routes → "Add Route" → ingresa `tudominio.com/som*` (o tu subfolder) → selecciona el worker creado → "Save".
- **Crear regla de SSL en Cloudflare:** Rules → "Configuration Rules" → nómbrala "SGTM same-origin SSL" → URI path starts with `/som` → SSL → "Full" → "Deploy".
- **Crear regla de transformación de headers:** Rules → "Transform Rules" → "Request Header Transform Rule" → nómbrala "SGTM same-origin headers" → URI path starts with `/som` → "Set static" → campo: `X-From-CDN` → valor: `cf-stip` → "Deploy".
- **Configurar URL del contenedor server-side en GTM:** En GTM → Admin → Container Settings → "Server Container URLs" → "Add URL" → ingresa `https://tudominio.com/som` → "Save".
- **Configurar cliente GA4 por defecto:** En el contenedor server-side → Clients → clic en "Google Analytics 4" → en "More Settings" → cambia "Cookie settings" a "JavaScript managed" (recomendado por el instructor para evitar problemas de atribución) → "Save".
- **Actualizar web container para enviar datos al servidor:** En el contenedor web → edita la etiqueta de configuración de Google Analytics 4 → en "Configuration Settings" → añade parámetro `server_container_url` con valor `https://tudominio.com/som` (o usa una variable constante para reutilizarlo) → haz lo mismo en todas las etiquetas de evento GA4 añadiendo el mismo parámetro.
- **Crear trigger en server-side para enviar datos a Google:** En el contenedor server-side → Tags → "New" → Tag Configuration → "Google Analytics: GA4" → Triggering → "New Trigger" → "Custom" → selecciona variable integrada `Client Name` → condición: `equals` → valor: `GA4` → nómbralo "Client Name GA4" → "Save".
- **Probar envío:** Activa preview en ambos contenedores (web y server) → recarga la web → en el preview del server-side, selecciona un evento → ve a "Tags" → confirma que se vea el outgoing request → verifica en GA4 Debug View que los eventos lleguen.
- **Configurar proxy (Custom Loader) en Stape:** En Stape → Powerups → "Custom Loader" → "Enable" → ingresa el ID del contenedor web (no el server) → activa "Make request parameters unreadable" → ingresa el same-origin path (`/som`) → selecciona la plataforma (ej. WordPress) → "Generate" → reemplaza el snippet de GTM en tu web con el código generado.
- **Publicar cambios:** En el contenedor server-side → "Submit" → nombre de versión → "Publish" → luego en el contenedor web → "Submit" → nombre de versión → "Publish".

## Reglas para agentes
- Usa `server_container_url` como parámetro en todas las etiquetas GA4 del contenedor web, tanto en la etiqueta de configuración como en las de evento, para asegurar el envío al servidor.
- Nunca uses nombres de subfolder obvios como `/analytics`, `/sgtm`, `/metrics` o `/tracking` en el worker de Cloudflare; elige una cadena no relacionada con analytics (ej. `/xyz`).
- Cuando configures el trigger en el server-side, usa siempre la condición `Client Name equals GA4` en lugar de "All Pages" para capturar todos los tipos de eventos (page_view, scroll, user_engagement, etc.).
- En la regla de transformación de headers de Cloudflare, usa exactamente el header `X-From-CDN` con valor `cf-stip` para preservar la IP real del usuario.
- Para el custom loader en Stape, activa siempre "Make request parameters unreadable" para ofuscar los parámetros y reducir el impacto de bloqueadores.
- En la configuración del cliente GA4, prefiere "JavaScript managed" sobre "Server managed" para cookies, a menos que tengas requisitos estrictos de privacidad que justifiquen lo contrario.

## Errores comunes que evita o menciona
- **No verificar el servidor después de crearlo:** El tutorial recomienda probar con `/healthy` para confirmar que el servidor está operativo antes de continuar.
- **Usar el mismo subdominio para múltiples servicios:** Al mapear el dominio personalizado, asegúrate de que el subdominio no esté siendo usado por otra aplicación.
- **Olvidar desactivar el proxy de Cloudflare en los registros CNAME:** Los registros CNAME deben tener el proxy desactivado (naranja apagado) para que Stape pueda verificar el dominio.
- **No incluir el subfolder en la URL del contenedor server-side:** Si usas same-origin setup, debes incluir la ruta completa (ej. `https://tudominio.com/som`) al configurar "Server Container URLs" en GTM.
- **Usar "All Pages" como trigger en el server-side:** Este trigger solo funciona para page_view; para otros eventos (scroll, click, etc.) se necesita un trigger personalizado basado en `Client Name`.
- **No publicar ambos contenedores:** Después de los cambios, debes publicar tanto el contenedor server-side como el web; de lo contrario, los cambios no se aplicarán en producción.
- **Esperar que la verificación del dominio sea instantánea:** La propagación DNS puede tardar desde minutos (Cloudflare) hasta 72 horas en otros proveedores; no asumas que falló si no se verifica de inmediato.