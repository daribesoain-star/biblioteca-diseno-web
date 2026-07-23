# How to track thank you pages with Google Analytics 4 (and Google Tag Manager)
**Fuente:** AnalyticsMania | https://youtu.be/cRyQp0azYrg
## Qué enseña (2-3 líneas)
Este video enseña dos métodos para rastrear envíos de formularios que redirigen a una página de agradecimiento (thank you page) en Google Analytics 4: el primero sin Google Tag Manager, usando eventos creados directamente en GA4; el segundo con Google Tag Manager, usando un tag de evento GA4 y un trigger basado en la URL de la página de agradecimiento.
## Lecciones accionables
- **Método 1 (sin GTM):** Verifica que la thank you page genere un page view en GA4 usando la extensión "Google Analytics Debugger" (chrome.google.com/webstore). Actívala, navega a la thank you page, ve a Admin > Debug View en GA4 y confirma que aparezca un page view con la page location correcta.
- **Método 1 (sin GTM):** Crea un evento automático en GA4: Admin > Events > Create event. Nombre del evento: `form_submission`. Condición: `event_name` equals `page_view` AND `page_location` contains `form_status=success` (o el parámetro que identifique tu thank you page). Marca "Copy parameters from the source event" como habilitado. Haz clic en Create.
- **Método 2 (con GTM):** En GTM, crea un trigger nuevo: Trigger Configuration > DOM Ready. Condición: "Some DOM Ready Events" > Page URL contains `form_status=success` (usa `Page URL` en lugar de `Page Path` porque Page URL incluye query parameters; verifica con Preview mode que Page Path no contiene el parámetro pero Page URL sí).
- **Método 2 (con GTM):** Crea un tag nuevo: Tag Configuration > Google Analytics: GA4 Event. Ingresa el Measurement ID (Admin > Data Streams > copia el ID). Nombre del evento: `form_submission`. Triggering: selecciona el trigger DOM Ready creado. Guarda y nombra el tag (ej. "GA4 - Form Submission").
- **Método 2 (con GTM):** Prueba en Preview mode: navega a la thank you page, en Tag Assistant haz clic en "DOM Ready" y verifica que el tag haya disparado. Luego en GA4 Debug View confirma que aparezca el evento `form_submission` con la page location.
- **Publicación:** Una vez probado, ve a GTM > Submit > Publish para que el tracking esté en vivo.
## Reglas para agentes
- Usa `Page URL` (no `Page Path`) como variable en el trigger cuando el identificador de la thank you page esté en un query parameter (ej. `?form_status=success`).
- Usa el trigger "DOM Ready" o "Window Loaded" para el evento de thank you page, no "Initialization", para asegurar que el evento se dispare después de la configuración del Google tag.
- Nunca mezcles eventos creados directamente en GA4 con eventos de GTM para la misma acción (ej. form submission) sin eliminar primero la regla en GA4 para evitar duplicados.
- Siempre verifica con Google Analytics Debugger (extensión) y Debug View de GA4 antes de publicar cambios en GTM.
## Errores comunes que evita o menciona
- **Usar Page Path en lugar de Page URL:** Si el identificador está en un query parameter (ej. `?form_status=success`), Page Path no lo capturará; Page URL sí lo incluye.
- **No verificar el page view en la thank you page:** Si GA4 no carga un page view en esa URL, el método sin GTM no funcionará. Usa Debug View o Real-Time reports para confirmar.
- **No eliminar reglas duplicadas:** Si configuras un evento automático en GA4 y luego otro en GTM para lo mismo, tendrás eventos duplicados. Elimina la regla de GA4 antes de implementar GTM.
- **Publicar sin probar en Preview mode:** Siempre usa el modo de vista previa de GTM y Debug View de GA4 para confirmar que el tag dispara correctamente antes de publicar.