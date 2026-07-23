# After Effects Scripting Tutorial: Create a Custom Workflow Script
**Fuente:** NT Productions | https://youtu.be/GT0XX29HR4I

## Qué enseña (2 líneas)
Creación de un script UI personalizado con botones de imagen para automatizar fades de video/audio, eliminación de keyframes, expresiones, efectos y reset de transformaciones en capas seleccionadas de After Effects.

## Técnicas de scripting accionables

- **Definir variable global de duración de fade:**
  ```javascript
  var fadeSeconds = 1;
  ```

- **Definir arrays de valores para opacidad y audio:**
  ```javascript
  var opacityValues = [0, 100];
  var audioValues = [-48, 0];
  ```

- **Crear ventana tipo pallet:**
  ```javascript
  var mainWindow = new Window("palette", "Workflow Script", undefined);
  mainWindow.orientation = "column";
  ```

- **Crear grupos de UI:**
  ```javascript
  var fadeGroup = mainWindow.add("group", undefined);
  fadeGroup.orientation = "row";
  var deleteGroup = mainWindow.add("group", undefined);
  deleteGroup.orientation = "row";
  ```

- **Agregar botón de imagen con tamaño y helpTip:**
  ```javascript
  var videoFadeInButton = fadeGroup.add("image", undefined, videoFadeInImage);
  videoFadeInButton.size = [25, 25];
  videoFadeInButton.helpTip = "Fade in the selected layers video by " + fadeSeconds + " seconds";
  ```

- **Agregar event listener a imagen (necesita función wrapper):**
  ```javascript
  videoFadeInButton.addEventListener("click", function() { fadeIn("opacity"); }, false);
  videoFadeOutButton.addEventListener("click", function() { fadeOut("opacity"); }, false);
  audioFadeInButton.addEventListener("click", function() { fadeIn("audio"); }, false);
  audioFadeOutButton.addEventListener("click", function() { fadeOut("audio"); }, false);
  ```

- **Event listeners directos para botones sin argumentos:**
  ```javascript
  deleteKeyframesButton.addEventListener("click", deleteKeys, false);
  deleteExpressionsButton.addEventListener("click", deleteExpressions, false);
  deleteEffectsButton.addEventListener("click", deleteEffects, false);
  resetTransformButton.addEventListener("click", resetTransform, false);
  ```

- **Función layerCheck para validar selección:**
  ```javascript
  function layerCheck() {
      var selectedLayers = app.project.activeItem.selectedLayers;
      return selectedLayers;
  }
  ```

- **Fade in con setValueAtTime (opacidad):**
  ```javascript
  function fadeIn(property) {
      if (layerCheck().length < 1) {
          alert("Please select at least one layer");
          return false;
      } else {
          var layers = app.project.activeItem.selectedLayers;
          for (var i = 0; i < layers.length; i++) {
              var thisProperty = layers[i].property(property);
              if (property === "opacity") {
                  thisProperty.setValueAtTime([0, fadeSeconds], [opacityValues[0], opacityValues[1]]);
              } else if (property === "audio") {
                  thisProperty.setValueAtTime([0, fadeSeconds], [[audioValues[0], audioValues[0]], [audioValues[1], audioValues[1]]]);
              }
          }
      }
  }
  ```

- **Fade out usando outPoint del layer:**
  ```javascript
  function fadeOut(property) {
      if (layerCheck().length < 1) {
          alert("Please select at least one layer");
          return false;
      } else {
          var layers = app.project.activeItem.selectedLayers;
          for (var i = 0; i < layers.length; i++) {
              var thisProperty = layers[i].property(property);
              if (property === "opacity") {
                  thisProperty.setValueAtTime([layers[i].outPoint - fadeSeconds, layers[i].outPoint], [opacityValues[1], opacityValues[0]]);
              } else if (property === "audio") {
                  thisProperty.setValueAtTime([layers[i].outPoint - fadeSeconds, layers[i].outPoint], [[audioValues[1], audioValues[1]], [audioValues[0], audioValues[0]]]);
              }
          }
      }
  }
  ```

- **Reset transform values (posición, escala, rotación, opacidad, ancla):**
  ```javascript
  function resetTransform() {
      if (layerCheck().length < 1) {
          alert("Please select at least one layer");
          return false;
      } else {
          var layers = app.project.activeItem.selectedLayers;
          for (var i = 0; i < layers.length; i++) {
              layers[i].property("position").setValue([app.project.activeItem.width / 2, app.project.activeItem.height / 2]);
              layers[i].property("scale").setValue([100, 100]);
              layers[i].property("opacity").setValue(100);
              layers[i].property("rotation").setValue(0);
              layers[i].property("anchorPoint").setValue([app.project.activeItem.width / 2, app.project.activeItem.height / 2]);
          }
      }
  }
  ```

- **Eliminar efectos (recorrido inverso):**
  ```javascript
  function deleteEffects() {
      if (layerCheck().length < 1) {
          alert("Please select at least one layer");
          return false;
      } else {
          var layers = app.project.activeItem.selectedLayers;
          for (var i = 0; i < layers.length; i++) {
              var numEffects = layers[i].effect.numProperties;
              for (var e = numEffects; e >= 0; e--) {
                  layers[i].effect(e).remove();
              }
          }
      }
  }
  ```

- **Eliminar expresiones (asignar string vacío):**
  ```javascript
  function deleteExpressions() {
      if (layerCheck().length < 1) {
          alert("Please select at least one layer");
          return false;
      } else {
          var layers = app.project.activeItem.selectedLayers;
          for (var i = 0; i < layers.length; i++) {
              layers[i].property("position").expression = "";
              layers[i].property("scale").expression = "";
              layers[i].property("opacity").expression = "";
              layers[i].property("anchorPoint").expression = "";
              layers[i].property("rotation").expression = "";
          }
      }
  }
  ```

- **Eliminar keyframes (función auxiliar + recorrido inverso):**
  ```javascript
  function deleteTheseKeys(property, layer) {
      var theseKeys = layer.property(property).numKeys;
      for (var i = theseKeys; i > 0; i--) {
          layer.property(property).removeKey(i);
      }
  }

  function deleteKeys() {
      if (layerCheck().length < 1) {
          alert("Please select at least one layer");
          return false;
      } else {
          var layers = app.project.activeItem.selectedLayers;
          for (var i = 0; i < layers.length; i++) {
              if (layers[i].property("position").numKeys > 0) deleteTheseKeys("position", layers[i]);
              if (layers[i].property("scale").numKeys > 0) deleteTheseKeys("scale", layers[i]);
              if (layers[i].property("opacity").numKeys > 0) deleteTheseKeys("opacity", layers[i]);
              if (layers[i].property("anchorPoint").numKeys > 0) deleteTheseKeys("anchorPoint", layers[i]);
              if (layers[i].property("rotation").numKeys > 0) deleteTheseKeys("rotation", layers[i]);
          }
      }
  }
  ```

- **Mostrar ventana:**
  ```javascript
  mainWindow.center();
  mainWindow.show();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `addEventListener("click", function() { ... }, false)`** cuando necesites pasar argumentos a la función handler; los event listeners de imágenes no aceptan funciones con parámetros directamente.
- **Usa `property("opacity")`** para opacidad y `property("audio")` para audio levels; son los nombres exactos de propiedades en After Effects.
- **Usa `setValueAtTime([times], [values])`** con arrays paralelos: el primer array contiene los tiempos, el segundo los valores correspondientes.
- **Usa `outPoint - fadeSeconds`** para fade out: el primer keyframe debe estar antes del outPoint, no en tiempo 0.
- **Usa `[[valIzq, valDer], [valIzq, valDer]]`** para audio levels: cada keyframe requiere un array de 2 valores (canal izquierdo y derecho).
- **Usa recorrido inverso (`for` decrementando)** al eliminar efectos o keyframes: eliminar desde el último índice hacia el primero evita errores de índice desplazado.
- **Usa `effect(e).remove()`** con `e` comenzando desde `numProperties` hacia 0.
- **Usa `expression = ""`** para eliminar expresiones; asignar string vacío las borra.
- **Usa `app.project.activeItem.selectedLayers`** para obtener array de capas seleccionadas; retorna array vacío si no hay selección.
- **Usa `app.project.activeItem.width / 2`** para resetear posición y anchorPoint al centro del comp.

## Errores comunes

- **Pasar argumento directo en event listener:** `addEventListener("click", fadeIn("opacity"), false)` ejecuta la función inmediatamente, no al hacer click. Solución: usar función wrapper `function() { fadeIn("opacity"); }`.
- **No verificar selección de capas:** intentar operar sobre `selectedLayers` vacío causa errores. Siempre validar con `if (layerCheck().length < 1)`.
- **Recorrido ascendente al eliminar:** eliminar keyframes o efectos desde índice 0 hacia arriba causa saltos de índice. Usar siempre `for` decrementando.
- **Confundir `property` con `property()`:** `layers[i].property` es incorrecto; debe ser `layers[i].property("opacity")` con paréntesis y string.
- **Olvidar que audio levels requiere arrays anidados:** pasar un solo valor como `[0, 100]` no funciona; necesita `[[-48, -48], [0, 0]]`.
- **No usar `app.beginUndoGroup()`:** las operaciones no son deshacibles individualmente sin agrupar en undo group.
- **Asumir que `numKeys` existe en toda propiedad:** verificar con `if (prop.numKeys > 0)` antes de iterar.