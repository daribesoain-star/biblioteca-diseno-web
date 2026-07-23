# el_music_best_practices
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/overview/capabilities/music/best-practices
## Qué enseña (2-3 líneas)
Guía de mejores prácticas para generar música con el modelo Eleven Music, cubriendo técnicas de prompting para género, creatividad, aislamiento de instrumentos/voces, control musical, estructura temporal y letras. Explica cómo usar prompts de alto nivel (ej. "ad for a sneaker brand") o descriptivos detallados para guiar tono, estructura y contenido según el caso de uso.

## Lecciones accionables
- **Prompts de alto nivel**: Usar frases como *"ad for a sneaker brand"* o *"peaceful meditation with voiceover"* son suficientes para guiar tono, estructura y contenido.
- **Género y creatividad**: El modelo responde tanto a descriptores abstractos de estado de ánimo (ej. "eerie", "foreboding") como a lenguaje musical detallado (ej. "dissonant violin screeches over a pulsing sub-bass"). Para resultados más creativos e inesperados, usar palabras clave simples y evocadoras.
- **Aislamiento de instrumentos y voces (stems)**: Descargar stems desde el menú de descarga de cada pista. Para mayor control:
  - Usar la palabra "solo" antes del instrumento: *"solo electric guitar"*, *"solo piano in C minor"*.
  - Para voces, usar "a cappella" antes de la descripción vocal: *"a cappella female vocals"*, *"a cappella male chorus"*.
  - Incluir clave, tempo (BPM) y tono musical: *"a cappella vocals in A major, 90 BPM, soulful and raw"*.
- **Control musical**: El modelo sigue BPM con precisión y captura la clave musical. Incluir indicaciones como "130 BPM" y "in A minor". Usar descriptores expresivos para entrega vocal: "raw", "live", "glitching", "breathy", "aggressive". Para múltiples vocalistas: *"two singers harmonizing in C"*.
- **Estructura temporal y letras**: Especificar duración (ej. "60 seconds") o usar modo automático. Para música sin voces, agregar "instrumental only". Para controlar inicio/fin de voces, usar indicaciones temporales claras:
  - *"lyrics begin at 15 seconds"*
  - *"instrumental only after 1:45"*
- **Letras multilingüe**: El modelo soporta generación de letras en múltiples idiomas. En la UI, usar seguimientos como *"make it Japanese"* o *"translate to Spanish"*.
- **Prompts de muestra (verbatim)**:
  - *"Create an intense, fast-paced electronic track for a high-adrenaline video game scene. Use driving synth arpeggios, punchy drums, distorted bass, glitch effects, and aggressive rhythmic textures. The tempo should be fast, 130–150 bpm, with rising tension, quick transitions, and dynamic energy bursts."*
  - *"Track for a high-end mascara commercial. Upbeat and polished. Voiceover only. The script begins: 'We bring you the most volumizing mascara yet.' Mention the brand name 'X' at the end."*
  - *"Write a raw, emotionally charged track that fuses alternative R&B, gritty soul, indie rock, and folk. The song should still feel like a live, one-take, emotionally spontaneous performance. A female vocalist begins at 15 seconds: 'I tried to leave the light on, just in case you turned around But all the shadows answered back, and now I'm burning out My voice is shaking in the silence you left behind But I keep singing to the smoke, hoping love is still alive'"*
- **Avanzado: Planes de composición**: Para control preciso sobre estructura de secciones, colocación de letras y arreglos multi-vocalistas, usar planes de composición en lugar de prompts de texto simples. Consultar documentación sobre cómo estructurar canciones con secciones, estilos globales/locales y formato de letras.

## Reglas para agentes
- Usa "solo" antes del nombre del instrumento cuando quieras aislar ese instrumento en los stems.
- Usa "a cappella" antes de la descripción vocal cuando quieras aislar voces.
- Incluye BPM y clave musical (ej. "130 BPM", "in A minor") cuando necesites control preciso sobre tempo y armonía.
- Agrega "instrumental only" al prompt cuando quieras generar música sin voces.
- Usa indicaciones temporales explícitas como "lyrics begin at X seconds" o "instrumental only after X:XX" para controlar cuándo empiezan o terminan las voces.
- Para cambiar el idioma de una canción generada en la UI, usa seguimientos como "make it Japanese" o "translate to Spanish".
- Nunca asumas que prompts más largos siempre producen mejor calidad; para creatividad inesperada, usa palabras clave simples.

## Errores comunes que evita o menciona
- **Longitud y detalle del prompt no siempre correlacionan con mejor calidad**: Para resultados más creativos, usar palabras clave simples y evocadoras en lugar de prompts excesivamente detallados.
- **Por defecto, la mayoría de los prompts de música incluirán letras**: Si no se proporcionan letras, el modelo genera letras estructuradas automáticamente. Para evitarlo, agregar "instrumental only".
- **No confundir modo automático con duración especificada**: Se puede especificar duración exacta (ej. "60 seconds") o dejar que el modelo determine la duración con auto mode.