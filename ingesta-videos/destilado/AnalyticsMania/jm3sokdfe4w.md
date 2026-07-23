# Track conversions with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/jm3sokdfe4w

## Qué enseña
Cómo configurar el seguimiento de conversiones (eventos clave) en Google Tag Manager para formularios, usando Google Analytics 4. Explica el proceso completo: inspección del comportamiento del formulario, creación de triggers basados en URL de agradecimiento, envío del evento GA4 y registro del evento como clave en la interfaz de GA4.

## Lecciones accionables
- Para rastrear un formulario que redirige a una página de agradecimiento, usa un trigger de tipo "Page View" con condición `Page Path` contiene o es igual a `/thank-you/` (o la URL exacta de la página de destino).
- Activa el modo de vista previa de GTM: haz clic en "Preview", pega la URL de la página del formulario y conéctate. Luego envía el formulario para verificar el comportamiento post-envío.
- En el modo vista previa, selecciona "Container Loaded" en la página de agradecimiento y revisa la variable `Page Path` para confirmar el valor exacto.
- Crea un trigger nuevo: `Triggers > New > Trigger Configuration > Page View`, elige "Some Page Views", condición `Page Path` equals (o contains) el valor exacto de la página de agradecimiento.
- Crea una etiqueta nueva: `Tags > New > Tag Configuration > Google Analytics > GA4 Event`. Ingresa el Measurement ID (desde GA4: Admin > Data Streams > tu stream web). Usa el nombre de evento `generate_lead` (recomendado) o `form_submission`, `newsletter_signup`.
- Opcional: si hay múltiples formularios, añade un parámetro de evento como `form_id` y usa una variable para su valor.
- Asigna el trigger de página de agradecimiento a la etiqueta GA4 Event.
- Prueba en vista previa: envía el formulario, verifica que la etiqueta se dispare en "Container Loaded" de la página de agradecimiento.
- Verifica recepción en GA4: ve a `Admin > Data Display > Debug View`. Busca el evento; debe aparecer con icono azul (evento regular) inicialmente.
- Convierte a evento clave: en GA4, `Admin > Key Events > New Key Event`, ingresa exactamente el nombre del evento usado (ej. `newsletter_signup`). Hazlo inmediatamente para que los datos nuevos se marquen como clave; los datos históricos no se corregirán.
- Publica los cambios en GTM: `Submit > Publish` para activar el seguimiento para todos los visitantes.
- Para evitar duplicados por recarga de página: almacena temporalmente una cookie en el navegador del visitante al llegar a la página de agradecimiento. En visitas posteriores, verifica si la cookie existe; si es así, no dispares la etiqueta GA4 Event.

## Reglas para agentes
- Usa `Page Path` contains o equals para activar el trigger solo en la URL exacta de la página de agradecimiento.
- Nunca uses nombres de evento genéricos como "conversion" o "event"; usa nombres semánticos como `generate_lead`, `form_submission` o `newsletter_signup`.
- Cuando crees un evento clave en GA4, ingresa el nombre del evento EXACTAMENTE como lo enviaste desde GTM (coincidencia exacta, sensible a mayúsculas/minúsculas).
- Si el formulario no redirige ni recarga la página (muestra mensaje de éxito en la misma URL), NO uses trigger de Page View; investiga métodos alternativos (eventos personalizados, listeners de formulario).
- Siempre verifica en Debug View de GA4 que el evento llegue antes de marcarlo como clave; espera 5-10 minutos si hay retrasos.
- Para herramientas distintas a GA4 (ej. Google Ads): primero crea la conversión en la herramienta externa (obtén conversion ID y etiqueta), luego configura la etiqueta en GTM siguiendo las instrucciones específicas de esa herramienta.

## Errores comunes que evita o menciona
- **Error de vista previa de GTM**: a veces muestra "unknown tag type errors" falsos; no es un problema real, la etiqueta probablemente se disparó correctamente. El error suele desaparecer en horas o al día siguiente.
- **No marcar el evento como clave a tiempo**: si registras un evento clave después de una semana, los datos históricos no se convertirán retroactivamente. El evento solo se marca como clave desde el momento en que se crea en GA4.
- **Duplicados por recarga de página**: si un visitante recarga la página de agradecimiento, el evento se disparará de nuevo. Solución: usar cookies temporales para evitar disparos múltiples.
- **Confundir "conversion" con "key event"**: en GA4, "key event" es el término actual para lo que antes se llamaba "conversion". Si el evento clave se importa a Google Ads, entonces sí se convierte en conversión en ese contexto.
- **No inspeccionar el comportamiento real del formulario**: cada formulario puede comportarse diferente (redirección, recarga, mensaje en página). No asumas; usa el modo vista previa para verificar.