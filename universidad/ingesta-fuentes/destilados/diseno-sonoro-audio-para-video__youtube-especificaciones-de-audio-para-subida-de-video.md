# YouTube: Especificaciones de audio para subida de video
**Materia:** diseno-sonoro-audio-para-video | **Fuente:** https://support.google.com/youtube/answer/1722171 (consultada 2026-07-07)

## Qué aporta
Documenta las especificaciones técnicas oficiales de YouTube para codificación de audio en videos subidos. Define formatos de codec, frecuencias de muestreo, configuraciones de canales y bitrates recomendados. Es la referencia obligatoria para garantizar que el audio se procese correctamente en la plataforma.

## Reglas candidatas para agentes
- Usar contenedor MP4.
- No incluir Edit Lists en el archivo.
- Colocar el moov atom al inicio del archivo (Fast Start).
- Usar codec de audio AAC-LC, Opus o Eclipsa Audio.
- Configurar canales en Stereo, Stereo + 5.1 o Stereo + Eclipsa Audio.
- Usar frecuencia de muestreo de 48 kHz.
- Para audio mono, usar bitrate de 128 kbps.
- Para audio estéreo, usar bitrate de 384 kbps.
- Para audio 5.1, usar bitrate de 512 kbps.
- Para Eclipsa Audio (inmersivo), usar 128 kbps por canal.

## Errores comunes que documenta
- Incluir Edit Lists, lo que impide el procesamiento correcto del video.
- No colocar el moov atom al frente del archivo (Fast Start).
- Usar frecuencias de muestreo distintas a 48 kHz.
- Usar bitrates de audio inferiores a los recomendados para cada configuración de canales.
- Usar matriz de color RGB en las subidas, que YouTube no recomienda.

## Datos/citas clave textuales
- "Container: MP4"
- "No Edit Lists (or the video might not get processed correctly)"
- "moov atom at the front of the file (Fast Start)"
- "Audio codec: AAC-LC or Opus or Eclipsa Audio"
- "Channels: Stereo or Stereo + 5.1 or Stereo + Eclipsa Audio"
- "Sample rate: 48kHz"
- "Recommended audio bitrates for uploads: Mono: 128 kbps, Stereo: 384 kbps, 5.1: 512 kbps"
- "For Eclipsa Audio (immersive audio), we recommend 128 kbps per channel"
- "YouTube does not recommend the RGB color matrix on uploads"