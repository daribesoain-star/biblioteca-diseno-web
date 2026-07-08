# How I turn Real People into Plastic, Stone, or Metal with AI.
**Fuente:** nextmindrevolution | https://youtu.be/dp_iM9B7g1M
## Qué enseña (2-3 líneas)
Enseña un flujo para transformar personas reales en personajes de plástico inflado, metal, mármol o zombie usando IA generativa.
La técnica combina capturas del primer frame de cada escena, generación de imágenes con referencia y conversión de video usando esas imágenes como guía visual.

## Lecciones accionables
- Usa un video fuente: puede ser una película, serie, video propio o footage libre.
- Para evitar problemas de copyright, el autor usa raw footage gratuito.
- Identifica cada corte del video y extrae una captura del primer frame de cada escena.
- Puedes tomar capturas reproduciendo el video en la computadora, pero el autor recomienda hacerlo en un editor porque permite avanzar frame por frame.
- Editores mencionados: Premiere, DaVinci Resolve y CapCut.
- En DaVinci Resolve:
  - Ve al frame inicial de la escena.
  - Entra a la página `Color`.
  - Haz clic derecho sobre el frame.
  - Elige `Grab Still`.
  - Ve a la galería.
  - Haz clic derecho sobre el still.
  - Exporta la imagen al computador.
  - Repite el proceso cada vez que haya un corte.
- Asegúrate de tener todos los frames distintos antes de pasar a la IA.
- Generador de imagen usado: Freepik.
- Modelo usado para imagen: `Nano Banana Pro`.
- Sube cada primer frame como referencia, uno por uno.
- Prompt base para el efecto principal: `3D plastic glossy blown up balloon character`.
- Si la IA cambia el fondo, añade este prompt exacto: `keep the background unchanged`.
- Mantén el aspect ratio original del frame: `16:9`.
- Resolución usada para imagen: `1K`, porque genera más rápido.
- Repite el mismo prompt para cada frame de referencia.
- Revisa si la IA está modificando elementos no deseados, como micrófonos, fondo u objetos del entorno.
- Si solo quieres transformar personas, ajusta el prompt para pedir que mantenga el fondo y objetos sin cambios.
- Después de generar las imágenes transformadas, pasa al generador de video.
- Modelo de video recomendado: `Kling/Cling Omni 1` dentro de Freepik, filtrando por proveedor `Cling/Kling`.
- El autor menciona que se puede usar `3.0` o `01`, pero prefiere el modelo más nuevo porque da mejores resultados.
- Para la conversión de video necesitas tres elementos:
  - El video original como referencia.
  - Las imágenes generadas como referencias visuales.
  - Un prompt que indique cómo transferir movimiento y detalle.
- Sube el video original como referencia.
- Añade las imágenes generadas como referencias.
- Ajusta la duración exacta del clip: el ejemplo usa un video de poco menos de 7 segundos.
- Límite mencionado para Omni 1 versión 3: hasta `15 seconds`.
- Configuración usada en video: `1080p`, `16:9`.
- Prompt exacto usado para el video: `turn the motion and detail mouth movement of the video to the setting of the images`.
- Plantilla recomendada para Kling/Cling: `turn the something of the video to the setting of and then something else`.
- Para videos de 1 minuto o más:
  - Vuelve al editor.
  - Corta la secuencia en partes de máximo 15 segundos.
  - Extrae stills para cada parte.
  - Repite el proceso de imagen y video por cada segmento.
  - Une los clips finales en el editor.
  - Exporta el video largo completo.
- Variaciones de prompt demostradas:
  - `convert the person into a copper material character`
  - `convert the person into a stone marble character`
  - `Convert the person into a realistic zombie character`

## Reglas para agentes
- Usa capturas del primer frame de cada escena cuando el video tenga cortes.
- Usa un editor con avance frame by frame cuando necesites precisión.
- Usa `Grab Still` en la página `Color` de DaVinci Resolve para extraer frames limpios.
- Usa cada still como imagen de referencia antes de generar la versión transformada.
- Usa siempre el mismo prompt visual en todos los frames si necesitas consistencia entre escenas.
- Usa `keep the background unchanged` cuando el fondo no deba cambiar.
- Usa `16:9` si el video original está en formato horizontal estándar.
- Usa `1K` para pruebas rápidas de imagen.
- Usa el video original como referencia de movimiento en el generador de video.
- Usa las imágenes generadas como referencias de estilo/material/personaje.
- Usa `turn the motion and detail mouth movement of the video to the setting of the images` para transferir movimiento y sincronía facial hacia el look de las imágenes.
- Divide cualquier video largo en segmentos de máximo 15 segundos cuando el modelo no acepte más duración.
- Une los segmentos finales en un editor después de procesarlos.
- Verifica que la IA no haya transformado objetos secundarios si solo se pidió cambiar a la persona.
- Nunca proceses un video largo de una sola vez si el modelo tiene límite de 15 segundos.
- Nunca asumas que el fondo se mantendrá igual si el prompt no lo especifica.

## Errores comunes que evita o menciona
- Usar material con riesgo de strikes de YouTube en vez de footage libre.
- No capturar el primer frame de cada escena cuando hay cortes.
- Intentar hacer el proceso sin separar escenas, lo que reduce consistencia.
- Dejar que la IA cambie el fondo sin pedir `keep the background unchanged`.
- No revisar si la IA también transformó objetos como micrófonos o elementos del set.
- Elegir una duración incorrecta en el generador de video.
- Intentar procesar clips de más de 15 segundos cuando el modelo no lo permite.
- No reconstruir el video largo en el editor después de generar segmentos separados.
- Usar prompts demasiado vagos en Kling/Cling, donde ciertas funciones responden mejor a plantillas específicas.