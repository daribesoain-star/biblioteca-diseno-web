# After Effects Scripting For Beginners [2022]

**Fuente:** NT Productions | https://youtu.be/DTBtfFiyjNU

## Qué enseña (2 líneas)

Creación de scripts .jsx con interfaz gráfica (UI) para After Effects, desde la configuración del editor hasta la automatización de composiciones, capas, efectos, keyframes y render. Cubre la API de ExtendScript: `app.project`, `addComp`, `layers.add()`, `property()`, `setValueAtTime`, `expression`, `matchNames`, `ScriptUI` y `File I/O`.

## Técnicas de scripting accionables

- **Crear ventana flotante (palette):**
  ```javascript
  var myWindow = new Window("palette", "My Window", undefined);
  myWindow.orientation = "column";
  myWindow.center();
  myWindow.show();
  ```

- **Agregar texto estático:**
  ```javascript
  var text = myWindow.add("statictext", undefined, "This is my text");
  ```

- **Agregar grupo con orientación y botones:**
  ```javascript
  var group = myWindow.add("group", undefined, "");
  group.orientation = "row";
  var button1 = group.add("button", undefined, "Button One");
  var button2 = group.add("button", undefined, "Button Two");
  ```

- **Agregar dropdown con array de items:**
  ```javascript
  var dropdown = myWindow.add("dropdownlist", undefined, ["Test One", "Test Two", "Test Three"]);
  dropdown.selection = 0; // selecciona el primer elemento
  dropdown.size = [180, 25];
  ```

- **Agregar panel con radio button y checkbox:**
  ```javascript
  var panel = myWindow.add("panel", undefined, "My Panel");
  panel.orientation = "row";
  var radio = panel.add("radiobutton", undefined, "Radio");
  var checkbox = panel.add("checkbox", undefined, "Checkbox");
  ```

- **Agregar campo de texto editable:**
  ```javascript
  var textbox = myWindow.add("edittext", undefined, "My Input");
  ```

- **Agregar slider:**
  ```javascript
  var slider = myWindow.add("slider", undefined, "");
  ```

- **Detectar clic en botón (onClick):**
  ```javascript
  button1.onClick = function() {
      alert("Hello, you clicked Button One");
  };
  ```

- **Verificar composición activa y obtenerla:**
  ```javascript
  if (app.project.activeItem === null || !(app.project.activeItem instanceof CompItem)) {
      alert("You have no composition selected");
      return;
  }
  var comp = app.project.activeItem;
  ```

- **Obtener capa por índice y modificar posición:**
  ```javascript
  var layer = comp.layer(1);
  layer.property("ADBE Transform Group").property("ADBE Position").setValue([1000, 1000]);
  ```

- **Modificar escala y opacidad:**
  ```javascript
  layer.property("ADBE Transform Group").property("ADBE Scale").setValue([200, 200]);
  layer.property("ADBE Transform Group").property("ADBE Opacity").expression = "wiggle(2, 30)";
  ```

- **Cambiar tamaño y nombre de composición:**
  ```javascript
  comp.width = 500;
  comp.height = 1000;
  comp.name = "My Renamed Composition";
  ```

- **Agregar efecto por matchName y modificar su propiedad:**
  ```javascript
  var myEffect = layer.property("ADBE Effect Parade").addProperty("ADBE Exposure2");
  myEffect.property(3).setValue(2);
  ```

- **Agrupar operaciones en un solo Undo:**
  ```javascript
  app.beginUndoGroup("My Process");
  // ... todas las operaciones ...
  app.endUndoGroup();
  ```

- **Importar archivo y agregarlo como capa:**
  ```javascript
  var myVideoFile = new File("~/Videos/test.mp4");
  var videoItem = app.project.importFile(new ImportOptions(myVideoFile));
  comp.layers.add(videoItem);
  ```

- **Bucle for para agregar múltiples capas:**
  ```javascript
  for (var i = 0; i < 100; i++) {
      comp.layers.add(videoItem);
  }
  ```

- **Agregar item a dropdown existente:**
  ```javascript
  dropdown.add("item", "My Extra Item");
  ```

## Reglas para el operador

- **Usa `app.project.activeItem`** cuando necesites la composición o elemento actualmente seleccionado en el panel de proyecto.
- **Usa `instanceof CompItem`** para verificar que el activeItem sea efectivamente una composición.
- **Usa `matchNames`** (ej: `"ADBE Transform Group"`, `"ADBE Position"`, `"ADBE Exposure2"`) en lugar de nombres traducidos para garantizar compatibilidad multi-idioma.
- **Usa `app.beginUndoGroup()` / `app.endUndoGroup()`** para agrupar múltiples operaciones en un solo paso de deshacer.
- **Usa `new File("~/ruta")`** para referenciar archivos del usuario; la tilde (`~`) representa la carpeta home del usuario.
- **Usa `new ImportOptions(file)`** como argumento de `app.project.importFile()` para importar archivos correctamente.
- **Usa `selection = 0`** en dropdowns para seleccionar el primer elemento (los índices de array empiezan en 0).
- **Usa `size = [ancho, alto]`** para redimensionar elementos UI como dropdowns.
- **Usa `orientation = "column"` o `"row"`** en ventanas, grupos y paneles para controlar la dirección de los elementos hijos.
- **Usa `;`** al final de cada línea de código en ExtendScript.
- **Usa `//`** para comentar líneas y evitar que se ejecuten.
- **Gotcha:** ExtendScript no soporta macOS moderno (solo 32-bit); en Windows sigue funcionando. En Mac usa Visual Studio Code con las extensiones "ExtendScript Debugger" y "Adobe Script Runner".
- **Gotcha:** Los arrays en ExtendScript empiezan en índice 0, no 1.
- **Gotcha:** Para comparar usa `===` (estricto) o `==` (con conversión de tipo); no uses `=` que es asignación.

## Errores comunes

- Usar `=` en lugar de `===` o `==` dentro de condiciones `if`.
- Olvidar `;` al final de las líneas.
- No verificar si `app.project.activeItem` es `null` o no es `CompItem` antes de operar sobre él.
- Usar nombres de propiedades traducidos (ej: `"Position"` en lugar de `"ADBE Position"`) lo que rompe el script en versiones no inglesas de After Effects.
- No usar `new ImportOptions(file)` al importar, pasando el archivo directamente como string.
- No cerrar `app.beginUndoGroup()` con `app.endUndoGroup()`, causando que el grupo de deshacer quede abierto.
- Confundir `add("item", ...)` en dropdowns con `add("button", ...)` u otros tipos de UI.
- Olvidar que `property()` requiere el matchName exacto; usar nombres incorrectos lanza error.
- No usar `var` o `let` al declarar variables, causando conflictos de ámbito global.