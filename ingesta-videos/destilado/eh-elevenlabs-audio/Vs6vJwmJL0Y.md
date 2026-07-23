# How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial)
**Fuente:** eh-elevenlabs-audio | https://youtu.be/Vs6vJwmJL0Y

## Qué enseña (2-3 líneas)
Este tutorial enseña a generar voces sintéticas realistas con ElevenLabs, cubriendo la selección de modelos (11 Multilingual V2 y 11 V3 Alpha), el uso de audio tags para control expresivo, y la creación de voces personalizadas con Voice Design. También explica cómo ajustar parámetros como velocidad, estabilidad y similitud, y cómo descargar o compartir el audio generado.

## Lecciones accionables
- **Seleccionar modelo de voz:** En el panel izquierdo, haz clic en "Text to Speech". Para contenido expresivo y emocional, usa **11 V3 Alpha** (requiere audio tags). Para voz natural y consistente en 29 idiomas, usa **11 Multilingual V2**. Para velocidad y baja latencia en tiempo real, usa **Flash V2.5**.
- **Ajustar parámetros en Multilingual V2:** Usa los sliders: **Speed** (velocidad), **Stability** (bajo para textos largos, alto para consistencia pero riesgo de monotonía), **Similarity** (dejar en default; subirlo mejora claridad pero causa artefactos), **Style Exaggeration** (mantener en 0 para evitar inestabilidad, velocidad inconsistente o sonidos extra), y activar **Speaker Boost** para mayor similitud (a costa de velocidad de generación).
- **Usar audio tags en 11 V3 Alpha:** Escribe descripciones entre corchetes `[]` antes de la línea de diálogo. Ejemplo: `[laugh] This was great.` → genera la línea con risa. Combina múltiples tags: `[whispering] [slowly] I was this close...`. Los tags se resaltan en púrpura. Usa el botón **Enhance** para que ElevenLabs los añada automáticamente.
- **Crear voz personalizada con Voice Design:** Ve a "Voices" > "Create or clone a voice" > "Voice Design". Escribe un prompt descriptivo con detalles de edad, género, tono, acento, ritmo, emoción y estilo. Ejemplo de prompt usado: *"a calm male narrator"*. Para el preview text, usa frases con audio tags para guiar la entrega: `[thoughtful] Should we have a barbecue? [sigh] I just can't get enough of them. [laugh] I love a good barbecue.` Genera y elige entre 3 opciones. Guarda con nombre, etiqueta y descripción.
- **Descargar y compartir:** Haz clic en el ícono de descarga para obtener un archivo MP3. Usa el botón **Share** para crear un video animado con el texto sincronizado a la voz, descargable al instante.
- **Reutilizar generaciones previas:** Ve a la pestaña **History** junto a Settings para acceder a prompts y audios anteriores, reutilizarlos o descargarlos.

## Reglas para agentes
- Usa **11 V3 Alpha** cuando necesites máxima expresividad y control emocional; usa **11 Multilingual V2** para consistencia y soporte multilingüe (29 idiomas).
- Para textos largos con Multilingual V2, baja el slider de **Stability** para evitar monotonía.
- Mantén **Style Exaggeration** en **0** por defecto para evitar inestabilidad, velocidad inconsistente o sonidos extra.
- En 11 V3 Alpha, siempre rodea las instrucciones de entrega con **corchetes `[]`** (ej. `[angry]`, `[whispering]`) y no las incluyas como texto narrativo dentro del diálogo.
- Para Voice Design, proporciona prompts **descriptivos y granulares** (edad, género, tono, acento, ritmo, emoción, estilo) para resultados precisos; los prompts cortos funcionan solo para voces neutras.
- Selecciona voces de la categoría **"best voices for V3"** cuando uses el modelo 11 V3 Alpha, ya que no todas las voces son compatibles.
- Activa **Speaker Boost** solo cuando la velocidad de generación no sea crítica.

## Errores comunes que evita o menciona
- **No incluir direcciones narrativas en el texto:** Con modelos anteriores, escribir "he said happily" genera la frase completa. En 11 V3, usa audio tags `[happily]` para evitar que las instrucciones se verbalicen.
- **Subir demasiado Similarity:** Puede causar artefactos en el audio; se recomienda dejar el valor por defecto.
- **Subir Style Exaggeration:** Provoca inestabilidad, velocidad inconsistente, malas pronunciaciones o sonidos extra; mantener en 0.
- **Usar voces no optimizadas para V3:** No todas las voces funcionan bien con 11 V3 Alpha; elegir de la categoría "best voices for V3".
- **Prompts vagos en Voice Design:** Prompts poco descriptivos generan resultados imprecisos; incluir detalles como edad, género, tono y acento.