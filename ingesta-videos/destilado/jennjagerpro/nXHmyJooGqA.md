# Explode Anything in Final Cut Pro!
**Fuente:** jennjagerpro | https://youtu.be/nXHmyJooGqA

## Qué enseña (2-3 líneas)
Este tutorial avanzado de Apple Motion enseña a construir una plantilla de generador para Final Cut Pro que permite hacer explotar cualquier elemento. Cubre la creación de un sistema de partículas 3D, la vinculación de parámetros entre capas y la publicación de controles personalizados (zoom, tamaño de explosión, rotación) para usar el efecto directamente en Final Cut.

## Lecciones accionables
- **Crear el proyecto base:** Configurar proyecto en Motion con resolución 4K y duración de 8 segundos. Activar 3D yendo a "Add Object" > "Camera". Agregar un Drop Zone con el atajo Shift+Command+D o desde "Add Object" > "Drop Zone".
- **Ajustar escala del Drop Zone:** NO usar el slider de escala en la pestaña "Image" del Drop Zone. En su lugar, seleccionar el grupo que contiene el Drop Zone, ir a "Properties" y escalar al 50%. Deshabilitar el crop que se aplica automáticamente en "Properties" del Drop Zone.
- **Añadir oscilación previa a la explosión:** Seleccionar el Drop Zone, desplegar "Rotation" > "Y rotation" y agregar "Oscillate" (parameter behavior). Configurar: Amplitude = 0, Speed = 330. Crear keyframe en Amplitude al segundo 1 (valor 0) y al final del Drop Zone (valor 30). Duplicar el behavior, cambiar "Apply to" a "Z rotation", dejar primer keyframe en 0 y segundo keyframe en Amplitude = 10.
- **Aplicar desenfoque direccional al grupo:** Seleccionar el grupo del Drop Zone, agregar filtro "Directional Blur". Keyframear: al frame 1:20 (1 segundo 20 frames) Amount = 0, al final del Drop Zone Amount = 300.
- **Crear el emisor de partículas:** Deshabilitar el grupo del Drop Zone. Dibujar un círculo perfecto (Shape > Circle, mantener Shift). Arrastrarlo fuera del grupo deshabilitado a uno nuevo arriba de la cámara. Habilitar "Fill", deshabilitar "Outline", resetear parámetros. Agregar filtro "Glow" con Radius = 75.
- **Configurar el sistema de partículas:** Seleccionar el círculo, hacer clic en "Make Particles". En Inspector: cambiar "Point" a "Image", "Arrangement" a "Random Fill". Arrastrar el Drop Zone (no el grupo) al campo "Image Source". Activar "3D". Birth Rate = mínimo, Initial Number = 2500, Life = 2 segundos, Speed = 1000. En "Opacity over Life": crear un tag al final de la barra blanca y deslizar opacidad a 0. Scale = 25%.
- **Alinear tamaño del emisor con el grupo:** Seleccionar el emisor, en "Properties" > "Scale" agregar "Link" (parameter behavior). Arrastrar el grupo del Drop Zone (no el Drop Zone) al campo "Source Object".
- **Sincronizar desenfoque y rotación:** Copiar el filtro "Directional Blur" del grupo y pegarlo en el emisor. En la línea de tiempo, mover el blur al inicio del emisor e intercambiar los keyframes rojos para que empiece borroso y se aclare. Para la rotación: en el emisor, bajo "Y rotation" agregar "Link" y arrastrar el Drop Zone (no el grupo) al campo "Source Object". Repetir para "Z rotation" con el segundo oscillate.
- **Publicar parámetros para Final Cut Pro:** 
  - **Zoom (cámara):** En la cámara, bajo "Scale", seleccionar "Add to Rig" > "Create New Rig" > "Slider". Primer pin: Start, valor 400. Segundo pin: Start, valor 1. Publicar el rig y renombrarlo a "zoom".
  - **Object Size:** Publicar "Scale" del grupo del Drop Zone. Renombrar a "object size".
  - **Particles:** Publicar "Initial Number" del emisor. Renombrar a "particles".
  - **Particle Size:** Publicar "Scale" del emisor. Renombrar a "particle size".
  - **Explosion Size:** Publicar "Speed" del emisor. Renombrar a "explosion size".
  - **Rotate Z y Rotate Y:** Publicar los behaviors "Oscillate" de Z rotation y Y rotation respectivamente. Renombrarlos.
- **Finalizar y exportar:** Limpiar el Drop Zone (botón "Clear"). Guardar con Command+S. En Final Cut Pro, arrastrar el generador a la línea de tiempo y ajustar parámetros en el Inspector.

## Reglas para agentes
- Usa "Shift+Command+D" para agregar un Drop Zone en Motion.
- Nunca ajustes la escala del Drop Zone desde la pestaña "Image"; hazlo siempre a nivel de grupo en "Properties".
- Aplica el filtro "Directional Blur" al grupo, no al Drop Zone individual.
- Cuando crees el emisor, arrastra el Drop Zone (no el grupo) al campo "Image Source" del sistema de partículas.
- Para el "Link" behavior de escala, usa el grupo del Drop Zone como "Source Object"; para el "Link" de rotación, usa el Drop Zone directamente.
- Publica los parámetros con nombres descriptivos (zoom, object size, particles, particle size, explosion size, rotate Z, rotate Y) para que sean intuitivos en Final Cut Pro.
- Siempre limpia el Drop Zone (botón "Clear") antes de guardar la plantilla para Final Cut Pro.

## Errores comunes que evita o menciona
- **No usar la escala del Drop Zone en la pestaña Image:** Si se ajusta ahí, no se puede aplicar el "Link" behavior para sincronizar el tamaño del emisor, lo que causa que la explosión no coincida con el objeto original.
- **No aplicar el desenfoque direccional al grupo:** Hacerlo al Drop Zone individual no funcionará correctamente para el efecto deseado.
- **No sincronizar la rotación del emisor con el Drop Zone:** Sin el "Link" behavior en Y y Z rotation, el emisor pierde el momentum de la oscilación y la explosión se ve desconectada del movimiento previo.
- **No limpiar el Drop Zone antes de guardar:** Si se deja una imagen de placeholder, al usar el generador en Final Cut Pro aparecerá esa imagen por defecto en lugar de un Drop Zone vacío listo para recibir contenido.