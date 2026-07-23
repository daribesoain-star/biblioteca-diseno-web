# DOCTRINA ACCIONABLE — After Effects Scripting (ExtendScript)

## 5. Effects (matchNames) y presets

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

## 6. ScriptUI (paneles/UI)

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

## 7. Render y automatización

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