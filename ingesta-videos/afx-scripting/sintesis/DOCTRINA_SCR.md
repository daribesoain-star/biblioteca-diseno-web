## DOCTRINA ACCIONABLE — After Effects Scripting (ExtendScript)

### 1. Fundamentos ExtendScript

- **Verificar composición activa y obtenerla:**
  ```javascript
  if (app.project.activeItem === null || !(app.project.activeItem instanceof CompItem)) {
      alert("You have no composition selected");
      return;
  }
  var comp = app.project.activeItem;
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agrupar operaciones en un solo Undo:**
  ```javascript
  app.beginUndoGroup("My Process");
  // ... todas las operaciones ...
  app.endUndoGroup();
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Crear un objeto File para el script generado:**
  ```javascript
  var scriptFile = new File("~/Desktop/myscript.jsx");
  ```
  — *After Effects Scripting QuickTip - Automate Script Creation* (https://youtu.be/6PW9hQoy8_U)

- **Escribir string en archivo y cerrarlo:**
  ```javascript
  scriptFile.open("w");
  scriptFile.write(codeString);
  scriptFile.close();
  ```
  — *After Effects Scripting QuickTip - Automate Script Creation* (https://youtu.be/6PW9hQoy8_U)

- **Ejecutar script generado inmediatamente:**
  ```javascript
  $.evalFile(scriptFile);
  ```
  — *After Effects Scripting QuickTip - Automate Script Creation* (https://youtu.be/6PW9hQoy8_U)

- **Importar archivo y agregarlo como capa:**
  ```javascript
  var myVideoFile = new File("~/Videos/test.mp4");
  var videoItem = app.project.importFile(new ImportOptions(myVideoFile));
  comp.layers.add(videoItem);
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Crear archivo temporal, escribir datos y cerrarlo:**
  ```javascript
  var path = Folder.desktop;
  var scriptFile = new File(path + "/test_script.jsx");
  scriptFile.open("w");
  scriptFile.write(script);
  scriptFile.close();
  ```
  — *After Effects Scripting Tutorial: Embed Project Info in a Script* (https://youtu.be/GlSIm60P4xA)

- **Eliminar archivo temporal después de ejecutarlo:**
  ```javascript
  scriptFile.remove();
  ```
  — *After Effects Scripting Tutorial: Embed Project Info in a Script* (https://youtu.be/GlSIm60P4xA)

- **Obtener matchName de un efecto existente (debugging):**
  ```javascript
  var comp = app.project.activeItem;
  var layer = comp.layer(1);
  var effect = layer.effect(1);
  $.writeln(effect.matchName);
  ```
  — *After Effects Scripting Tutorial: Embed Project Info in a Script* (https://youtu.be/GlSIm60P4xA)

- **Depuración con `alert()` (muestra cuadro de diálogo):**
  ```javascript
  alert("valor de x: " + x);
  ```
  — *After Effects Scripting Tutorial: Teach Yourself Scripting* (https://youtu.be/trYUpprPn6U)

- **Depuración con `$.writeln()` (escribe en la consola de JavaScript):**
  ```javascript
  $.writeln("mensaje");
  ```
  — *After Effects Scripting Tutorial: Teach Yourself Scripting* (https://youtu.be/trYUpprPn6U)

- **Leer/escribir archivos (File I/O):**
  ```javascript
  var archivo = new File("~/Desktop/datos.txt");
  archivo.open("w");
  archivo.write("Hola desde ExtendScript");
  archivo.close();
  ```
  — *Ultimate Guide to After Effects Scripting (Extracto)* (https://youtu.be/kQRqdwRxhtw)

- **Ejecutar script desde VS Code con "ExtendScript Debugger":**
  1. Instalar la extensión "ExtendScript Debugger" (de Adobe).
  2. Abrir archivo `.jsx` en VS Code.
  3. En la barra inferior, seleccionar target: `After Effects CC 2023`.
  4. Ir a **Run and Debug** (Ctrl+Shift+D).
  5. Presionar **Run and Debug** (F5).
  — *Cómo ejecutar scripts en After Effects y Premiere* (https://youtu.be/vKK-dqo7ZQw)

- **Ejecutar script desde After Effects (menú interno):**
  - `File > Scripts > Run Script File...`
  — *Cómo ejecutar scripts en After Effects y Premiere* (https://youtu.be/vKK-dqo7ZQw)

- **Comprobar si un item es una composición (`CompItem`):**
  ```javascript
  if (comp instanceof CompItem) { ... }
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Solicitar entrada al usuario con `prompt`:**
  ```javascript
  var startLayer = prompt("First layer to be affected", "1");
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Comprobar si el usuario canceló un `prompt` (devuelve `null`):**
  ```javascript
  if (startLayer !== null) {
      // ejecutar
  }
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Validar que un valor es numérico con `parseInt` e `isNaN`:**
  ```javascript
  if (isNaN(parseInt(startLayer))) {
      alert("You must give the script a number not text");
  }
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Inspeccionar propiedades desde la consola de ExtendScript (para obtener match names):**
  ```javascript
  var layer = comp.layer(3);
  $.writeln(layer.property("Contents").matchName); // Muestra: "ADBE Root Vectors Group"
  $.writeln(layer.property("Contents").property(1).name); // Muestra: "Hexagon"
  $.writeln(layer.property("Contents").property(1).property("Contents").property(1).matchName); // Muestra: "ADBE Vector Shape - Star"
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Suprimir diálogos al abrir proyectos:**
  ```javascript
  app.beginSuppressDialogs();
  app.open(projectFile);
  app.endSuppressDialogs(false);
  ```
  — *NT Productions* (https://youtu.be/WyNpq9U-Rno)

- **Cerrar proyecto sin guardar:**
  ```javascript
  app.project.close(CloseOption.DO_NOT_SAVE_CHANGES);
  ```
  — *NT Productions* (https://youtu.be/WyNpq9U-Rno)

- **Selección de archivos por el usuario:**
  ```javascript
  var file = File.openDialog("Selecciona el archivo JSON", "*.json");
  var folder = Folder.selectDialog("Selecciona la carpeta");
  ```
  — *NT Productions* (https://youtu.be/_hpsV2q9M2Q)

- **Filtrar archivos por extensión:**
  ```javascript
  var items = folder.getFiles();
  var aeps = [];
  for (var i = 0; i < items.length; i++) {
      if (items[i].name.slice(items[i].name.length - 4) === ".aep") {
          aeps.push(items[i]);
      }
  }
  ```
  — *NT Productions* (https://youtu.be/WyNpq9U-Rno)

### 2. Crear y manipular comps y capas

- **Crear composición desde cero:**
  ```javascript
  var comp = app.project.items.addComp("nombre", 1920, 1080, 1, 10, 30);
  comp.openInViewer();
  ```
  — *After Effects Scripting Tutorial: Embed Project Info in a Script* (https://youtu.be/GlSIm60P4xA)

- **Crear comp con `app.project.items.addComp`:**
  ```javascript
  var comp = app.project.items.addComp(name, width, height, pixelAspect, duration, frameRate);
  ```
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Atributos de CompItem:** `width/height`, `frameRate`, `frameDuration`, `duration`, `pixelAspect`, `bgColor` [R,G,B] 0-1, `motionBlur` (bool), `workAreaStart`, `workAreaDuration`, `displayStartTime`, `layers`, `selectedLayers`, `numLayers`, `time`.
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Agregar capa sólida:**
  ```javascript
  var layer = comp.layers.addSolid([1,1,1], "test solid", comp.width, comp.height, comp.pixelAspect);
  ```
  — *After Effects Scripting Tutorial: Embed Project Info in a Script* (https://youtu.be/GlSIm60P4xA)

- **Métodos de LayerCollection:** `add(item[, duration])`, `addNull([duration])`, `addSolid(color, name, width, height, pixelAspect[, duration])`, `addText([sourceText])`, `addBoxText([w,h])`, `addShape()`, `addCamera(name, centerPoint)`, `addLight(name, centerPoint)`.
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Modificar tamaño y nombre de composición:**
  ```javascript
  comp.width = 500;
  comp.height = 1000;
  comp.name = "My Renamed Composition";
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Obtener capa por índice y modificar posición:**
  ```javascript
  var layer = comp.layer(1);
  layer.property("ADBE Transform Group").property("ADBE Position").setValue([1000, 1000]);
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Modificar escala y opacidad:**
  ```javascript
  layer.property("ADBE Transform Group").property("ADBE Scale").setValue([200, 200]);
  layer.property("ADBE Transform Group").property("ADBE Opacity").expression = "wiggle(2, 30)";
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Reset transform values (posición, escala, rotación, opacidad, ancla):**
  ```javascript
  layers[i].property("position").setValue([app.project.activeItem.width / 2, app.project.activeItem.height / 2]);
  layers[i].property("scale").setValue([100, 100]);
  layers[i].property("opacity").setValue(100);
  layers[i].property("rotation").setValue(0);
  layers[i].property("anchorPoint").setValue([app.project.activeItem.width / 2, app.project.activeItem.height / 2]);
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Bucle for para agregar múltiples capas:**
  ```javascript
  for (var i = 0; i < 100; i++) {
      comp.layers.add(videoItem);
  }
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agregar una capa de forma vacía:**
  ```javascript
  var shapeLayer = comp.layers.addShape();
  shapeLayer.name = "Hexagon";
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Agregar un grupo de vectores (contenedor principal) y renombrarlo:**
  ```javascript
  var hexagonGroup = shapeLayer.property("Contents").addProperty("ADBE Vector Group");
  hexagonGroup.name = "Hexagon";
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Agregar un trazado de polígono/estrella (Poly Star Path):**
  ```javascript
  var pathGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Shape - Star");
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Agregar un trazo (Stroke):**
  ```javascript
  var strokeGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Stroke");
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Agregar un relleno (Fill):**
  ```javascript
  var fillGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Fill");
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Configurar el trazado como polígono de 6 lados (hexágono):**
  ```javascript
  pathGroup.property("ADBE Vector Star - Type").setValue(2); // 1 = Star, 2 = Polygon
  pathGroup.property("ADBE Vector Star - Points").setValue(6);
  ```
  — *After Effects Scripting Tutorial: Recreate Shape Layers* (https://youtu.be/zGbd-tEyryg)

- **Obtener la primera capa seleccionada (devuelve array, tomar índice 0):**
  ```javascript
  var layer = comp.selectedLayers[0];
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Contar marcadores de una capa:**
  ```javascript
  var numMarkers = layer.marker.numKeys;
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Bucle `for` para recorrer capas y marcadores simultáneamente:**
  ```javascript
  for (var i = 1; i <= numMarkers; i++) {
      comp.layer(i).startTime = layer.marker.keyTime(i);
  }
  ```
  — *Destilación: "Scripting for After Effects Part 2" (Batch Frame)* (https://youtu.be/lqyIDUiUrVk)

- **Duplicar una composición del proyecto:**
  ```javascript
  var userComp = getPresetComp(presetDropdown.selection).duplicate();
  ```
  — *NT Productions* (https://youtu.be/JKEMijMjddE)

- **Función para buscar una composición por nombre:**
  ```javascript
  function getPresetComp(name) {
      for (var i = 1; i <= app.project.numItems; i++) {
          if (app.project.item(i).name === name && app.project.item(i) instanceof CompItem) {
              return app.project.item(i);
          }
      }
  }
  ```
  — *NT Productions* (https://youtu.be/JKEMijMjddE)

- **Renombrar una composición:**
  ```javascript
  userComp.name = "Lower for User";
  ```
  — *NT Productions* (https://youtu.be/JKEMijMjddE)

- **Abrir una composición en el visor:**
  ```javascript
  userComp.openInViewer();
  ```
  — *NT Productions* (https://youtu.be/JKEMijMjddE)

- **Agregar una capa de cámara:**
  ```javascript
  comp.layers.addCamera("Camera Name", [0,0,0]);
  ```
  — *AM Film* (https://youtu.be/aOFrxATiN8c)

- **Agregar un objeto de metraje importado a la composición:**
  ```javascript
  var footageItem = app.project.importFile(new ImportOptions(file));
  comp.layers.add(footageItem);
  ```
  — *NT Productions* (https://youtu.be/_hpsV2q9M2Q)

- **Acceder y modificar propiedades de capa usando matchNames:**
  ```javascript
  // Posición
  layer.property("ADBE Transform Group").property("ADBE Position").setValue([x, y]);
  // Escala
  var curScale = comp.layer(r).property("Scale").value;
  var newScale = curScale * scalePercent;
  comp.layer(r).property("Scale").setValue(newScale);
  ```
  — *NT Productions* (https://youtu.be/_hpsV2q9M2Q); *NT Productions* (https://youtu.be/OUS0PMIwZyE)

- **Recorrer capas de una composición:**
  ```javascript
  for (var i = 1; i <= userComp.numLayers; i++) {
      // userComp.layer(i) ...
  }
  ```
  — *NT Productions* (https://youtu.be/JKEMijMjddE)

### 3. Keyframes, easing e interpolación

- **Propiedad estática vs keyframes:**
  ```javascript
  prop.setValue(v); // falla si ya hay keyframes
  ```
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Keyframe con `setValueAtTime`:**
  ```javascript
  prop.setValueAtTime(time, v); // tiempo en SEGUNDOS
  prop.setValuesAtTimes([t...],[v...]);
  ```
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Métodos de keyframe:** `addKey(time)` → retorna índice, `numKeys`, `selectedKeys`, `isTimeVarying`, `keyValue(i)`, `valueAtTime(t, preExpr)`.
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Interpolación:**
  ```javascript
  setInterpolationTypeAtKey(i, inType[, outType]) // KeyframeInterpolationType.LINEAR|BEZIER|HOLD
  ```
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Easing (Easy Ease):**
  ```javascript
  var e = new KeyframeEase(0,33);
  prop.setTemporalEaseAtKey(2,[e],[e]);
  ```
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Fade in con `setValueAtTime` (opacidad):**
  ```javascript
  thisProperty.setValueAtTime([0, fadeSeconds], [opacityValues[0], opacityValues[1]]);
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Fade out usando `outPoint` del layer:**
  ```javascript
  thisProperty.setValueAtTime([layers[i].outPoint - fadeSeconds, layers[i].outPoint], [opacityValues[1], opacityValues[0]]);
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Audio levels con arrays anidados:**
  ```javascript
  thisProperty.setValueAtTime([0, fadeSeconds], [[audioValues[0], audioValues[0]], [audioValues[1], audioValues[1]]]);
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Eliminar keyframes (recorrido inverso):**
  ```javascript
  function deleteTheseKeys(property, layer) {
      var theseKeys = layer.property(property).numKeys;
      for (var i = theseKeys; i > 0; i--) {
          layer.property(property).removeKey(i);
      }
  }
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Cambiar el valor de una propiedad en un tiempo específico:**
  ```javascript
  userComp.layer(i).property("Source Text").setValueAtTime(0, titleEditText.text);
  ```
  — *NT Productions* (https://youtu.be/JKEMijMjddE)

- **Cambiar el valor de una propiedad (sin keyframe, valor estático):**
  ```javascript
  prop.setValue(30);
  ```
  — *Code and Motion* (https://youtu.be/UutXfHp9KDg)

- **Animar una propiedad con fotogramas clave:**
  ```javascript
  pos.setValueAtTime(0, [960, 540]);
  pos.setValueAtTime(1, [960, 200]);
  ```
  — *Ultimate Guide to After Effects Scripting (Extracto)* (https://youtu.be/kQRqdwRxhtw)

### 4. Expressions por script

- **Asignar expresión a propiedad:**
  ```javascript
  prop.expression = "wiggle(2,15)";
  ```
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Propiedades de expresión:** `prop.expressionEnabled` (bool), `prop.canSetExpression`, `prop.expressionError`.
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Aplicar expresión a capas de texto:**
  ```javascript
  layer.property("Source Text").expression = "text.animator(1).selector(1).start";
  ```
  — *After Effects Scripting Tutorial [QuickTip]: Batch Text Automation* (https://youtu.be/BTuLbNaWPaA)

- **Eliminar expresiones (asignar string vacío):**
  ```javascript
  layers[i].property("position").expression = "";
  layers[i].property("scale").expression = "";
  layers[i].property("opacity").expression = "";
  layers[i].property("anchorPoint").expression = "";
  layers[i].property("rotation").expression = "";
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Agregar una expresión a una propiedad:**
  ```javascript
  var prop = textLayer.property("Transform").property("Position");
  prop.expression = "wiggle(5, 50)";
  ```
  — *Ultimate Guide to After Effects Scripting (Extracto)* (https://youtu.be/kQRqdwRxhtw)

- **Remover expresiones de propiedades recursivamente:**
  ```javascript
  function removeExpressions(layer) {
      for (var j = 1; j <= layer.numProperties; j++) {
          var prop = layer.property(j);
          if (prop.expressionEnabled) {
              prop.expression = "";
          }
          if (prop.numProperties > 0) {
              removeExpressions(prop);
          }
      }
  }
  ```
  — *ChatGPT / Tutorial* (https://youtu.be/N_42-DTDuHI)

- **Verificar si una propiedad tiene expresión habilitada:**
  ```javascript
  if (prop.expressionEnabled) { /* ... */ }
  ```
  — *ChatGPT / Tutorial* (https://youtu.be/N_42-DTDuHI)

## DOCTRINA ACCIONABLE — After Effects Scripting (ExtendScript)

### 5. Effects (matchNames) y presets

- **Agregar efecto por matchName:**
  ```javascript
  var myEffect = layer.property("ADBE Effect Parade").addProperty("ADBE Exposure2");
  myEffect.property(3).setValue(2);
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agregar efecto con `addProperty`:**
  ```javascript
  var effect = layer.property("ADBE Effect Parade").addProperty("ADBE Geometry2");
  ```
  — *After Effects Scripting Tutorial: Embed Project Info in a Script* (https://youtu.be/GlSIm60P4xA)

- **matchNames verificados (doc oficial):** Gaussian Blur=`ADBE Gaussian Blur 2` · Fast Box Blur=`ADBE Box Blur2` · Levels=`ADBE Easy Levels2` · Curves=`ADBE CurvesCustom` · Tint=`ADBE Tint` · Hue/Saturation=`ADBE HUE SATURATION` · Fill=`ADBE Fill` · Gradient Ramp=`ADBE Ramp` · Fractal Noise=`ADBE Fractal Noise` · Drop Shadow=`ADBE Drop Shadow` · Glow=`ADBE Glo2` · Transform=`ADBE Geometry2` · CC Lens=`CC Lens` · CC Sphere=`CC Sphere` · CC Light Burst 2.5=`CC Light Burst 2.5`.
  — *API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)* (https://ae-scripting.docsforadobe.dev)

- **Eliminar efectos (recorrido inverso):**
  ```javascript
  function deleteEffects() {
      var layers = app.project.activeItem.selectedLayers;
      for (var i = 0; i < layers.length; i++) {
          var numEffects = layers[i].effect.numProperties;
          for (var e = numEffects; e >= 0; e--) {
              layers[i].effect(e).remove();
          }
      }
  }
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Obtener todos los efectos instalados:**
  ```javascript
  var effects = app.effects;
  for (var i = 0; i < effects.length; i++) {
      var name = effects[i].displayName;
      var matchName = effects[i].matchName;
  }
  ```
  — *Or1z-J8KOlM — NT Productions*

- **Acceder a efectos por matchName:**
  ```javascript
  layer.effect("ADBE Color Balance")
  ```
  — *Introducción al Scripting en After Effects* (https://youtu.be/iEXhPPqolNI)

- **Agregar un efecto (ej. Desenfoque direccional):**
  ```javascript
  var effect = textLayer.property("ADBE Effect Parade").addProperty("ADBE Directional Blur");
  effect.property("Direction").setValue(45);
  effect.property("Blur Length").setValue(20);
  ```
  — *Ultimate Guide to After Effects Scripting (Extracto)* (https://youtu.be/kQRqdwRxhtw)

### 6. ScriptUI (paneles/UI)

- **Crear ventana flotante (palette):**
  ```javascript
  var myWindow = new Window("palette", "My Window", undefined);
  myWindow.orientation = "column";
  myWindow.center();
  myWindow.show();
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Hacer un panel acoplable y redimensionable:**
  ```javascript
  var win = new Window("palette", "My Script", undefined, {resizeable: true});
  ```
  — *N_42-DTDuHI — ChatGPT / Tutorial*

- **Agregar texto estático:**
  ```javascript
  var text = myWindow.add("statictext", undefined, "This is my text");
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agregar grupo con orientación y botones:**
  ```javascript
  var group = myWindow.add("group", undefined, "");
  group.orientation = "row";
  var button1 = group.add("button", undefined, "Button One");
  var button2 = group.add("button", undefined, "Button Two");
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agregar dropdown con array de items:**
  ```javascript
  var dropdown = myWindow.add("dropdownlist", undefined, ["Test One", "Test Two", "Test Three"]);
  dropdown.selection = 0;
  dropdown.size = [180, 25];
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agregar panel con radio button y checkbox:**
  ```javascript
  var panel = myWindow.add("panel", undefined, "My Panel");
  panel.orientation = "row";
  var radio = panel.add("radiobutton", undefined, "Radio");
  var checkbox = panel.add("checkbox", undefined, "Checkbox");
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Agregar campo de texto editable y slider:**
  ```javascript
  var textbox = myWindow.add("edittext", undefined, "My Input");
  var slider = myWindow.add("slider", undefined, "");
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Detectar clic en botón (onClick):**
  ```javascript
  button1.onClick = function() {
      alert("Hello, you clicked Button One");
  };
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

- **Event listeners con función wrapper (para pasar argumentos):**
  ```javascript
  videoFadeInButton.addEventListener("click", function() { fadeIn("opacity"); }, false);
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Event listeners directos para funciones sin argumentos:**
  ```javascript
  deleteKeyframesButton.addEventListener("click", deleteKeys, false);
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Crear grupos anidados para layouts mixtos:**
  ```javascript
  var windowGroup1 = window.add("group", undefined, "windowGroup1");
  windowGroup1.orientation = "row";
  var panel1 = windowGroup1.add("panel", undefined, "Panel 1");
  var panel2 = windowGroup1.add("panel", undefined, "Panel 2");
  ```
  — *After Effects Scripting Tutorial [QuickTip]: Script UI Layout Guide* (https://youtu.be/8pzWPQAScuc)

- **Crear subgrupos dentro de un panel:**
  ```javascript
  panel1.orientation = "row";
  var panel1Group1 = panel1.add("group", undefined, "panel1Group1");
  panel1Group1.orientation = "row";
  ```
  — *After Effects Scripting Tutorial [QuickTip]: Script UI Layout Guide* (https://youtu.be/8pzWPQAScuc)

- **Agregar botón de imagen con tamaño y helpTip:**
  ```javascript
  var videoFadeInButton = fadeGroup.add("image", undefined, videoFadeInImage);
  videoFadeInButton.size = [25, 25];
  videoFadeInButton.helpTip = "Fade in the selected layers video by " + fadeSeconds + " seconds";
  ```
  — *After Effects Scripting Tutorial: Create a Custom Workflow Script* (https://youtu.be/GT0XX29HR4I)

- **Estructura para panel ScriptUI reutilizable (acoplable o flotante):**
  ```javascript
  function myPanel(thisObj) {
      var panel = (thisObj instanceof Panel) ? thisObj : new Window("palette", "My Tool", [100,100,400,300]);
      // ... agregar controles ...
      if (!(thisObj instanceof Panel)) panel.show();
      return panel;
  }
  myPanel(this);
  ```
  — *UutXfHp9KDg — Code and Motion*

- **Instalación del panel:** Guardar como `.jsx` en `Program Files/Adobe/Adobe After Effects [versión]/Support Files/Scripts/ScriptUI Panels/`. Se accede desde `Window > Nombre del Script`.
  — *aOFrxATiN8c — AM Film*

### 7. Render y automatización

- **Comando de terminal para renderizar con aerender:**
  ```bash
  aerender -project /ruta/al/archivo.aep
  ```
  — *Terminal rendering in After Effects* (https://youtu.be/HjeqG_MjpWA)

- **Atajo para enviar comp a cola de render:** `Cmd+Shift+/` (macOS)
  — *Terminal rendering in After Effects* (https://youtu.be/HjeqG_MjpWA)

- **Regla:** Guardar el proyecto (.aep) antes de ejecutar `aerender`; si no, no encontrará los cambios recientes.
  — *Terminal rendering in After Effects* (https://youtu.be/HjeqG_MjpWA)

- **Regla:** Evitar codec Animation en ajustes QuickTime (rendimiento extremadamente lento). Usar DNxHD.
  — *Terminal rendering in After Effects* (https://youtu.be/HjeqG_MjpWA)

- **Añadir una composición a la cola de render:**
  ```javascript
  var renderQueueItem = app.project.renderQueue.items.add(comp);
  ```
  — *_hpsV2q9M2Q — NT Productions*

- **Forzar el render de un ítem de la cola:**
  ```javascript
  renderQueueItem.render();
  ```
  — *_hpsV2q9M2Q — NT Productions*

- **Agregar composición a la cola de render y configurar salida:**
  ```javascript
  var renderQueue = app.project.renderQueue;
  var renderItem = renderQueue.items.add(comp);
  renderItem.outputModule(1).file = new File("~/Desktop/salida.avi");
  ```
  — *Ultimate Guide to After Effects Scripting (Extracto)* (https://youtu.be/kQRqdwRxhtw)

- **Crear un script bash ejecutable para `aerender`:**
  ```bash
  #!/bin/bash
  /Applications/Adobe\ After\ Effects\ 2024/aerender -project "$1"
  ```
  — *Tutorial 21: Using aerender* (https://youtu.be/vAenMHvAHQI)

- **Hacer el script ejecutable desde terminal:**
  ```bash
  chmod +x render
  ```
  — *Tutorial 21: Using aerender* (https://youtu.be/vAenMHvAHQI)

- **Ejecutar el script pasando la ruta del .aep como argumento:**
  ```bash
  ./render /ruta/al/proyecto.aep
  ```
  — *Tutorial 21: Using aerender* (https://youtu.be/vAenMHvAHQI)