# Understanding Meta Event Parameters
**Fuente:** JonLoomer | https://youtu.be/WpPst_oY_vQ
## Qué enseña (2-3 líneas)
Explica cómo enriquecer los eventos estándar y personalizados del Meta Pixel y Conversions API mediante parámetros adicionales (currency, value, content_name, content_id, etc.). Muestra cómo usar esos parámetros para crear audiencias personalizadas hipergranulares y reportes detallados con Custom Conversions.
## Lecciones accionables
- Al implementar un evento `Purchase`, incluye siempre los parámetros: `currency`, `value`, `content_name` (nombre del producto), `content_id` (ID del producto), `num_items` (número de artículos comprados).
- Para crear una audiencia personalizada de sitio web, selecciona el evento base (ej. `Purchase`) y luego refina por parámetro: elige `content_name` para aislar compras de un producto específico, o `value` para segmentar por monto gastado.
- Usa la opción de "valor agregado" (aggregated value) en audiencias para definir condiciones como: "personas que hicieron al menos X compras", "gasto total mayor a Y", "gasto promedio mayor a Z", o "gasto mínimo mayor a W".
- Para medir calidad de tráfico con eventos personalizados, envía parámetros como: `scroll_depth`, `time_on_page`, `audio_player_played` (número de reproducciones de audio), `youtube_video_played` (ID del video de YouTube incrustado).
- Crea audiencias segmentadas por parámetros de eventos personalizados: "personas que vieron el video de YouTube con ID específico", "personas que reprodujeron el audio al menos 5 veces", "personas que vieron al menos 5 páginas y estuvieron al menos 2 minutos".
- Usa la herramienta gratuita "Pixel Event Generator" en `johnloomer.com/generator`: selecciona el evento, responde preguntas básicas y obtén el código listo para copiar.
## Reglas para agentes
- Siempre incluye parámetros (`currency`, `value`, `content_name`, `content_id`) en eventos `Purchase` para habilitar segmentación granular.
- Cuando crees una audiencia personalizada, refina por parámetro específico (ej. `content_name`) en lugar de usar solo el evento base.
- Usa "aggregated value" en audiencias solo cuando necesites condiciones numéricas acumulativas (número de compras, gasto total, promedio, mínimo).
- Para eventos personalizados de calidad de tráfico, envía siempre `scroll_depth`, `time_on_page` y `youtube_video_played` como parámetros.
- Nunca uses un evento sin parámetros si planeas crear audiencias segmentadas o reportes detallados con Custom Conversions.
## Errores comunes que evita o menciona
- Enviar solo el evento `Purchase` sin parámetros como `currency` y `value`, lo que impide segmentar por monto o producto específico.
- Crear audiencias basadas únicamente en el evento genérico (ej. todos los `Purchase`) sin refinar por parámetro, perdiendo granularidad.
- No incluir parámetros de calidad (scroll depth, time on page) en eventos personalizados de tráfico, imposibilitando segmentar por comportamiento detallado.
- Ignorar la opción de "valor agregado" (aggregated value) en audiencias, que permite condiciones como "gasto total > $100" o "más de 3 compras".