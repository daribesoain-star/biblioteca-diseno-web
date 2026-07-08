# Curso de After Effects en español - 🎬 Capítulo 1 - Primeros Pasos.
**Fuente:** mundoaudiovisual | https://youtu.be/Vwrt66bf9Dc

## Qué enseña (2-3 líneas)
Familiarización con la interfaz de After Effects, importación de contenido, creación de composiciones, navegación básica del panel de proyecto y línea de tiempo, y herramientas esenciales como transformación, máscaras, pincel, clonar, rotoscopia y marioneta.

## Lecciones accionables
- **Abrir un nuevo proyecto:** Al iniciar After Effects, haz clic en "New Project" en la pantalla de inicio.
- **Seleccionar espacio de trabajo:** Ve al menú superior de espacios de trabajo y elige "Standard" (estándar) para uso general en pantallas normales o laptops.
- **Importar archivos:** Arrastra directamente los archivos al panel "Project" o usa el comando `File > Import > File` (Ctrl+I).
- **Crear composición desde archivo:** Arrastra un archivo de video desde el panel "Project" hasta el botón "Create a New Composition" (icono de película) en la parte inferior del panel. Esto crea automáticamente una composición con las mismas características del video.
- **Crear composición manualmente:** Haz clic en el botón "Create a New Composition" (icono de película) en el panel "Project". Configura:
  - **Composition Name:** "After Effects Course"
  - **Resolution:** "Full" (4K) o "Half" (Full HD)
  - **Start Timecode:** `00:00`
  - **Duration:** `0:00:10:00` (10 segundos)
  - **Frame Rate:** `25` fps
  - **Background Color:** Negro
- **Corregir start timecode:** Ve a `Composition > Composition Settings` y en "Start Timecode" escribe `0` para evitar tiempos de inicio incorrectos (ej. frame 29, frame 24).
- **Crear composición desde selección de clip:** Haz doble clic en un archivo en el panel "Project" para abrirlo. Marca el "In Point" (botón `[`) y "Out Point" (botón `]`) para seleccionar solo una parte. Luego arrastra al botón "Create a New Composition" para crear una composición solo de ese fragmento.
- **Ajustar vista al tamaño de pantalla:** Usa el menú desplegable de zoom en la parte inferior del panel de composición y selecciona "Fit" (o presiona Ctrl+Mayús+/).
- **Mostrar cuadrícula:** En el panel de composición, haz clic en el botón "Grid" (icono de cuadrícula) para activar/desactivar la cuadrícula.
- **Usar reglas y guías:** Activa la regla desde el menú `View > Show Rulers`. Arrastra desde la regla hacia la composición para crear guías. Para eliminar guías, arrástralas de vuelta a la regla o presiona Ctrl+Z.
- **Tomar snapshot:** Haz clic en el botón "Take Snapshot" (icono de cámara) en el panel de composición. Luego haz clic en "Show Snapshot" (icono de ojo) para ver la captura como referencia.
- **Cambiar calidad de previsualización:** En el panel de composición, usa el menú desplegable de "Resolution/Downsample Factor" (ej. "Full", "Half", "Third", "Quarter") para mejorar el rendimiento al trabajar con muchos efectos.
- **Ver fondo transparente:** Haz clic en el botón "Toggle Transparency Grid" (icono de tablero de ajedrez) en el panel de composición.
- **Ver información de color:** Pasa el mouse sobre cualquier píxel en el panel de composición; en la parte superior izquierda se muestra la información RGB y posición XY.
- **Mover, escalar, rotar capas:** Selecciona una capa en la línea de tiempo. Usa la herramienta "Selection" (V) para mover. Para escalar sin distorsión, mantén presionada la tecla `Shift` mientras arrastras los bordes. Para rotar, usa la herramienta "Rotation" (W) y arrastra hacia arriba/abajo.
- **Ajustar punto de anclaje:** En la línea de tiempo, expande la capa (flecha hacia abajo) y ve a `Transform > Anchor Point`. O usa la herramienta "Pan Behind" (Y) y arrastra el punto de anclaje directamente en la composición.
- **Cambiar opacidad:** En la línea de tiempo, expande la capa y ve a `Transform > Opacity`. Ajusta el valor numérico.
- **Agregar efecto de desenfoque:** Selecciona la capa, ve a `Effect > Blur & Sharpen > Gaussian Blur`. Ajusta el valor de "Blurriness" en el panel "Effect Controls".
- **Eliminar efecto:** En el panel "Effect Controls", selecciona el efecto y presiona `Delete`.
- **Crear máscara rectangular:** Selecciona la capa, usa la herramienta "Rectangle Mask" (Q). Mantén presionada `Shift` para crear un cuadrado perfecto. En la línea de tiempo, expande la capa > `Masks > Mask 1 > Mask Mode` y elige "Add" (muestra el interior), "Subtract" (muestra el exterior) o "None".
- **Crear máscara con pluma:** Usa la herramienta "Pen Tool" (G). Haz clic para crear puntos y formar un trazado. Cierra el trazado para crear la máscara.
- **Crear capa de texto:** Usa la herramienta "Type Tool" (Ctrl+T). Haz clic en la composición y escribe el texto. Para mover la capa de texto, asegúrate de que no tenga mayúsculas activadas accidentalmente.
- **Usar pincel:** Haz doble clic en una capa de video en la línea de tiempo para abrirla en el panel "Layer". Selecciona la herramienta "Brush Tool" (Ctrl+B). Ajusta "Opacity" y "Flow" en el panel de pincel. Pinta sobre la capa. En el panel "Effect Controls", bajo "Paint", ajusta "Path Options > Start/End" para animar el trazo.
- **Usar clonar (clone stamp):** Haz doble clic en una capa para abrirla. Selecciona la herramienta "Clone Stamp Tool" (Ctrl+S). Mantén presionada `Option` (Alt) y haz clic en el área a copiar. Luego pinta sobre el área a reemplazar.
- **Usar pincel de rotoscopia:** Selecciona la herramienta "Rotoscoping Brush Tool" (Alt+W). Pinta sobre el objeto que deseas aislar. Usa `Ctrl` + clic para agregar áreas, `Alt` + clic para restar. Refina los bordes con la herramienta "Edge Detection".
- **Usar herramienta marioneta (puppet pin):** Selecciona la capa. Usa la herramienta "Puppet Pin Tool" (Ctrl+P). Haz clic en puntos de la imagen para crear "pins". Arrastra los pins para deformar la imagen y crear animaciones.

## Reglas para agentes
- Usa "Standard" como espacio de trabajo predeterminado para pantallas normales o laptops.
- Siempre verifica y corrige el "Start Timecode" a `0` en "Composition Settings" después de crear una composición desde un archivo arrastrado.
- Usa `Shift` al escalar una capa para mantener la proporción y evitar distorsión.
- Usa "Fit" en el zoom de composición para ver el encuadre completo.
- Cuando trabajes con muchos efectos, reduce la resolución de previsualización a "Half" o "Quarter" para mejorar el rendimiento.
- Para animar un trazo de pincel, usa "Path Options > Start/End" en el efecto "Paint" dentro del panel "Effect Controls".
- Nunca uses la herramienta "Brush Tool" directamente en el panel de composición; primero haz doble clic en la capa para abrirla en el panel "Layer".
- Para eliminar una máscara, selecciona la máscara en la línea de tiempo (bajo la capa) y presiona `Delete`.

## Errores comunes que evita o menciona
- **No olvidar modificar el start timecode:** Al arrastrar un archivo al botón de nueva composición, el start timecode puede quedar en valores incorrectos (ej. frame 29, frame 24). Siempre ve a `Composition > Composition Settings` y pon `0` en "Start Timecode".
- **No escalar sin Shift:** Al escalar una capa sin mantener `Shift`, se distorsiona la proporción.
- **No usar el pincel directamente en composición:** La herramienta "Brush Tool" solo funciona si primero abres la capa con doble clic en el panel "Layer".
- **No confundir máscara "Add" vs "Subtract":** "Add" muestra el interior de la máscara; "Subtract" muestra todo excepto el interior.
- **No olvidar que las capas superiores se muestran sobre las inferiores:** En la línea de tiempo, lo que está arriba en el orden de capas es lo que se ve visualmente encima.