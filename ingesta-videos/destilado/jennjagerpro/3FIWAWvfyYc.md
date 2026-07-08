# Apple Motion Mask Reveal Tutorial
**Fuente:** jennjagerpro | https://youtu.be/3FIWAWvfyYc

## Qué enseña
Tres técnicas de revelado con máscaras en Apple Motion: un logo y sitio web que aparecen detrás de una línea que se dibuja, un efecto de texto que se revela y oculta con una línea que se desplaza de un lado a otro, y un texto dividido por una línea que gira y revela nuevas palabras al rotar.

## Lecciones accionables
- **Logo y sitio web revelados por línea vertical:**
  - Crear un color solid desde Generators como fondo gris suave.
  - Dibujar una línea vertical con Shape Tool > Line, manteniendo Shift para alineación perfecta.
  - En Inspector > Shape, reducir Width a 20; en Properties > Reset Parameters para centrar.
  - Color pickear la línea desde el logo usando el cuentagotas.
  - Keyframear la línea: en Inspector > Geometry > Control Points, crear keyframe en frame 0 con Y=0 para ambos puntos; avanzar 10 frames (Shift + flecha derecha) y cambiar Point 1 Y a +650 y Point 2 Y a -650.
  - Mover el logo a la derecha modificando Properties > Position > X.
  - Añadir Behavior > Basic Motion > Motion Path al logo; reducir duración a 15 frames.
  - Ajustar el punto final del Motion Path: en Inspector > Control Points, hacer Point 2 X igual al negativo de Point 1 X (ej. -874.6).
  - Agrupar el logo: right-click > Group.
  - Aplicar máscara rectangular al grupo: Mask Menu > Rectangle Mask, cubriendo el logo; en Inspector > Invert Mask.
  - Retrasar el grupo completo 8 frames en la línea de tiempo para sincronizar con el crecimiento de la línea.
  - Para el texto: crear texto con Text Tool, aplicar Motion Path de 15 frames, ajustar posición final en Properties > Position > X.
  - Agrupar el texto, aplicar Rectangle Mask en el lado izquierdo hasta la línea, Invert Mask.

- **Efecto "back and forth" con línea inclinada:**
  - Dibujar línea vertical con Width=10, color negro; Reset Parameters para centrar.
  - Keyframear Control Points: frame 0 con Y=0; frame 10 con Point 1 Y=+100 y Point 2 Y=-100.
  - En Properties > Rotation, cambiar a -15° para inclinar la línea.
  - Crear texto "back and forth" con Helvetica Neue Light Condensed Oblique, centrado, color negro.
  - Agrupar el texto (right-click > Group) y renombrar "back and forth text".
  - Dibujar Rectangle Mask alrededor del texto; en Inspector > Mask > Convert to Points.
  - Ajustar puntos de la máscara para alinearla con el ángulo de la línea: modificar Control Point 4 y Control Point 3 en Inspector para que coincidan.
  - Keyframear la posición de la máscara: en frame 10, crear keyframe en Properties > Position > X alineando el borde derecho de la máscara con la línea.
  - Keyframear la línea: en frame 10, crear keyframe en Position > X; avanzar 14 frames y cambiar X al valor opuesto (ej. +605).
  - Ajustar la máscara en ese mismo frame para alinearla con la nueva posición de la línea.
  - Añadir hold keyframes (5 frames después) en línea y máscara para pausar el movimiento.
  - Repetir: mover línea 14 frames al lado opuesto, ajustar máscara; duplicar el grupo de texto para "moving mask", renombrar, cambiar texto.
  - En el grupo duplicado, ajustar la máscara para que se mueva de derecha a izquierda (invertir valores X).
  - Al final, keyframear Control Points de la línea en el último keyframe, avanzar 10 frames y poner Y=0 para que la línea desaparezca.

- **Revelado con línea giratoria y texto dividido:**
  - Crear texto "DOUBLE" con fuente Dido, tamaño 288, centrado, Y=50.
  - Duplicar texto, cambiar a "LINE", Y=-250.
  - Dibujar línea horizontal con Width=2, color blanco; Reset Parameters.
  - Retrasar la línea 10 frames en la línea de tiempo.
  - Keyframear Control Points: en frame 10, Point 1 X=0 y Point 2 X=0; avanzar 10 frames, Point 1 X=+1000 y Point 2 X=-1000.
  - Keyframear Rotation de la línea: frame 10 en 0°, avanzar 20 frames a -180°.
  - Agrupar "DOUBLE" (right-click > Group), aplicar Rectangle Mask alineada con la línea.
  - Keyframear Rotation de la máscara: frame 10 en 0°, frame 30 en -180°.
  - Cambiar Anchor Point de la máscara: Tools > Anchor Point, arrastrar al centro de la línea (donde rota la línea).
  - Convertir máscara a puntos (Mask > Convert to Points) y estirar el punto superior hacia arriba para que no corte letras altas (E, L).
  - Repetir para "LINE": agrupar, aplicar Rectangle Mask, cambiar Anchor Point al centro de la línea, keyframear Rotation a -180° en 20 frames, convertir a puntos y estirar punto inferior hacia abajo.
  - Duplicar el grupo de "DOUBLE", renombrar "text text", cambiar texto a "TEXT", en la máscara marcar Invert Mask.
  - Duplicar el grupo de "LINE", renombrar "reveal text", cambiar texto a "REVEAL", en la máscara marcar Invert Mask.
  - Para que la línea desaparezca: keyframear Control Points en el último frame, avanzar 10 frames y poner X=0.

## Reglas para agentes
- Usa **Group** antes de aplicar una máscara a texto o logos; si aplicas la máscara directamente, se moverá con el objeto y no funcionará el efecto de revelado.
- Cuando uses Motion Path, reduce la duración a **15 frames** para que el movimiento sea rápido y controlado.
- Para alinear máscaras con líneas inclinadas, usa **Convert to Points** y ajusta manualmente los puntos de control en el Inspector.
- Cambia el **Anchor Point** de una máscara con la herramienta Anchor Point cuando necesites que rote desde un punto específico (como el centro de la línea), no desde su centro por defecto.
- Nunca apliques una máscara directamente a un texto en Apple Motion; la opción estará grisada; siempre agrupa el texto primero.
- Usa **hold keyframes** (crea un keyframe sin cambiar el valor) para pausar el movimiento de la línea y la máscara simultáneamente.
- Para efectos de revelado opuesto, duplica el grupo y marca **Invert Mask** en la máscara del duplicado.

## Errores comunes que evita o menciona
- Aplicar la máscara directamente al logo en lugar de al grupo: la máscara se moverá con el Motion Path del logo y no funcionará el revelado desde la línea.
- No ajustar el Anchor Point de la máscara al rotar: la máscara rotará desde su centro, no desde el centro de la línea, causando desalineación.
- No convertir la máscara a puntos cuando se necesita ajustar su forma: las letras altas (como E, L) se cortan al rotar la máscara si no se extienden los puntos de control.
- No sincronizar los keyframes de la línea y la máscara: el efecto de revelado se desincroniza y el texto aparece o desaparece en momentos incorrectos.
- Olvidar retrasar el grupo del logo (8 frames) para que el revelado ocurra después de que la línea haya crecido lo suficiente.