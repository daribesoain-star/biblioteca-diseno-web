# DOCTRINA ACCIONABLE — After Effects Scripting (ExtendScript)

## 1) Fundamentos ExtendScript (sintaxis, app.project, beginUndoGroup, ejecutar/depurar, File I/O)

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

---

## 2) Crear y manipular comps y capas (addComp, layers.add*, parent, propiedades)

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

---

## 3) Keyframes, easing e interpolación (setValueAtTime, KeyframeEase, interpolationType)

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

---

## 4) Expressions por script (property.expression, patrones)

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

---

## 5) Effects (matchNames) y presets (addProperty, applyPreset)

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

---

## 6) ScriptUI (Window/panel, controles, onClick, dockable)

- **Crear ventana flotante (palette):**
  ```javascript
  var myWindow = new Window("palette", "My Window", undefined);
  myWindow.orientation = "column";
  myWindow.center();
  myWindow.show();
  ```
  — *After Effects Scripting For Beginners [2022]* (https://youtu.be/DTBtfFiyjNU)

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

---

## 7) Render y automatización (renderQueue, aerender CLI, batch, OMtemplate)

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