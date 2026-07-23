# Destilación del tutorial: "How to write any After Effects script using ChatGPT"

## Qué enseña
Cómo crear scripts .jsx completos para After Effects (incluyendo paneles UI acoplables) usando ChatGPT como traductor de lenguaje natural a código, siguiendo un proceso iterativo de descomposición en pasos pequeños.

## Técnicas de scripting accionables

- **Estructura base para remover expresiones de capas seleccionadas:**
  ```javascript
  var comp = app.project.activeItem;
  var layers = comp.selectedLayers;
  for (var i = 0; i < layers.length; i++) {
    var layer = layers[i];
    // loop through properties recursively
    removeExpressions(layer);
  }
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

- **Estructura base para remover efectos de capas seleccionadas:**
  ```javascript
  var comp = app.project.activeItem;
  var layers = comp.selectedLayers;
  for (var i = 0; i < layers.length; i++) {
    var layer = layers[i];
    var effects = layer.property("ADBE Effect Parade");
    if (effects && effects.numProperties > 0) {
      for (var j = effects.numProperties; j >= 1; j--) {
        effects.property(j).remove();
      }
    }
  }
  ```

- **Creación de UI con ScriptUI (checkboxes + botón):**
  ```javascript
  var win = new Window("palette", "Remove Tools", undefined);
  win.orientation = "column";
  win.alignChildren = "left";
  
  var cbExpr = win.add("checkbox", undefined, "Remove Expressions");
  var cbFx = win.add("checkbox", undefined, "Remove Effects");
  var btn = win.add("button", undefined, "Execute");
  
  btn.onClick = function() {
    app.beginUndoGroup("Remove Expressions/Effects");
    var comp = app.project.activeItem;
    var layers = comp.selectedLayers;
    for (var i = 0; i < layers.length; i++) {
      var layer = layers[i];
      if (cbExpr.value) {
        removeExpressions(layer);
      }
      if (cbFx.value) {
        var effects = layer.property("ADBE Effect Parade");
        if (effects && effects.numProperties > 0) {
          for (var j = effects.numProperties; j >= 1; j--) {
            effects.property(j).remove();
          }
        }
      }
    }
    app.endUndoGroup();
  };
  
  win.show();
  ```

- **Hacer el panel acoplable (dockable):**
  ```javascript
  var win = new Window("palette", "My Script", undefined, {resizeable: true});
  win.orientation = "column";
  // ... agregar controles ...
  win.show();
  ```
  Guardar como `.jsxbin` o `.jsx` en la carpeta `ScriptUI Panels` de After Effects.

## Reglas para el operador

- **Usa `app.beginUndoGroup` / `app.endUndoGroup`** cuando el script modifique el proyecto, para permitir deshacer.
- **Usa `app.project.activeItem`** solo si hay una composición activa; verifica con `if (comp instanceof CompItem)`.
- **Usa `property("ADBE Effect Parade")`** para acceder a la lista de efectos de una capa (matchName exacto).
- **Usa `property(j).remove()`** iterando **de atrás hacia adelante** (`for j = numProperties; j >= 1; j--`) al eliminar efectos, para evitar índices inválidos.
- **Usa `new Window("palette", ...)`** para paneles acoplables; `"dialog"` o `"window"` no son acoplables.
- **Usa `expressionEnabled`** para verificar si una propiedad tiene expresión antes de modificarla.
- **Divide scripts grandes en pasos pequeños**: primero funcionalidad sin UI, luego agrega UI, luego hazlo acoplable.

## Errores comunes

- **No verificar que `app.project.activeItem` sea una composición** → error si el panel activo es otro.
- **Iterar efectos hacia adelante al removerlos** → salta efectos porque los índices cambian.
- **Usar `"window"` en lugar de `"palette"`** → el panel no se acopla.
- **No usar `app.beginUndoGroup`** → cambios no se pueden deshacer.
- **No verificar `numProperties > 0`** antes de iterar propiedades → error si no hay efectos.
- **Asumir que ChatGPT genera código correcto sin probar** → siempre probar en After Effects y reportar errores exactos.