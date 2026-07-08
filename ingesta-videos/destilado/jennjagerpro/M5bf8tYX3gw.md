# Apple Motion Tutorial 
**Fuente:** jennjagerpro | https://youtu.be/M5bf8tYX3gw

## Qué enseña (2-3 líneas)
Cómo crear un efecto de reflejo realista para objetos como logos, texto o productos en Apple Motion, utilizando un entorno 3D con cámara, superficies de color, duplicación de grupos, filtros de desenfoque y flop, y máscaras con ajustes de pluma y opacidad.

## Lecciones accionables
- Crear un fondo 3D: ve a **Generators > Color Solid**, arrastra al panel de proyecto. En **Inspector**, cambia el color a blanco. Duplica el sólido (clic derecho > Duplicate), cambia el duplicado a gris oscuro.
- Rotar el sólido gris: selecciona el sólido gris, en **Properties > Rotation**, cambia **X** a **90**.
- Agregar cámara 3D: ve a **Object > Camera**, confirma "Switch to 3D". En el menú desplegable superior izquierdo del lienzo, cambia de "Active Camera" a **Right** para vista ortográfica.
- Posicionar el plano gris: en **Properties > Position**, baja el valor **Y** para ver el sólido gris. Luego, en **Z Position**, arrastra hacia adelante hasta que la superficie gris esté frente al blanco. Vuelve a "Active Camera".
- Escalar y centrar el plano gris: escala el sólido gris para que llene el marco hasta abajo y sube su posición **Y** para centrarlo.
- Importar objeto principal: arrastra una imagen (ej. iPhone recortado) y un clip de video al panel de proyecto. Coloca el video debajo del iPhone en la jerarquía.
- Rotar el iPhone: selecciona el iPhone, en **Properties > Rotation**, cambia **Z** a **90**. Reposiciona en **Y** hacia arriba.
- Ajustar el video: activa el video, escálalo para que quepa dentro del iPhone. Agrega un **Mask** al video, en **Inspector > Mask**, sube **Roundness** para redondear las esquinas.
- Agrupar objeto y video: selecciona ambos (Command + clic), clic derecho > **Group**.
- Crear reflejo: selecciona el grupo, duplícalo (Command + D). En el duplicado, ve a **Filters > Blur > Gaussian Blur**, en **Inspector > Filters** sube el valor de desenfoque. Luego **Filters > Distortion > Flop**, cambia **Flop** de **Horizontal** a **Vertical**.
- Posicionar reflejo: selecciona el grupo duplicado, en **Properties > Position**, sube el valor **Y** (el reflejo está invertido, subir Y lo baja visualmente).
- Atenuar reflejo con máscara: selecciona el grupo reflejo, clic derecho > **Group** (anidar). En **Inspector > Layer Order**, elige **Flatten**. Ahora activa la herramienta **Mask** (rectángulo). Dibuja la máscara donde quieras el reflejo, marca **Invert Mask**. Si el reflejo se desplaza, selecciona el grupo anidado y reposiciona en **Y**. Selecciona la máscara en la línea de tiempo, presiona **Command + –** para alejar, arrastra la máscara hacia arriba. En **Inspector > Mask**, sube **Feather** (puedes pasar de 100 arrastrando hacia arriba con el mouse presionado) y ajusta **Falloff**.
- Ajustar opacidad del plano gris: selecciona el sólido gris original, en **Properties > Opacity**, baja el valor para que el reflejo se vea como un espejo.
- Agregar movimiento de cámara: selecciona la cámara, en **Inspector > Camera**, haz clic en el diamante de **Scale** para crear un keyframe, baja el valor. Mueve el playhead más adelante, crea otro keyframe en **Scale** y súbelo (zoom out). Regresa al primer keyframe, agrega keyframe en **Y Rotation**. Ve al segundo keyframe de Scale, agrega otro keyframe en **Y Rotation** y cambia el ángulo.

## Reglas para agentes
- Usa **Flop > Vertical** en el grupo duplicado para invertir el reflejo correctamente.
- Cuando necesites aplicar una máscara a un grupo con filtros, anida el grupo en otro grupo y usa **Flatten** en **Layer Order** antes de dibujar la máscara.
- Para que el reflejo se desvanezca, usa una máscara con **Invert Mask** activado y ajusta **Feather** por encima de 100 arrastrando con el mouse.
- Nunca intentes aplicar una máscara directamente a un grupo que ya tiene filtros de distorsión como Flop; primero anídalo y aplana.
- Para alinear keyframes de cámara, usa las flechas de navegación en **Inspector** para saltar entre keyframes existentes.

## Errores comunes que evita o menciona
- No olvidar cambiar la vista de "Active Camera" a "Right" para posicionar correctamente los planos en 3D.
- Al rotar el sólido gris a 90° en X, parece desaparecer; no está perdido, solo se ve de canto.
- Al duplicar el grupo para el reflejo, el flop invierte la imagen verticalmente, por lo que subir el valor Y en posición baja el reflejo visualmente.
- No se puede usar la herramienta Mask directamente en un grupo con filtros; es necesario anidar el grupo y usar **Flatten** para habilitarla.
- Al aplicar la máscara invertida, el reflejo puede desplazarse lejos; hay que reposicionar el grupo anidado y luego mover la máscara manualmente (usar Command + – para alejar la vista).