# iZotope Learn: Masterización para plataformas de streaming
**Materia:** tecnicas-de-mezcla-eq-dinamica-balance | **Fuente:** https://www.izotope.com/en/learn/mastering-for-streaming-platforms.html (consultada 2026-07-07)

## Qué aporta (2-3 líneas)
Explica cómo funcionan la normalización por loudness (LUFS) y el true peak en las principales plataformas de streaming, y ofrece criterios para masterizar sin depender de un único valor numérico fijo. Desmiente el mito de que hay que masterizar a -14 LUFS y propone un enfoque basado en la intención artística y la medición real del master.

## Reglas candidatas para agentes
- Mide el nivel integrado (Integrated LUFS) de la canción completa sin interrupción usando un medidor K-weighted con gates de -70 LUFS y floating gate de -10 LU por debajo del integrado.
- Ajusta el techo del limitador (ceiling) a -1 dBTP si usas un limitador no true-peak, seguido de un limitador true-peak con techo a -0.3 dBTP.
- Verifica que el true peak del master no supere -0.3 dBTP para lossless; para lossy, deja al menos 1 dB de margen true peak.
- Si el master tiene más de un 10-12% de audio por debajo del floating gate (secciones muy silenciosas), aplica automatización de ganancia (clip gain) o compresión upward para subir esas secciones sin reducir el crest factor.
- Para álbumes, nivela las canciones según la intención artística y el flujo natural, no según la referencia de normalización de la plataforma.
- Usa el módulo Streaming Preview de RX para auditar el efecto de los codecs lossy (MP3, AAC) y la normalización de cada plataforma antes de exportar.

## Errores comunes que documenta
- Masterizar forzadamente a -14 LUFS creyendo que es el target obligatorio de las plataformas.
- Pensar que la normalización por loudness es una instrucción para el ingeniero y no un beneficio para el usuario final.
- Ignorar que Spotify permite al usuario seleccionar entre -19, -14 y -11 LUFS, y que más del 87% de usuarios no cambia el default de -14 LUFS.
- Asumir que todas las canciones de un álbum deben masterizarse al mismo nivel; Apple Music y Spotify usan normalización por álbum cuando se reproducen dos o más canciones consecutivas del mismo álbum.
- No considerar que el pico de salida de un archivo lossy (MP3/AAC) puede ser mayor que el del WAV original, causando clipping si no se deja margen.
- Confundir "sonar más fuerte" con "medir más LUFS": una canción con alta dinámica macro (secciones muy suaves y muy fuertes) puede medir un integrado más alto pero sonar más baja en streaming porque las secciones suaves quedan fuera del gate de medición.

## Datos/citas clave textuales
- "The goal of loudness normalization was never to force, or even encourage, mastering engineers to work toward a specific level."
- "Spotify uses a default reference level of -14 LUFS but has additional user-selectable levels of -19 and -11 LUFS."
- "Apple Music uses a reference level of -16 LUFS."
- "YouTube uses a reference level of -14 LUFS, and normalization is always enabled."
- "Amazon Music and Tidal both use -14 LUFS, while Deezer uses -15 LUFS."
- "AES recommendation: Normalize music to -16 LUFS. If using album normalization, normalize the loudest track from the album to -14 LUFS."
- "An integrated level of roughly -12 LUFS, with peaks no higher than -1 dBTP, and a max short-term level of no more than -10 or -9 LUFS is likely to get turned down at least a little on all the major streaming platforms."
- "A good rule of thumb was to leave at least 1 dB True Peak headroom [for lossy streaming]."
- "For lossless streaming... as long as your True Peak levels stay below -0.3 dBTP or so, you’ll be fine."
- "More than 87% of Spotify users don’t change the default setting [of -14 LUFS]."
- "Tidal has elected to use album normalization for all songs, even when they’re in a playlist."
- "12% of the audio is falling below the gate and therefore not contributing to the integrated measurement." (ejemplo de Loudness Optimize en RX)