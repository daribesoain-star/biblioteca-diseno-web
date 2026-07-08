# Motion 5 tutorial course in Spanish - 🎬 * Chapter 13 - Titles for Final Cut Pro X
**Fuente:** mundoaudiovisual | https://youtu.be/0J1HXM7jw4Y

## Qué enseña
Este capítulo enseña a crear títulos animados personalizados en Motion 5 para usarlos directamente en Final Cut Pro X. Cubre la creación de un rectángulo con borde iluminado (efecto glow), la animación de dibujo del rectángulo mediante keyframes y la animación de texto con comportamientos de escritura, todo exportado como plantilla de título reutilizable.

## Lecciones accionables
- Al crear un nuevo proyecto en Motion, seleccionar "Final Cut Titles" como tipo de proyecto, configurar resolución 4K Ultra HD, 25 fps y duración de 5 segundos (o 10 segundos si se necesita más tiempo de animación).
- Ajustar el fondo del título al tamaño de la pantalla usando la herramienta de escala.
- Doble clic en el cuadro de texto, ir al Inspector, centrar el texto horizontal y verticalmente dentro del cuadro.
- Usar la herramienta "Rectangle" de Motion para crear un rectángulo alrededor del texto.
- En el Inspector del rectángulo, en "Style" > "Outline", quitar el relleno (fill) y configurar un stroke con ancho de 25 píxeles y color amarillo.
- Para bordes cuadrados (no redondeados), en el rectángulo ir a "Stroke" y seleccionar "Square" tanto en "Initial Layer Square" como en "Final Layer Square".
- Ajustar tamaño del rectángulo desde "Shapes" > "Geometry" (ancho y alto) en lugar de usar escala en "Properties", para mantener el grosor del borde constante.
- Añadir filtro "Glow" al rectángulo: ir a "Filters", seleccionar "Glow", aumentar el radio a 100% y reducir el threshold para un efecto más difuso y brillante.
- Para animar el dibujo del rectángulo: en "Shape" > "Style", usar "Offset from First Point" y "Offset from Last Point". Crear keyframe en "Offset from First Point" al inicio (100%) y al final del dibujo (0%).
- Si el punto de inicio del dibujo no es el deseado, convertir el rectángulo a puntos: "Geometry" > "Convert to Points". Luego hacer clic derecho en el punto deseado y seleccionar "Snap to Start Point".
- Para añadir un punto de control extra: hacer clic derecho en un punto existente y seleccionar "Add Point".
- Para animar la aparición del texto: colocar el texto en el timeline en el momento deseado (ej. segundo 1), luego aplicar un comportamiento de texto: "Behaviors" > "Text" > "Marker" o "Glow" > "Smoking".
- Para invertir la dirección de un comportamiento de texto, usar "Behaviors" > "Move Backward".
- Extender la duración del proyecto si es necesario: en "Project" cambiar duración a 10 segundos y arrastrar los elementos en el timeline hasta el final.
- Guardar como plantilla de título: "File" > "Save", nombrar el template (ej. "Title: A Rectangle in Motion 5"), seleccionar la carpeta de tema "Title", marcar "Save Preview Videos" y hacer clic en "Publish".
- En Final Cut Pro X, los títulos guardados aparecen en la biblioteca de títulos dentro de la carpeta "multi 15" (o la carpeta correspondiente). Arrastrar al timeline sobre un clip de video.
- En Final Cut, se puede modificar el texto, fuente, tamaño, sombra y contorno del título como cualquier título nativo.

## Reglas para agentes
- Usa "Final Cut Titles" como tipo de proyecto cuando crees títulos para Final Cut Pro X en Motion 5.
- Configura siempre la resolución a 4K Ultra HD para que el título sea usable en proyectos HD y 4K.
- Ajusta el tamaño del rectángulo desde "Geometry" (ancho/alto) y no desde "Properties" > "Scale" para mantener el grosor del borde constante.
- Convierte a puntos ("Convert to Points") antes de animar el dibujo de un rectángulo si necesitas cambiar el punto de inicio del dibujo.
- Usa "Snap to Start Point" para definir manualmente desde qué punto del rectángulo comienza la animación de dibujo.
- Marca siempre "Save Preview Videos" al guardar la plantilla para que aparezca una vista previa en Final Cut Pro X.
- Nunca uses la escala de "Properties" para redimensionar un rectángulo con borde si quieres mantener el grosor del stroke constante.

## Errores comunes que evita o menciona
- No usar la escala de "Properties" para cambiar tamaño del rectángulo porque engrosa el borde (stroke) desproporcionadamente; usar "Geometry" para ancho y alto.
- No olvidar convertir a puntos ("Convert to Points") antes de cambiar el punto de inicio del dibujo, ya que las animaciones basadas en curvatura, radio o tamaño se pierden al convertir.
- No dejar el rectángulo con bordes redondeados si se desea un estilo cuadrado; cambiar a "Square" en las opciones de stroke.
- No olvidar extender la duración del proyecto si la animación requiere más tiempo que los 5 segundos predeterminados.
- No omitir la creación del video de vista previa al guardar, pues en Final Cut no se mostrará previsualización del efecto.