# Apple Motion Tutorial
**Fuente:** jennjagerpro | https://youtu.be/zDpuMU8dXaM

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un efecto de revelación con destellos (sparkle reveal) estilo Disney alrededor de un objeto 3D en Apple Motion. Combina el uso de B-spline, máscaras recortadas, emisores de partículas y un motion path para simular que los destellos giran alrededor del objeto en un eje Z que la herramienta no soporta nativamente.

## Lecciones accionables
- **Crear la línea guía con B-spline:** Selecciona la herramienta **B-spline** (en el centro de la pantalla) y dibuja un patrón en zigzag que cruce de un lado a otro del objeto (ej. lata Monster Energy). Ajusta los puntos de control con **Edit Points** para que la curva quede fuera del objeto en todo momento, dándole forma de espiral.
- **Aplicar Write On a la B-spline:** Selecciona la B-spline, ve a **Behaviors > Shape > Write On**. Aparecerá una barra púrpura en la línea de tiempo que controla la velocidad de escritura de la línea.
- **Crear máscaras de recorte para simular profundidad 3D:** Duplica el objeto (clic derecho > **Duplicate**). Coloca la copia encima de la B-spline en el panel de proyecto. Usa la herramienta **Rectangle Mask** (en el centro de la pantalla) para dibujar un rectángulo sobre una sección de la línea. En el inspector, haz clic en **Convert to Points** y ajusta las esquinas para que coincidan con el ángulo de la línea. Aumenta el **Feathering** en el inspector para suavizar el borde.
- **Duplicar y reposicionar máscaras:** Duplica la capa con la máscara (clic derecho > **Duplicate**). En la línea de tiempo, selecciona la máscara duplicada y arrastra sus puntos de control para cubrir la siguiente sección de la B-spline donde la línea baja de derecha a izquierda. Repite hasta cubrir todos los tramos inclinados.
- **Convertir la B-spline en un camino de partículas:** Ve a **Library > Particle Emitters > Sparkles** y arrastra **Magic Wand** al panel de proyecto, debajo de las capas con máscara pero encima de la lata original. Selecciona Magic Wand, ve a **Behaviors > Basic Motion > Motion Path**. En el inspector, cambia **Path Shape** de "Open Spline" a **Geometry**. Aparecerá un campo **Drop Zone**; arrastra la B-spline original a ese campo.
- **Ocultar la B-spline:** Desmarca la casilla de visibilidad de la B-spline en el panel de proyecto para que no se vea la línea, solo los destellos.
- **Ajustar el emisor de partículas:** Selecciona Magic Wand en el panel de proyecto. En el inspector, en la pestaña **Emitter**, aumenta **Scale** y **Birth Rate** para más destellos. En la pestaña del emisor (desplegable dentro de Magic Wand), desmarca **Flare One** para eliminar los diamantes. Selecciona **Sparkles** dentro del emisor y cambia el color usando el **Color Gradient Bar**: selecciona el cuadro amarillo, usa el **Eye Dropper** para tomar color del logo del objeto. Ajusta **Scale Randomness** y **Angle Randomness** para variar tamaño y separación.
- **Acelerar la animación:** En la línea de tiempo, despliega Magic Wand, selecciona **Motion Path** y acorta la barra púrpura arrastrando su extremo.
- **Añadir máscara de revelado al grupo:** Selecciona el grupo que contiene todas las capas con máscara. Cambia el ícono del grupo (junto al nombre) al ícono de forma (no al de caja) para permitir aplicar una máscara al grupo. Dibuja un **Rectangle Mask** sobre el canvas, conviértelo a puntos (**Convert to Points**). En el primer fotograma, añade un keyframe a los puntos de control. Mueve el playhead más adelante en la línea de tiempo, añade otro keyframe, selecciona los dos puntos inferiores del rectángulo (con Shift) y arrástralos hacia abajo para que la máscara se expanda. Ajusta **Feathering** en el inspector.
- **Copiar la máscara de revelado a la lata original:** Selecciona la máscara de rectángulo en la línea de tiempo, cópiala (Cmd+C), activa la lata original en el panel de proyecto y pégala (Cmd+V).
- **Ajustar el final del camino de destellos:** Reactiva la visibilidad de la B-spline, haz clic derecho en el canvas y selecciona **Edit Points**. Arrastra el último punto de control hacia abajo, fuera del canvas, para que los destellos desaparezcan al final.

## Reglas para agentes
- Usa **B-spline** en lugar de Bezier cuando necesites interpolación suave para curvas que simulen movimiento 3D.
- Cuando quieras que un objeto siga una ruta personalizada, aplica **Behaviors > Basic Motion > Motion Path** y cambia **Path Shape** a **Geometry**, luego arrastra la forma (B-spline) al campo **Drop Zone**.
- Para aplicar una máscara a un grupo de capas, cambia el ícono del grupo al ícono de forma (no al de caja) antes de dibujar la máscara.
- Nunca intentes crear puntos de línea en el eje Z en Apple Motion; la herramienta solo soporta X e Y. Usa máscaras de recorte superpuestas para simular profundidad.
- Cuando dupliques capas con máscaras, selecciona la máscara en la línea de tiempo (no la capa) para mover sus puntos de control al reposicionarla.

## Errores comunes que evita o menciona
- **No se pueden crear puntos de línea en el eje Z en Apple Motion:** todo debe hacerse en X e Y, por lo que se usan máscaras de recorte para simular que la línea rodea el objeto en 3D.
- **Olvidar cambiar el ícono del grupo** antes de aplicar una máscara al grupo; si el ícono es de caja, no se puede aplicar la máscara correctamente.
- **No ajustar el feathering de las máscaras** puede hacer que los bordes de los recortes se vean duros y rompan la ilusión de continuidad.
- **Dejar la B-spline visible** después de asignarla al motion path; hay que ocultarla para que solo se vean los destellos.
- **No eliminar "Flare One"** del emisor Magic Wand deja diamantes no deseados en la animación.