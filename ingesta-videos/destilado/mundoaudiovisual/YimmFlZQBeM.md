# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 8 - Las Máscaras V2
**Fuente:** mundoaudiovisual | https://youtu.be/YimmFlZQBeM

## Qué enseña (2-3 líneas)
Este capítulo enseña a usar máscaras en Fusion para recortar partes no deseadas de un clip y reemplazar el fondo con un color sólido. Explica los tipos de máscara (rectángulo, elipse, polígono, curvatura) y cómo combinarlas con nodos de fondo y un nodo de fusión (Merge) para crear transparencias.

## Lecciones accionables
- **Crear una composición de blending:** Ve a la biblioteca de efectos (Effects Library) → arrastra "Blending Composition" al nodograma.
- **Añadir fondo blanco:** Nodo Background → color blanco. Conéctalo al fondo (yellow input) del nodo Merge.
- **Añadir segundo fondo (foreground):** Otro nodo Background → color rojo o el que quieras. Conéctalo al foreground (green input) del nodo Merge.
- **Aplicar máscara de rectángulo:** Selecciona el nodo del foreground → haz clic en el botón "Rectangle" (icono de rectángulo en la barra de herramientas). Se crea un nodo Rectangle Mask conectado automáticamente.
- **Ajustar máscara de rectángulo:** En el inspector, modifica "Width" (ancho) y "Height" (alto) para cambiar el tamaño del recorte.
- **Aplicar máscara de elipse:** Selecciona el nodo del foreground → haz clic en "Ellipse" (icono de elipse). Conéctalo al input "Effect Mask" (triángulo) del nodo del foreground.
- **Ajustar elipse:** En el inspector, modifica "Width", "Height", "Level" (transparencia de la máscara), "Soft X/Y" (desenfoque de bordes), "Border Width" (expansión/contracción del borde).
- **Invertir máscara:** En el inspector de la máscara, marca la casilla "Invert". Esto intercambia lo visible y lo oculto.
- **Usar máscara de polígono:** Haz clic en "Polygon" (icono de polígono). Dibuja puntos en el visor para definir la forma. Cierra el polígono haciendo clic en el primer punto.
- **Usar máscara de curvatura (B-Spline):** Haz clic en "B-Spline" (icono de curva). Dibuja puntos; las líneas se curvan automáticamente.
- **Truco para dibujar máscara sin ver el clip:** Si el clip está oculto por la máscara, dibuja el polígono sin tener seleccionado ningún nodo. Luego, conecta el nodo Polygon al input "Effect Mask" del nodo del clip.
- **Añadir fondo negro:** Nodo Background → color negro (por defecto). Conéctalo al fondo (yellow input) del nodo Merge.
- **Configurar Merge para recorte:** Conecta el clip original al foreground (green input) del Merge. Conecta el fondo negro al background (yellow input) del Merge. Conecta la salida del Merge al MediaOut.
- **Renombrar nodos:** Haz clic derecho sobre un nodo → "Rename". Ejemplo: "máscara cara", "video Carlos", "fondo negro".

## Reglas para agentes
- Usa el nodo "Merge" (Blending Composition) cuando necesites combinar dos capas con una máscara.
- Conecta la máscara al input "Effect Mask" (triángulo) del nodo que quieres recortar, no al Merge directamente.
- Dibuja el polígono sin seleccionar ningún nodo si el clip está oculto por la máscara; luego conéctalo al Effect Mask.
- Nunca olvides conectar el fondo (Background) al input amarillo (background) del Merge y el clip al input verde (foreground).
- Usa "Invert" en la máscara cuando quieras ocultar lo que está visible y mostrar lo que está oculto.
- Ajusta "Soft X/Y" para suavizar los bordes de la máscara y evitar cortes duros.

## Errores comunes que evita o menciona
- **No ver el clip al dibujar la máscara:** Si seleccionas el clip y luego añades una máscara, el visor puede mostrar solo la máscara. Solución: dibuja el polígono sin seleccionar nada y luego conéctalo al Effect Mask.
- **Fondo grisáceo no coincide con el fondo añadido:** Si el fondo original del clip no es negro puro, se nota la diferencia. Solución: aplica una corrección de color al clip para que el fondo sea completamente negro antes de añadir el fondo sólido.
- **Olvidar conectar el nodo Merge:** Si no usas un Merge, el fondo y el clip no se combinan. Siempre usa un Merge para unir background y foreground.