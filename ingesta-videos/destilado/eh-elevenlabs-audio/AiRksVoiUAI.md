# How to Clone Your Voice with AI - Realistic AI Voice Clones (Full Tutorial)
**Fuente:** eh-elevenlabs-audio | https://youtu.be/AiRksVoiUAI

## Qué enseña
El video explica cómo clonar la voz propia usando Eleven Labs, cubriendo dos métodos: clonación instantánea (IVC) a partir de 1-2 minutos de audio, y clonación profesional (PVC) que requiere 30 minutos a 3 horas para obtener una réplica hiperrealista. Incluye requisitos técnicos de grabación, parámetros de audio y pasos detallados para cada proceso.

## Lecciones accionables
- Para **Instant Voice Clone (IVC)**: en Eleven Labs, ve a "Voices" → "Create or clone a voice" → "Instant voice clone". Graba o sube clips de al menos 10 segundos cada uno (máx. 30 segundos por clip). Llena el círculo verde con múltiples grabaciones. Activa "Remove background noise" si el audio no es profesional. Nombra el clon, selecciona idioma y confirma consentimiento. Usa el modelo **11 Multilingual V2** (no 11 V3 alpha por inconsistencia).
- Para **Professional Voice Clone (PVC)**: ve a "Voices" → "Create or clone a voice" → "Professional voice clone" → "Create a new voice clone". Sube o graba al menos 30 minutos de audio (ideal 2-3 horas). Cada grabación debe durar mínimo 30 segundos. Usa scripts predefinidos o sube archivos propios. Previsualiza, recorta, separa hablantes múltiples y activa eliminación de ruido por archivo. Verifica la voz con la frase de seguridad. El procesamiento toma 2-6 horas.
- **Parámetros de grabación recomendados**: niveles de audio entre **-23 dB y -8 dB RMS**, pico máximo en **-3 dB**. Usa micrófono profesional (ej. Shure SM7B) con interfaz de audio XLR y filtro pop. Graba en sala tratada acústicamente (paneles, alfombra, cojines). Sin música de fondo, ruidos ni otras voces.
- **Preprocesamiento opcional**: aplica ecualizador paramétrico para reducir graves si la voz suena retumbante, así el clon siempre sonará como deseas sin editar después.
- **Uso del clon**: genera voz con text-to-speech, speech-to-speech, agente conversacional, o en otros idiomas. Corrige líneas en videos, añade llamadas a la acción, o genera variaciones de hooks para A/B testing en redes sociales.

## Reglas para agentes
- Usa el modelo **11 Multilingual V2** para clones de voz, nunca 11 V3 alpha a menos que aceptes resultados inconsistentes.
- Cuando grabes para IVC, cada clip debe durar entre 10 y 30 segundos; para PVC, cada grabación debe ser de al menos 30 segundos.
- Activa "Remove background noise" solo si el audio de entrada tiene ruido de fondo; no lo actives en archivos ya procesados.
- Verifica siempre que tienes derechos y consentimiento antes de guardar o enviar un clon de voz.
- Para PVC, sube entre 30 minutos y 3 horas de audio; no subas menos de 30 minutos o el resultado será deficiente.
- Si el audio proviene de un podcast con múltiples hablantes, usa la opción "separate speakers" para aislar solo tu voz.

## Errores comunes que evita o menciona
- No usar el modelo incorrecto: 11 V3 alpha es una vista previa de investigación y da resultados menos consistentes que 11 Multilingual V2.
- No grabar con ruido de fondo, música u otras voces: degrada la precisión del clon y puede generar artefactos no deseados en las generaciones de texto a voz.
- No proporcionar suficiente audio: para PVC, menos de 30 minutos produce clones de baja fidelidad; para IVC, menos de 10 segundos por clip no es suficiente.
- No usar equipo profesional si es posible: aunque se puede clonar sin él, la calidad del audio de entrada es el factor más importante para un resultado realista.
- No verificar el consentimiento: el paso de verificación de voz en PVC es obligatorio y una medida de seguridad para evitar clonación no autorizada.