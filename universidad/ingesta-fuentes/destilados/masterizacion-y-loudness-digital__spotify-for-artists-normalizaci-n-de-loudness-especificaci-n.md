# Spotify for Artists: Normalización de loudness — especificación oficial
**Materia:** masterizacion-y-loudness-digital | **Fuente:** https://support.spotify.com/artists/article/loudness-normalization (consultada 2026-07-07)

## Qué aporta
Define el estándar de normalización de loudness de Spotify (-14 dB LUFS según ITU 1770) y explica cómo se aplica ganancia positiva o negativa durante la reproducción sin modificar los archivos originales. Incluye pautas de masterización para evitar distorsión en formatos con pérdida y especifica los parámetros del limitador para el modo "Alto" de Premium.

## Reglas candidatas para agentes
- El nivel de loudness integrado de la masterización debe ser -14 dB LUFS.
- El pico real máximo debe mantenerse por debajo de -1 dB TP para formatos con pérdida (Ogg/Vorbis y AAC).
- Si el loudness integrado supera -14 dB LUFS, el pico real debe mantenerse por debajo de -2 dB TP.
- Para el modo "Alto" del oyente Premium, el limitador debe activarse a -1 dB (valores de muestra), con tiempo de ataque de 5 ms y tiempo de decaimiento de 100 ms.
- La ganancia positiva solo puede elevar la pista hasta un máximo de -16 dB LUFS si el pico real máximo es de -5 dB LUFS y el loudness original es de -20 dB LUFS (dejando 1 dB para codificación con pérdida).
- La normalización de un álbum completo aplica la misma compensación de ganancia a todas las pistas del álbum.
- Las pistas individuales se normalizan por separado solo en reproducción aleatoria o en playlists de múltiples álbumes.

## Errores comunes que documenta
- Asumir que Spotify procesa o modifica los archivos de audio antes de la reproducción (no lo hace; solo aplica ganancia en reproducción).
- No dejar margen de pico real suficiente (-1 dB TP mínimo, -2 dB TP si el loudness es mayor a -14 LUFS) para evitar distorsión en transcodificación a Ogg/Vorbis y AAC.
- Masterizar con loudness muy superior a -14 dB LUFS esperando que suene más fuerte (se aplicará ganancia negativa y no habrá ventaja de volumen).
- Ignorar que el reproductor web y dispositivos de terceros (TVs, altavoces) no aplican normalización, por lo que el comportamiento varía según el dispositivo.

## Datos/citas clave textuales
- "Ajustamos las canciones a -14 dB LUFS de acuerdo con el estándar ITU 1770."
- "La ganancia positiva se aplica a las masterizaciones más suaves [...] dejamos un 1 dB para codificaciones con pérdida de calidad."
- "Ejemplo: si el nivel de intensidad de una canción es de -20 dB LUFS y su pico real máximo es de -5 dB LUFS, solo elevamos la canción hasta -16 dB LUFS."
- "Alto: -11 dB LUFS [...] Aplicamos un limitador configurado para que se active a -1 dB (valores de muestra), con un tiempo de ataque de 5 ms y un tiempo de decaimiento de 100 ms."
- "Trata de que el nivel de intensidad de tu masterización sea de -14 dB con LUFS integrado."
- "Mantenlo por debajo de -1 dB TP (pico real) máx."
- "Si el volumen de la masterización es superior a -14 dB con LUFS integrado, mantén el pico real por debajo de -2 dB."