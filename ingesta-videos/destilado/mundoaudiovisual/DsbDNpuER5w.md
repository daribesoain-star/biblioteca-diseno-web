# Motion 5 tutorial course in Spanish - 🎬 * Chapter 10 - Camera Behaviors
**Fuente:** mundoaudiovisual | https://youtu.be/DsbDNpuER5w

## Qué enseña
Este capítulo explica los comportamientos de cámara en Motion 5: cómo aplicar movimientos automatizados (zoom, paneo, encuadre, enfoque, travelling) y cómo animar la cámara manualmente con fotogramas clave para crear recorridos circulares alrededor de objetos 3D.

## Lecciones accionables
- **Abrir comportamientos de cámara:** Ir a Biblioteca > Behaviors > Camera, o usar el botón "Camera Behaviors" en la interfaz superior.
- **Zoom In/Out:** Arrastrar el comportamiento "Zoom In/Out" a la cámara. En el Inspector, ajustar el parámetro "Amount" (rango 0 a 1). Valor positivo = zoom in; valor negativo = zoom out.
- **Camera Pan (paneo):** Aplicar "Pan" a la cámara. En Inspector, definir "Start Angle" (ej. 60°) y "End Angle" (ej. 30°). El ángulo positivo mueve la cámara hacia la derecha; negativo hacia la izquierda.
- **Zoom Layer:** Aplicar "Zoom Layer" a la cámara. En Inspector, arrastrar un objeto al campo "Layer to Zoom" (ej. el logo). Ajustar "Amount" (positivo = zoom in, negativo = zoom out). En "Timing", elegir: "Constant", "Slow Entry", "Slow Exit", "Both Slow" o "Accelerate".
- **Frame (encuadre):** Aplicar "Frame" a la cámara. En Inspector, en "Target", seleccionar un objeto (ej. "MundoAudiovisual logo") o "Entire Scene". La cámara se reposiciona automáticamente para encuadrar ese objetivo.
- **Encuadre secuencial para storytelling:** Duplicar grupos de objetos en la escena. Añadir múltiples comportamientos "Frame" en la línea de tiempo, cada uno con un target diferente y duración distinta. Superponerlos para que activen en secuencia.
- **Depth of Field (enfoque):** Activar en Render > "Show Depth of Field". Ajustar la distancia de la cámara al objeto: acercar = objeto enfocado; alejar = desenfoque.
- **Tracking Shot (travelling):** Aplicar "Tracking Shot" a la cámara. En Inspector, ajustar "Distance" (ej. 1000). La cámara se acerca/aleja del objeto automáticamente. Opcional: rotar ligeramente (ej. 5°) y elevar la cámara para efecto de sobrevuelo.
- **Animación manual con keyframes (recorrido circular):**
    1. Posicionar cámara en vista general (todo a cero).
    2. En segundo 0, añadir keyframes a Position (X,Y,Z) y Rotation (X,Y,Z) o usar "Orientation".
    3. En segundo 5, mover cámara a un lado, subir ligeramente, rotar. Añadir keyframes.
    4. En segundo 10, mover cámara detrás del objeto, subir, rotar. Añadir keyframes.
    5. En segundo 15, mover cámara a otro lado, bajar, rotar. Añadir keyframes.
    6. En segundo 20, volver a posición inicial (todo a cero). Añadir keyframes.
    7. En Inspector de cámara, cambiar de "Use Rotation" a "Use Orientation" para evitar que la cámara retroceda.
- **Ajustar curvas de keyframes:** Abrir panel Keyframes (Command+8). Seleccionar keyframes con picos bruscos, clic derecho > "Smooth Both" para suavizar transiciones.
- **Atajos de teclado:** Command+7 = ocultar línea de tiempo; Command+8 = ocultar/mostrar panel de keyframes.

## Reglas para agentes
- Usa "Use Orientation" en lugar de "Use Rotation" cuando animes keyframes de cámara para evitar retrocesos no deseados.
- Aplica "Smooth Both" a keyframes con picos bruscos en el panel de keyframes para transiciones suaves.
- Cuando uses "Zoom Layer", asigna siempre un objeto al campo "Layer to Zoom" en el Inspector.
- Para storytelling con "Frame", duplica los grupos de objetos antes de asignar targets diferentes.
- Activa "Show Depth of Field" en Render solo cuando quieras efecto de desenfoque de fondo.
- Nunca uses valores de "Amount" mayores a 1 en Zoom In/Out; el rango válido es 0 a 1.

## Errores comunes que evita o menciona
- **Retroceso en animación circular:** Si al volver a posición cero la cámara retrocede en lugar de completar el círculo, cambiar de "Use Rotation" a "Use Orientation" en el Inspector de cámara.
- **Saltos bruscos entre keyframes:** Se corrigen seleccionando los keyframes problemáticos en el panel Keyframes y aplicando "Smooth Both".
- **Olvidar desactivar "Frame" para mover cámara manualmente:** Si el comportamiento "Frame" está activo, no se puede reposicionar la cámara libremente; hay que desactivarlo temporalmente.
- **Objetos no visibles por iluminación:** Al duplicar grupos, verificar que tengan iluminación activa; si no, desactivar "Affected by Lights" en Properties del objeto duplicado.