# Apple Motion Highlight Tutorial
**Fuente:** jennjagerpro | https://youtu.be/W-6mPdTvT38

## Qué enseña (2-3 líneas)
Cómo crear efectos de luz animados que resaltan edificios y elementos en tomas de video time-lapse o aéreas usando únicamente las herramientas nativas de Apple Motion, sin plugins externos. La técnica combina máscaras B-spline (BZA), trazados de luz (Light Streak), replicadores, generadores de gradiente y emisores de partículas para lograr un resultado visual dinámico.

## Lecciones accionables
- **Duplicar el clip base** antes de enmascarar: selecciona el clip en el panel de proyecto, presiona Cmd+D para duplicarlo. Usa el clip duplicado para recortar el elemento que quedará en primer plano (ej. Empire State Building).
- **Zoom en el lienzo** con Cmd++ (acercar) y Cmd+- (alejar) para trabajar con precisión en los trazados.
- **Crear un trazado BZA (B-spline):** selecciona la herramienta BZA en el centro de la pantalla, dibuja alrededor del elemento, luego haz clic en cualquier lugar del panel de proyecto para fijar el trazado.
- **Ajustar ancho del trazo:** en el inspector, baja significativamente el valor de "Width" para que el trazado sea visible y manejable.
- **Aplicar efecto Light Streak:** en el inspector, ve a "Shape Style" → "Light" → selecciona "Light Streak" (ej. Light Streak 2, Light Streak 4). El efecto se escribe automáticamente (write-on).
- **Personalizar colores del trazo:** en el inspector, sección "Stroke", cambia los colores del degradado (ej. naranja a púrpura, verde a amarillo, coral). Mueve los puntos de color para ajustar la transición.
- **Uniformizar el ancho del trazo:** en el inspector, "Width Over Stroke", arrastra los keyframes para que el ancho sea constante en todo el recorrido.
- **Replicar un trazado BZA:** selecciona el BZA en el panel de proyecto, presiona "Replicate". En el inspector del replicador, cambia "Columns" a 1 y ajusta "Rows" a un número alto (ej. 20+). Luego, en "Properties" → "Four Corner", ajusta el skew (esquina inferior derecha) para alinear las réplicas con el ángulo del edificio.
- **Enmascarar el replicador:** selecciona el replicador, presiona "BZA Mask", dibuja el contorno del edificio que debe ocultar las líneas, luego marca "Invert Mask" en el inspector.
- **Duplicar y escalonar BZAs individuales:** haz clic derecho en el BZA en la línea de tiempo → "Duplicate". Arrastra los duplicados para escalonar su inicio en el tiempo (efecto escalera). Reposiciona cada uno en "Properties".
- **Crear un efecto de barrido con gradiente:** en la biblioteca (Library) → "Generators" → arrastra "Gradient" al proyecto. En el inspector, ajusta colores y valores "Start"/"End" para posicionarlo. Baja la opacidad para ver el edificio debajo. Aplica una máscara BZA para recortar la forma deseada. Agrupa el gradiente solo (clic derecho → "Group") y añade una segunda máscara BZA. Keyframe los "Control Points" de esta segunda máscara: en el inspector, activa keyframes para los 4 puntos al inicio del clip, avanza 1 segundo en la línea de tiempo, mueve los puntos para que el gradiente "barra" la superficie.
- **Colocar el BZA entre capas:** arrastra el trazado BZA en el panel de proyecto entre el clip base (abajo) y el elemento recortado (arriba) para que la luz se vea detrás del edificio.
- **Agregar partículas de nieve:** en la biblioteca → "Particle Emitters" → arrastra "Snow Flurry" al tope del panel de proyecto. Reposiciona el emisor hacia la parte superior del encuadre. En el inspector, reduce "Size". Dentro del emisor, selecciona los elementos "Blur", cambia "Color" a "Pick from Color Range" y elige colores que combinen con el cielo.
- **Animación de zoom final:** selecciona el grupo superior del proyecto (que contiene todo). En "Properties", coloca el playhead al inicio, activa keyframes en "Scale" y "Position". Ve al final de la línea de tiempo, ajusta "Scale" (ej. 110%) y modifica ligeramente el valor X de "Position" para descentrar el encuadre.

## Reglas para agentes
- Usa un proyecto 1080p con clips fuente 4K cuando planees hacer zoom, para no perder resolución.
- Siempre duplica el clip base antes de enmascarar un elemento que quedará en primer plano.
- Cuando dibujes un BZA, haz clic en cualquier lugar del panel de proyecto para fijarlo; no presiones Enter.
- Ajusta el ancho del trazo a un valor bajo inmediatamente después de crear un BZA para ver claramente el trazado.
- Usa "Light Streak" como estilo de forma (Shape Style → Light) para obtener el efecto write-on automático.
- Cuando uses "Width Over Stroke", arrastra los keyframes para igualar el ancho; no los elimines.
- Para replicar BZAs en paralelo, usa "Replicate" con Columns=1 y ajusta Rows; luego aplica skew en Four Corner para alinear con la perspectiva del edificio.
- Siempre agrupa un elemento antes de añadirle una segunda máscara (clic derecho → "Group").
- Para animar una máscara de barrido, keyframe todos los control points simultáneamente al inicio y al final del movimiento.
- Coloca los BZAs de luz entre el clip base y el elemento recortado en el orden de capas del panel de proyecto.
- Al final, keyframe Scale y Position del grupo superior para crear el efecto de cámara lenta.

## Errores comunes que evita o menciona
- **No planificar el diseño antes de empezar:** el tutorial enfatiza que la clave del éxito es tener un plan y una visión clara antes de comenzar a trabajar.
- **Perder resolución al hacer zoom:** evita usar clips del mismo tamaño que el proyecto si planeas acercarte; usa material 4K en un proyecto 1080p.
- **Olvidar invertir la máscara del replicador:** cuando enmascaras un replicador para ocultar líneas que se superponen a un edificio, debes marcar "Invert Mask" para que la máscara oculte lo que está dentro del contorno.
- **No escalonar los duplicados en el tiempo:** si duplicas BZAs para crear múltiples líneas, debes arrastrarlos en la línea de tiempo para que sus inicios estén desfasados (efecto escalera), no todos al mismo tiempo.
- **Aplicar una máscara directamente sobre un gradiente sin agruparlo primero:** si ya hay una máscara en el gradiente y necesitas añadir otra para animar un barrido, debes agrupar el gradiente (clic derecho → "Group") antes de aplicar la segunda máscara.
- **No suavizar los keyframes del ancho del trazo:** si no ajustas los keyframes en "Width Over Stroke", el trazo puede aparecer más grueso en un extremo que en otro.
- **Dejar el emisor de partículas con colores predeterminados:** para integrar las partículas con la escena, debes cambiar el color a "Pick from Color Range" y seleccionar tonos del cielo.