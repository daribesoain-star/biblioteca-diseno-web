# After Effects Scripting For Beginners [2022]
**Fuente:** NT Productions | https://youtu.be/DTBtfFiyjNU

## Qué enseña (2-3 líneas)
Tutorial completo para principiantes sobre scripting en After Effects 2022. Cubre desde la configuración del entorno de desarrollo (Visual Studio Code con extensiones) hasta la creación de interfaces de usuario funcionales con botones, menús desplegables, sliders y checkboxes, incluyendo automatización de tareas como importar archivos, modificar propiedades de capas, añadir efectos y expresiones, y usar bucles para operaciones repetitivas.

## Técnicas accionables
- **Configurar entorno de desarrollo:**
  - Instalar **Visual Studio Code** y dos extensiones: **ExtendScript Debugger** (Adobe) y **Adobe Script Runner** (Render Tom).
  - Crear archivo con extensión `.jsx` (ej: `tutorial.jsx`).
  - Para ejecutar script: presionar `F1` → seleccionar "Adobe After Effects" (con Adobe Script Runner instalado).
- **Crear ventana flotante (palette):**
  ```javascript
  var window = new Window("palette", "my window", undefined);
  window.orientation = "column";
  window.center();
  window.show();
  ```
- **Añadir elementos de interfaz:**
  - **Texto estático:** `window.add("statictext", undefined, "this is my text");`
  - **Grupo con orientación:** `var group = window.add("group"); group.orientation = "row";`
  - **Botón:** `group.add("button", undefined, "button one");`
  - **Menú desplegable:** `window.add("dropdownlist", undefined, ["test one", "test two", "test three"]);` → seleccionar primer elemento: `dropdownlist.selection = 0;`
  - **Panel con nombre:** `var panel = window.add("panel", undefined, "my panel"); panel.orientation = "row";`
  - **Radio button:** `panel.add("radiobutton", undefined, "radio");`
  - **Checkbox:** `panel.add("checkbox", undefined, "checkbox");`
  - **Campo de texto editable:** `window.add("edittext", undefined, "my entry");`
  - **Slider:** `window.add("slider", undefined);`
  - **Redimensionar elemento:** `dropdownlist.size = [180, 25];` (ancho x alto en píxeles)
  - **Añadir item a dropdown existente:** `dropdownlist.add("item", "my extra element");`
- **Detectar clics en botones:**
  ```javascript
  button1.onClick = function() {
      // código a ejecutar
  };
  ```
- **Verificar composición activa:**
  ```javascript
  if (app.project.activeItem === null || !(app.project.activeItem instanceof CompItem)) {
      alert("No composition selected");
      return false;
  }
  var comp = app.project.activeItem;
  ```
- **Obtener y modificar propiedades de capa:**
  - Obtener capa por índice: `var layer = comp.layer(1);`
  - Leer nombre: `alert(layer.name);`
  - **Posición:** `layer.property("ADBE Transform Group").property("ADBE Position").setValue([1000, 1000]);`
  - **Escala:** `layer.property("ADBE Transform Group").property("ADBE Scale").setValue([200, 200]);`
  - **Opacidad con expresión:** `layer.property("ADBE Transform Group").property("ADBE Opacity").expression = "wiggle(2, 30)";`
- **Modificar composición:**
  - Ancho: `comp.width = 500;`
  - Alto: `comp.height = 1000;`
  - Nombre: `comp.name = "my renamed composition";`
- **Añadir efecto a capa:**
  ```javascript
  var myEffect = layer.effect.addProperty("ADBE Exposure2");
  ```
- **Cambiar valor de propiedad de efecto:**
  ```javascript
  myEffect.property(3).setValue(2); // propiedad 3 = "Exposure"
  ```
- **Agrupar operaciones para deshacer con un solo Ctrl+Z:**
  ```javascript
  app.beginUndoGroup("my process");
  // ... todas las operaciones ...
  app.endUndoGroup();
  ```
- **Importar archivo y añadirlo a composición:**
  ```javascript
  var myVideoFile = File("~/Videos/test.mp4"); // o "~/Downloads/test.mp4"
  if (myVideoFile.exists) {
      var videoItem = app.project.importFile(new ImportOptions(myVideoFile));
      comp.layers.add(videoItem);
  }
  ```
- **Bucle para repetir operaciones:**
  ```javascript
  for (var i = 0; i < 100; i++) {
      comp.layers.add(videoItem);
  }
  ```

## Reglas para el erudito (imperativas y verificables)
- **Usa match names (ADBE) en lugar de nombres traducidos** para propiedades como `"ADBE Transform Group"`, `"ADBE Position"`, `"ADBE Scale"`, `"ADBE Opacity"`, `"ADBE Exposure2"` — así el script funciona en cualquier idioma de After Effects.
- **Usa `app.beginUndoGroup("nombre")` y `app.endUndoGroup()`** siempre que realices múltiples cambios para que el usuario pueda deshacer todo con un solo Ctrl+Z.
- **Usa `app.project.activeItem`** para obtener la composición seleccionada; verifica siempre que no sea `null` y que sea `instanceof CompItem`.
- **Usa `File("~/Videos/archivo.mp4")** para rutas de archivos; verifica existencia con `.exists` antes de importar.
- **Usa `selection = 0`** en dropdownlists para seleccionar el primer elemento (índice 0 en arrays).
- **Usa `orientation = "column"`** para apilar elementos verticalmente y `"row"` para alinearlos horizontalmente.
- **Usa `size = [ancho, alto]`** para redimensionar elementos de interfaz (valores en píxeles).
- **Usa `onClick`** para asignar funciones a botones; usa funciones anónimas o nombradas.
- **Usa `for (var i = 0; i < N; i++)`** para bucles; `i++` incrementa de 1 en 1.
- **Usa `===` para comparaciones estrictas** y `!==` para negación; `=` es solo para asignación.

## Errores comunes que evita o menciona
- **No usar ExtendScript Toolkit en Mac** porque es una aplicación de 32 bits y ha sido eliminada en sistemas operativos Mac recientes; usar Visual Studio Code en su lugar.
- **No olvidar instalar ambas extensiones** (ExtendScript Debugger + Adobe Script Runner) para que funcione la ejecución rápida con F1.
- **No usar nombres traducidos de propiedades** (ej: "Transform" en inglés) porque falla en otras configuraciones de idioma; usar siempre match names como `"ADBE Transform Group"`.
- **No asumir que el usuario tiene una composición seleccionada** — siempre verificar con `if (app.project.activeItem === null || !(app.project.activeItem instanceof CompItem))`.
- **No olvidar los puntos y comas (`;`)** al final de cada línea en JavaScript.
- **No usar un solo `=` para comparar** (ej: `if (x = 5)`) porque asigna el valor en lugar de comparar; usar `===`.
- **No intentar deshacer operaciones individuales** si no se agrupan con `beginUndoGroup` / `endUndoGroup` — cada cambio sería un paso de deshacer separado.
- **No asumir que el archivo existe** al importar — verificar con `.exists` antes de `importFile`.
- **No usar índices incorrectos en arrays** — el primer elemento es índice 0, no 1.