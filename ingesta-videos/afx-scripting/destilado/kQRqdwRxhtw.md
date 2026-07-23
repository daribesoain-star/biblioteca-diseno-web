# Ultimate Guide to After Effects Scripting (Extracto)

**Fuente:** Digital Magician - VFX & Mograph Tutorials | https://youtu.be/kQRqdwRxhtw

## Qué enseña (2 líneas)
Introducción al entorno de scripting de After Effects (ExtendScript/.jsx) desde cero, orientado a automatizar tareas repetitivas y crear efectos personalizados. La serie promete cubrir desde fundamentos hasta scripts avanzados.

## Técnicas de scripting accionables

- **Crear una composición nueva:**
  ```javascript
  var comp = app.project.items.addComp("MiComp", 1920, 1080, 1, 30, 30);
  ```
- **Agregar una capa de sólido:**
  ```javascript
  var solidLayer = comp.layers.addSolid([1, 0, 0], "Rojo", 1920, 1080, 1);
  ```
- **Agregar una capa de texto:**
  ```javascript
  var textLayer = comp.layers.addText("Hola Mundo");
  ```
- **Acceder a propiedades de capa (posición, escala, rotación, opacidad):**
  ```javascript
  var pos = textLayer.property("Transform").property("Position");
  var scale = textLayer.property("Transform").property("Scale");
  var rotation = textLayer.property("Transform").property("Rotation");
  var opacity = textLayer.property("Transform").property("Opacity");
  ```
- **Animar una propiedad con fotogramas clave:**
  ```javascript
  pos.setValueAtTime(0, [960, 540]);
  pos.setValueAtTime(1, [960, 200]);
  ```
- **Agregar una expresión a una propiedad:**
  ```javascript
  var prop = textLayer.property("Transform").property("Position");
  prop.expression = "wiggle(5, 50)";
  ```
- **Agregar un efecto (ej. Desenfoque direccional):**
  ```javascript
  var effect = textLayer.property("ADBE Effect Parade").addProperty("ADBE Directional Blur");
  effect.property("Direction").setValue(45);
  effect.property("Blur Length").setValue(20);
  ```
- **Crear una ventana ScriptUI simple con botón:**
  ```javascript
  var win = new Window("palette", "Mi Script", undefined);
  var btn = win.add("button", undefined, "Ejecutar");
  btn.onClick = function() {
      alert("¡Botón presionado!");
  };
  win.show();
  ```
- **Agrupar operaciones para deshacer/rehacer:**
  ```javascript
  app.beginUndoGroup("Mi Acción");
  // ... operaciones ...
  app.endUndoGroup();
  ```
- **Agregar composición a la cola de render:**
  ```javascript
  var renderQueue = app.project.renderQueue;
  var renderItem = renderQueue.items.add(comp);
  renderItem.outputModule(1).file = new File("~/Desktop/salida.avi");
  ```
- **Leer/escribir archivos (File I/O):**
  ```javascript
  var archivo = new File("~/Desktop/datos.txt");
  archivo.open("w");
  archivo.write("Hola desde ExtendScript");
  archivo.close();
  ```

## Reglas para el operador

- **Usa `app.project`** como punto de entrada para acceder a todos los elementos del proyecto.
- **Usa `layers.add*`** (addSolid, addText, addNull, addShape) para crear capas; no uses constructores directos.
- **Usa `property()`** con nombres de matchNames exactos (ej. "Transform", "Position", "ADBE Effect Parade") para acceder a propiedades y efectos.
- **Usa `setValueAtTime(tiempo, valor)** para animar propiedades; el tiempo está en segundos.
- **Usa `expression`** como propiedad de cadena para asignar expresiones; no uses `addExpression()`.
- **Usa `app.beginUndoGroup`/`endUndoGroup`** para agrupar operaciones y permitir deshacer/rehacer como una sola acción.
- **Usa `ScriptUI`** para interfaces gráficas; `Window` y `panel` son los contenedores base, `button` para botones, y `onClick` para eventos.
- **Usa `renderQueue.items.add(comp)`** para agregar una comp a la cola de render; luego configura `outputModule(1).file`.
- **Usa `File`** con rutas absolutas o relativas a `~/` (home del usuario) para I/O de archivos; siempre abre y cierra el archivo.
- **Gotcha:** Los nombres de matchNames son sensibles a mayúsculas/minúsculas y espacios; verifica en la documentación de After Effects.
- **Gotcha:** `setValueAtTime` sobrescribe fotogramas clave existentes en ese tiempo; usa `addKey` si necesitas preservar otros.

## Errores comunes

- **Usar `addComp` sin especificar todos los parámetros** (nombre, ancho, alto, relación de aspecto, duración en segundos, fotogramas por segundo). Ejemplo incorrecto: `app.project.items.addComp("Comp1")`.
- **Olvidar que `layers.addText` devuelve una capa de texto**, no un objeto de texto; para cambiar el contenido usa `textLayer.property("Source Text").setValue(...)`.
- **Confundir `property()` con `effect()`**: `property()` accede a propiedades de transformación y efectos; `effect()` es un método de capa para acceder a efectos por índice o nombre.
- **No cerrar archivos después de escribir**: Siempre usa `archivo.close()` para evitar corrupción de datos.
- **Usar `onClick` sin definir la función correctamente**: Asegúrate de que `onClick` sea una función anónima o referencia a una función definida.
- **Asignar `expression` sin comillas**: La expresión debe ser una cadena de texto, no código ejecutable directamente.
- **No usar `app.beginUndoGroup`** antes de múltiples operaciones: Sin esto, cada operación crea un paso de deshacer separado, dificultando la reversión.