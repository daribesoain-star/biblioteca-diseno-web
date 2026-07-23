# This Runway AI Tool Fixes the #1 Problem with AI Videos (Runway Gen-4 References Full Tutorial)
**Fuente:** Justin Serran | https://youtu.be/5zYUNcyRcUc

## Qué enseña (2-3 líneas)
Este tutorial explica cómo usar la nueva función "References" de Runway Gen-4 para generar videos con personajes consistentes, evitando caras aleatorias o rerenders fallidos. El flujo actual es un proceso de dos pasos: primero generar una imagen consistente con referencias (text-to-image), y luego animarla con la herramienta image-to-video. También cubre el etiquetado de referencias múltiples para combinar personaje y locación.

## Técnicas accionables
- **Modelo usado:** Runway Gen-4 (solo la función References funciona dentro de text-to-image, no directamente en text-to-video).
- **Paso 1 – Generar imagen consistente:** Ve a la pestaña "Text to Image" y haz clic en "References". Selecciona dimensiones de salida (output dimensions) y usa el slider "Aesthetic Range" para controlar la variación de estilo entre las 4 imágenes generadas.
- **Subir referencias:** Hasta 3 imágenes frontales, con iluminación uniforme, sin sombras fuertes, sin gafas de sol, sin fondos recargados. Mantén las imágenes limpias y enfocadas.
- **Estructura de prompt para imagen (VERBATIM):** "A cinematic portrait of a woman wearing a red jacket standing in a foggy forest. Dramatic sidelighting, shallow depth of field." La IA funciona mejor cuando la imagen de referencia y el prompt hablan el mismo lenguaje visual.
- **Paso 2 – Animar (image-to-video):** Usa la herramienta de image-to-video. El prompt debe describir movimiento, no solo estética. Ejemplo (VERBATIM): "Camera slowly pushing in as she turns her head slightly and fog swirls in the background."
- **Truco de consistencia con etiquetas:** Sube una referencia de locación y otra de modelo. Etiquétalas (ej. "model 2", "location 2") y luego escribe en el prompt: "show me at model 2 in location 2". Esto genera una imagen personalizada que luego puedes animar con el mismo flujo.
- **Consejos de cámara/movimiento:** Piensa como un cinematógrafo, no solo como un prompt engineer. Usa lenguaje direccional: "camera slowly pushing in", "turns her head slightly", "fog swirls".
- **Consistencia entre tomas múltiples:** Genera todas las imágenes fijas primero (stills), luego anímalas una por una para mantener el personaje consistente entre cortes.

## Reglas para el erudito
- Usa imágenes de referencia sin estilizar, mantenlas naturales.
- Usa vestimenta e iluminación consistentes en todas las subidas para mejores resultados.
- Cuando planees una secuencia de múltiples tomas, genera todos los stills primero y luego anímalos uno por uno.
- Alinea siempre el prompt descriptivo con la imagen de referencia; ambos deben hablar el mismo lenguaje visual.
- Etiqueta las referencias (modelo y locación) y usa esas etiquetas en el prompt para combinaciones personalizadas.

## Errores comunes / limitaciones que menciona
- Runway Gen-4 no es perfecto: su movimiento tiende a ser más "artístico" que preciso, a veces flotante o abstracto, comparado con herramientas como Pika que producen movimiento más firme y realista.
- La función References solo funciona dentro de text-to-image por ahora; no se puede alimentar un prompt y referencia directamente para obtener un video completo. Es un proceso de dos pasos.
- Tres de cada cuatro imágenes generadas pueden verse "bastante malas" si el prompt no está alineado con la referencia; el problema suele ser el prompt.
- Runway ha confirmado que References se expandirá a flujos completos de text-to-video, pero aún no está disponible.