# Track custom events with Google Analytics 4
**Fuente:** AnalyticsMania | https://youtu.be/HyFZhvPZUNM

## Qué enseña
Cómo crear y enviar eventos personalizados (custom events) desde Google Tag Manager a Google Analytics 4 cuando no existe un evento recomendado que se ajuste al caso de uso. Cubre la creación de triggers de visibilidad de elementos, el envío de parámetros personalizados y el registro de dimensiones personalizadas en GA4.

## Lecciones accionables
- Para crear un trigger de visibilidad de elemento en GTM: ir a **Triggers > New > Trigger Configuration > Element Visibility**.
- Si el elemento tiene un **ID**, usar la opción básica de selección: en el campo "Selection Method" elegir **ID** y escribir el valor exacto del ID (ej: `very-important-image`).
- Configurar opciones del trigger: **"Minimum Percent Visible"** = 100%, **"Minimum On-Screen Time"** = 2000 milisegundos, **"Observe for visibility of element"** = "Once per page" para evitar múltiples disparos.
- Habilitar variables de clic en GTM: ir a **Variables > Configure >** activar todos los checkboxes bajo **"Click-related variables"** (especialmente **Click ID**).
- Para crear el tag GA4 Event: **Tags > New > Tag Configuration > Google Analytics > GA4 Event**.
- En el campo **Measurement ID**, usar una variable constante reutilizable: crear **Variables > New > Variable Configuration > Constant**, pegar el Measurement ID de GA4 (obtenido en **GA4 > Admin > Data Streams > Web > copiar Measurement ID**).
- En **Event Name**, escribir un nombre personalizado (ej: `element_appeared`).
- Para enviar parámetros personalizados: en **Event Parameters**, hacer clic en **Add Row**, escribir el nombre del parámetro (ej: `element_id`) y asignar la variable **Click ID** como valor.
- En **Triggering**, seleccionar el trigger de visibilidad creado previamente.
- Para verificar en GA4: ir a **GA4 > Admin > DebugView** y buscar el evento personalizado (ej: `element_appeared`).
- Para que el parámetro personalizado aparezca en reportes: ir a **GA4 > Admin > Custom Definitions > Create Custom Dimension**, asignar **Scope = Event**, en **Event Parameter** escribir exactamente el nombre usado en GTM (ej: `element_id`).
- Publicar cambios en GTM: **Submit >** completar los pasos de publicación. Esperar **24 horas** para que el evento aparezca en **Reports > Engagement > Events** (o **Reports > Examine user behavior > Events**).

## Reglas para agentes
- Usa **Element Visibility trigger** cuando quieras rastrear la aparición de un elemento en pantalla, no uses triggers de clic para esto.
- Siempre habilita **Click-related variables** en GTM antes de usar Click ID para elementos de visibilidad.
- Cuando crees un **Custom Dimension** en GA4, el valor en "Event parameter" debe coincidir EXACTAMENTE (incluyendo mayúsculas/minúsculas y guiones bajos) con el nombre del parámetro definido en el tag de GTM.
- Para e-commerce tracking, usa los nombres de evento exactos de la documentación de Google (purchase, add_to_cart, etc.) — no uses nombres personalizados.
- Nunca registres manualmente el nombre de un evento personalizado en GA4; todos los eventos recibidos aparecen automáticamente en el reporte de eventos después de 24 horas.
- Usa una **variable constante** para el Measurement ID en lugar de escribirlo directamente en cada tag, para facilitar el mantenimiento.

## Errores comunes que evita o menciona
- **No confundir "recommended" con "required"**: los eventos recomendados no son obligatorios excepto para e-commerce, donde los nombres deben seguir la convención exacta.
- **El parámetro personalizado no aparece en reportes si no se registra como Custom Dimension**: aunque el evento se vea en DebugView, el parámetro solo será visible en reportes después de crear la dimensión personalizada y publicar los cambios.
- **Bug visual en GTM Preview**: a veces el tag GA4 Event aparece etiquetado como "Google Tag Manager event" en lugar de "GA4 event tag" — esto no afecta la funcionalidad.
- **Esperar 24 horas** para que los eventos personalizados aparezcan en los reportes estándar de GA4, incluso si ya se ven en DebugView.