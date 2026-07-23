# el_sound_effects
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/overview/capabilities/sound-effects
## Qué enseña (2-3 líneas)
Convierte descripciones textuales en efectos de sonido de alta calidad con control preciso sobre duración, estilo y complejidad. Soporta desde efectos simples hasta secuencias complejas y elementos musicales, con parámetros ajustables para duración, bucle y fidelidad al prompt.

## Lecciones accionables
- **Endpoint principal:** `POST /v1/text-to-sound-effects/convert` (API de texto a efectos de sonido)
- **Parámetros obligatorios:** `text` (descripción del efecto de sonido)
- **Parámetros opcionales:**
  - `duration_seconds`: Rango 0.1 a 30 segundos. Si no se especifica, la duración se determina automáticamente según el prompt.
  - `loop`: Booleano. Habilita bucle sin costuras para efectos >30s. Ideal para ambientes, texturas y fondos.
  - `prompt_influence`: Controla qué tan estrictamente el modelo sigue el prompt. Alto = interpretación literal; Bajo = interpretación más creativa con variaciones.
- **Costos:** 40 créditos por segundo cuando se especifica `duration_seconds`. Sin duración especificada, el costo se calcula automáticamente.
- **Formatos de salida:** MP3 para todos los efectos; WAV a 48 kHz para efectos sin bucle.
- **Duración máxima por generación:** 30 segundos.
- **Prompts VERBATIM para efectos simples:**
  - "Glass shattering on concrete"
  - "Heavy wooden door creaking open"
  - "Thunder rumbling in the distance"
- **Prompts VERBATIM para secuencias complejas:**
  - "Footsteps on gravel, then a metallic door opens"
  - "Wind whistling through trees, followed by leaves rustling"
  - "Sword being drawn, then clashing with another blade"
- **Prompts VERBATIM para elementos musicales:**
  - "90s hip-hop drum loop, 90 BPM"
  - "Vintage brass stabs in F minor"
  - "Atmospheric synth pad with subtle modulation"
- **Terminología de audio para prompts:**
  - `Impact`: Sonidos de colisión o contacto entre objetos (desde toques sutiles hasta golpes dramáticos)
  - `Whoosh`: Efectos de movimiento a través del aire (rápidos, fantasmales, lentos o rítmicos)
  - `Ambience`: Sonidos ambientales de fondo que establecen atmósfera y espacio
  - `One-shot`: Sonido único que no se repite
  - `Loop`: Segmento de audio que se repite
  - `Stem`: Componente de audio aislado
  - `Braam`: Golpe cinematográfico grande y metálico para momentos épicos o dramáticos (común en trailers)
  - `Glitch`: Sonidos de mal funcionamiento, vibración o movimiento errático (útil para transiciones y ciencia ficción)
  - `Drone`: Sonido continuo y texturizado que crea atmósfera y suspenso
- **Ejemplo de uso con bucle:** Generar 30s de "soft rain" y luego ponerlo en bucle infinito para atmósfera en audiolibros, películas o juegos.

## Reglas para agentes
- Usa `duration_seconds` solo cuando necesites una duración exacta entre 0.1 y 30 segundos; si no es crítica, omítelo para que el modelo decida automáticamente.
- Habilita `loop=true` exclusivamente para efectos atmosféricos, ambientes o fondos que necesiten reproducción continua sin cortes perceptibles.
- Aplica `prompt_influence=high` cuando el efecto deba ser literal y preciso (ej: "Glass shattering on concrete").
- Aplica `prompt_influence=low` cuando quieras variaciones creativas o exploración de sonidos similares.
- Para efectos musicales, incluye siempre BPM, tonalidad o descripción de estilo en el prompt (ej: "90 BPM", "F minor").
- Nunca generes música completa con este endpoint; usa el API de Música para producción musical completa.
- Para efectos de bucle, genera exactamente 30 segundos (máximo permitido) y activa `loop=true`.

## Errores comunes que evita o menciona
- **No especificar duración cuando se necesita control preciso:** Si no se define `duration_seconds`, el modelo decide la duración, lo que puede no coincidir con necesidades de edición exacta.
- **Usar bucles en efectos no atmosféricos:** El bucle sin costuras solo funciona bien para sonidos continuos (lluvia, viento, ambientes); en impactos o one-shots no tiene sentido.
- **Solicitar duración >30 segundos:** El límite máximo por generación es 30 segundos; para más duración, usa bucle o genera múltiples segmentos.
- **Confundir este endpoint con el de Música:** Para producción musical completa (canciones, composiciones), usa el API de Música; este endpoint solo genera elementos musicales cortos (loops, stabs, pads).
- **No usar terminología de audio en prompts:** Términos como "braam", "whoosh", "drone" mejoran significativamente la precisión del modelo; omitirlos puede dar resultados genéricos.