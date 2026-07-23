# el_modelos
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/models
## Qué enseña
Este documento describe todos los modelos de audio de ElevenLabs, incluyendo Text-to-Speech (TTS), Speech-to-Text (STT), Music Generation y Sound Effects. Explica las capacidades, límites técnicos, latencia, precios relativos, concurrencia por plan y guías de selección para elegir el modelo adecuado según el caso de uso.

## Lecciones accionables
- **Modelos TTS principales:**
  - `eleven_v3`: 70+ idiomas, límite 5,000 caracteres, ~5 min de audio. Ideal para diálogos multi-personaje y audiolibros.
  - `eleven_multilingual_v2`: 29 idiomas, límite 10,000 caracteres, ~10 min. Máxima calidad emocional y consistencia de voz entre idiomas.
  - `eleven_flash_v2_5`: 32 idiomas, límite 40,000 caracteres, ~40 min, latencia ~75ms. 50% menor precio por carácter que `eleven_multilingual_v2`.
  - `eleven_flash_v2`: Solo inglés, límite 30,000 caracteres, ~30 min, latencia ~75ms.
- **Modelos STT:**
  - `scribe_v2`: 90+ idiomas, transcripción precisa con timestamps a nivel de palabra, diarización hasta 32 hablantes, detección de entidades hasta 56, keyterm prompting hasta 1000 términos.
  - `scribe_v2_realtime`: 90+ idiomas, latencia ~150ms, soporta streaming por chunks, formatos PCM (8kHz-48kHz) y μ-law, VAD automático, control manual de commits.
- **Modelos de música y sonido:**
  - `music_v2`: Generación musical con prompts en lenguaje natural, control de género/estilo/estructura, soporta vocales e instrumental, multilingüe (inglés, español, alemán, japonés y más).
  - `eleven_text_to_sound_v2`: Generación de efectos de sonido desde texto.
- **Modelos Speech-to-Speech:**
  - `eleven_multilingual_sts_v2`: 29 idiomas, cambio de voz manteniendo prosodia.
  - `eleven_english_sts_v2`: Solo inglés, límite 10,000 caracteres.
- **Modelos Text-to-Voice (diseño de voz):**
  - `eleven_ttv_v3`: 70+ idiomas.
  - `eleven_multilingual_ttv_v2`: 29 idiomas.
- **Modelos deprecados:** `eleven_turbo_v2_5` → reemplazar por `eleven_flash_v2_5`; `eleven_turbo_v2` → reemplazar por `eleven_flash_v2`; `scribe_v1` → reemplazar por `scribe_v2`.
- **Concurrencia por plan (Multilingual v2 / Flash / STT / Realtime STT / Music / Prioridad):**
  | Plan | Multilingual v2 | Flash | STT | Realtime STT | Music | Prioridad |
  |-----------|-----------------|-------|-----|--------------|-------|-----------|
  | Free | 2 | 4 | 8 | 6 | 0 | 3 |
  | Starter | 3 | 6 | 12 | 9 | 2 | 4 |
  | Creator | 5 | 10 | 20 | 15 | 2 | 5 |
  | Pro | 10 | 20 | 40 | 30 | 2 | 5 |
  | Scale | 15 | 30 | 60 | 45 | 5 | 5 |
  | Business | 15 | 30 | 60 | 45 | 5 | 5 |
  | Enterprise | Elevado | Elevado | Elevado | Elevado | Máximo | 6 |
- **Normalización de texto en Flash v2.5:** Deshabilitada por defecto. Afecta números (ej. teléfonos), fechas y monedas. Para habilitarla en Enterprise: usar parámetro `apply_text_normalization: "on"`. Recomendación: que el LLM normalice el texto antes de pasarlo al TTS.
- **Pruebas de escala (concurrencia):** Simular usuarios reales, no requests brutos. Ejemplo: para 100 conversaciones simultáneas, crear 100 usuarios que envíen 1 request WebSocket TTS de ~150 caracteres cada ~20 segundos, con jitter aleatorio de hasta 1 segundo. Usar framework como Locust con el código Python provisto.

## Reglas para agentes
- Usa `eleven_multilingual_v2` cuando necesites la máxima fidelidad de audio con expresión emocional rica, para contenido profesional, audiolibros o narración de video.
- Usa modelos Flash (`eleven_flash_v2_5` o `eleven_flash_v2`) para aplicaciones en tiempo real con latencia ~75ms, como agentes conversacionales o procesamiento masivo.
- Usa `eleven_flash_v2_5` cuando necesites un balance entre calidad y velocidad, o cuando requieras soporte para 32 idiomas.
- Usa `eleven_multilingual_sts_v2` exclusivamente para conversión Speech-to-Speech multilingüe.
- Nunca uses modelos deprecados (`eleven_turbo_v2_5`, `eleven_turbo_v2`, `scribe_v1`); reemplázalos por sus equivalentes Flash o v2.
- Para números de teléfono, fechas o monedas con Flash v2.5, normaliza el texto en el LLM antes de enviarlo al TTS, o usa el parámetro `apply_text_normalization: "on"` (solo Enterprise).
- Para contenido de más de 40,000 caracteres (límite máximo de `eleven_flash_v2_5`), divide la entrada en múltiples requests.
- Monitorea los headers de respuesta `current-concurrent-requests` y `maximum-concurrent-requests` para controlar el uso de concurrencia.
- Para pruebas de escala, simula usuarios con comportamiento realista (esperas, aleatoriedad) y rampa lenta de usuarios (ej. 1 usuario por segundo), no envíes requests en ráfagas.

## Errores comunes que evita o menciona
- **No confundir requests por minuto con concurrencia:** 180 requests/minuto que duran 1s cada uno y se envían espaciados resultan en ~3 concurrentes; los mismos 180 requests/minuto enviados en ráfaga al inicio resultan en 180 concurrentes. El sistema limita por concurrencia, no por requests/minuto.
- **No asumir que el límite de concurrencia equivale al número de conversaciones simultáneas:** Una concurrencia de 5 puede soportar ~100 transmisiones de audio simultáneas (broadcasts) en diálogos balanceados, y más si el agente habla menos que el humano (ej. soporte al cliente).
- **No usar WebSocket HTTP para pruebas de concurrencia:** Con WebSocket, solo el tiempo de generación de audio cuenta para la concurrencia; el tiempo de conexión abierta no cuenta.
- **No enviar texto sin normalizar a Flash v2.5:** Los números (teléfonos), fechas y monedas no se normalizan por defecto, lo que puede producir lecturas confusas.
- **No superar los límites de caracteres por modelo:** `eleven_v3` (5,000), `eleven_multilingual_v2` (10,000), `eleven_flash_v2_5` (40,000), `eleven_flash_v2` (30,000). Para textos más largos, dividir en múltiples requests.
- **No usar `eleven_turbo_v2_5` o `eleven_turbo_v2`:** Son funcionalmente equivalentes a los Flash pero con mayor latencia promedio. Usar siempre Flash.