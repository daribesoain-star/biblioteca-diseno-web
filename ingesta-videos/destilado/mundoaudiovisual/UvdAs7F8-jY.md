# Video Editing Course - Davinci Resolve - Chapter 11 - Basic Audio Editing
**Fuente:** mundoaudiovisual | https://youtu.be/UvdAs7F8-jY

## Qué enseña (2-3 líneas)
Este capítulo cubre la edición básica de audio en DaVinci Resolve: sincronización manual y automática de audio con video, ajuste de volumen, uso del mezclador, ecualización básica y aplicación de un limitador para evitar distorsión. Se enfoca en flujos de trabajo prácticos para subir videos a YouTube.

## Lecciones accionables
- **Sincronización manual de audio:** Busca el pico de la forma de onda de un "clap" en la pista de video y en la pista de audio separada. Amplía la línea de tiempo (zoom) para alinear exactamente ambos picos. Luego silencia la pista de audio de la cámara (clic en el icono de altavoz de la pista).
- **Sincronización automática:** Selecciona el clip de video y el clip de audio en el panel de medios. Haz clic derecho y elige "Automatically synchronize audio based on waveform". DaVinci Resolve los alinea automáticamente.
- **Ajustar volumen global de un clip:** Selecciona el clip de audio, ve al Inspector (esquina superior derecha) y ajusta el control deslizante de volumen. Mantén el nivel por debajo de 0 dB para evitar distorsión (líneas rojas en la forma de onda).
- **Ajustar volumen de una pista completa:** Abre el mezclador (Mixer) desde el menú superior. Usa los faders de cada pista de audio para subir o bajar el volumen general de toda la pista.
- **Control de volumen con keyframes:** Haz clic en la línea de volumen horizontal sobre el clip de audio. Añade puntos de control (keyframes) para crear fundidos de entrada/salida o cambios graduales de volumen.
- **Ajustar balance estéreo:** En el Inspector, mueve el control "Pan" (distribución) a la izquierda o derecha para cambiar el balance estéreo del clip.
- **Cambiar tono (Pitch):** En el Inspector, ajusta el control "Pitch" para subir o bajar el tono del audio. Útil para efectos de sonido (ej. hacer un sonido de "watch" más grave o agudo).
- **Ecualización básica:** En el Inspector, activa el ecualizador. Ajusta las bandas de frecuencia (bajos, medios, agudos) para mejorar la claridad de la voz. Ejemplo: subir ligeramente los bajos para dar calidez a la voz.
- **Aplicar limitador a un clip:** En la biblioteca de efectos (Effects Library), busca "Limiter" dentro de los efectos de audio de Fairlight. Arrástralo al clip. Ajusta el umbral (Threshold) a -1 dB y sube el volumen de salida (Gain) hasta que el audio alcance ese límite sin distorsionar.
- **Aplicar limitador a una pista completa:** Arrastra el efecto "Limiter" directamente sobre el nombre de la pista de audio en el mezclador. Configura el umbral a -1 dB. Esto asegura que toda la pista nunca supere ese nivel.
- **Aplicar limitador a la pista principal (Master):** Arrastra el limitador al bus principal (Master) en el mezclador. Configura el umbral a -1 dB para proteger todo el proyecto de distorsión.
- **Ver forma de onda:** Haz clic en el ícono de forma de onda en la esquina superior izquierda del clip de audio para elegir entre diferentes estilos de visualización (el presentador prefiere el estilo que muestra picos claros).

## Reglas para agentes
- Usa la sincronización automática basada en forma de onda cuando tengas un clap o pico claro en ambas pistas; usa la manual solo si la automática falla.
- Nunca permitas que el volumen supere 0 dB en el medidor del mezclador (líneas rojas = distorsión).
- Aplica siempre un limitador con umbral en -1 dB a la pista principal (Master) antes de exportar para evitar recortes.
- Cuando sincronices manualmente, amplía la línea de tiempo al máximo para alinear los picos con precisión de fotograma.
- Silencia la pista de audio de la cámara después de sincronizar para usar solo el audio externo de mejor calidad.
- Usa el ecualizador solo para mejorar la claridad de la voz (ej. realce ligero de bajos), no para correcciones extremas.
- Para fundidos, usa keyframes en la línea de volumen del clip, no el control deslizante del Inspector.

## Errores comunes que evita o menciona
- **No sincronizar el audio correctamente:** El presentador evita depender solo de la sincronización automática sin verificar; recomienda usar un clap manual para tener un pico visual claro.
- **Dejar el audio de la cámara activo después de sincronizar:** Silencia la pista original para que no se mezcle con el audio externo de mejor calidad.
- **Subir el volumen más allá de 0 dB:** Menciona que las líneas rojas en la forma de onda indican distorsión; siempre mantener por debajo de 0 dB.
- **No usar limitador en proyectos para YouTube:** Recomienda aplicar limitador en la pista principal para evitar que el audio distorsione al subir el volumen general.
- **Ajustar el volumen solo desde el Inspector del clip:** Señala que el mezclador controla el volumen de toda la pista, mientras que el Inspector controla solo el clip seleccionado; confundirlos puede dar resultados inesperados.