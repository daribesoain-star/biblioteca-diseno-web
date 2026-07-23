```markdown
# DOCTRINA ACCIONABLE: After Effects Scripting

## 1) Fundamentos ExtendScript (sintaxis, app.project, beginUndoGroup, ejecutar/depurar, File I/O)

- **Punto de entrada al proyecto activo:**
  ```javascript
  app.project
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agrupar operaciones para deshacer/rehacer como una sola acción:**
  ```javascript
  app.beginUndoGroup("Nombre de acción");
  // ... operaciones ...
  app.endUndoGroup();
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Depuración con `alert()` (muestra cuadro de diálogo):**
  ```javascript
  alert("valor de x: " + x);
  ```
  - *Fuente:* After Effects Scripting Tutorial: Teach Yourself Scripting — https://youtu.be/trYUpprPn6U

- **Depuración con `$.writeln()` (escribe en la consola de JavaScript):**
  ```javascript
  $.writeln("mensaje");
  ```
  - *Fuente:* After Effects Scripting Tutorial: Teach Yourself Scripting — https://youtu.be/trYUpprPn6U

- **Leer/escribir archivos (File I/O):**
  ```javascript
  var archivo = new File("~/Desktop/datos.txt");
  archivo.open("w");
  archivo.write("Hola desde ExtendScript");
  archivo.close();
  ```
  - *Fuente:* Ultimate Guide to After Effects Scripting (Extracto) — https://youtu.be/kQRqdwRxhtw

- **Ejecutar script desde VS Code con "ExtendScript Debugger":**
  1. Instalar la extensión "ExtendScript Debugger" (de Adobe).
  2. Abrir archivo `.jsx` en VS Code.
  3. En la barra inferior, seleccionar target: `After Effects CC 2023`.
  4. Ir a **Run and Debug** (Ctrl+Shift+D).
  5. Presionar **Run and Debug** (F5).
  - *Fuente:* Cómo ejecutar scripts en After Effects y Premiere — https://youtu.be/vKK-dqo7ZQw

- **Ejecutar script desde After Effects (menú interno):**
  - `File > Scripts > Run Script File...`
  - *Fuente:* Cómo ejecutar scripts en After Effects y Premiere — https://youtu.be/vKK-dqo7ZQw

- **Obtener la composición activa:**
  ```javascript
  var comp = app.project.activeItem;
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Comprobar si un item es una composición (`CompItem`):**
  ```javascript
  if (comp instanceof CompItem) { ... }
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Solicitar entrada al usuario con `prompt`:**
  ```javascript
  var startLayer = prompt("First layer to be affected", "1");
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Comprobar si el usuario canceló un `prompt` (devuelve `null`):**
  ```javascript
  if (startLayer !== null) {
      // ejecutar
  }
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Validar que un valor es numérico con `parseInt` e `isNaN`:**
  ```javascript
  if (isNaN(parseInt(startLayer))) {
      alert("You must give the script a number not text");
  }
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Inspeccionar propiedades desde la consola de ExtendScript (para obtener match names):**
  ```javascript
  var layer = comp.layer(3);
  $.writeln(layer.property("Contents").matchName); // Muestra: "ADBE Root Vectors Group"
  $.writeln(layer.property("Contents").property(1).name); // Muestra: "Hexagon"
  $.writeln(layer.property("Contents").property(1).property("Contents").property(1).matchName); // Muestra: "ADBE Vector Shape - Star"
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

## 2) Crear y manipular comps y capas (addComp, layers.add*, parent, propiedades)

- **Crear una composición:**
  ```javascript
  app.project.items.addComp("Nombre", ancho, alto, 1, duración, 30)
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar capa desde archivo:**
  ```javascript
  comp.layers.add(file)
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar capa de texto:**
  ```javascript
  comp.layers.addText("Texto")
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar capa sólida:**
  ```javascript
  comp.layers.addSolid([1,0,0], "Rojo", 1920, 1080, 1)
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Acceder a propiedades de capa:**
  ```javascript
  layer.property("Transform").property("Position")
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar una capa de forma vacía:**
  ```javascript
  var shapeLayer = comp.layers.addShape();
  shapeLayer.name = "Hexagon";
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

- **Agregar un grupo de vectores (contenedor principal) y renombrarlo:**
  ```javascript
  var hexagonGroup = shapeLayer.property("Contents").addProperty("ADBE Vector Group");
  hexagonGroup.name = "Hexagon";
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

- **Agregar un trazado de polígono/estrella (Poly Star Path):**
  ```javascript
  var pathGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Shape - Star");
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

- **Agregar un trazo (Stroke):**
  ```javascript
  var strokeGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Stroke");
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

- **Agregar un relleno (Fill):**
  ```javascript
  var fillGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Fill");
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

- **Configurar el trazado como polígono de 6 lados (hexágono):**
  ```javascript
  pathGroup.property("ADBE Vector Star - Type").setValue(2); // 1 = Star, 2 = Polygon
  pathGroup.property("ADBE Vector Star - Points").setValue(6);
  ```
  - *Fuente:* After Effects Scripting Tutorial: Recreate Shape Layers — https://youtu.be/zGbd-tEyryg

- **Obtener la primera capa seleccionada (devuelve array, tomar índice 0):**
  ```javascript
  var layer = comp.selectedLayers[0];
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Contar marcadores de una capa:**
  ```javascript
  var numMarkers = layer.marker.numKeys;
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

- **Bucle `for` para recorrer capas y marcadores simultáneamente:**
  ```javascript
  for (var i = 1; i <= numMarkers; i++) {
      comp.layer(i).startTime = layer.marker.keyTime(i);
  }
  ```
  - *Fuente:* Destilación: "Scripting for After Effects Part 2" (Batch Frame) — https://youtu.be/lqyIDUiUrVk

## 3) Keyframes, easing e interpolación (setValueAtTime, KeyframeEase, interpolationType)

- **Establecer keyframe con valor en tiempo:**
  ```javascript
  prop.setValueAtTime(tiempoEnSegundos, [x, y])
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Animar una propiedad con fotogramas clave:**
  ```javascript
  pos.setValueAtTime(0, [960, 540]);
  pos.setValueAtTime(1, [960, 200]);
  ```
  - *Fuente:* Ultimate Guide to After Effects Scripting (Extracto) — https://youtu.be/kQRqdwRxhtw

## 4) Expressions por script (property.expression, patrones)

- **Aplicar expresión a propiedad:**
  ```javascript
  prop.expression = "wiggle(5, 10)"
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar una expresión a una propiedad:**
  ```javascript
  var prop = textLayer.property("Transform").property("Position");
  prop.expression = "wiggle(5, 50)";
  ```
  - *Fuente:* Ultimate Guide to After Effects Scripting (Extracto) — https://youtu.be/kQRqdwRxhtw

## 5) Effects (matchNames) y presets (addProperty, applyPreset)

- **Acceder a efectos por matchName:**
  ```javascript
  layer.effect("ADBE Color Balance")
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar un efecto (ej. Desenfoque direccional):**
  ```javascript
  var effect = textLayer.property("ADBE Effect Parade").addProperty("ADBE Directional Blur");
  effect.property("Direction").setValue(45);
  effect.property("Blur Length").setValue(20);
  ```
  - *Fuente:* Ultimate Guide to After Effects Scripting (Extracto) — https://youtu.be/kQRqdwRxhtw

## 6) ScriptUI (Window/panel, controles, onClick, dockable)

- **Crear ventana ScriptUI:**
  ```javascript
  var win = new Window("palette", "Título", [100,100,400,300])
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar botón a ventana:**
  ```javascript
  var btn = win.add("button", undefined, "Ejecutar")
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Asignar acción al botón:**
  ```javascript
  btn.onClick = function() { alert("¡Hola!"); }
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Crear una ventana ScriptUI simple con botón:**
  ```javascript
  var win = new Window("palette", "Mi Script", undefined);
  var btn = win.add("button", undefined, "Ejecutar");
  btn.onClick = function() {
      alert("¡Botón presionado!");
  };
  win.show();
  ```
  - *Fuente:* Ultimate Guide to After Effects Scripting (Extracto) — https://youtu.be/kQRqdwRxhtw

## 7) Render y automatización (renderQueue, aerender CLI, batch, OMtemplate)

- **Acceder a cola de render:**
  ```javascript
  app.project.renderQueue
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar composición a cola:**
  ```javascript
  app.project.renderQueue.items.add(comp)
  ```
  - *Fuente:* Introducción al Scripting en After Effects — https://youtu.be/iEXhPPqolNI

- **Agregar composición a la cola de render y configurar salida:**
  ```javascript
  var renderQueue = app.project.renderQueue;
  var renderItem = renderQueue.items.add(comp);
  renderItem.outputModule(1).file = new File("~/Desktop/salida.avi");
  ```
  - *Fuente:* Ultimate Guide to After Effects Scripting (Extracto) — https://youtu.be/kQRqdwRxhtw

- **Crear un script bash ejecutable para `aerender`:**
  ```bash
  #!/bin/bash
  /Applications/Adobe\ After\ Effects\ 2024/aerender -project "$1"
  ```
  - *Fuente:* Tutorial 21: Using aerender — https://youtu.be/vAenMHvAHQI

- **Hacer el script ejecutable desde terminal:**
  ```bash
  chmod +x render
  ```
  - *Fuente:* Tutorial 21: Using aerender — https://youtu.be/vAenMHvAHQI

- **Ejecutar el script pasando la ruta del .aep como argumento:**
  ```bash
  ./render /ruta/al/proyecto.aep
  ```
  - *Fuente:* Tutorial 21: Using aerender — https://youtu.be/vAenMHvAHQI
```