# Final Cut Pro 11: AUDIO PRO (limpia voz + música + niveles)
**Fuente:** mundoaudiovisual | https://youtu.be/39BSkCEKniM

## Qué enseña (2-3 líneas)
Este video enseña a editar audio profesionalmente en Final Cut Pro 11: desde limpiar voz en off con aislamiento de voz, ecualización y normalización, hasta sincronizar audio con video, mezclar música de fondo con keyframes y aplicar efectos como limitador y fundidos. Cubre el flujo completo para lograr un audio limpio y balanceado en proyectos de video.

## Lecciones accionables
- **Aislar voz para eliminar ruido de fondo:** selecciona el clip de audio, haz clic en el botón "Voz" (voice isolation) y ajústalo al máximo para eliminar ruido ambiental. Alternativamente, usa la varita mágica (magic wand) para que analice el audio automáticamente.
- **Aplicar ecualizador de 10 bandas:** haz clic en el botón de ecualizador (equalizer) en el clip de audio, selecciona "10-band equalizer". Aumenta ligeramente las frecuencias graves (bass) y reduce las frecuencias agudas molestas (altas) moviendo los sliders correspondientes.
- **Normalizar el audio:** activa la función de análisis de sonido (sound analysis) desde el botón de varita mágica; esto iguala las partes suaves y fuertes del audio automáticamente.
- **Agregar un limitador:** ve al panel de efectos (effects), en "Audio Effects" > "Levels", selecciona "Limiter". Ábrelo con el botón pequeño y configura el parámetro "Out" (output) a -1 dB. Luego aumenta gradualmente el "Gain" hasta que el medidor muestre reducción sin distorsión.
- **Ver medidores de audio:** ve a "Window" > "Show in Workspace" > "Audio Meters" para monitorear que el nivel nunca exceda 0 dB (evitar rojo).
- **Sincronizar audio con video manualmente:** amplía la línea de tiempo, oculta las líneas de audio (visualization > hide audio lines), busca picos representativos en ambas ondas y alinéalos arrastrando el clip.
- **Sincronizar audio con video automáticamente:** selecciona ambos clips (video con audio original y clip de audio editado), haz clic derecho, elige "Sync Clip", marca "Use audio for sync" y acepta.
- **Asignar función de música a un clip de fondo:** haz clic derecho sobre el clip de música, selecciona "Assign Audio Functions" > "Music" (se vuelve verde).
- **Crear fundido de entrada con keyframes:** coloca un keyframe (diamante amarillo) al inicio del clip de música con volumen alto (ej. 0 dB), luego otro keyframe donde empiece la voz con volumen bajo (ej. -20 dB). El audio bajará gradualmente entre ambos.
- **Crear fundido de salida (fade-out):** haz clic en el pequeño punto blanco que aparece en la esquina superior derecha del clip de música y arrástralo hacia la izquierda para crear una curva de disminución de volumen al final.

## Reglas para agentes
- Usa "Voice Isolation" al máximo cuando el clip de voz tenga ruido de fondo.
- Aplica el limitador con "Out" en -1 dB y ajusta "Gain" hasta que el medidor muestre reducción sin llegar a rojo.
- Asigna la función "Music" a cualquier clip de música de fondo para que se mezcle correctamente con la voz.
- Usa keyframes para fundidos de entrada/salida de música cuando la voz comience o termine.
- Monitorea siempre los "Audio Meters" para asegurar que el nivel nunca exceda 0 dB.
- Nunca dejes que el medidor de audio se ponga rojo (distorsión); si ocurre, reduce el volumen del clip a 0 dB y reajusta.

## Errores comunes que evita o menciona
- **Audio distorsionado (rojo en medidores):** ocurre cuando el volumen está demasiado alto; se soluciona reduciendo el volumen del clip a 0 dB y usando el limitador para controlar picos.
- **Música demasiado alta que tapa la voz:** se evita bajando el volumen de la música a -20 dB y usando keyframes para que baje cuando se habla.
- **Corte abrupto al final de la música:** se soluciona usando el fade-out (arrastrando el punto blanco) para que el volumen disminuya gradualmente.
- **No asignar función de audio correcta:** la música debe tener asignada la función "Music" (verde) para que el mezclador la trate adecuadamente; de lo contrario, compite con la voz.