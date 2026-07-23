## Doctrina destilada (ingesta 2026-07-16)
> 19 fuentes destiladas (docs oficiales + tutoriales). Cada regla con su fuente.

### Clonación de Voz (Instant & Professional)
- **Instant Voice Clone (IVC):** En "Voices" → "Create or clone a voice" → "Instant voice clone". Sube clips de al menos 10 segundos (máx. 30 segundos por clip, máx. 10 MB, máx. 5 minutos total). Llena el círculo verde con múltiples grabaciones. Activa "Remove background noise" si el audio no es profesional. Nombra el clon, selecciona idioma y confirma consentimiento. (Fuente: How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial) — https://youtu.be/AiRksVoiUAI)
- **Professional Voice Clone (PVC):** En "Voices" → "Create or clone a voice" → "Professional voice clone" → "Create a new voice clone". Sube al menos 30 minutos de audio (ideal 2-3 horas). Cada grabación mínimo 30 segundos. Usa scripts predefinidos o archivos propios. Previsualiza, recorta, separa hablantes y activa eliminación de ruido por archivo. Verifica con frase de seguridad. Procesamiento: 2-6 horas. (Fuente: How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial) — https://youtu.be/AiRksVoiUAI)
- **Parámetros de grabación recomendados:** Niveles de audio entre **-23 dB y -8 dB RMS**, pico máximo en **-3 dB**. Usa micrófono profesional (ej. Shure SM7B) con interfaz XLR y filtro pop. Graba en sala tratada acústicamente. Sin música de fondo, ruidos ni otras voces. (Fuente: How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial) — https://youtu.be/AiRksVoiUAI)
- **Ajustes post-clonación:** En "Voice Settings": **Stability** bajo 30% para más emoción (pero inestable); **Similarity** 95-100% para máxima fidelidad (puede sonar menos natural); **Style Exaggeration** alto (ej. 76%) para naturalidad (puede generar artefactos); **Speaker Boost** activar siempre. (Fuente: Cómo Clonar una Voz con IA en 1 minuto ✅ Tutorial ElevenLabs 2026 — https://youtu.be/IirRI7L167Q)

### Voice Design (Creación de Voz Personalizada)
- **Prompt obligatorio:** Incluye edad, nacionalidad y género. Ejemplo: *"A middle-aged American with a soft, high voice, conversational, quick, and cheerful."* (Fuente: eh-elevenlabs-audio — https://youtu.be/s7p6OLwV_50)
- **Parámetros de creación:** En "Voices" > "Voice Design". Escribe prompt descriptivo (20-1000 caracteres). Texto opcional para previsualizar (100-1000 caracteres). Genera y elige entre 3 opciones. Guarda con nombre, etiqueta y descripción. (Fuente: How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial) — https://youtu.be/Vs6vJwmJL0Y)
- **Voice Library:** Más de 10,000 voces comunitarias. Se han pagado >$14M a creadores. Las voces de la biblioteca NO están disponibles vía API en plan gratuito. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/eleven-creative/voices/voice-cloning)
- **Voces por defecto:** Todas expirarán el **31 de diciembre de 2026** y dejarán de ser accesibles después de esa fecha. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/eleven-creative/voices/voice-cloning)

### Modelos TTS y Selección
- **Modelos principales:** `eleven_v3`: 70+ idiomas, límite 5,000 caracteres, ~5 min. `eleven_multilingual_v2`: 29 idiomas, límite 10,000 caracteres, ~10 min. `eleven_flash_v2_5`: 32 idiomas, límite 40,000 caracteres, ~40 min, latencia ~75ms. `eleven_flash_v2`: Solo inglés, límite 30,000 caracteres, ~30 min, latencia ~75ms. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/models)
- **Modelos deprecados:** `eleven_turbo_v2_5` → reemplazar por `eleven_flash_v2_5`; `eleven_turbo_v2` → reemplazar por `eleven_flash_v2`; `scribe_v1` → reemplazar por `scribe_v2`. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/models)
- **Modelo STT:** `scribe_v2`: 90+ idiomas, timestamps a nivel de palabra, diarización hasta 32 hablantes. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/models)
- **Recomendación por uso:** Para contenido expresivo/emocional usa **11 V3 Alpha** (requiere audio tags). Para voz natural y consistente en 29 idiomas usa **11 Multilingual V2**. Para velocidad y baja latencia en tiempo real usa **Flash V2.5**. (Fuente: How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial) — https://youtu.be/Vs6vJwmJL0Y)

### Control de Voz: Pausas, Emociones y Pronunciación
- **Pausas con modelos v2:** Usar `<break time="X.Xs" />` (ej. `<break time="1.5s"/>`) para pausas naturales de hasta 3 segundos. (Fuente: 4 Elevenlabs Voice Tips in 3 Minutes (add pauses, emotions & dubbing) — https://youtu.be/LUmjBtINiYs)
- **Pausas con Eleven v3:** No soporta `<break>` SSML. Usar puntos suspensivos (`...`) para pausas y tono vacilante, o guiones (`-` o `--`) para pausas cortas. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-speech/best-practices)
- **Emociones con audio tags:** Añadir descripciones entre corchetes `[]` antes de la línea. Ejemplo: `[laugh] This was great.` Combina múltiples tags: `[whispering] [slowly] I was this close...`. Usa el botón **Enhance** para añadido automático. (Fuente: How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial) — https://youtu.be/Vs6vJwmJL0Y)
- **Emociones por descripción al final:** Añade al final de la línea: `"That is funny" she said sarcastically` → resultado con sarcasmo. Después de generar, edita y recorta la descripción del audio. (Fuente: 4 Elevenlabs Voice Tips in 3 Minutes (add pauses, emotions & dubbing) — https://youtu.be/LUmjBtINiYs)
- **Pronunciación con IPA en Eleven v3:** Encerrar transcripción IPA entre barras inclinadas (`/`) directamente en el texto. Soporta 70+ idiomas. Precisión del 80-90%. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-speech/best-practices)
- **Control de ritmo (speed):** Rango: `0.7` (mínimo) a `1.2` (máximo). Valor por defecto `1.0`. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-speech/best-practices)

### Dubbing / Doblaje Automático
- **Automatic Dubbing (Dubbing v2 Alpha):** Límites: hasta 2 GB y 180 minutos. Usa modelo Dubbing v2 Alpha por defecto. **Cloning strength** configurable, valor por defecto: 7. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/dubbing)
- **Dubbing Studio (modelo V1 legacy):** Límites: hasta 1 GB y 45 minutos. Solo disponible con modelo V1. En modo mantenimiento. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/dubbing)
- **Concurrencia:** Todos los planes autogestionados (Free, Starter, Creator, Pro, Scale, Business) permiten hasta 5 trabajos de doblaje concurrentes. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/dubbing)
- **Proceso:** En "Dubbing" → "Create a new dub". Selecciona source language (idioma original). Selecciona target language(s): varios a la vez. Sube video (arrastrar/soltar o URL). (Fuente: How to Dub Videos into 29 Languages Automatically (with Voice Cloning) — https://youtu.be/RKzp4OfCgBA)
- **Voice cloning en dubbing:** Dejar casilla **sin marcar** para clonar la voz de cada hablante. Marcarla desactiva la clonación. (Fuente: How to Dub Videos into 29 Languages Automatically (with Voice Cloning) — https://youtu.be/RKzp4OfCgBA)

### Voice Changer (Speech-to-Speech)
- **Endpoint API:** `POST /v1/speech-to-speech/{voice_id}` — usar `eleven_multilingual_sts_v2` como modelo predeterminado. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/voice-changer)
- **Parámetro clave:** `remove_background_noise=true` para minimizar ruido ambiental en el audio de salida. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/voice-changer)
- **Límite de segmento:** Máximo 5 minutos por solicitud — dividir grabaciones más largas en fragmentos. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/voice-changer)
- **Facturación:** 1,000 caracteres por minuto de audio procesado (cargo sobre duración del audio de entrada). (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/voice-changer)
- **Método en Studio:** Ve a **Studio** → **New Blank Project** → **Video Project**. Sube video, haz clic en el clip → **Voice Changer**. Elige voz de biblioteca o nueva. Previsualiza. Haz clic en **Use Voice Changer** → selecciona voz → **Change Voice**. (Fuente: The Best AI Voice Changer (Full Tutorial) — https://youtu.be/d3B3BiCmczc)

### Efectos de Sonido (Sound Effects)
- **Endpoint API:** `POST /v1/text-to-sound-effects/convert`. Parámetro obligatorio: `text`. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/sound-effects)
- **Parámetros opcionales:** `duration_seconds`: Rango 0.1 a 30 segundos. `loop`: Booleano. `prompt_influence`: Controla qué tan estrictamente el modelo sigue el prompt. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/sound-effects)
- **Costos:** 40 créditos por segundo cuando se especifica `duration_seconds`. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/sound-effects)
- **Duración máxima:** 30 segundos (8 segundos más que V1). Descarga en **WAV a 48 kHz** (estándar cine/TV/videojuegos) o **MP3 a 44.1 kHz**. (Fuente: How to Use AI Sound Effects – ElevenLabs SFX v2 Walkthrough — https://youtu.be/iyHypKlscV0)
- **Uso del prompt box:** Genera desde cualquier pestaña (Explorar, Historial, Favoritos). Hasta **4 variantes** por prompt; permite múltiples generaciones en paralelo. (Fuente: How to Use AI Sound Effects – ElevenLabs SFX v2 Walkthrough — https://youtu.be/iyHypKlscV0)
- **Prompts descriptivos:** Usa como `"cat purring loudly"`, `"truck reversing"`, `"mopping a floor"`, `"alien spacecraft taking off"`. (Fuente: eh-elevenlabs-audio — https://youtu.be/s7p6OLwV_50)

### Eleven Music (Generación Musical)
- **Prompt detallado para canción pop:** Usar estructura: "Produce a modern viral ready pop track with clean, minimal production and chill emotional groove. Use soft electric guitar riffs, warm synth layers, subto keys, and tight drums to create a laid-back but catchy feel." + indicaciones vocales + tempo: "100 to 105 BPM". (Fuente: NEW AI Music Generator BEATS SUNO AI? Elevenlabs Music — https://youtu.be/j7_ibwqKKao)
- **Música instrumental sin vocales:** Prompt: "Create a background music song without any vocals for a YouTuber that creates tutorial style videos." + configurar "avoid any vocals or lyrics" en el prompt. (Fuente: NEW AI Music Generator BEATS SUNO AI? Elevenlabs Music — https://youtu.be/j7_ibwqKKao)
- **Excluir elementos no deseados:** En sección de estilos, agregar "lyrical, expressive, distorted" en "excludes" para evitar voces o distorsión. (Fuente: NEW AI Music Generator BEATS SUNO AI? Elevenlabs Music — https://youtu.be/j7_ibwqKKao)
- **Aislamiento de instrumentos y voces (stems):** Usar "solo" antes del instrumento: *"solo electric guitar"*, *"solo piano in C minor"*. Para voces, usar "a cappella": *"a cappella female vocals"*, *"a cappella male chorus"*. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/music/best-practices)
- **Prompts de muestra para alta energía:** *"Create an intense, fast-paced electronic track for a high-adrenaline video game scene. Use driving synth arpeggios, punchy drums, distorted bass, glitch effects, and aggressive rhythmic textures. The tempo should be fast, 130–150 bpm, with rising tension, quick transitions, and dynamic energy bursts."* (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/music/best-practices)

### Text to Dialogue (Diálogos Multi-Voz)
- **Endpoint API:** `POST /docs/api-reference/text-to-dialogue/convert`. Modelo obligatorio: Eleven v3. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-dialogue)
- **Límite de caracteres:** Suma total de todos los `inputs[].text` en **≤ 2,000 caracteres por solicitud**. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-dialogue)
- **Etiquetas de audio disponibles:** Insertar entre corchetes `[]` en el texto del turno. Ejemplos: `[sad]`, `[laughing]`, `[whispering]`, `[giggling]`, `[groaning]`, `[sigh]`, `[cautiously]`, `[jumping in]`, `[cheerfully]`, `[indecisive]`, `[quizzically]`, `[elated]`, `[laughs]`. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-dialogue)

### Errores comunes / anti-patrones
- **No usar modelo 11 V3 alpha para clones instantáneos:** Usar **11 Multilingual V2** para consistencia. (Fuente: How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial) — https://youtu.be/AiRksVoiUAI)
- **No marcar la casilla de voice cloning en dubbing si quieres clonar voces:** Marcarla desactiva la clonación. (Fuente: How to Dub Videos into 29 Languages Automatically (with Voice Cloning) — https://youtu.be/RKzp4OfCgBA)
- **No usar `<break>` SSML con Eleven v3:** No es soportado. Usar puntos suspensivos o guiones. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-speech/best-practices)
- **No subir archivos de audio con ruido de fondo para clonación:** Afecta la calidad del clon. Activar "Remove background noise" o grabar en sala tratada. (Fuente: How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial) — https://youtu.be/AiRksVoiUAI)
- **No exceder límites de segmento en Voice Changer:** Máximo 5 minutos por solicitud. Dividir grabaciones más largas. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/voice-changer)
- **No olvidar que las voces por defecto expiran el 31/12/2026:** Crear y guardar voces personalizadas antes de esa fecha. (Fuente: elevenlabs-audio — https://elevenlabs.io/docs/eleven-creative/voices/voice-cloning)

### Fuentes de esta ingesta
- How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial) — https://youtu.be/AiRksVoiUAI
- Generate Image & Video with ElevenLabs (Full Tutorial) — https://youtu.be/BmMxkpm12vc
- Cómo Clonar una Voz con IA en 1 minuto ✅ Tutorial ElevenLabs 2026 — https://youtu.be/IirRI7L167Q
- 4 Elevenlabs Voice Tips in 3 Minutes (add pauses, emotions & dubbing) — https://youtu.be/LUmjBtINiYs
- How to Dub Videos into 29 Languages Automatically (with Voice Cloning) — https://youtu.be/RKzp4OfCgBA
- How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial) — https://youtu.be/Vs6vJwmJL0Y
- Clone Your Voice For AI Voice Overs!! (ElevenLabs Tutorial) — https://youtu.be/aMKeRfhZkuU
- The Best AI Voice Changer (Full Tutorial) — https://youtu.be/d3B3BiCmczc
- How to Use AI Sound Effects – ElevenLabs SFX v2 Walkthrough — https://youtu.be/iyHypKlscV0
- NEW AI Music Generator BEATS SUNO AI? Elevenlabs Music — https://youtu.be/j7_ibwqKKao
- eh-elevenlabs-audio — https://youtu.be/s7p6OLwV_50
- elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/dubbing
- elevenlabs-audio — https://elevenlabs.io/docs/models
- elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/music/best-practices
- elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/sound-effects
- elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-dialogue
- elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/text-to-speech/best-practices
- elevenlabs-audio — https://elevenlabs.io/docs/overview/capabilities/voice-changer
- elevenlabs-audio — https://elevenlabs.io/docs/eleven-creative/voices/voice-cloning