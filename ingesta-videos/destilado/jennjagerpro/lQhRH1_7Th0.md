# Apple Motion Tutorial
**Fuente:** jennjagerpro | https://youtu.be/lQhRH1_7Th0

## Qué enseña (2-3 líneas)
Cómo crear un efecto de stop motion en Apple Motion usando texto 3D, simulando el movimiento cuadro por cuadro de letras imantadas sobre un refrigerador. Explica el flujo completo desde la configuración del texto 3D, la animación con keyframes de "hold" de 10 frames, hasta la interpolación lineal final.

## Lecciones accionables
- **Crear texto 3D:** Usa el menú desplegable de la herramienta de texto y selecciona "3D text". Escribe cada letra del alfabeto (pueden ser letras extra).
- **Ajustar apariencia del texto 3D:** Ve a "Appearance", cambia "Substance" de "Plastic" a "Generic". Ajusta "Weight" a 1.35 y aumenta "Depth". Cambia "Front of Edge" a "Square" para simular imanes de refrigerador.
- **Cambiar color por letra individual:** Selecciona la herramienta "Transform Glyph" (en lugar de la flecha tradicional). En el inspector, selecciona grupos de letras y cambia su color desde "Appearance" > "Color". Usa colores primarios (rojo, azul, amarillo, verde).
- **Duplicar texto para animación:** En el panel de proyecto, haz clic derecho sobre el texto y selecciona "Duplicate". En el duplicado, ve a "Format" y escribe las palabras deseadas (ej: "stop motion"). Resetea "Offset" y "Rotation" usando el menú desplegable > "Reset Parameter".
- **Organizar con color temporal:** Cambia el color del texto duplicado a uno diferente (ej: púrpura) para distinguirlo del fondo mientras trabajas.
- **Técnica de animación stop motion (trabajar hacia atrás):** Coloca el playhead en el punto final deseado (ej: 3 segundos). Con "Transform Glyph" activo y todo el texto seleccionado, crea keyframes en "Offset" y "Rotation".
- **Crear patrón de hold frames:** En la línea de tiempo, retrocede 10 frames con la tecla de flecha izquierda. Crea dos keyframes más en "Offset" y "Rotation" (esto genera una línea recta en el editor de keyframes = "hold frames"). Luego retrocede 1 frame adicional y crea keyframes nuevamente.
- **Mover letras individualmente:** Con los keyframes creados en el frame de movimiento, selecciona cada letra con "Transform Glyph" y modifica ligeramente los valores X, Y y Rotation (en el canvas o en el inspector).
- **Repetir ciclo:** Retrocede 10 frames desde el último keyframe, selecciona todo el texto, crea keyframes en Offset y Rotation, retrocede 1 frame, crea keyframes, mueve letras. Repetir hasta lograr la dispersión deseada.
- **Alinear interpolación:** Al finalizar, selecciona todos los keyframes en el editor de keyframes (arrastra un cuadro alrededor), haz clic derecho, ve a "Interpolation" y selecciona "Linear" para eliminar manejos y asegurar movimiento lineal.
- **Camuflar letras animadas:** Coloca el playhead al inicio de la animación (donde las letras están más dispersas). Con "Transform Glyph", cambia el color de cada letra animada para que coincida con los colores de las letras estáticas del fondo.
- **Activar keyframe viewer:** En la línea de tiempo, haz clic en el grupo de diamantes en la parte superior para que se vuelva azul. Esto muestra visualmente los keyframes.

## Reglas para agentes
- Usa "Transform Glyph" cuando necesites seleccionar y modificar letras individualmente dentro de un bloque de texto 3D.
- Crea keyframes de "Offset" y "Rotation" siempre que quieras animar la posición y rotación de cada letra.
- Mantén el patrón de 10 frames de hold seguido de 1 frame de movimiento para lograr el efecto stop motion.
- Usa "Reset Parameter" en Offset y Rotation cuando dupliques texto para que las letras vuelvan a su posición original perfectamente recta.
- Cambia la interpolación a "Linear" al finalizar la animación para evitar movimientos suavizados entre keyframes.
- Nunca modifiques keyframes intermedios sin verificar que las líneas entre hold frames permanezcan rectas en el editor de keyframes.
- Nunca uses interpolación "Bezier" o "Smooth" en animaciones stop motion; siempre debe ser "Linear".

## Errores comunes que evita o menciona
- No mantener el patrón correcto de hold frames (10 frames de pausa, 1 frame de movimiento) arruina el efecto stop motion.
- Olvidar resetear Offset y Rotation al duplicar texto hace que las letras no partan desde una posición ordenada.
- No activar el keyframe viewer (diamantes azules) impide ver visualmente los keyframes en la línea de tiempo.
- Modificar keyframes sin cuidado puede generar líneas no rectas entre hold frames, siendo muy difícil corregir después.
- No cambiar la interpolación a "Linear" al final produce movimientos suavizados que rompen la estética cuadro por cuadro.