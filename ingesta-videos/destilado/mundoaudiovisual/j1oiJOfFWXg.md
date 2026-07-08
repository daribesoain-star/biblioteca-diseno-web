# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 4 - La línea de tiempo.
**Fuente:** mundoaudiovisual | https://youtu.be/j1oiJOfFWXg

## Qué enseña (2-3 líneas)
Explica la estructura y funcionamiento de la línea de tiempo en DaVinci Resolve, incluyendo el cabezal de reproducción, los botones de control, la creación de líneas de tiempo, el uso de marcadores y punteros, y el sistema de capas (pistas superiores cubren a las inferiores). También cubre cómo ajustar el zoom, bloquear pistas, desvincular clips y usar la función de imán.

## Lecciones accionables
- **Crear una línea de tiempo:** Haz clic derecho en el panel de proyectos → "Create Timelines" o arrastra un clip directamente al área de la línea de tiempo para que se cree automáticamente.
- **Activar/desactivar el imán (magnet):** Presiona la tecla `N` o haz clic en el botón "attract the print head". Actívalo siempre para que el cabezal se adhiera a cortes y marcadores; desactívalo cuando necesites posicionarte con precisión en cualquier punto.
- **Desvincular audio y video de un clip específico:** Haz clic derecho sobre el clip → desmarca "Link Clips". Para volver a vincular, selecciona ambos clips (video y audio) → clic derecho → "Link Clips".
- **Bloquear movimiento de clips en una pista:** Haz clic en el candado de la pista (lado izquierdo de la línea de tiempo). Para bloquear solo un clip específico, mantén presionada la tecla `Control` (Windows) o `Command` (Mac) y haz clic en el candado de esa pista.
- **Agregar un puntero (pointer) a un clip:** Selecciona el clip → haz clic en el botón de puntero → elige un color (ej. verde para "color terminado", rojo para "pendiente") → escribe un mensaje descriptivo.
- **Agregar un marcador (marker) en la línea de tiempo:** Coloca el cabezal donde quieras el marcador → presiona la tecla `M`. Para eliminar todos los marcadores, haz clic derecho sobre ellos → "Delete All Markers".
- **Zoom en la línea de tiempo:** Usa el deslizador de zoom o los botones de zoom. Para ver el proyecto completo, haz clic en el botón de zoom máximo. Para centrar el zoom en el cabezal, usa el botón de enfoque. Para volver al último zoom personalizado, usa el botón "return to custom zoom".
- **Insertar un clip en una pista específica:** Configura los selectores de pista (V1, A1, etc.) en la parte superior izquierda de la línea de tiempo. Luego presiona `F9` para insertar el clip en la pista de video seleccionada y la pista de audio seleccionada.
- **Desactivar visualización de una pista completa:** Haz clic en el botón de ojo (video) o altavoz (audio) de la pista. Para desactivar un clip individual, selecciona el clip y presiona la tecla `D`.
- **Aislar una pista de audio:** Haz clic en el botón de "solo" (S) de la pista de audio deseada; las demás pistas se silenciarán automáticamente.
- **Navegar fotograma a fotograma:** Usa las teclas de flecha derecha/izquierda para avanzar/retroceder un fotograma. La línea de tiempo muestra los segundos y fotogramas (ej. 30 fps: al llegar a 30 fotogramas se cumple 1 segundo).

## Reglas para agentes
- Usa el imán (`N`) activado por defecto cuando necesites que el cabezal se adhiera a cortes, marcadores o inicios/finales de clips.
- Desactiva el imán (`N`) solo cuando necesites posicionar el cabezal en un punto sin referencias cercanas.
- Bloquea pistas completas con el candado cuando hayas terminado de editar partes críticas (ej. música sincronizada) para evitar desplazamientos accidentales.
- Usa punteros de colores con mensajes descriptivos para marcar estado de clips (colorimetría, revisión, etc.) y marcadores (`M`) para puntos temporales en la línea de tiempo.
- Configura los selectores de pista (V1, A1) antes de usar `F9` para controlar exactamente dónde se inserta el clip.
- Nunca muevas clips de pistas superiores sin verificar que no estén cubriendo contenido importante en pistas inferiores.

## Errores comunes que evita o menciona
- **No confundir el botón de volumen del proyecto con el botón de suavizado de edición:** El primero ajusta el volumen general; el segundo solo hace más suave la edición de volumen, no afecta el volumen final.
- **No olvidar que las pistas superiores cubren a las inferiores:** Si un clip en pista superior tiene la misma duración que uno inferior, el inferior no será visible. Hay que recortar o mover el superior para ver el inferior.
- **No usar el imán cuando se necesita precisión sin referencias:** Si el imán está activado, el cabezal no se posicionará en puntos intermedios entre cortes o marcadores.
- **No desvincular clips accidentalmente:** El botón de desvincular todo (unlink all clips) afecta a todos los clips de la línea de tiempo; para desvincular solo uno, usa clic derecho → "Link Clips".
- **No olvidar que al bloquear una pista con el candado, no se puede mover, cortar ni modificar nada en esa pista.**