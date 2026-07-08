# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 2 - La Línea de Tiempo
**Fuente:** mundoaudiovisual | https://youtu.be/YEgJaGub8I4

## Qué enseña (2-3 líneas)
Este capítulo explica cómo crear y gestionar la línea de tiempo (timeline) en Adobe Premiere Pro 2020. Cubre la creación manual de secuencias, la importación y colocación de clips, el uso de marcadores de entrada y salida, y la función de las diferentes pistas y botones de control en la línea de tiempo.

## Lecciones accionables
- **Crear una secuencia desde cero:** Ve a "Archivo" > "Nuevo" > "Secuencia" o usa el atajo de teclado `Command+N` (Mac) / `Control+N` (Windows). Selecciona un preset como "AVCHD 1080p29.97" y nombra la secuencia en el campo inferior antes de hacer clic en "Aceptar".
- **Importar contenido:** Usa `Command+I` (Mac) / `Control+I` (Windows) o ve a "Archivo" > "Importar". Selecciona múltiples clips manteniendo presionada la tecla `Shift` o `Command`/`Control`.
- **Marcar entrada y salida en un clip:** En el monitor de origen, coloca el cabezal de reproducción donde quieras que comience el clip y presiona la tecla `I` (Mark In Point). Luego, coloca el cabezal donde quieras que termine y presiona la tecla `O` (Mark Out Point). Arrastra el clip marcado desde el monitor de origen hasta la línea de tiempo.
- **Ajustar clip al tamaño del fotograma:** Haz clic derecho sobre el clip en la línea de tiempo y selecciona "Ajustar al tamaño del fotograma" (Fit to Frame Size) para evitar pérdida de calidad. No uses "Escalar al tamaño del fotograma" (Scale to Frame Size) porque elimina píxeles.
- **Zoom en la línea de tiempo:** Mantén presionada la tecla `Option` (Mac) / `Alt` (Windows) y desplázate con la rueda del mouse hacia arriba o abajo para acercar o alejar. Con el mouse sobre la pista, la misma combinación ajusta la altura de las pistas.
- **Navegar fotograma a fotograma:** Usa las teclas de flecha derecha e izquierda del teclado para avanzar o retroceder un fotograma a la vez. El contador de tiempo en la línea de tiempo muestra el cambio.
- **Activar/desactivar pistas de video y audio:** Usa los iconos de "V" (video) y "A" (audio) a la izquierda de la línea de tiempo. Si desactivas "V1", al arrastrar un clip solo se importará el audio. Si desactivas "A1", solo se importará el video.
- **Silenciar o aislar pistas de audio:** Usa "M" (Mute) para silenciar una pista de audio. Usa "S" (Solo) para escuchar únicamente esa pista y silenciar las demás.
- **Activar el ajuste (Snap):** Haz clic en el icono del imán (Snap) en la parte superior de la línea de tiempo para que los clips se alineen automáticamente con los bordes de otros clips, marcadores o el cabezal de reproducción.
- **Agregar marcadores en la línea de tiempo:** Coloca el cabezal de reproducción donde quieras el marcador y haz clic en el icono de marcador (banderín) en la parte superior de la línea de tiempo. Haz doble clic en el marcador para cambiar color, agregar comentarios o crear un marcador de capítulo.
- **Eliminar un clip de la línea de tiempo:** Selecciona el clip y presiona la tecla `Delete` (Suprimir) o `Backspace`.

## Reglas para agentes
- Usa "Ajustar al tamaño del fotograma" (Fit to Frame Size) cuando un clip tenga una resolución mayor que la secuencia; nunca uses "Escalar al tamaño del fotograma" (Scale to Frame Size) porque elimina píxeles y reduce calidad.
- Cuando arrastres un clip a la línea de tiempo, verifica que las pistas de video (V) y audio (A) estén activadas según lo que quieras importar (solo video, solo audio o ambos).
- Mantén activado el ajuste (Snap, icono de imán) para que los clips se alineen automáticamente; desactívalo solo si necesitas colocación manual precisa.
- Para hacer zoom en la línea de tiempo, usa siempre `Option`/`Alt` + rueda del mouse; nunca uses la herramienta de zoom manual si puedes evitarlo.
- Cuando crees una secuencia manualmente, iguala los fotogramas por segundo (fps) del clip original; nunca aumentes los fps del clip en la secuencia (p. ej., no pongas un clip de 25 fps en una secuencia de 30 fps).
- Usa las teclas `I` y `O` para marcar entrada y salida en el monitor de origen antes de arrastrar un clip a la línea de tiempo; no arrastres clips completos si solo necesitas una parte.
- Para eliminar un clip, selecciónalo y presiona `Delete`; no uses la tecla `Backspace` en Windows si prefieres mantener el estándar de edición.

## Errores comunes que evita o menciona
- **No cambiar la frecuencia de fotogramas al alza:** Si el clip original está grabado a 25 fps, no lo coloques en una secuencia de 30 fps porque Premiere "inventará" fotogramas, lo que degrada la calidad. Bajar la frecuencia (de 60 a 30 fps) es aceptable; subirla no.
- **No usar "Escalar al tamaño del fotograma":** Esta opción elimina píxeles del clip original, reduciendo la calidad de imagen. Siempre usa "Ajustar al tamaño del fotograma" para mantener la resolución máxima.
- **No arrastrar clips completos sin marcar:** Si arrastras todo el clip a la línea de tiempo, tendrás que recortarlo después. Usa los marcadores de entrada (`I`) y salida (`O`) para llevar solo la parte deseada.
- **No ignorar el mensaje de discrepancia de configuración:** Al arrastrar un clip con fps diferente a la secuencia, Premiere pregunta si cambiar la secuencia. Mantén la configuración existente (Keep Existing Settings) para no forzar un cambio de fps.
- **No desactivar el ajuste (Snap) sin necesidad:** Si desactivas el imán, los clips no se alinearán automáticamente, lo que dificulta la edición precisa. Actívalo por defecto.
- **No olvidar que las pistas superiores tienen prioridad visual:** Los clips en pistas de video más altas (V2, V3) se muestran sobre los de pistas inferiores (V1). Si no quieres que se superpongan, coloca los clips en pistas separadas o ajusta la opacidad.