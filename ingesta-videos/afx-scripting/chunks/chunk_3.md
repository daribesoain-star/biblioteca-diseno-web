

===== eKdxONCLy3Y.md =====
```markdown
# Speed Up After Effects 💯w/ One Command - Opening, Workflow & Rendering
**Fuente:** Vidiots Channel | https://youtu.be/eKdxONCLy3Y

## Qué enseña (2 líneas)
El tutorial enseña un comando de sistema (no un script de After Effects) que limpia archivos temporales y caché de After Effects para acelerar la apertura, el flujo de trabajo y el renderizado. No contiene código .jsx ni técnicas de scripting de ExtendScript.

## Técnicas de scripting accionables
- **No aplica.** El video no muestra ni utiliza ningún código .jsx, ExtendScript, ni API de After Effects (como `app.project`, `addComp`, `layers.add*`, `property()/effect()`, `setValueAtTime`, `expression`, `matchNames`, `ScriptUI`, `app.beginUndoGroup`, `render queue`, `File I/O`). Solo se menciona un comando de terminal de Windows.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **No aplica.** No hay instrucciones sobre scripting de After Effects. El video solo indica: copiar un comando (no proporcionado en el texto), pegarlo en el Símbolo del sistema (CMD) como administrador, esperar hasta 20 minutos, y reiniciar el equipo.

## Errores comunes
- **No aplica.** No se mencionan errores de scripting. El video solo advierte que el proceso puede tardar más de 20 minutos la primera vez y que se debe cerrar cualquier programa antes de ejecutar el comando.
```

===== iEXhPPqolNI.md =====
# Introducción al Scripting en After Effects
**Fuente:** Digital Magician - VFX & Mograph Tutorials | https://youtu.be/iEXhPPqolNI

## Qué enseña (2 líneas)
Explica qué es el scripting en After Effects (ExtendScript/.jsx), su diferencia con las expresiones, y la estructura del modelo de objetos (proyectos, composiciones, capas, elementos de render). Destaca que los scripts automatizan tareas y acceden a funciones no disponibles en la interfaz gráfica.

## Técnicas de scripting accionables
- **Acceder al proyecto activo:** `app.project`
- **Crear una composición:** `app.project.items.addComp("Nombre", ancho, alto, 1, duración, 30)`
- **Agregar capa desde archivo:** `comp.layers.add(file)`
- **Agregar capa de texto:** `comp.layers.addText("Texto")`
- **Agregar capa sólida:** `comp.layers.addSolid([1,0,0], "Rojo", 1920, 1080, 1)`
- **Acceder a propiedades de capa:** `layer.property("Transform").property("Position")`
- **Acceder a efectos por matchName:** `layer.effect("ADBE Color Balance")` o `layer.property("ADBE Effect Parade").property("ADBE Color Balance")`
- **Establecer keyframe con valor en tiempo:** `prop.setValueAtTime(tiempoEnSegundos, [x, y])`
- **Aplicar expresión a propiedad:** `prop.expression = "wiggle(5, 10)"`
- **Crear ventana ScriptUI:** `var win = new Window("palette", "Título", [100,100,400,300])`
- **Agregar botón a ventana:** `var btn = win.add("button", undefined, "Ejecutar")`
- **Asignar acción al botón:** `btn.onClick = function() { alert("¡Hola!"); }`
- **Agrupar operaciones para deshacer:** `app.beginUndoGroup("Nombre de acción")` / `app.endUndoGroup()`
- **Acceder a cola de render:** `app.project.renderQueue`
- **Agregar composición a cola:** `app.project.renderQueue.items.add(comp)`
- **Leer/escribir archivo:** `var archivo = new File("ruta/archivo.txt")` / `archivo.open("r")` / `archivo.read()` / `archivo.close()`

## Reglas para el operador
- Usa `app.project` como punto de entrada para manipular el proyecto actual.
- Usa `addComp()` cuando necesites crear una composición desde cero; los parámetros son: nombre, ancho, alto, relación de píxeles, duración en segundos, framerate.
- Usa `layers.add()` para footage, `layers.addText()` para texto, `layers.addSolid()` para sólidos.
- Usa `property()` con el nombre exacto de la propiedad (ej: "Transform", "Position", "Scale", "Opacity").
- Usa `effect()` o `property("ADBE Effect Parade")` para acceder a efectos; los matchNames son cadenas específicas de After Effects.
- Usa `setValueAtTime(tiempo, valor)` para crear keyframes; el tiempo está en segundos.
- Usa `expression` como propiedad de cadena para asignar expresiones a propiedades.
- Usa `beginUndoGroup()` / `endUndoGroup()` para agrupar múltiples cambios en una sola acción de deshacer.
- Usa ScriptUI (`Window`, `panel`, `button`, `onClick`) para interfaces gráficas personalizadas.
- Usa `renderQueue.items.add(comp)` para enviar composiciones a la cola de render.
- Usa `File` para operaciones de entrada/salida; recuerda abrir (`open()`), leer/escribir y cerrar (`close()`).
- **Gotcha de ExtendScript:** Las propiedades en JavaScript se llaman "atributos" en el modelo de objetos de After Effects para evitar confusión con las propiedades animables de capas/efectos.

## Errores comunes
- Confundir **expresiones** con **scripts**: las expresiones definen el valor de una propiedad en tiempo real; los scripts ejecutan comandos que modifican el proyecto.
- Usar nombres incorrectos de propiedades o matchNames (ej: escribir "Position" en vez de "Transform" > "Position").
- Olvidar cerrar archivos después de leerlos o escribirlos (`archivo.close()`).
- No agrupar operaciones con `beginUndoGroup()`/`endUndoGroup()`, lo que impide deshacer múltiples cambios como una sola acción.
- Asumir que todo lo que se puede hacer en la interfaz gráfica tiene un método directo en scripting (aunque la mayoría sí, no todos).
- No verificar que `app.project` exista (puede ser `null` si no hay proyecto abierto).

===== kQRqdwRxhtw.md =====
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

===== lqyIDUiUrVk.md =====
# Destilación: "Scripting for After Effects Part 2" (Batch Frame)

## Qué enseña (2 líneas)
Creación de un script .jsx que alinea capas con marcadores de una capa seleccionada, usando bucles, variables de composición/capa, y validación de errores. Incluye funciones, undo groups, prompts y comprobación de tipos con `instanceof`.

## Técnicas de scripting accionables

- **Obtener la composición activa:**
  ```javascript
  var comp = app.project.activeItem;
  ```

- **Obtener la primera capa seleccionada (devuelve array, tomar índice 0):**
  ```javascript
  var layer = comp.selectedLayers[0];
  ```

- **Contar marcadores de una capa:**
  ```javascript
  var numMarkers = layer.marker.numKeys;
  ```

- **Bucle `for` para recorrer capas y marcadores simultáneamente:**
  ```javascript
  for (var i = 1; i <= numMarkers; i++) {
      comp.layer(i).startTime = layer.marker.keyTime(i);
  }
  ```

- **Solicitar entrada al usuario con `prompt`:**
  ```javascript
  var startLayer = prompt("First layer to be affected", "1");
  ```

- **Agrupar operaciones en un solo "Undo":**
  ```javascript
  app.beginUndoGroup("Layers to Markers");
  // ... operaciones ...
  app.endUndoGroup();
  ```

- **Declarar y llamar una función:**
  ```javascript
  function layersToMarkers() {
      // código
  }
  layersToMarkers(); // llamada
  ```

- **Comprobar si un item es una composición (`CompItem`):**
  ```javascript
  if (comp instanceof CompItem) { ... }
  ```

- **Validar que un valor es numérico con `parseInt` e `isNaN`:**
  ```javascript
  if (isNaN(parseInt(startLayer))) {
      alert("You must give the script a number not text");
  }
  ```

- **Comprobar si el usuario canceló un `prompt` (devuelve `null`):**
  ```javascript
  if (startLayer !== null) {
      // ejecutar
  }
  ```

## Reglas para el operador

- **Usa `app.project.activeItem`** cuando necesites la composición actualmente activa en el panel de proyecto.
- **Usa `comp.selectedLayers[0]`** cuando quieras la primera capa seleccionada (incluso si solo hay una, devuelve array).
- **Usa `layer.marker.numKeys`** para obtener el número de marcadores; `layer.marker.keyTime(i)` para el tiempo del i-ésimo marcador.
- **Usa `app.beginUndoGroup("nombre")` / `app.endUndoGroup()`** para que todo el script se deshaga de una sola vez (profesional y evita deshacer paso a paso).
- **Usa `instanceof CompItem`** para verificar que el `activeItem` es una composición, no un sólido, carpeta, etc.
- **Usa `parseInt()` antes de `isNaN()`** porque `isNaN` espera un número; `parseInt` convierte string a número (o devuelve `NaN` si no puede).
- **Usa `if (variable !== null)`** después de un `prompt` para detectar que el usuario hizo clic en "Cancelar".
- **Los índices de capa empiezan en 1**, no en 0. Los arrays de JavaScript empiezan en 0.
- **Los comentarios de una línea** se hacen con `//`; los multilínea con `/* ... */`.

## Errores comunes

- **Olvidar que `selectedLayers` devuelve un array** aunque solo haya una capa seleccionada → usar `[0]`.
- **Usar índice 0 para capas** → las capas empiezan en 1 (`comp.layer(1)` es la primera capa).
- **No verificar si `activeItem` es `null`** → error si no hay composición abierta.
- **No verificar si `selectedLayers[0]` es `null`** → error si no hay capa seleccionada.
- **No verificar si `numMarkers` es 0** → error al intentar acceder a `keyTime(1)` en una capa sin marcadores.
- **No validar entrada del usuario** → si el usuario escribe texto en `prompt`, `startLayer + i` produce concatenación en vez de suma.
- **No detectar "Cancelar" en `prompt`** → `null` se propaga y causa errores como "null is not an object".
- **Olvidar `app.beginUndoGroup` / `app.endUndoGroup`** → cada operación se deshace individualmente (molesto con muchas capas).
- **Usar `==` en vez de `===`** para comparar con `null` → puede dar falsos positivos con `undefined`.

===== trYUpprPn6U.md =====
# After Effects Scripting Tutorial: Teach Yourself Scripting
**Fuente:** NT Productions | https://youtu.be/trYUpprPn6U

## Qué enseña (2 líneas)
Estrategias para aprender scripting de After Effects por cuenta propia: usar guías de referencia, depurar código, pensar en niveles de objetos y practicar con metas concretas. No es un tutorial de sintaxis, sino de metodología de aprendizaje.

## Técnicas de scripting accionables

- **Referencia obligatoria:** Consultar la *Scripting Guide* y la *UI Guide* (para ScriptUI) incluidas en la instalación de After Effects.
- **Depuración con `alert()`:** `alert("valor de x: " + x);` — muestra un cuadro de diálogo.
- **Depuración con `$.writeln()`:** `$.writeln("mensaje");` — escribe en la consola de JavaScript (Ventana > Consola de JavaScript).
- **Object Model Viewer (OMV):** En ExtendScript Toolkit, usar Ver > Explorador de objetos para inspeccionar clases, constructores, propiedades y métodos de After Effects y ScriptUI.
- **Jerarquía correcta de objetos:** No usar `comp.addSolid()`, sino `comp.layers.addSolid()`. No usar `app.project.addItem()`, sino `app.project.items.addComp()`.
- **Prueba en múltiples versiones:** Ejecutar el script en CS6, CC 2014, CC 2018, etc., porque métodos como `property()` pueden no existir en versiones antiguas.
- **Prueba en Windows y Mac:** Especialmente con rutas de archivo (File I/O), ya que la sintaxis de carpetas difiere.
- **Foros:** Buscar primero en foros de scripting de After Effects antes de publicar; no duplicar hilos existentes.
- **Metas progresivas:** Ejemplo: "Quiero un script que active/desactive todas las capas" → primero aprender a apagar una capa (`layer.enabled = false`), luego iterar sobre todas.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `comp.layers.addSolid()` en lugar de `comp.addSolid()`** — el método `addSolid` pertenece a `LayerCollection`, no a `CompItem`.
- **Usa `app.project.items.addComp()` en lugar de `app.project.addComp()`** — los métodos de agregado están en `items`, no directamente en `project`.
- **Usa `$.writeln()` para depuración silenciosa** (sin interrumpir al usuario); usa `alert()` solo cuando quieras que el usuario vea el mensaje inmediatamente.
- **Usa el Object Model Viewer (OMV)** para verificar la jerarquía exacta de objetos antes de escribir código.
- **Prueba en Mac si usas rutas de archivo** — las barras invertidas (`\`) de Windows no funcionan; usa `Folder.selectDialog()` o `File.openDialog()` para evitar problemas de plataforma.
- **Revisa la guía de versiones antiguas** — métodos como `property("ADBE Transform Position")` pueden no estar disponibles en CS6; usa `property(1)` como alternativa.

## Errores comunes

- **Llamar a un método en el objeto equivocado:** Ejemplo: `comp.addSolid()` en lugar de `comp.layers.addSolid()`.
- **No revisar la jerarquía de objetos:** Intentar `app.project.addComp()` en vez de `app.project.items.addComp()`.
- **Usar `alert()` para todo en depuración:** Interrumpe el flujo; mejor usar `$.writeln()` y la consola de JavaScript.
- **No probar en múltiples versiones de After Effects:** Un script que funciona en CC 2018 puede fallar en CS6 por falta de métodos.
- **No probar en Mac:** Especialmente con rutas de archivo hardcodeadas (ej: `"C:\carpeta\archivo.jsx"`).
- **Publicar en foros sin buscar primero:** Preguntar algo ya respondido genera mala recepción.
- **No usar el Object Model Viewer:** Lleva a confusiones sobre qué propiedades/métodos están disponibles en cada objeto.

===== vAenMHvAHQI.md =====
# Tutorial 21: Using aerender
**Fuente:** Workbench | https://youtu.be/vAenMHvAHQI

## Qué enseña
Cómo crear un script bash ejecutable que invoca `aerender` desde la terminal para renderizar un proyecto de After Effects (.aep) en segundo plano, permitiendo seguir trabajando en After Effects mientras se completa la exportación.

## Técnicas de scripting accionables

- **Crear un script bash ejecutable (no .jsx)** con shebang y ruta a aerender:
  ```bash
  #!/bin/bash
  /Applications/Adobe\ After\ Effects\ 2024/aerender -project "$1"
  ```
  - `#!/bin/bash` → shebang para indicar que es un script bash ejecutable.
  - `\` (backslash) → escapa espacios en la ruta (ej: `Adobe\ After\ Effects\ 2024`).
  - `-project` → flag de aerender para especificar el proyecto.
  - `"$1"` → primer argumento pasado al script (ruta al archivo .aep).

- **Hacer el script ejecutable** desde terminal:
  ```bash
  chmod +x render
  ```
  - `chmod +x` → otorga permisos de ejecución al archivo.

- **Ejecutar el script** pasando la ruta del .aep como argumento:
  ```bash
  ./render /ruta/al/proyecto.aep
  ```
  - Se puede arrastrar el archivo .aep a la terminal para pegar su ruta automáticamente.

- **Cancelar la renderización** en cualquier momento:
  - `Ctrl + C` (incluso en macOS) → interrumpe el proceso en la terminal.

## Reglas para el operador

- **Usa `chmod +x`** después de crear el script bash; sin esto, el sistema denegará la ejecución (`Permission denied`).
- **Usa `\` (backslash)** antes de cada espacio en la ruta de aerender para evitar errores de sintaxis en bash.
- **Usa `"$1"` entre comillas** para que el argumento (ruta del .aep) se interprete correctamente incluso si contiene espacios.
- **Puedes dejar After Effects abierto** mientras ejecutas el script; aerender funciona en segundo plano sin bloquear la aplicación.
- **Añade la composición a la cola de render (Render Queue) y guarda el proyecto** antes de cerrarlo y ejecutar el script; aerender procesa lo que está en la cola.
- **Arrastrar el .aep a la terminal** añade un espacio al final; no afecta la ejecución.

## Errores comunes

- **Olvidar hacer `chmod +x`** → al ejecutar `./render` aparece `Permission denied`.
- **No escapar espacios en la ruta de aerender** → el terminal interpreta cada palabra como un argumento separado y falla.
- **No guardar el proyecto antes de ejecutar aerender** → la cola de render está vacía o no refleja los últimos cambios.
- **Usar el script sin pasar la ruta del .aep como argumento** → `$1` queda vacío y aerender muestra la ayuda por defecto.
- **Confundir `aerender` con un script .jsx** → `aerender` es un ejecutable independiente, no un script de ExtendScript.

===== vKK-dqo7ZQw.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente las reglas solicitadas.

```markdown
# Cómo ejecutar scripts en After Effects y Premiere
**Fuente:** NT Productions | https://youtu.be/vKK-dqo7ZQw

## Qué enseña (2 líneas)
Muestra los métodos para ejecutar scripts `.jsx` en After Effects y Premiere Pro: usando ExtendScript, el menú interno de AE, la extensión "ExtendScript Debugger" en VS Code, y desde una extensión CEP (Common Extensibility Platform) mediante `CSInterface.evalScript()`.

## Técnicas de scripting accionables

- **Ejecutar script desde ExtendScript Toolkit (ESTK):**
  1. Abre ESTK desde Creative Cloud.
  2. Selecciona el target: `After Effects CC 2023` o `Premiere Pro 2023`.
  3. Asegúrate de que el indicador de conexión esté **verde** (si está rojo, haz clic para reconectar).
  4. Pega o abre tu script (ej. `alert("running a script");`).
  5. Presiona el botón **Play** (triángulo verde).

- **Ejecutar script desde After Effects (menú interno):**
  - Ve a `File > Scripts > Run Script File...`.
  - Selecciona el archivo `.jsx` guardado en disco.

- **Ejecutar script desde VS Code con "ExtendScript Debugger":**
  1. Instala la extensión "ExtendScript Debugger" (de Adobe).
  2. Abre tu archivo `.jsx` en VS Code.
  3. En la barra inferior, selecciona el target: `After Effects CC 2023` o `Premiere Pro 2023`.
  4. Ve a la vista **Run and Debug** (Ctrl+Shift+D).
  5. Presiona **Run and Debug** (F5). El script se ejecutará en la aplicación target.

- **Ejecutar script desde una extensión CEP (en Premiere Pro, donde no hay "Run Script File"):**
  - Dentro del código de la extensión (HTML/JS), usa `CSInterface`:
    ```javascript
    // Ejemplo dentro de una extensión
    var csInterface = new CSInterface();
    csInterface.evalScript('alert("hello from jsx");');
    ```
  - Para scripts más complejos, define una función en el archivo `.jsx` (ej. `function init() { ... }`) y llámala con:
    ```javascript
    csInterface.evalScript('init()');
    ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa ExtendScript Toolkit (ESTK)** cuando quieras la máxima compatibilidad y no tengas problemas con Mac (aunque en Mac puede fallar). Es el método "tried and true".
- **Usa VS Code + ExtendScript Debugger** si estás en Mac (ESTK suele dar problemas) o si prefieres un entorno moderno con dark mode, variables watch y call stack.
- **No uses ESTK y VS Code al mismo tiempo** para el mismo target. Si uno ya está conectado, el otro fallará. Cierra siempre la aplicación Adobe y el editor que no vayas a usar, luego abre primero el que sí usarás.
- **Si el indicador de conexión en ESTK está rojo**, cierra todas las instancias de VS Code y la aplicación Adobe, luego abre ESTK primero.
- **En VS Code**, si ves el error `"15: can't initialize Target"**, cierra VS Code y la aplicación Adobe, relanza VS Code primero, luego la aplicación Adobe, y vuelve a seleccionar el target.
- **En Premiere Pro**, no existe `File > Scripts > Run Script File`. Las únicas opciones son ESTK, VS Code o una extensión CEP.
- **Para ejecutar scripts desde una extensión CEP**, el archivo `.jsx` debe estar en la carpeta `CEP/extensions/<tu-extension>/host/` o similar, y la función debe estar definida globalmente en el ámbito de ExtendScript.

## Errores comunes

- **"15: can't initialize Target"** en VS Code: conflicto con ESTK abierto o con otra instancia de VS Code. Cierra todo y relanza solo VS Code.
- **Indicador rojo en ESTK**: no puede conectar con la aplicación. Cierra VS Code y la app Adobe, luego abre ESTK primero.
- **No aparece "Run Script File" en Premiere Pro**: es normal. Usa ESTK, VS Code o una extensión CEP.
- **La extensión "Adobe Script Runner" de RenderTom** ya no está disponible en el marketplace (posible copyright claim). No confíes en ella.
- **Si usas VS Code y el script no se ejecuta**, verifica que el target esté seleccionado correctamente en la barra inferior (no solo en el launch.json).
```

===== zGFMxweemcI.md =====
# Comp Replicator: CSV Driven Batch Comps - Quickstart Guide Tutorial
**Fuente:** Adam Nix | https://youtu.be/zGFMxweemcI

## Qué enseña (2 líneas)
Uso del script **Comp Replicator** para generar lotes de composiciones en After Effects a partir de datos de un archivo CSV, reemplazando capas de texto y fuentes de capa (layer sources) automáticamente, incluyendo duplicación de precomposiciones y envío a la cola de render.

## Técnicas de scripting accionables

- **Seleccionar comp template:** `app.project.activeItem` (comp activo se selecciona automáticamente al abrir el script).
- **Cargar CSV:** El script lee archivos `.csv` mediante `File.openDialog()` o selección desde interfaz.
- **Asignar targets automáticamente:** En el nombre de la capa del template, escribir `#` seguido del número de target (ej: `#1`). Luego hacer clic en **Refresh** en la UI del script.
- **Filtros de capa:** Usar filtro `text` para capas de texto y `source` para capas con fuente (archivo o comp).
- **Reemplazar source con comp:** Si el CSV contiene un nombre de comp, el script busca en `app.project.items` el comp con ese nombre y lo asigna como `layer.source`.
- **Duplicar precomposiciones:** El script duplica automáticamente las precomps que contienen las capas target.
- **Render Queue:** Al hacer clic en **Create Comp**, los comps generados se añaden a `app.project.renderQueue.items` con configuraciones de render y output module personalizadas.
- **Still Frame:** Botón **Still Frame** → **Q Existing** agrega los comps existentes a la cola de render como fotogramas fijos.
- **UI dinámica:** La interfaz (`ScriptUI`) se redimensiona automáticamente según el tamaño del CSV cargado.
- **Dockable:** El script es totalmente acoplable (`panel.dockable = true`).

## Reglas para el operador

- **Usa `#` + número** en el nombre de la capa del template para que el script asigne targets automáticamente al hacer Refresh.
- **Para reemplazar source con un comp**, el valor en el CSV debe coincidir exactamente con el nombre del comp en el proyecto.
- **Si la capa target está dentro de una precomp**, el script duplica toda la precomp automáticamente.
- **Para actualizar un dato**, selecciona la fila correspondiente en la UI, edita el campo y haz clic en **Create Comp** de nuevo.
- **Para ver todos los datos a la vez**, ve a **Settings** → **Add more targets**.
- **Para renderizar lotes**, los comps se agregan a la cola con los mismos ajustes de render y output module que el template original.

## Errores comunes

- **No seleccionar el comp template** antes de abrir el script → el campo de comp queda vacío.
- **Escribir mal el `#` + número** en el nombre de la capa (ej: espacio antes del número) → el Refresh no detecta el target.
- **El nombre del comp en el CSV no coincide exactamente** con el nombre en el proyecto → el source no se reemplaza.
- **Cerrar el script antes de hacer Q Existing** → los comps generados no se pueden añadir a la cola de render.
- **No hacer Refresh después de añadir `#`** → los targets no se actualizan en la UI.

===== zGbd-tEyryg.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente el contenido del video y las reglas proporcionadas.

# After Effects Scripting Tutorial: Recreate Shape Layers
**Fuente:** NT Productions | https://youtu.be/zGbd-tEyryg

## Qué enseña (2 líneas)
A crear capas de forma desde cero con un script, añadiendo contenidos personalizados como trazados de polígono, trazo y relleno. También enseña a usar la consola de JavaScript para inspeccionar propiedades y obtener los "match names" necesarios para recrear cualquier capa de forma.

## Técnicas de scripting accionables

- **Verificar y crear composición activa:**
    ```javascript
    var proj = app.project;
    var comp = proj.activeItem;
    if (comp == null) {
        comp = proj.items.addComp("Test Comp", 1920, 1080, 1, 10, 30);
        comp.openInViewer();
    }
    ```

- **Agregar una capa de forma vacía:**
    ```javascript
    var shapeLayer = comp.layers.addShape();
    shapeLayer.name = "Hexagon";
    ```

- **Agregar un grupo de vectores (contenedor principal) y renombrarlo:**
    ```javascript
    app.beginUndoGroup("Create Hexagon");
    var hexagonGroup = shapeLayer.property("Contents").addProperty("ADBE Vector Group");
    hexagonGroup.name = "Hexagon";
    ```

- **Agregar un trazado de polígono/estrella (Poly Star Path):**
    ```javascript
    var pathGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Shape - Star");
    ```

- **Agregar un trazo (Stroke):**
    ```javascript
    var strokeGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Stroke");
    ```

- **Agregar un relleno (Fill):**
    ```javascript
    var fillGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Fill");
    ```

- **Configurar el trazado como polígono de 6 lados (hexágono):**
    ```javascript
    pathGroup.property("ADBE Vector Star - Type").setValue(2); // 1 = Star, 2 = Polygon
    pathGroup.property("ADBE Vector Star - Points").setValue(6);
    ```

- **Agrupar operaciones para permitir deshacer:**
    ```javascript
    app.beginUndoGroup("Create Hexagon");
    // ... todo el código de creación ...
    app.endUndoGroup();
    ```

- **Inspeccionar propiedades desde la consola de ExtendScript (para obtener match names):**
    ```javascript
    var layer = comp.layer(3); // Ejemplo: capa específica
    $.writeln(layer.property("Contents").matchName); // Muestra: "ADBE Root Vectors Group"
    $.writeln(layer.property("Contents").property(1).name); // Muestra: "Hexagon"
    $.writeln(layer.property("Contents").property(1).property("Contents").property(1).matchName); // Muestra: "ADBE Vector Shape - Star"
    ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.project.activeItem`** para obtener la composición activa. Si es `null`, usa `proj.items.addComp()` para crear una nueva.
- **Usa `comp.layers.addShape()`** para crear una capa de forma vacía. No requiere argumentos.
- **Usa `property("Contents")`** para acceder al grupo de contenidos de una capa de forma.
- **Usa `addProperty("ADBE Vector Group")`** para agregar un nuevo grupo contenedor dentro de "Contents".
- **Usa `addProperty("ADBE Vector Shape - Star")`** para agregar un trazado de polígono/estrella.
- **Usa `addProperty("ADBE Vector Graphic - Stroke")`** para agregar un trazo.
- **Usa `addProperty("ADBE Vector Graphic - Fill")`** para agregar un relleno.
- **Usa `setValue(2)` en la propiedad "ADBE Vector Star - Type"** para convertir un trazado de estrella en polígono.
- **Usa `app.beginUndoGroup("Nombre")` y `app.endUndoGroup()`** para que el usuario pueda deshacer toda la operación con un solo Ctrl+Z.
- **Usa `$.writeln()`** para imprimir en la consola de JavaScript de ExtendScript y así inspeccionar propiedades y obtener sus `matchName`.
- **Usa `.matchName`** para obtener el nombre interno de After Effects de cualquier propiedad (ej: `"ADBE Root Vectors Group"`). Es el que necesitas para `addProperty()`.
- **Usa `.name`** para obtener el nombre visible al usuario de una propiedad (ej: "Hexagon").

## Errores comunes

- **Asumir que el orden de las propiedades es el mismo que en la UI:** Al inspeccionar con `property(1)`, `property(2)`, etc., pueden aparecer propiedades ocultas (como "Blend Mode" o "Material Options") que no se ven en la interfaz. Hay que probar varios índices hasta encontrar la deseada.
- **Olvidar la capa oculta "Contents" dentro de un grupo:** Al agregar un grupo con `addProperty("ADBE Vector Group")`, dentro de él hay otro grupo "Contents" que es el que realmente contiene los trazados, trazos y rellenos. La ruta correcta es `shapeLayer.property("Contents").property("Hexagon").property("Contents")`.
- **Usar el nombre visible en lugar del `matchName`:** No se puede usar `addProperty("Poly Star Path")`. Siempre se debe usar el `matchName` (ej: `"ADBE Vector Shape - Star"`).
- **No verificar si hay una composición activa:** Si `app.project.activeItem` es `null` y no se crea una composición nueva, el script fallará al intentar agregar una capa.
- **No agrupar las operaciones con `beginUndoGroup`:** Si el usuario comete un error, no podrá deshacer todo el proceso de creación de la capa de forma de una sola vez.