# DAVINCI SOLVES 🎙️ AUDIO: Recording, Synchronization and Editing
**Fuente:** mundoaudiovisual | https://youtu.be/QPFVfx1XeZg

## Qué enseña (2-3 líneas)
El video explica cómo grabar audio de calidad para videos, sincronizarlo con la cámara en DaVinci Resolve, y editarlo profesionalmente. Cubre desde micrófonos económicos (lavalier conectado a cámara o grabadora externa) hasta setups más avanzados (DJI Mic, Blue Yeti), incluyendo reducción de ruido, ecualización, limitación y adición de música de fondo.

## Lecciones accionables
- **Grabar audio con micrófono lavalier económico conectado a la cámara**: Conectar el micrófono al input de micrófono de la cámara o teléfono. Ajustar niveles para que nunca lleguen a rojo (distorsión).
- **Grabar audio con grabadora externa económica (Victory)**: Conectar el lavalier a la grabadora, colocarla en el bolsillo. Graba en formato WAV sin reducción de ruido, requiere edición en postproducción.
- **Grabar audio con DJI Mic**: Colocar el receptor en la cámara para grabar directamente en el archivo de video, o grabar por separado en el receptor y sincronizar después.
- **Grabar audio con Blue Yeti + OBS Studio**: Conectar el micrófono por USB a la computadora. En OBS Studio, ir a *Settings > Output > Audio Recording*, configurar Track 1 para el micrófono a **320 kbps** (máximo bitrate). En *Advanced Audio Properties*, asignar micrófono a Track 1 y audio de escritorio a Track 2 para mantenerlos separados.
- **Sincronizar audio en DaVinci Resolve (método automático)**: Seleccionar el clip de video y el clip de audio externo en la línea de tiempo, hacer clic derecho y elegir *"Align clips automatically according to waveform"*.
- **Sincronizar audio en DaVinci Resolve (método manual)**: Si el audio de cámara es muy malo y no sincroniza automáticamente, ampliar la forma de onda (zoom con rueda del mouse), identificar un pico visible en ambos audios y alinearlos manualmente arrastrando el clip.
- **Corregir audio mono a estéreo en DaVinci Resolve**: Ir al módulo *Fairlight* (audio), hacer clic derecho en el clip de audio, seleccionar *Clip Attributes*, cambiar de *Mono* a *Stereo*, y en ambos canales seleccionar *Channel 1* (integrated).
- **Reducir ruido de fondo en DaVinci Resolve**: En el módulo *Fairlight*, seleccionar el clip o track, ir a *Effects* (tres puntos > Effects), agregar *"Noise Reduction"*. Seleccionar una sección de solo ruido, hacer clic en *Analyze* y reproducir. Luego ajustar en modo automático.
- **Aplicar ecualización (EQ)**: Agregar *"6 Band EQ"* al clip o track. Reducir ganancia en bandas bajas (para eliminar retumbos), aumentar ligeramente en bandas medias-altas para claridad vocal. Subir la sexta banda (agudos) ligeramente.
- **Aplicar limitador**: Agregar *"Limiter"* al track, configurar el límite en **-1 dB** para evitar distorsión y normalizar el volumen.
- **Orden correcto de efectos en Fairlight**: Arrastrar los efectos en este orden: 1) Dynamics (si se usa), 2) Equalizer, 3) Noise Reduction, 4) Limiter. El orden afecta el resultado final.
- **Añadir música de fondo**: Usar una biblioteca libre de derechos como **artlist.io**. Filtrar por género (ej: *Corporate*, *Commercial Blog*). Descargar la pista, arrastrarla a un track inferior en DaVinci Resolve. Ajustar volumen a **-18 dB** para que no opaque la voz. Crear keyframes de volumen al inicio y final para fundidos (fade in/out). Bloquear el track de música para que no se mueva al editar video.

## Reglas para agentes
- Usa *"Align clips automatically according to waveform"* cuando ambos audios (cámara y externo) tengan suficiente calidad y picos visibles.
- Nunca dejes que el audio llegue a rojo en la grabación; mantenlo siempre en zona verde (por debajo de -20 dB aproximadamente).
- Usa *Clip Attributes > Stereo > Channel 1 integrated* para ambos canales cuando el audio grabado sea mono pero necesites salida estéreo.
- Aplica *Noise Reduction* analizando primero una sección de solo ruido (sin voz) con el botón *Analyze*.
- Configura el *Limiter* siempre en **-1 dB** como límite máximo.
- Ordena los efectos en Fairlight como: Dynamics → Equalizer → Noise Reduction → Limiter.
- Bloquea el track de música de fondo (icono de candado) antes de editar el video para evitar desplazamientos accidentales.
- Usa *artlist.io* con filtro *Corporate* o *Commercial Blog* para música de fondo en videos tutoriales o educativos.

## Errores comunes que evita o menciona
- **Audio de cámara integrado es inútil**: El micrófono interno de la cámara graba audio de muy baja calidad, con ruido y sin claridad. Siempre usar micrófono externo.
- **No sincronizar audio automáticamente si el audio de cámara es muy malo**: El método automático falla cuando el audio de referencia (cámara) tiene demasiado ruido. En ese caso, sincronizar manualmente buscando picos en la forma de onda.
- **Grabar en mono sin saberlo**: El DJI Mic puede grabar en mono si está mal configurado. Corregir en *Clip Attributes* cambiando a estéreo y duplicando el canal.
- **Aplicar efectos en orden incorrecto**: Si el ecualizador va después del limitador, el limitador no controlará correctamente los picos ecualizados. El orden importa.
- **Subir demasiado el volumen de la música de fondo**: La música debe estar alrededor de -18 dB para no competir con la voz. Usar keyframes para fundidos suaves al inicio y final.
- **No usar limitador**: Sin limitador, los picos de voz pueden distorsionar. Siempre agregar un limitador a -1 dB en el track final.