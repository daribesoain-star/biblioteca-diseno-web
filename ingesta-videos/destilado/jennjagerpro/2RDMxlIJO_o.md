# Product Animation in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/2RDMxlIJO_o

## Qué enseña
Cómo crear una animación de producto tipo "explosión" combinando video en vivo (grabado sobre fondo blanco con plato giratorio) e imágenes fijas de fruta recortadas, usando Apple Motion para animar en 3D con máscaras, keyframes de posición/rotación, corrección de color y profundidad de campo.

## Lecciones accionables
- Grabar el producto sobre un plato giratorio con fondo blanco, y por separado grabar fruta (ej. fresas) con la misma iluminación; exportar fotogramas fijos desde Final Cut Pro.
- En Apple Motion: importar el clip de video, reducir escala a 1080p, recortar duración al fotograma deseado.
- Aplicar filtro **Color > Color Wheels**: subir contraste y saturación global.
- Ajustar velocidad: en **Inspector > Propiedades > Timing > Speed**, aumentar a **400%**.
- Para recortar el producto del fondo: usar **Rectangle Mask**, luego en Inspector > Mask > **Convert to Points**, activar keyframes en **Control Points** y ajustar punto por punto en la línea de tiempo para seguir el movimiento del producto (especialmente si el plato giratorio no está centrado).
- Añadir un **Color Solid** blanco como fondo (usar gotero para igualar el blanco del video).
- Recortar las fresas desde las imágenes fijas en Pixelmator Pro (o Photoshop): usar **Quick Selection Tool**, luego **Select and Mask** para eliminar bordes verdes del cuchillo, aplicar máscara, duplicar capas por cada fresa individual.
- Exportar desde Pixelmator Pro como **Photoshop Document (.psd)** con opción **Optimize for Final Cut Pro** marcada.
- Importar el .psd en Motion: arrastrar al panel de proyecto, seleccionar **Import All Layers**.
- Agrupar todas las fresas, aplicar filtro **Color Wheels** al grupo para igualar color con el producto.
- Activar 3D: **Add Object > Camera**, confirmar "Make this 3D".
- Cambiar el grupo de fresas a **2D** (desplegable en Inspector > Group o icono de capas en el panel) para que el producto pueda pasar al frente en Z.
- Posicionar cada fresa detrás del producto: keyframe en **Position (X, Y, Z)** y **Rotation Z** al inicio, moverlas atrás en Z.
- Avanzar **12 frames**: reposicionar cada fresa con movimiento dramático hacia adelante en Z y rotación.
- Avanzar al final del clip: reposicionar fresas con movimiento menos dramático, manteniendo la misma trayectoria.
- Ajustar el producto: rotar en **Z** y bajar en **Y**.
- Animar la cámara: keyframe en **Scale** al inicio (valor **62**), a los 12 frames (valor **76**), al final (valor mayor).
- Añadir fresas delante del producto: duplicar fresas favoritas, arrastrar copias fuera del grupo, resetear parámetros (**Reset Parameters**), posicionar adelante en Z, agruparlas, copiar y pegar el filtro Color Wheels.
- Retrasar la aparición de estas fresas frontales moviendo el grupo más tarde en la línea de tiempo (~20 frames).
- Animar fresas frontales: keyframe en Position y Rotation Z, mover a través de la pantalla con rotación, escalonar duración (ej. 20 y 22 frames).
- Activar **Depth of Field** en el menú desplegable **Render** (arriba a la derecha).
- En Inspector > Camera > Depth of Field: ajustar sliders para que producto y fresas traseras estén enfocados, fresas frontales desenfocadas.
- Cambiar duración del proyecto: desplegable **Show Project Duration**, escribir **5 segundos**.

## Reglas para agentes
- Usa **Convert to Points** en la máscara cuando el producto no esté perfectamente centrado en el plato giratorio.
- Usa **grupo 2D** para las frutas traseras cuando quieras que el producto pase al frente en Z sin necesidad de ordenar capas 3D.
- Usa **keyframes manuales en Control Points** cuando el motion tracker no tenga puntos de referencia estables (producto giratorio).
- Nunca apliques feather grande a la máscara del producto si las frutas van a pasar detrás de él; usa feather mínimo para evitar bordes suaves.
- Nunca olvides activar **Depth of Field** en el menú Render antes de ajustar los sliders de la cámara, o no verás los cambios.
- Siempre exporta las imágenes recortadas como **PSD con "Optimize for Final Cut Pro"** para preservar capas al importar en Motion.
- Siempre aplica corrección de color al **grupo completo** de frutas para mantener consistencia visual.

## Errores comunes que evita o menciona
- No notar que el producto está torcido en el plato giratorio, lo que obliga a keyframear la máscara manualmente en lugar de usar un rectángulo estático.
- Intentar usar motion tracking en un producto que gira: el tracker pierde el punto de referencia porque rota fuera del cuadro.
- Dejar el producto en el shot mientras se colocan las frutas (como sugería el TikTok original): la creadora recomienda grabar las frutas por separado para mayor control.
- Olvidar resetear parámetros al duplicar fresas para la capa frontal, causando posiciones/rotaciones heredadas.
- No activar Depth of Field en el menú Render antes de ajustar, lo que hace que los cambios en la cámara no se vean en vista previa.