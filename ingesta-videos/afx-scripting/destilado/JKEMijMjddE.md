Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente tus reglas.

# After Effects Scripting Tutorial: Script Template Combination
**Fuente:** NT Productions | https://youtu.be/JKEMijMjddE

## Qué enseña (2 líneas)
A crear un script que, a partir de un proyecto de After Effects con composiciones de plantilla (presets), genere una nueva composición duplicada y modifique automáticamente el texto de sus capas según la entrada del usuario, usando una interfaz ScriptUI.

## Técnicas de scripting accionables

- **Crear ventana ScriptUI tipo "palette":**
  ```javascript
  var mainWindow = new Window("palette", "Scripts Templates", undefined);
  mainWindow.orientation = "column";
  ```

- **Agregar grupos con orientación "row" para alinear elementos horizontalmente:**
  ```javascript
  var presetGroup = mainWindow.add("group", undefined);
  presetGroup.orientation = "row";
  ```

- **Agregar texto estático y definir su tamaño:**
  ```javascript
  var presetText = presetGroup.add("statictext", undefined, "Presets");
  presetText.size = [50, 25];
  ```

- **Agregar un menú desplegable (dropdown) con valores predefinidos:**
  ```javascript
  var presetDropdown = presetGroup.add("dropdownlist", undefined, ["Lower Third 1", "Lower Third 2", "Lower Third 3"]);
  presetDropdown.selection = 0; // Seleccionar el primer elemento por defecto
  ```

- **Agregar un campo de texto editable (edittext):**
  ```javascript
  var titleEditText = titleGroup.add("edittext", undefined, "First Name");
  titleEditText.size = [120, 20];
  ```

- **Agregar un botón y asignarle una función `onClick`:**
  ```javascript
  var createButton = mainWindow.add("button", undefined, "Create");
  createButton.onClick = function() {
      // Código a ejecutar al hacer clic
  };
  ```

- **Envolver la acción principal en `app.beginUndoGroup` y `app.endUndoGroup` para permitir deshacer:**
  ```javascript
  app.beginUndoGroup("Lower Third Generation");
  // ... todo el código de creación y modificación ...
  app.endUndoGroup();
  ```

- **Duplicar una composición del proyecto:**
  ```javascript
  var userComp = getPresetComp(presetDropdown.selection).duplicate();
  ```

- **Función para buscar una composición por nombre en el proyecto:**
  ```javascript
  function getPresetComp(name) {
      for (var i = 1; i <= app.project.numItems; i++) {
          if (app.project.item(i).name === name && app.project.item(i) instanceof CompItem) {
              return app.project.item(i);
          }
      }
  }
  ```

- **Renombrar la composición duplicada:**
  ```javascript
  userComp.name = "Lower for User";
  ```

- **Recorrer capas de una composición y modificar texto de capas específicas usando `property()`, `setValueAtTime` y `sourceText`:**
  ```javascript
  for (var i = 1; i <= userComp.numLayers; i++) {
      if (userComp.layer(i).name === "Title") {
          userComp.layer(i).property("Source Text").setValueAtTime(0, titleEditText.text);
      }
      if (userComp.layer(i).name === "Subtitle") {
          userComp.layer(i).property("Source Text").setValueAtTime(0, subtitleEditText.text);
      }
  }
  ```

- **Abrir la composición en el visor (Viewer):**
  ```javascript
  userComp.openInViewer();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `mainWindow.show()`** solo después de haber construido toda la interfaz y asignado los eventos.
- **Usa `app.beginUndoGroup("Nombre")`** siempre que el script realice cambios destructivos (duplicar, modificar propiedades). Permite al usuario deshacer todo con un solo Ctrl+Z.
- **Usa `instanceof CompItem`** dentro del bucle `getPresetComp` para asegurarte de que el ítem encontrado es una composición y no una carpeta o un sólido.
- **Usa nombres de capa exactos** (mayúsculas/minúsculas) al comparar con `layer(i).name`. El tutorial muestra que un error de tipeo (ej. "Lower Third 1" vs "Lower Third 01") rompe el script.
- **Usa `selection` (no `selection.index`)** si prefieres trabajar con el texto del ítem seleccionado. `presetDropdown.selection` devuelve el objeto del ítem; su texto se obtiene con `.toString()` o directamente en la comparación.
- **Usa `property("Source Text")`** para acceder a la propiedad de texto de una capa de texto. No uses `property("Text")` ni `property("ADBE Text Properties")`.
- **Usa `setValueAtTime(t, newText)`** para cambiar el texto. El primer argumento es el tiempo en segundos (casi siempre 0).
- **Usa `undefined`** como argumento de tamaño/posición en `add()` cuando no quieras especificarlo, pero luego ajústalo con `.size = [w, h]`.

## Errores comunes

- **No verificar que el nombre del ítem en el dropdown coincida exactamente con el nombre de la composición en el proyecto.** El tutorial muestra un error de 30 minutos por tener "Lower Third 1" en el menú y "Lower Third 01" en el proyecto.
- **Olvidar llamar a `.duplicate()`** antes de modificar la composición. Si no se duplica, se modifica la plantilla original.
- **No usar `instanceof CompItem`** en la función de búsqueda, lo que puede devolver una carpeta u otro tipo de ítem y causar un error de tipo.
- **Asumir que el nombre de la capa es exactamente "Title" o "Subtitle"** sin verificar mayúsculas, espacios o caracteres especiales.
- **No cerrar el `app.beginUndoGroup` con `app.endUndoGroup`**, lo que impide que la acción sea deshecha como un solo bloque.
- **Usar `property("Text")` en lugar de `property("Source Text")`** para modificar el contenido de una capa de texto. La primera no existe.