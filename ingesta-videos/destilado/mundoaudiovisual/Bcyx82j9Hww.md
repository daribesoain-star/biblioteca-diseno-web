# Curso - Final Cut pro X - 2020 - 🎬 * Cap. 9 - Chroma Key - Pantalla Verde - Especial 100
**Fuente:** mundoaudiovisual | https://youtu.be/Bcyx82j9Hww

## Qué enseña (2-3 líneas)
Este capítulo enseña cómo realizar un croma key (pantalla verde) en Final Cut Pro X para simular un set de televisión, incluyendo la sincronización de audio con una palmada, el uso de máscaras de recorte, la superposición de imágenes y la distorsión de video para incrustarlo en una pantalla de TV. También cubre la edición de múltiples clips de video y audio sincronizados.

## Lecciones accionables
- **Sincronizar audio con palmada:** Busca el pico de audio de la palmada en la forma de onda, coloca el cursor exactamente en ese punto y usa la herramienta magnética (magnetic tool) para alinear el audio del micrófono con el video de la cámara.
- **Aplicar efecto Overlay:** Ve a la pestaña de efectos, busca "Overlay" y arrastra el efecto al clip principal sobre la imagen de fondo (TV). Esto hace que el verde de la pantalla se vuelva transparente y muestre el fondo.
- **Usar máscara de dibujo (Drawing Mask):** Arrastra el efecto "Drawing Mask" al clip principal. Ajusta los puntos de control para recortar áreas específicas (ej. bordes de la mesa). Marca la casilla "Invert" para que la máscara oculte lo seleccionado y muestre el resto.
- **Añadir múltiples máscaras:** Después de crear la primera máscara, haz clic en "Add" para agregar otra. Repite el proceso de dibujar puntos y marcar "Invert" para cada área que quieras recortar.
- **Ajustar sombras con Sample Color:** En el efecto Overlay, usa la herramienta "Sample Color" (cuentagotas) y haz clic sobre las sombras verdes no deseadas para eliminarlas. Ajusta los parámetros de "Edges" y "Strength" si es necesario.
- **Sincronizar segundo clip con palmada:** Reproduce el segundo clip, localiza la palmada en la forma de onda, presiona la tecla **M** para marcar el punto. Luego, alinea esa marca con el pico de audio del clip principal.
- **Recortar clips sincronizados:** Selecciona ambos clips (video y audio) con la tecla **Shift**, usa la herramienta de recorte (Blade Tool o atajo **B**) para cortar en el punto de inicio deseado, y elimina la parte sobrante.
- **Distorsionar video para TV:** Selecciona el clip a incrustar, ve al inspector, activa la herramienta "Distort" (en la sección Transform). Arrastra cada uno de los cuatro puntos de esquina para ajustarlos a las esquinas de la pantalla de TV en el fondo.
- **Escalar y reposicionar:** Usa la herramienta "Transform" (atajo **Shift+T**) para escalar y mover el clip dentro de la TV antes de distorsionarlo.
- **Añadir música de fondo:** Importa un archivo de audio de música, colócalo en la línea de tiempo y ajusta el volumen a aproximadamente **-12 dB** para que no opaque los diálogos.
- **Añadir transiciones:** Para cortes abruptos entre clips repetidos, aplica una transición "Dissolve" (atajo **Command+T**) para suavizar el cambio.
- **Añadir logo en TV:** Importa la imagen del logo, colócala sobre el clip de la TV, escala y distorsiona de la misma manera que el video, ajustando punto por punto a las esquinas de la pantalla.
- **Ajustar duración del logo:** Recorta el logo para que aparezca solo cuando el presentador termina de hablar y desaparezca con un fade-out al final del clip.

## Reglas para agentes
- Usa la herramienta magnética (magnetic tool) activada por defecto para que los clips se alineen automáticamente al cortar o mover.
- Usa la tecla **M** para marcar puntos de sincronización exactos en la línea de tiempo.
- Usa **Shift** para seleccionar múltiples clips (video y audio) antes de recortar o eliminar.
- Usa **Command+T** para aplicar una transición Dissolve a cortes entre clips repetidos.
- Ajusta el volumen de la música de fondo a **-12 dB** para evitar que opaque los diálogos.
- Nunca dejes sombras verdes visibles; usa Sample Color para eliminarlas.
- Nunca dejes bordes duros en las máscaras; ajusta los parámetros de "Edges" en el efecto Overlay para suavizar.

## Errores comunes que evita o menciona
- **Sombras verdes residuales:** Aparecen cuando el croma key no elimina completamente el color verde de la pantalla. Se soluciona usando la herramienta Sample Color para seleccionar y eliminar esas sombras.
- **Máscara invertida incorrectamente:** Si la máscara oculta lo que quieres mostrar, marca la casilla "Invert" para cambiar la selección.
- **Cortes abruptos en clips repetidos:** Al duplicar secciones de video para alargar una escena, los cortes se ven bruscos. Se corrige añadiendo una transición Dissolve.
- **Audio desincronizado:** Si el audio del micrófono no coincide con el video, se debe alinear manualmente usando la palmada como referencia y la herramienta magnética.
- **Distorsión incorrecta del video en TV:** Si el video no se ajusta a las esquinas de la pantalla, se debe usar la herramienta Distort y arrastrar cada punto de esquina individualmente.