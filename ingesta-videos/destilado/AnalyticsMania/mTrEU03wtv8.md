# Button click tracking with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/mTrEU03wtv8

## Qué enseña (2-3 líneas)
Este tutorial enseña dos métodos para rastrear clics en botones usando Google Tag Manager y Google Analytics 4, diferenciando entre botones codificados como `<button>` y enlaces disfrazados de botón (etiqueta `<a>`). Explica cómo configurar triggers de clic, enviar parámetros a GA4 y crear un reporte básico en Explorations.

## Lecciones accionables
- **Habilitar variables de clic en GTM:** Ve a "Variables" → "Variables integradas" → "Configurar" → activa todas las variables relacionadas con clics (Click Element, Click Classes, Click ID, Click Target, Click Text, Click URL).
- **Crear trigger para botón tipo enlace (etiqueta `<a>`):** Ve a "Triggers" → "Nuevo" → "Configuración de trigger" → selecciona "Solo enlaces" → nombra "All Link Clicks" → guarda.
- **Crear trigger para botón tipo `<button>`:** Ve a "Triggers" → "Nuevo" → "Configuración de trigger" → selecciona "Todos los elementos" → nombra "All Element Clicks" → guarda.
- **Probar triggers con Preview Mode:** Haz clic en "Previsualizar" → ingresa la URL de la página → haz clic en el botón → en la vista previa verifica que aparezca el evento "Link Click" o "Click".
- **Crear tag GA4 para botón enlace:** Ve a "Tags" → "Nuevo" → "Configuración de tag" → "Google Analytics: evento GA4" → pega el "Measurement ID" (Admin → Data Streams → copia el ID) → nombre del evento: `button_click` → "Parámetros de evento" → añade:
  - `link_url` = `{{Click URL}}`
  - `link_text` = `{{Click Text}}`
  - `link_id` = `{{Click ID}}`
- **Refinar trigger para botón enlace específico:** Edita el trigger "All Link Clicks" → cambia a "Algunos clics en enlaces" → condición: `{{Click ID}}` contiene `link_button` (o el ID exacto del botón).
- **Crear tag GA4 para botón `<button>`:** Duplica el tag anterior → renómbralo → elimina el parámetro `link_url` (los botones no tienen URL) → en "Disparo" quita el trigger de enlaces y añade el trigger "All Element Clicks" refinado con `{{Click ID}}` igual al ID del botón.
- **Refinar trigger para botón `<button>` específico:** Edita el trigger "All Element Clicks" → cambia a "Algunos clics" → condición: `{{Click ID}}` igual al valor exacto del ID del botón (ej: `submit-button`).
- **Verificar datos en GA4 DebugView:** Ve a Google Analytics → "Admin" → "DebugView" → haz clic en el botón → confirma que aparezca el evento con los parámetros `link_id`, `link_text`, `link_url`.
- **Publicar cambios en GTM:** Ve a "Enviar" → nombre de versión: `Button click tracking` → "Publicar".
- **Crear reporte en Explorations:** En GA4 → "Explorar" → "Exploración en blanco" → en "Dimensiones" añade `link_text` y `event_name` → en "Métricas" añade `event_count` → filtra por `event_name` exactamente igual a `button_click` → selecciona período de tiempo (ej: últimos 12 meses) → aplica.

## Reglas para agentes
- Usa el trigger "Solo enlaces" cuando el botón esté codificado con la etiqueta `<a>` (enlace).
- Usa el trigger "Todos los elementos" cuando el botón esté codificado con la etiqueta `<button>`.
- Siempre habilita todas las variables de clic en "Variables integradas" antes de crear triggers de clic.
- Nunca uses el trigger "Solo enlaces" para botones `<button>` porque no generará eventos de clic.
- Siempre refina los triggers con condiciones específicas (ID, clase, texto) para evitar rastrear clics no deseados.
- Espera al menos 24-48 horas después de publicar para ver datos en reportes estándar de GA4.
- Usa DebugView de GA4 para verificar en tiempo real que los parámetros se estén enviando correctamente.

## Errores comunes que evita o menciona
- **No confundir tipos de botones:** Los botones `<a>` (enlaces) requieren trigger "Solo enlaces"; los `<button>` requieren "Todos los elementos". Usar el trigger incorrecto no capturará los clics.
- **No olvidar habilitar variables de clic:** Si no se activan en "Variables integradas", los triggers no tendrán datos para evaluar condiciones.
- **No usar triggers genéricos sin refinar:** Usar "Todos los clics en enlaces" o "Todos los elementos" sin condiciones capturará todos los clics del sitio, lo que puede saturar los datos y consumir cuotas de GA4.
- **No verificar en DebugView:** Publicar sin probar en DebugView puede resultar en eventos mal configurados que no se registran correctamente.
- **No esperar el tiempo de procesamiento:** Los datos de eventos personalizados pueden tardar 24-48 horas en aparecer en reportes estándar y Explorations de GA4.
- **No usar selectores CSS cuando faltan ID o clases:** Si el botón no tiene ID ni clases, se necesitan selectores CSS avanzados para refinar el trigger (cubierto en cursos intermedios/avanzados).