# Video Editing Course - Adobe Premiere Pro 2020 - 🎬 * Chapter 14 - Voice and Audio Editing.
**Fuente:** mundoaudiovisual | https://youtu.be/DuRCIek_Lf4

## Qué enseña (2-3 líneas)
Este capítulo enseña a editar audio de voz en Adobe Premiere Pro 2020, cubriendo desde la sincronización de audio externo con el de cámara hasta la normalización de volumen mediante compresores, limitadores y ecualizadores. Explica conceptos fundamentales como amplitud, frecuencia, canales estéreo y cómo aplicar efectos a pistas completas o clips individuales para obtener un audio profesional y sin distorsión.

## Lecciones accionables
- **Sincronizar audio externo con audio de cámara:** Seleccionar el clip de video y el clip de audio externo en la línea de tiempo → Clic derecho → "Sync" → En el cuadro de diálogo, elegir "Audio" como opción de sincronización → Clic en "OK". Premiere detecta automáticamente las formas de onda y sincroniza ambos clips.
- **Vincular audio sincronizado al clip de video:** Seleccionar el clip de video y el clip de audio externo ya sincronizados → Clic derecho → "Link" (o "Vincular"). Esto reemplaza el audio de cámara con el audio del grabador externo.
- **Ajustar volumen de un clip individual:** Usar la línea horizontal amarilla sobre la forma de onda del clip → Arrastrar hacia arriba (subir) o hacia abajo (bajar). Alternativamente, seleccionar el clip → Clic derecho → "Audio Gain" → Ajustar el valor en decibelios.
- **Normalizar pico máximo de un clip:** Clic derecho sobre el clip → "Audio Gain" → En "Normalize Max Peak", ingresar el valor deseado (ej. "-3" dB) → Clic en "OK". Esto ajusta el volumen para que el pico más alto no supere ese nivel.
- **Aplicar efectos a una pista completa (Audio Track Mixer):** Ir a "Window" → "Audio Track Mixer" (no confundir con Audio Clip Mixer) → En el panel del mixer, hacer clic en el triángulo desplegable "Show/Hide Effects and Sends" → En la ranura de efectos de la pista deseada, seleccionar un efecto (ej. Dynamics) → Hacer doble clic sobre el efecto en el mixer para abrir sus controles y ajustar parámetros.
- **Configurar Dynamics para compresión y limitación:** En el efecto Dynamics (arrastrado al Audio Track Mixer):
  - **Compressor:** Ajustar "Threshold" (umbral, ej. -12 dB) y "Ratio" (proporción, ej. 2:1) para reducir los picos altos.
  - **Limiter:** Ajustar "Threshold" (ej. -3 dB) para que ningún pico supere ese nivel.
  - **Make Up Gain:** Aumentar la ganancia de salida para elevar las partes bajas sin que los picos excedan el límite.
- **Eliminar ruido de fondo:** En el Audio Track Mixer de la pista de voz → Añadir efecto "DeNoise" (dentro de "Noise Reduction / Restoration") → Hacer doble clic para abrir controles → Ajustar "Amount" para reducir el ruido sin degradar la voz.
- **Cancelar reverberación:** En el Audio Track Mixer → Añadir efecto "DeReverb" (dentro de "Noise Reduction / Restoration") → Ajustar "Amount" para reducir el eco o reverberación ambiental.
- **Mejorar voz con Multiband Compressor:** En el Audio Track Mixer → Añadir efecto "Multiband Compressor" → En el panel de controles, seleccionar el preset "Broadcast" (difusión) → Esto realza frecuencias medias-altas y reduce graves, mejorando la claridad vocal.
- **Aplicar efecto de voz telefónica a un clip específico:** Ir a "Effects" → "Audio Effects" → "Filter and EQ" → Arrastrar "High Pass Filter" sobre el clip deseado → En "Effect Controls", ajustar "Cutoff Frequency" (ej. 300-500 Hz) para eliminar frecuencias bajas, simulando sonido de teléfono.

## Reglas para agentes
- Usa "Audio Track Mixer" (no "Audio Clip Mixer") cuando quieras aplicar efectos a todos los clips de una misma pista de audio.
- Usa "Audio Gain" → "Normalize Max Peak" con valor "-3" dB para evitar distorsión en clips individuales antes de aplicar compresión.
- Usa el efecto "Dynamics" con Compressor y Limiter cuando necesites uniformizar el volumen de una pista de voz con variaciones de amplitud.
- Usa "DeNoise" y "DeReverb" en el Audio Track Mixer antes de aplicar ecualización o compresión para limpiar el audio base.
- Usa el preset "Broadcast" del "Multiband Compressor" para mejorar la claridad de voces narrativas o podcasts.
- Nunca permitas que el medidor de volumen (VU meter) supere los 0 dB, ya que esto causa distorsión (clipping). Mantén los picos máximos en -3 dB como margen de seguridad.
- Nunca apliques efectos de compresión o limitación directamente sobre clips individuales si la pista completa necesita el mismo tratamiento; usa siempre el Audio Track Mixer para consistencia.

## Errores comunes que evita o menciona
- **Sincronizar manualmente waveforms:** Evita hacer zoom y alinear formas de onda manualmente; usa la función "Sync" con detección automática de audio para ahorrar tiempo y precisión.
- **Confundir Audio Clip Mixer con Audio Track Mixer:** El Clip Mixer afecta solo al clip seleccionado; el Track Mixer afecta a toda la pista. Usa el Track Mixer para efectos consistentes en toda la grabación.
- **Dejar picos por encima de 0 dB:** Esto produce distorsión audible. Siempre normaliza los picos a -3 dB o usa un Limiter con threshold en -3 dB.
- **No eliminar ruido de fondo antes de comprimir:** Si comprimes sin eliminar ruido, el ruido de fondo se amplifica junto con la voz, empeorando la calidad.
- **Aplicar efectos solo a clips individuales cuando se necesita consistencia:** Si haces cortes en el audio, aplicar efectos a cada clip por separado puede generar diferencias de sonido entre cortes. Usa el Track Mixer para uniformidad.