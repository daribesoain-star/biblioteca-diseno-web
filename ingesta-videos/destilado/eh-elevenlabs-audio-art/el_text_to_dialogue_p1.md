# el_text_to_dialogue
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/overview/capabilities/text-to-dialogue

## Qué enseña
La API Text to Dialogue de ElevenLabs genera diálogo expresivo y natural a partir de texto usando el modelo Eleven v3. Permite crear conversaciones con múltiples hablantes, controlar la emoción mediante etiquetas de audio y seleccionar entre miles de voces en 70+ idiomas para aplicaciones como videojuegos, podcasts y audiolibros.

## Lecciones accionables
- **Endpoint principal:** `POST /docs/api-reference/text-to-dialogue/convert`
- **Modelo obligatorio:** Eleven v3 (único modelo compatible)
- **Límite de caracteres:** Mantener la suma total de todos los `inputs[].text` en **≤ 2,000 caracteres por solicitud**. Dividir textos más largos en fragmentos y concatenar el audio resultante.
- **Número de hablantes:** Sin límite máximo de hablantes por diálogo.
- **Parámetro de determinismo:** Usar `seed` (parámetro opcional) para resultados más consistentes, aunque pueden ocurrir diferencias sutiles.
- **Formatos de respuesta disponibles:**
  - **MP3:** Sample rates 22.05kHz - 44.1kHz | Bitrates 32kbps - 192kbps (22.05kHz@32kbps, 44.1kHz@32/64/96/128/192kbps)
  - **PCM (S16LE):** Sample rates 16kHz - 48kHz | Profundidad 16-bit
  - **μ-law:** 8kHz sample rate (optimizado para telefonía)
  - **A-law:** 8kHz sample rate (optimizado para telefonía)
  - **Opus:** 48kHz sample rate | Bitrates 32kbps - 192kbps
- **Calidad de audio:** Opciones de mayor calidad solo disponibles en planes pagos.
- **Etiquetas de audio (audio tags):** Insertar entre corchetes `[]` en el texto del turno correspondiente. No son un parámetro enum, son instrucciones en lenguaje natural.
  - **Emociones y entregas:** `[sad]`, `[laughing]`, `[whispering]`, `[giggling]`, `[groaning]`, `[sigh]`, `[cautiously]`, `[jumping in]`, `[cheerfully]`, `[indecisive]`, `[quizzically]`, `[elated]`, `[laughs]`
  - **Eventos de audio:** `[leaves rustling]`, `[gentle footsteps]`, `[applause]`
  - **Dirección general:** `[football]`, `[wrestling match]`, `[auctioneer]`
- **Puntuación para flujo:** Usar guiones para interrupciones (`"Hello, is this seat-" "[jumping in] Free?"`) y puntos suspensivos para frases que se desvanecen (`"I want uhhh..."`).
- **Idiomas soportados:** 70+ incluyendo afrikáans, árabe, armenio, bengalí, chino mandarín, coreano, español, francés, hindi, inglés, italiano, japonés, portugués, ruso y muchos más.
- **Regeneraciones gratuitas:** Hasta 2 regeneraciones gratuitas por generación (solo en el dashboard de ElevenLabs, mismo contenido exacto y mismos parámetros).
- **Precios:** Consultar https://elevenlabs.io/pricing/api para detalles de precios por API.

## Reglas para agentes
- Usa el modelo Eleven v3 exclusivamente para Text to Dialogue; no uses otros modelos.
- Mantén la suma total de `inputs[].text` ≤ 2,000 caracteres por solicitud; si el texto es más largo, divídelo en fragmentos y concatena el audio resultante externamente.
- Inserta etiquetas de audio entre corchetes `[]` dentro del texto del turno que deben afectar, no como parámetro separado.
- Usa el parámetro `seed` cuando necesites resultados más consistentes, pero no garantices determinismo absoluto.
- No uses Text to Dialogue para aplicaciones en tiempo real como agentes conversacionales; genera múltiples versiones y permite al usuario seleccionar la mejor.
- Para uso comercial, verifica que el usuario tenga un plan pago; sin plan pago, solo uso no comercial.
- Para regeneraciones gratuitas, confirma que el contenido sea exactamente el mismo (texto, voz y parámetros idénticos) y que se realice desde el dashboard, no desde la API.

## Errores comunes que evita o menciona
- **No usar Text to Dialogue en tiempo real:** La herramienta no está diseñada para agentes conversacionales; pueden requerirse múltiples generaciones para obtener el resultado deseado.
- **No exceder 2,000 caracteres por solicitud:** Superar este límite puede causar generaciones poco fiables; dividir el texto en fragmentos más pequeños.
- **No asumir determinismo:** El modelo es no determinista; usar el parámetro `seed` ayuda pero no elimina completamente las variaciones sutiles.
- **No confundir etiquetas de audio con parámetros enum:** Las etiquetas son instrucciones en lenguaje natural dentro del texto, no una lista cerrada de valores.
- **No asumir regeneraciones ilimitadas:** Solo 2 regeneraciones gratuitas por generación, solo en el dashboard, solo con el mismo contenido exacto.
- **No asumir derechos comerciales sin plan pago:** La propiedad del audio generado es del usuario, pero los derechos de uso comercial requieren un plan de pago.