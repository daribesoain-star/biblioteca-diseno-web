# Apple Motion Beginner Tutorial 2026 | You got this! #applemotion #creatorstudio #finalcutpro
**Fuente:** jennjagerpro | https://youtu.be/-N_iNALYFSc

## Qué enseña (2-3 líneas)
Tutorial para principiantes sobre Apple Motion, el software de gráficos en movimiento complementario de Final Cut Pro. Cubre la interfaz, creación de animaciones con keyframes y behaviors, y el proceso completo para crear y publicar un template de título personalizado en Final Cut Pro, incluyendo la publicación de parámetros ajustables.

## Lecciones accionables
- **Abrir Apple Motion:** Desde la carpeta Applications o tras descargarlo de Creator Studio/App Store. Al abrir, aparece el **project browser**; seleccionar "Motion Project" para composiciones generales.
- **Configurar proyecto:** Elegir preset "4K Ultra HD", frame rate "60 frames per second", duración "5 seconds". Hacer clic en "Open".
- **Identificar interfaz:** **Canvas** (equivalente al viewer de FCP), **timeline** (similar al de FCP), **project pane** (funciona como capas tipo Photoshop), panel izquierdo con pestañas **Library** (elementos, fondos, formas) e **Inspector** (ajustes de propiedades).
- **Dibujar forma:** Usar **shape tool** (ícono en centro inferior del canvas). Seleccionar "Rectangle", mantener **Shift** mientras se arrastra para dibujar un cuadrado perfecto.
- **Modificar forma:** En Inspector, pestaña **Shape**: cambiar color, agregar outline, etc.
- **Animar con keyframes:** Ir a pestaña **Properties** en Inspector. Mover playhead al inicio del timeline, hacer clic en botón **"Add keyframe"** (junto a Position). Mover playhead al final, cambiar valores de Position en Inspector o arrastrar forma en canvas. Presionar **Space bar** para reproducir.
- **Eliminar keyframes:** En Inspector, desplegar menú junto a "Position" y seleccionar **"Reset Parameter"**.
- **Animar con Behaviors:** Ir a botón **"Behaviors"** (centro superior del UI). Navegar a "Basic Motion" > seleccionar **"Spin"**. En Inspector, pestaña **Behaviors**, ajustar **"Spin Rate"** para controlar velocidad.
- **Behavior Overshoot:** Ir a Behaviors > "Parameter" > **"Overshoot"**. En Inspector, en **"Apply To"**, seleccionar "Properties" > "Transform" > "Rotation" > "Z". Ajustar **"Start Value"** a -360, **"End Value"** a 0. Acelerar/reducir duración arrastrando extremo de la barra púrpura en timeline o ajustando **"Ramp Duration"**.
- **Duplicar behavior:** En project pane, hacer clic derecho sobre behavior > **"Duplicate"**. Cambiar **"Apply To"** a "Properties" > "Transform" > "Scale" > "All". Ajustar **"Start Value"** a -100.
- **Eliminar elementos:** Seleccionar en project pane y presionar **Delete** (o **Control + Delete** si no hay teclado numérico).
- **Agregar fondo de generador:** En Library > "Generators" > arrastrar **"Color Solid"** al project pane. En Inspector, pestaña **Generator**, cambiar color.
- **Agregar gradiente:** En Library > "Generators" > arrastrar **"Soft Gradient"** al mismo grupo, encima del color solid. En Inspector Generator, cambiar color, ajustar **Radius** (máximo 1000 con slider). Para reposicionar sin bordes duros: en Properties, aumentar **Scale**, luego mover en canvas. Ajustar **Opacity** en Properties.
- **Agregar texto:** Usar **Text Tool** (ícono "T" en centro inferior del canvas). Hacer clic en canvas y escribir placeholder "header text". En Inspector, pestaña **Text**: cambiar font (ej. "Poppins"), tamaño, weight ("Light"). En Properties, **Reset Parameter** en Position para centrar.
- **Retrasar aparición de texto:** En timeline, arrastrar borde izquierdo del clip de texto ~45 frames hacia la derecha.
- **Behavior de texto:** Seleccionar texto, ir a Behaviors > "Basic" > **"Drift In"**. En Inspector Behaviors: cambiar **"Animate"** de "All" a "Word", **"Direction"** de "Forward" a "Backward", ajustar **"Spread"** para simultaneidad.
- **Behavior Pirouette:** Seleccionar texto, Behaviors > "Highlighter" > **"Pirouette"**. En Inspector: cambiar **"Rotation Format Y"** a 0, **"Rotation Format X"** a 180, **"Direction"** a "Backward". En timeline, arrastrar behavior Pirouette hacia atrás para que ocurra antes de que el texto sea visible.
- **Duplicar línea de texto:** En project pane, clic derecho sobre texto > **"Duplicate"**. Renombrar en project pane. En Inspector Text, cambiar contenido a "subhead text", reducir tamaño. En Properties, modificar **Y Position** para bajar. Eliminar behavior Pirouette del duplicado.
- **Ajustar timing de subhead:** En timeline, arrastrar clip de subhead a la derecha para que aparezca después. En behavior Drift In del subhead, cambiar **"Animate"** de "Word" a "All". Para recortar al final: mover playhead al final del proyecto, seleccionar clip, presionar **O**.
- **Convertir a template de título:** Ir a menú **File** > **"Convert Project To"** > **"Title"** > botón **"Convert"**.
- **Guardar y publicar template:** File > **"Save As"**. Nombrar (ej. "gradient intro"). Seleccionar **Category** (existente o crear nueva al final del desplegable). Crear **Theme** (ej. "Motion Beginner"). Hacer clic en **"Publish"**.
- **Publicar parámetros:** En Inspector del elemento (ej. color solid), hover sobre el valor a publicar (junto al keyframe), desplegar menú > **"Publish"**. En project pane, pestaña **Project** > **Publishing** > renombrar parámetros (ej. "background color one", "background color two", "gradient position"). Guardar con **Command + S**.
- **Actualizar en Final Cut Pro:** Eliminar template antiguo del timeline. Arrastrar versión actualizada desde el browser. Los parámetros publicados aparecen en el **Title Inspector** de FCP.

## Reglas para agentes
- Usa **Behaviors** en lugar de keyframes cuando necesites animaciones complejas como deceleración, rebotes o movimientos que requieran ajustes finos posteriores.
- Usa **Shift** al dibujar formas con la shape tool para mantener proporciones perfectas (cuadrado/círculo).
- Cuando agregues un Soft Gradient, primero aumenta el **Scale** en Properties antes de reposicionarlo en el canvas para evitar bordes duros.
- Para recortar un clip al final del proyecto, mueve el playhead al final y presiona **O** (no arrastres manualmente).
- Nunca olvides hacer **Command + S** después de publicar parámetros en Motion antes de ver los cambios en Final Cut Pro.
- Siempre elimina el template antiguo del timeline de FCP y arrastra la versión actualizada desde el browser; los cambios no se actualizan automáticamente en clips existentes.

## Errores comunes que evita o menciona
- **No confundir los íconos de la app:** El ícono de Creator Studio es diferente al de la compra única en App Store, pero la funcionalidad es idéntica.
- **No olvidar activar la visualización de keyframes en el timeline:** Usar el botón en la esquina superior derecha del timeline si no se ven los puntos rojos.
- **No reposicionar el Soft Gradient sin antes aumentar Scale:** Si se mueve sin escalar, aparecen bordes duros donde el gradiente se sale del canvas.
- **No dejar clips sobresaliendo del final del proyecto:** Usar la tecla **O** para recortar limpiamente al final del timeline.
- **No esperar que los cambios en Motion se reflejen automáticamente en clips ya insertados en FCP:** Hay que eliminar el template del timeline y volver a arrastrarlo desde el browser.