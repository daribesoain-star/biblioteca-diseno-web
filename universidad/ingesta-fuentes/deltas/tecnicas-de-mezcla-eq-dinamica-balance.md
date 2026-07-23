# Delta — tecnicas-de-mezcla-eq-dinamica-balance

## Reglas nuevas propuestas

- Mide el nivel integrado (Integrated LUFS) de la pista completa usando un medidor K-weighted con gate de -70 LUFS y floating gate de -10 LU por debajo del integrado antes de exportar (fuente: izotope.com)
- Ajusta el techo del limitador a -1 dBTP si usas un limitador no true-peak, seguido de un limitador true-peak con techo a -0.3 dBTP para lossless (fuente: izotope.com)
- Para streaming lossy (MP3/AAC), deja al menos 1 dB de margen true peak para evitar clipping por reconstrucción del codec (fuente: izotope.com)
- Si más del 10-12% del audio cae por debajo del floating gate de medición LUFS, aplica automatización de clip gain o compresión upward para subir esas secciones sin reducir el crest factor (fuente: izotope.com)
- Para álbumes, nivela las canciones según la intención artística y el flujo natural, no según la referencia de normalización de la plataforma (fuente: izotope.com)
- Usa el módulo Streaming Preview de RX para auditar el efecto de los codecs lossy y la normalización de cada plataforma antes de exportar (fuente: izotope.com)
- Configura el sidechain input del compresor en la pista de destino para recibir señal de la pista fuente, activando "Sidechain to Ext Full" en el módulo Compressor (fuente: izotope.com)
- Aplica ducking en reverberaciones vocales de cola larga para que la reverb se reduzca cuando la voz seca está presente y se recupere entre frases (fuente: izotope.com)

## Errores nuevos propuestos

- Masterizar forzadamente a -14 LUFS creyendo que es el target obligatorio de las plataformas: la normalización es un beneficio para el usuario, no una instrucción para el ingeniero (fuente: izotope.com)
- Asumir que todas las canciones de un álbum deben masterizarse al mismo nivel: Apple Music y Spotify usan normalización por álbum cuando se reproducen dos o más canciones consecutivas del mismo álbum (fuente: izotope.com)
- No considerar que el pico de salida de un archivo lossy (MP3/AAC) puede ser mayor que el del WAV original, causando clipping si no se deja margen true peak (fuente: izotope.com)
- No usar ducking en la relación bombo/bajo ni en reverberaciones vocales de cola larga, permitiendo que compitan por atención en la mezcla (fuente: izotope.com)

## Contradicciones detectadas

- Ninguna contradicción directa con las reglas existentes.