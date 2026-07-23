# Meta offline Conversion Tracking with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/PuPHAAU7yyM

## Qué enseña
Configurar el seguimiento de conversiones offline (compras en tienda física) hacia Meta (Facebook) usando server-side Google Tag Manager. Explica cómo recibir datos desde un sistema POS mediante un cliente personalizado (Stape Data Client), transformarlos con variables (Array Map) y enviarlos a la Conversions API de Facebook con el action source "physical store".

## Lecciones accionables
- **Descargar e importar el Data Client de Stape:** Ir a `stape.io` → "Data Client Template" → descargar archivo `.tpl` → en server-side GTM: `Templates` → `Client Templates` → `New` → `Import` → seleccionar el `.tpl` → `Save`.
- **Crear el cliente personalizado:** En `Clients` → `New` → `Client Configuration` → seleccionar "Data Client by Stape" → en `Accepted Path Settings` ingresar la ruta exacta (ej. `/webhook`) → nombrar y guardar.
- **Publicar el contenedor antes de probar:** Ir a `Submit` → nombrar versión (ej. "data client added") → `Publish`. El preview mode no funciona con webhooks hasta que el cliente esté publicado.
- **Probar con Postman (mock-up):** Enviar petición POST al endpoint del server container + ruta (ej. `https://tu-subdominio.com/webhook`). Incluir header `X-GTM-Server-Preview` (valor obtenido del preview mode: `...` → `Send Requests Manually`). El header expira cada ~30 minutos.
- **Usar Stape Power-Up para preview persistente:** En Stape → `Power-ups` → `SGTM Preview Header Config` → `Enable` → pegar el header value → `Save`. **Desactivar tras identificar el evento** para no saturar el preview mode.
- **Importar template Facebook Conversions API:** En server container → `Templates` → `Search Gallery` → buscar "Facebook Conversion API template by Stape" → `Add to Workspace`.
- **Configurar tag Facebook Conversions API:**
  - `Event Name`: "inherit from client" (si el evento se llama "purchase") o "override".
  - `Action Source`: seleccionar "physical store".
  - `API Access Token` y `Pixel ID`: obtener de `eventsmanager.facebook.com` → dataset → `Settings` → `Generate access token`.
  - `User Data`: mapear variables de `event data` (ej. `customerinfo.emailaddress`, `customerinfo.first_name`, `customerinfo.last_name`).
  - `Custom Data` → `value`: variable `event data` con path `purchase_details.total_value`.
  - `contents`: usar variable `Array Map` para transformar estructura (ej. `SKU` → `id`, `QTY` → `quantity`, `unit_price` → `item_price`).
- **Crear variable Array Map:** `Variables` → `User-Defined Variables` → `New` → `Variable Configuration` → buscar "Array Map" en gallery → `Input`: variable con el array original (ej. `purchase_details.items`) → `Add Row` por cada campo: `New Name` (ej. `id`) y `Current Name` (ej. `SKU`).
- **Configurar trigger:** `Triggering` → `New` → `Custom` → condiciones: `Client Name` equals `data client` (case-sensitive) AND `Event Name` equals `purchase`. Activar built-in variable `Event Name` si no aparece.
- **Probar con test ID de Facebook:** En Facebook Events Manager → `Test Events` → copiar `Test ID` → pegarlo en el tag de GTM en campo `Test ID` → enviar mock request → verificar que el tag se dispare. **Nota:** Los eventos con action source "physical store" no aparecen en test events; cambiar temporalmente a "website" para validar, luego revertir.
- **Publicar versión final:** Quitar test ID, cambiar action source a "physical store", `Submit` y `Publish`.

## Reglas para agentes
- Usa `Stape Data Client` cuando recibas datos desde un sistema POS o webhook externo que no siga el formato GA4.
- Nunca uses el preview mode sin publicar primero el contenedor con el cliente personalizado; de lo contrario obtendrás error 404.
- Cuando actives el power-up de preview header en Stape, desactívalo inmediatamente después de identificar el evento de prueba para no contaminar el preview mode con tráfico real.
- Siempre mapea los nombres de campos del POS (ej. `SKU`, `QTY`, `unit_price`) a los nombres que espera Facebook (`id`, `quantity`, `item_price`) usando la variable `Array Map`.
- Usa `action source = physical store` para eventos offline; no uses "website" en producción.
- Incluye siempre el header `X-GTM-Server-Preview` solo en pruebas locales con Postman; nunca lo incluyas en peticiones del sistema POS real.

## Errores comunes que evita o menciona
- **Error 404 al enviar webhook:** Ocurre si el contenedor no está publicado con el cliente personalizado. Solución: publicar antes de probar.
- **Petición no visible en preview mode:** Las peticiones de terceros no aparecen por defecto. Solución: usar header de preview o power-up de Stape.
- **Header de preview expira cada 30 minutos:** No es viable para sistemas POS reales. Solución: usar power-up de Stape (pero desactivar tras la prueba).
- **Eventos con action source "physical store" no aparecen en test events de Facebook:** Solución temporal: cambiar a "website" para validar, luego revertir.
- **Firewall o CDN bloqueando peticiones:** Si obtienes error 200 no es problema; si hay error, revisar reglas de firewall o anti-bot en la CDN.
- **Estructura de datos del POS no coincide con Facebook:** No asumir que los nombres de campos son iguales; usar `Array Map` para transformar.