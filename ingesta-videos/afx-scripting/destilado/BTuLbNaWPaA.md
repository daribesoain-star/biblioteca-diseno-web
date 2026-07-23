# After Effects Scripting Tutorial [QuickTip]: Batch Text Automation
**Fuente:** NT Productions | https://youtu.be/BTuLbNaWPaA

## Qué enseña (2 líneas)
Cómo recorrer múltiples niveles de precomposiciones para localizar todas las capas de texto en un proyecto y modificar en lote su tamaño de fuente, escala y/o expresiones mediante un script .jsx, con soporte de deshacer agrupado.

## Técnicas de scripting accionables

- **Definir la composición principal y obtener sus capas:**
  ```javascript
  var mainComp = app.project.item(1); // o comp por nombre/índice
  var layers = mainComp.layers;
  ```

- **Recorrer capas para identificar precomposiciones (primer nivel):**
  ```javascript
  var preComps = [];
  for (var i = 1; i <= layers.length; i++) {
      var layer = layers[i];
      if (layer.source !== null && layer.source instanceof CompItem) {
          preComps.push(layer.source);
      }
  }
  ```

- **Segundo nivel: dentro de cada precomp, buscar sub-precomposiciones:**
  ```javascript
  var subPreComps = [];
  for (var j = 0; j < preComps.length; j++) {
      var preComp = preComps[j];
      for (var k = 1; k <= preComp.layers.length; k++) {
          var subLayer = preComp.layers[k];
          if (subLayer.source !== null && subLayer.source instanceof CompItem) {
              subPreComps.push(subLayer.source);
          }
      }
  }
  ```

- **Tercer nivel: dentro de cada sub-precomp, identificar capas de texto:**
  ```javascript
  var textLayers = [];
  for (var m = 0; m < subPreComps.length; m++) {
      var subComp = subPreComps[m];
      for (var n = 1; n <= subComp.layers.length; n++) {
          var layer = subComp.layers[n];
          if (layer.property("Source Text") !== null) {
              textLayers.push(layer);
          }
      }
  }
  ```

- **Función para cambiar tamaño de fuente y escala:**
  ```javascript
  function changeFontSizeAndScale(layersArray, fontSize, scaleValue) {
      for (var p = 0; p < layersArray.length; p++) {
          var layer = layersArray[p];
          // Mover la línea de tiempo a 2s para que el texto sea visible
          layer.containingComp.time = 2;
          
          // Cambiar tamaño de fuente
          var textProp = layer.property("Source Text");
          var textDocument = textProp.value;
          textDocument.fontSize = fontSize;
          textProp.setValue(textDocument);
          
          // Cambiar escala de la capa
          var scaleProp = layer.transform.scale;
          scaleProp.setValue([scaleValue, scaleValue]);
      }
  }
  ```

- **Llamada a la función con valores personalizados:**
  ```javascript
  changeFontSizeAndScale(textLayers, 500, 155);
  ```

- **Agrupar cambios para permitir deshacer (Ctrl+Z):**
  ```javascript
  app.beginUndoGroup("Batch Text Automation");
  // ... todo el código de búsqueda y modificación ...
  app.endUndoGroup();
  ```

- **Mostrar alerta al finalizar:**
  ```javascript
  alert("Process complete");
  ```

- **Aplicar expresión a todas las capas de texto (opcional):**
  ```javascript
  layer.property("Source Text").expression = "text.animator(1).selector(1).start";
  ```

## Reglas para el operador

- **Usa `layer.source !== null`** antes de verificar `instanceof CompItem` para evitar errores con capas que no tienen fuente (ej. capas nulas o de cámara).
- **Usa `layer.property("Source Text")`** para detectar capas de texto; solo las capas de texto tienen esta propiedad accesible.
- **Usa `app.beginUndoGroup` / `app.endUndoGroup`** siempre que modifiques múltiples propiedades en lote; permite al usuario deshacer todo con un solo Ctrl+Z.
- **Usa `layer.containingComp.time = 2`** antes de leer/escribir propiedades de texto si la capa no es visible en el frame 0; asegura que After Effects calcule correctamente el texto.
- **Usa `textDocument.fontSize = valor`** y luego `textProp.setValue(textDocument)` para cambiar el tamaño de fuente; no se puede asignar directamente a `textProp.value`.
- **Usa `layer.transform.scale`** (no `layer.property("Scale")`) para acceder a la propiedad de escala; `transform` es un atajo válido.
- **Usa `setValue([x, y])`** para escalas 2D; para capas 3D usa `setValue([x, y, z])`.
- **Comenta o elimina** las líneas de modificación que no necesites (ej. escala o expresión) para evitar cambios no deseados.

## Errores comunes

- **No verificar `layer.source !== null`** antes de `instanceof CompItem` → error de tipo si la capa no tiene fuente.
- **Usar `textProp.value.fontSize = valor`** sin luego llamar a `textProp.setValue(textDocument)` → el cambio no se guarda.
- **Asumir que todas las capas de texto están en el mismo nivel de precomposición** → el script no encuentra capas si la estructura tiene más o menos niveles.
- **No agrupar en `beginUndoGroup`** → el usuario no puede deshacer todos los cambios de una sola vez.
- **Usar `layer.property("Scale")` en lugar de `layer.transform.scale`** → funciona, pero `transform` es más directo y menos propenso a errores de tipeo.
- **No mover la línea de tiempo (`containingComp.time`)** → si el texto no es visible en el frame actual, `textDocument.fontSize` puede devolver valores incorrectos o no aplicar cambios.
- **Usar `setValue([scaleValue])` en lugar de `setValue([scaleValue, scaleValue])`** para escala 2D → error de dimensión.