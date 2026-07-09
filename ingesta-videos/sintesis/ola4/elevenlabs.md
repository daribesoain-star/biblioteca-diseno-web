# ElevenLabs — Voz IA, TTS v3, Música y Efectos de Sonido

## que_ensena
Guía completa para usar ElevenLabs: desde texto a voz con modelos V2, V3 Alpha y Multilingual V2, hasta diseño y clonación de voces, generación de efectos de sonido SFX v2, música con Eleven Music, voice changer, voice isolator y dubbing multilingüe. Cubre parámetros de estabilidad, similitud, style exaggeration, audio tags para control emocional, y técnicas de prompting para pausas y expresividad.

## reglas_para_agentes
- Usa siempre el modelo "Eleven V3 Alpha" cuando necesites control de expresiones con audio tags; usa "Eleven Multilingual V2" para voz natural y consistente con sliders ajustables.
- Con Eleven V3, selecciona voces exclusivamente de la categoría "best voices for V3" para que los tags emocionales funcionen correctamente.
- Usa prompts de al menos 250 caracteres cuando generes con Eleven V3; menos de 250 caracteres produce resultados inconsistentes.
- Ajusta el slider de estabilidad en "Creative" o "Natural" cuando emplees audio tags emocionales; nunca uses "Robust" si buscas expresividad.
- En V2, deja la estabilidad en 50% por defecto; no la muevas a menos que busques un efecto específico.
- En V2, nunca aumentes la velocidad más de 0.2 o sonará antinatural.
- Mantén style exaggeration en 0 por defecto para evitar artefactos como velocidad inconsistente o pronunciaciones incorrectas.
- Mantén "Speaker Boost" activado en todas las generaciones de texto a voz para mejorar calidad.
- Usa audio tags con formato exacto entre corchetes: `[laughs]`, `[sighs]`, `[whispering]`, `[angry]`, `[excited]`, `[sad]`, `[narrator]`, `[thoughtful]`, `[dramatic pause]`.
- Coloca el audio tag justo antes de la línea que se quiere modificar, ejemplo: `[laughs] This was great.`
- Empareja los audio tags con el tono natural de la voz elegida: no uses tags agresivos como `[angry]` en voces calmadas.
- No combines más de 2-3 audio tags por generación para evitar resultados incoherentes.
- Usa elipsis (`...`) para pausas naturales y guión largo (`—`) para pausas enfáticas en lugar de solo comas.
- Capitaliza palabras clave para aumentar el énfasis en la entrega, ejemplo: "VERY important".
- Para diálogos multi-voz, usa el botón "Add speaker" para alternar entre voces distintas en el mismo bloque de texto.
- Usa `<break time="1.5s" />` para pausas de duración específica y `[break]` para pausas cortas.
- En Voice Design, incluye al menos tres descriptores: edad, género y acento en el prompt, ejemplo: "a calm male narrator".
- En Voice Design, el preview text debe incluir audio tags para que la voz generada capture la expresividad deseada.
- Para clonación profesional, usa siempre micrófono XLR con interfaz, filtro pop y sala tratada acústicamente; sube 30 minutos de audio de alta calidad.
- Para clonación instantánea, sube al menos 30 segundos de audio limpio.
- Para efectos de sonido SFX v2, usa prompts descriptivos; el sistema siempre entrega 4 variantes por prompt.
- Usa "looping" cuando el efecto de sonido deba repetirse sin pausas audibles (ej: ambientes, motores, fondos).
- Usa 48 kHz WAV para descargas destinadas a producción profesional en cine, TV o videojuegos; usa MP3 44.1 kHz para web/podcasts.
- Para generar música con Eleven Music, especifica siempre género, estado de ánimo y contexto de uso en el prompt.
- Si el usuario necesita una duración exacta de música, proporciona el valor en segundos en lugar de usar "auto".
- Para añadir voces o letras a la música, usa el cuadro de prompt inferior con instrucciones claras como "Add a trailer voiceover".
- Usa el botón "Enhance" como alternativa cuando no quieras escribir audio tags manualmente en V3.
- Descarga el audio inmediatamente después de generarlo; usa "History" como respaldo solo si no se ha generado mucho después.
- Borra el texto anterior antes de generar una nueva línea si quieres evitar duplicados al regenerar con múltiples speakers.
- Elimina manualmente las dialogue tags (ej: "he exclaimed") del audio final después de generar emoción.
- Regenera el audio varias veces cuando uses pausas con `...` o `—` hasta obtener el resultado deseado.
- Usa el ícono "Use prompt" para reutilizar un prompt exitoso de efectos de sonido, no copies y pegues manualmente.
- Siempre revisa la pestaña "History" antes de regenerar un efecto similar para no duplicar trabajo.
- Para compartir en redes sociales, genera el video con visualizador de audio personalizando el color antes de descargar.

## errores_comunes
- **Usar prompts cortos (<250 caracteres) con V3:** Produce resultados inconsistentes y poco fiables.
- **Seleccionar voces no optimizadas para V3:** Voces fuera de la categoría "best voices for V3" no funcionan bien con el nuevo modelo.
- **Usar el slider de estabilidad incorrecto:** Si usas audio tags con el slider en "Robust", los tags no funcionarán bien. Debe estar en "Creative" o "Natural".
- **Sobrecargar de tags:** Demasiados audio tags en una sola generación producen resultados erráticos ("wild results").
- **Desajustar tags con la voz:** Aplicar tags de enfado o gritos a una voz naturalmente calmada genera resultados incoherentes.
- **No estructurar el texto correctamente:** Sin puntuación adecuada (elipsis, mayúsculas, guiones), el modelo no genera pausas ni énfasis naturales.
- **Aumentar la velocidad más de 0.2 en V2:** Suena antinatural.
- **Mover estabilidad lejos de 50% en V2:** Demasiado estable suena monótono, demasiado inestable suena errático.
- **No usar Speaker Boost:** Pierde calidad en la generación.
- **Olvidar descargar el audio antes de regenerar:** Se pierde la generación anterior.
- **Regenerar sin borrar líneas anteriores cuando se añade un segundo speaker:** Duplica todo el contenido.
- **No incluir edad, nacionalidad y género en el prompt de Voice Design:** Produce voces genéricas.
- **Subir audio de baja calidad para clonación instantánea (menos de 30 segundos o con ruido).**
- **Usar micrófono de baja calidad o sin tratamiento acústico para clonación profesional.**
- **Intentar clonar voces de celebridades:** El sistema lo detecta y lo bloquea.
- **Eliminar voces diseñadas desde texto:** Son difíciles o imposibles de recrear exactamente.
- **No seleccionar "instrumental only" en Music cuando se quiere música sin letra:** El sistema puede generar letras automáticas.
- **Usar style exaggeration alto:** Genera inestabilidad: velocidad inconsistente, pronunciaciones incorrectas o sonidos extra.
- **No incluir las direcciones de entrega en el texto mismo (ej: "he said happily"):** El modelo las leerá en voz alta. En su lugar, usar audio tags.
- **No regenerar desde cero cuando solo necesitas ajustar una sección de música:** Puedes editar la longitud o eliminar secciones específicas en la línea de tiempo y luego regenerar.
- **No usar Voice Isolator cuando se graba en entornos ruidosos.**
- **No regenerar el audio múltiples veces cuando se usan pausas con `...` o `—`.**
- **Olvidar eliminar las dialogue tags (ej: "he exclaimed") del audio final después de generar emoción.**
- **No esperar a que termine una generación para iniciar otra en SFX:** Se pueden generar múltiples efectos simultáneamente.
- **Descargar en MP3 para uso profesional en SFX:** 48 kHz WAV es el estándar de industria.
- **Ignorar la función de looping en SFX:** Disponible y sin cortes perceptibles, ideal para fondos continuos.
- **No usar el plan gratuito:** Es muy limitado y frustrante; mejor empezar con Starter ($5/mes).

## fuentes_videos
- How to Use Eleven v3 - Expressive AI Voice Prompt Engineering Guide — https://youtu.be/b-GhMZ_rcJM
- ElevenLabs V3 Full Tutorial: Best Voice Settings + Free GPT Tool (Eleven V3 Alpha) — https://youtu.be/Z2B_pgJ9hbA
- The Only ElevenLabs Tutorial You'll Need (2026) — https://youtu.be/Zozt9QfAwcg
- How To Use Elevenlabs - Master This AI Voice Generator in 23 minutes! — https://youtu.be/s7p6OLwV_50
- How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial) — https://youtu.be/Vs6vJwmJL0Y
- How to Use AI Sound Effects – ElevenLabs SFX v2 Walkthrough — https://youtu.be/iyHypKlscV0
- How to Create AI Music - Eleven Music tutorial — https://youtu.be/MCrkItqdRRI