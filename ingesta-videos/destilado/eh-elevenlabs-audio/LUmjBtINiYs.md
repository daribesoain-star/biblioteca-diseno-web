# 4 Elevenlabs Voice Tips in 3 Minutes (add pauses, emotions & dubbing)
**Fuente:** eh-elevenlabs-audio | https://youtu.be/LUmjBtINiYs

## Qué enseña (2-3 líneas)
El video explica cómo agregar pausas naturales, emociones precisas y traducción de voz (dubbing) en ElevenLabs. También cubre ajustes avanzados de estabilidad y exageración para refinar el tono de las voces generadas por IA.

## Lecciones accionables
- **Para pausas naturales:** Usa el código `<break time="X.Xs"/>` (ejemplo: `<break time="1.5s"/>`) en lugar de puntos, guiones o comas. Cambia el valor numérico para controlar la duración exacta de la pausa en segundos.
- **Para emociones:** Escribe las oraciones como si estuvieras escribiendo un libro. Añade descripciones de emoción al final de la línea, por ejemplo:
  - `"That is funny"` → `"That is funny"` (sin emoción) vs. `"That is funny"` + añadir al final: `"she said sarcastically"` → resultado: "That is funny" dicho con sarcasmo.
  - Para enojo: `"Are you sure about that"` + añadir al final: `"he said angrily"`.
  - Después de generar el audio, edita y recorta la última parte (la descripción de emoción) del archivo de voz.
- **Para dubbing (traducción de voz):** Ve a la sección "Studio" en ElevenLabs, haz clic en "Add a video", selecciona el idioma de destino (elige entre los idiomas disponibles en la lista). ElevenLabs traduce la voz del video (no los subtítulos) al idioma seleccionado.
- **Ajustes avanzados de voz:** Haz clic en "Advanced" (arriba). Ajusta:
  - **Stability:** de 50% a 100% (controla consistencia tonal).
  - **Style Exaggeration:** de 0% a 50% (controla intensidad emocional).
  - Úsalos para obtener variaciones sutiles en la voz generada.

## Reglas para agentes
- Usa `<break time="X.Xs"/>` cuando necesites una pausa entre oraciones; nunca uses puntos, guiones o comas para simular pausas.
- Cuando quieras una emoción específica, añade una frase descriptiva al final del texto (ej. "she said sarcastically", "he said angrily") y recorta esa parte del audio después de generarlo.
- Para traducir un video a otro idioma, usa la función "Studio" > "Add a video" y selecciona el idioma de destino; no traduzcas solo los subtítulos.
- Ajusta Stability entre 50%-100% y Style Exaggeration entre 0%-50% solo cuando necesites refinar el tono emocional de la voz generada.

## Errores comunes que evita o menciona
- **Usar puntos, guiones o comas para crear pausas:** genera pausas antinaturales o cambios de tono extraños alrededor de la pausa.
- **No escribir las emociones como en un libro:** la voz generada suena plana y sin la emoción deseada (ej. "that is funny" sin contexto suena neutro).
- **No recortar la descripción de emoción del audio final:** deja frases como "she said sarcastically" audibles en el producto terminado.
- **Ignorar los ajustes avanzados (Stability y Style Exaggeration):** limita la capacidad de ajustar finamente la emoción de la voz.