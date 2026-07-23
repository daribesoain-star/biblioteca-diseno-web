# el_tts_best_practices
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/overview/capabilities/text-to-speech/best-practices
## Qué enseña (2-3 líneas)
Guía completa para optimizar la salida de texto a voz con ElevenLabs, cubriendo control de pausas, pronunciación precisa (IPA, CMU Arpabet, alias), emociones, ritmo, normalización de texto y técnicas avanzadas de prompting para el modelo Eleven v3, incluyendo etiquetas de audio y diálogo multi-locutor.

## Lecciones accionables
- **Pausas con Eleven v3:** No soporta `<break>` SSML. Usar puntos suspensivos (`...`) para pausas y tono vacilante, o guiones (`-` o `--`) para pausas cortas. Ejemplo: `"It… well, it might work."` o `"Wait — what's that noise?"`.
- **Pausas con modelos v2:** Usar `<break time="x.xs" />` para pausas naturales de hasta 3 segundos. Ejemplo: `"Hold on, let me think." <break time="1.5s" /> "Alright, I've got it."`. No abusar: demasiadas etiquetas break pueden causar inestabilidad, aceleración o artefactos.
- **Pronunciación con IPA en Eleven v3 (modelo `eleven_v3`):** Encerrar la transcripción IPA entre barras inclinadas (`/`) directamente en el texto. Soporta 70+ idiomas. Precisión del 80-90%. Incluir marcadores de acento primario (`ˈ`) y secundario (`ˌ`). Ejemplo en API:
  ```python
  text='The term "/ˌbaɪoʊˈkemɪstri/" refers to the study of chemical processes.'
  ```
  Endpoint: `POST https://api.elevenlabs.io/v1/text-to-speech/{voice_id}` con `model_id="eleven_v3"`.
- **Pronunciación con etiquetas de fonemas en v2:** Solo compatible con `eleven_flash_v2`. Usar `<phoneme alphabet="cmu-arpabet" ph="M AE1 D IH0 S AH0 N">Madison</phoneme>` (recomendado) o `<phoneme alphabet="ipa" ph="ˈæktʃuəli">actually</phoneme>`. Funcionan solo para palabras individuales.
- **Etiquetas de alias:** Para modelos sin soporte de fonemas (ej. Multilingual v2). Ejemplo: `<lexeme><grapheme>Claughton</grapheme><alias>Cloffton</alias></lexeme>`. También para acrónimos: `<lexeme><grapheme>UN</grapheme><alias>United Nations</alias></lexeme>`.
- **Diccionarios de pronunciación:** Subir archivo `.pls` o `.txt` en proyectos de ElevenCreative Studio o Dubbing Studio. Formato PLS con etiquetas `<phoneme>` o `<alias>`. Búsqueda sensible a mayúsculas. Solo se usa la primera coincidencia. Herramientas para generarlos: Sequitur G2P, Phonetisaurus, eSpeak, CMU Pronouncing Dictionary.
- **Control de emociones:** Usar contexto narrativo o etiquetas de diálogo explícitas. Ejemplo: `"You're leaving?" she asked, her voice trembling with sadness.` Las etiquetas se leerán en voz alta; eliminarlas en post-producción si es necesario.
- **Control de ritmo (speed):** Ajuste disponible en API, web, ElevenCreative Studio y Agents Platform. Rango: `0.7` (mínimo) a `1.2` (máximo). Valor por defecto `1.0`. Valores extremos pueden afectar calidad.
- **Normalización de texto:** Activada por defecto. Modelos grandes (Multilingual v2) leen mejor números y fechas que modelos pequeños (Flash v2.5). Para mitigar: usar modelo entrenado o añadir instrucciones de normalización en el prompt del LLM.
- **Prompt de normalización para LLM (texto completo):**
  ```text
  Convert the output text into a format suitable for text-to-speech. Ensure that numbers, symbols, and abbreviations are expanded for clarity when read aloud. Expand all abbreviations to their full spoken forms. Example input and output: "$42.50" → "forty-two dollars and fifty cents" "£1,001.32" → "one thousand and one pounds and thirty-two pence" "1234" → "one thousand two hundred thirty-four" "3.14" → "three point one four" "555-555-5555" → "five five five, five five five, five five five five" "2nd" → "second" "XIV" → "fourteen" - unless it's a title, then it's "the fourteenth" "3.5" → "three point five" "⅔" → "two-thirds" "Dr." → "Doctor" "Ave." → "Avenue" "St." → "Street" (but saints like "St. Patrick" should remain) "Ctrl + Z" → "control z" "100km" → "one hundred kilometers" "100%" → "one hundred percent" "elevenlabs.io/docs" → "eleven labs dot io slash docs" "2024-01-01" → "January first, two-thousand twenty-four" "123 Main St, Anytown, USA" → "one two three Main Street, Anytown, United States of America" "14:30" → "two thirty PM" "01/02/2023" → "January second, two-thousand twenty-three" or "the first of February, two-thousand twenty-three", depending on locale of the user
  ```
- **Etiquetas de audio en Eleven v3:** Controlan entrega vocal y efectos. Lista no exhaustiva:
  - Voz: `[laughs]`, `[laughs harder]`, `[starts laughing]`, `[wheezing]`, `[whispers]`, `[sighs]`, `[exhales]`, `[sarcastic]`, `[curious]`, `[excited]`, `[crying]`, `[snorts]`, `[mischievously]`
  - Efectos: `[gunshot]`, `[applause]`, `[clapping]`, `[explosion]`, `[swallows]`, `[gulps]`
  - Experimentales: `[strong X accent]` (reemplazar X), `[sings]`, `[woo]`, `[fart]`
- **Ajuste Stability en v3:** Controla adherencia al audio de referencia. Tres modos:
  - **Creative:** Más emocional y expresivo, propenso a alucinaciones.
  - **Natural:** Equilibrado, más cercano a la grabación original.
  - **Robust:** Muy estable, consistente como v2, pero menos receptivo a etiquetas direccionales.
- **Diálogo multi-locutor en v3:** Asignar voces distintas de la biblioteca. Usar `Speaker 1: [excitedly] ...` y `Speaker 2: [curiously] ...`. Ejemplo completo en documentación.
- **Botón "Enhance" en UI:** Usa un LLM con prompt específico para añadir etiquetas de audio automáticamente. El prompt interno está documentado en el artículo (no reproducido aquí por extensión, pero disponible en la fuente).
- **Preprocesamiento con regex:** Código Python/TypeScript provisto para normalizar monedas y números de teléfono usando las librerías `inflect` (Python) o `number-to-words` (TypeScript).

## Reglas para agentes
- Usa `eleven_v3` para IPA nativo; no uses etiquetas SSML `<break>` con v3.
- Usa `<break time="x.xs" />` solo con modelos v2, máximo 3 segundos; no abuses para evitar inestabilidad.
- Para pronunciación en v2, usa CMU Arpabet en lugar de IPA siempre que sea posible (más fiable).
- En etiquetas de fonemas, incluye siempre los marcadores de acento (`ˈ` para primario, `ˌ` para secundario) en palabras multi-sílaba.
- En diccionarios de pronunciación, recuerda que la búsqueda es sensible a mayúsculas y solo se usa la primera coincidencia.
- Para emociones, usa etiquetas de diálogo explícitas (ej. `"she said sadly"`) en lugar de solo contexto; elimínalas en post-producción si molestan.
- Ajusta el speed entre 0.7 y 1.2; valores fuera de ese rango degradan calidad.
- Para normalización, prefiere el modelo Multilingual v2 sobre Flash v2.5 si la latencia no es crítica.
- En prompts de LLM para TTS, incluye instrucciones explícitas de normalización con ejemplos concretos.
- En v3, elige una voz que coincida con la entrega deseada (ej. no uses voz susurrante para etiqueta `[shout]`).
- Para máxima expresividad con etiquetas de audio en v3, usa Stability en modo Creative o Natural; Robust reduce la respuesta a etiquetas.
- No uses etiquetas de audio no auditivas como `[standing]`, `[grinning]`, `[pacing]`, `[music]`.
- No inventes líneas de diálogo nuevas al añadir etiquetas de audio; solo prepéndelas o pospónelas.
- Para voces profesionales (PVC), no uses Eleven v3 durante la vista previa de investigación; prefiere Instant Voice Clone (IVC) o voces diseñadas.

## Errores comunes que evita o menciona
- **Pausas inconsistentes:** Asegurar sintaxis correcta `<break time="x.xs" />` para pausas en v2; en v3 no usar break tags.
- **Demasiadas etiquetas break:** Causan inestabilidad, aceleración o artefactos de audio.
- **Errores de pronunciación:** Usar CMU Arpabet o IPA para precisión; verificar transcripción IPA con diccionario.
- **Falta de marcadores de acento:** En IPA, incluir `ˈ` y `ˌ` para palabras multi-sílaba; omitirlos causa pronunciación incorrecta.
- **Fonemas en palabras compuestas:** Las etiquetas de fonemas solo funcionan para palabras individuales; nombres completos requieren una etiqueta por palabra.
- **Desajuste emocional:** Añadir contexto narrativo o etiquetas explícitas; recordar eliminar el texto guía en post-producción.
- **Voz inadecuada para la etiqueta:** Una voz seria no responde bien a etiquetas como `[giggles]`; elegir voz según la entrega deseada.
- **Normalización incorrecta:** Modelos pequeños (Flash v2.5) leen "$1,000,000" como "one thousand thousand dollars"; usar Multilingual v2 o normalizar con LLM/regex.
- **Etiquetas de audio no auditivas:** No usar `[standing]`, `[grinning]`, `[pacing]`, `[music]`; solo etiquetas que describan sonidos vocales o efectos.
- **Modificar el texto original:** Al añadir etiquetas de audio, no alterar, añadir ni eliminar palabras del texto original.
- **PVC no optimizado para v3:** Los Professional Voice Clones pueden tener calidad reducida en Eleven v3 durante la vista previa; usar IVC o voces diseñadas.