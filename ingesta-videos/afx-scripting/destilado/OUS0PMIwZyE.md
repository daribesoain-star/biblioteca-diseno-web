# After Effects Scripting Tutorial: How to Make a Batch Processing Script
**Fuente:** NT Productions | https://youtu.be/OUS0PMIwZyE

## Qué enseña (2 líneas)
Creación de un script de procesamiento por lotes en ExtendScript para After Effects con interfaz gráfica (ScriptUI) que modifica timecodes, texto, efectos y escala en múltiples capas/composiciones. Incluye cuatro funciones: resetear timecode a cero, cambiar propiedades de texto, aplicar efecto predefinido y escalar capas por porcentaje.

## Técnicas de scripting accionables

- **Referencia al proyecto activo:**
  ```javascript
  var project = app.project;
  var comp = project.activeItem;
  ```

- **Crear ventana ScriptUI con orientación:**
  ```javascript
  var mainWindow = new Window("palette", "Batch Processor", undefined);
  mainWindow.orientation = "column";
  ```

- **Agregar grupos y botones con tooltips:**
  ```javascript
  var group1 = mainWindow.add("group", undefined);
  group1.orientation = "row";
  var timeButton = group1.add("button", undefined, "T Zero");
  timeButton.helpTip = "Sets beginning time code of every comp to zero";
  ```

- **Iniciar/cerrar grupo de deshacer:**
  ```javascript
  app.beginUndoGroup("Comp time codes to zero");
  // ... operaciones ...
  app.endUndoGroup();
  ```

- **Iterar sobre items del proyecto y verificar tipo:**
  ```javascript
  for (var i = 1; i <= project.numItems; i++) {
      if (project.item(i) instanceof CompItem) {
          project.item(i).displayStartTime = 0;
      }
  }
  ```

- **Iterar sobre capas y verificar tipo de capa de texto:**
  ```javascript
  for (var e = 1; e <= comp.numLayers; e++) {
      if (comp.layer(e) instanceof TextLayer) {
          var textProp = comp.layer(e).property("Source Text");
          var textDocument = textProp.value;
          textDocument.fontSize = fontSize;
          textDocument.fillColor = fillColor;
          textDocument.strokeColor = strokeColor;
          textDocument.font = font;
          textProp.setValue(textDocument);
      }
  }
  ```

- **Aplicar efecto por matchName:**
  ```javascript
  comp.layer(q).property("ADBE Effect Parade").addProperty(effectMatchName);
  ```

- **Obtener y modificar escala con multiplicador:**
  ```javascript
  var curScale = comp.layer(r).property("Scale").value;
  var newScale = curScale * scalePercent;
  comp.layer(r).property("Scale").setValue(newScale);
  ```

- **Centrar y mostrar ventana:**
  ```javascript
  mainWindow.center();
  mainWindow.show();
  ```

- **Asignar función onClick a botón:**
  ```javascript
  timeButton.onClick = function() {
      // código de la función
  };
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.beginUndoGroup()` / `app.endUndoGroup()`** cuando realices múltiples cambios en el proyecto para que el usuario pueda deshacer todo con un solo Ctrl+Z.
- **Usa `instanceof CompItem`** para verificar que un item del proyecto sea una composición antes de modificar `displayStartTime`.
- **Usa `instanceof TextLayer`** para verificar que una capa sea de texto antes de acceder a `property("Source Text")`.
- **Usa `property("ADBE Effect Parade").addProperty(matchName)`** para agregar efectos; el matchName debe ser exacto (ej: `"ADBE Black & White"`).
- **Usa `property("Scale").value`** para obtener el array [x,y] de escala actual; al multiplicar por `scalePercent` obtienes el nuevo array escalado.
- **Usa `helpTip`** en botones para mostrar descripciones al pasar el mouse.
- **Usa `undefined`** como segundo argumento en `add()` para que la ventana se auto-dimensiona al agregar elementos.
- **Precaución:** El script no valida tipos de capa; aplicar efectos o escalar a cámaras o null objects causará errores.
- **Precaución:** `activeItem` se fija al iniciar el script; no se actualiza automáticamente si cambias de composición mientras el script está abierto.

## Errores comunes

- **Olvidar cerrar corchetes en arrays de color:** `fillColor = [1, 1, 1]` (no `[1, 1, 1`).
- **Usar `=` en lugar de `==` o `===` en condiciones:** `if (i = 1)` asigna en lugar de comparar.
- **No verificar que `activeItem` sea una composición** antes de acceder a `numLayers`.
- **MatchName incorrecto:** Usar nombre visible ("Black & White") en lugar del matchName interno ("ADBE Black & White").
- **Aplicar efectos a capas que no los aceptan** (cámaras, luces, nulls) sin filtrado previo.
- **No cerrar `app.endUndoGroup()`** después de `app.beginUndoGroup()`, lo que puede dejar el proyecto en estado inconsistente.
- **Usar `comp.layer(e).property("Scale").setValue(newScale)`** sin convertir `newScale` a array si `scalePercent` es un número simple (debe ser `[newX, newY]`).