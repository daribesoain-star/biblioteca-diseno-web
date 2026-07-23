

===== doc_api_capas_props.md =====
# API ExtendScript AE — crear comps, capas, keyframes, effects (doc oficial)
**Fuente:** After Effects Scripting Guide (docsforadobe.dev) | https://ae-scripting.docsforadobe.dev

## CompItem — crear y atributos
- Crear: `app.project.items.addComp(name, width, height, pixelAspect, duration, frameRate)`.
- Atributos: `width/height`, `frameRate`, `frameDuration` (1/fps), `duration`, `pixelAspect`, `bgColor` [R,G,B] 0-1, `motionBlur` (bool), `workAreaStart`, `workAreaDuration`, `displayStartTime`, `layers` (LayerCollection), `selectedLayers`, `numLayers`, `time`.
- `layer(index)` (1..numLayers) · `layer(name)` · `layer(otherLayer, relIndex)` · `duplicate()` · `openInViewer()`.

## LayerCollection — crear capas (comp.layers.*)
- `add(item[, duration])` — capa desde un footage/comp item.
- `addNull([duration])`.
- `addSolid(color, name, width, height, pixelAspect[, duration])` → `addSolid([1,0,0],"BG",1920,1080,1)`.
- `addText([sourceText])` → point text. `addBoxText([w,h])` → paragraph/box text.
- `addShape()` → shape layer vacío.
- `addCamera(name, centerPoint)` → `addCamera("Cam",[960,540])`.
- `addLight(name, centerPoint)`.

## Property — valores, keyframes, easing, expressions
- Estático: `prop.setValue(v)` (falla si ya hay keyframes). Ej `layer.opacity.setValue(50)`, `layer.position.setValue([x,y,z])`.
- Keyframe: `prop.setValueAtTime(time, v)` (tiempo en SEGUNDOS). `setValuesAtTimes([t...],[v...])`.
- `addKey(time)` → retorna índice. `numKeys`, `selectedKeys`, `isTimeVarying`, `keyValue(i)`, `valueAtTime(t, preExpr)`.
- **Interpolación:** `setInterpolationTypeAtKey(i, inType[, outType])` con `KeyframeInterpolationType.LINEAR|BEZIER|HOLD`.
- **Easing:** `setTemporalEaseAtKey(i, [inEase][, outEase])` con objetos `KeyframeEase(speed, influence)` (arrays de 1/2/3 según dimensiones). Ej Easy Ease: `var e=new KeyframeEase(0,33); prop.setTemporalEaseAtKey(2,[e],[e]);`.
- **Expressions:** `prop.expression = "wiggle(2,15)"` (se evalúa al setear); `prop.expressionEnabled` (bool), `prop.canSetExpression`, `prop.expressionError`.
- **Atajos de dimensión:** `position.setValue([20,30])` rellena Z=0; `scale.setValue([50,50])` rellena 3ª dim=100; `sourceText.setValue("foo")` auto-envuelve en TextDocument.

## Effects — aplicar por matchName
- `layer.property("ADBE Effect Parade").addProperty("<matchName>")` → retorna el efecto; luego `fx.property("<param>").setValue(v)`.
- **matchNames verificados (doc oficial):** Gaussian Blur=`ADBE Gaussian Blur 2` · Fast Box Blur=`ADBE Box Blur2` · Levels=`ADBE Easy Levels2` · Curves=`ADBE CurvesCustom` · Tint=`ADBE Tint` · Hue/Saturation=`ADBE HUE SATURATION` · Fill=`ADBE Fill` · Gradient Ramp=`ADBE Ramp` · Fractal Noise=`ADBE Fractal Noise` · Drop Shadow=`ADBE Drop Shadow` · Glow=`ADBE Glo2` · Transform=`ADBE Geometry2` · CC Lens=`CC Lens` · CC Sphere=`CC Sphere` · CC Light Burst 2.5=`CC Light Burst 2.5`.
- Lista completa: https://ae-scripting.docsforadobe.dev/matchnames/effects/firstparty/


===== 6PW9hQoy8_U.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo tus instrucciones al pie de la letra.

---

# After Effects Scripting QuickTip - Automate Script Creation
**Fuente:** NT Productions | https://youtu.be/6PW9hQoy8_U

## Qué enseña (2 líneas)
Cómo generar un archivo `.jsx` desde otro script de After Effects, usando bucles para escribir código repetitivo (como crear múltiples composiciones con sólidos) y luego ejecutar ese archivo generado automáticamente.

## Técnicas de scripting accionables

- **Crear un objeto File para el script generado:**
  ```javascript
  var scriptFile = new File("~/Desktop/myscript.jsx");
  ```

- **Definir el número de iteraciones y un string vacío para acumular el código:**
  ```javascript
  var numComps = 5;
  var codeString = "";
  ```

- **Bucle para construir el código como texto (concatenando strings):**
  ```javascript
  for (var i = 1; i <= numComps; i++) {
      codeString += "var comp = app.project.items.addComp(\"Comp\" + " + i + ", 1920, 1080, 1, 10, 25);\n";
      codeString += "var layer = comp.layers.addSolid([1,1,1], \"Solid\", 1920, 1080, 1, comp.duration);\n";
      codeString += "comp.openInViewer();\n";
  }
  ```

- **Escribir el string acumulado en el archivo y cerrarlo:**
  ```javascript
  scriptFile.open("w");
  scriptFile.write(codeString);
  scriptFile.close();
  ```

- **Ejecutar el script generado inmediatamente después de crearlo:**
  ```javascript
  $.evalFile(scriptFile);
  ```

- **Uso de `app.beginUndoGroup` (no aparece en el video pero es práctica recomendada para el script generador):**
  ```javascript
  app.beginUndoGroup("Generar Scripts Automáticos");
  // ... código generador ...
  app.endUndoGroup();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `new File(ruta)`** cuando quieras crear o sobrescribir un archivo en el disco. La ruta puede ser absoluta o relativa a `~/Desktop`.
- **Usa `open("w")`** para escribir desde cero (sobrescribe). Si necesitas añadir contenido, usa `open("a")`.
- **Usa `$.evalFile(archivo)`** cuando quieras ejecutar el script recién generado como si lo hubieras lanzado manualmente desde el menú Archivo > Ejecutar Script.
- **Usa `\n`** al final de cada línea de código dentro del string para que el archivo generado tenga saltos de línea legibles.
- **Gotcha de ExtendScript:** Al concatenar strings con números (ej. `"Comp" + i`), JavaScript convierte el número a string automáticamente. Para insertar el valor de una variable *dentro* del código generado, debes romper el string y concatenar la variable: `"var comp = app.project.items.addComp(\"Comp\" + " + i + ", ...);"`.
- **Gotcha de ExtendScript:** Si el archivo destino ya existe y usas `open("w")`, se sobrescribe sin advertencia. No hay función de "append" por defecto; debes leer el contenido previo, concatenarlo y volver a escribir.

## Errores comunes

- **Olvidar cerrar el archivo con `close()`** después de escribir. El archivo quedará bloqueado y no podrá ejecutarse ni eliminarse hasta que cierres After Effects.
- **No escapar las comillas dobles** dentro del string que genera código. Por ejemplo, escribir `"var comp = app.project.items.addComp("Comp", ...)"` rompe el string. Debes usar `\"Comp\"`.
- **Confundir el nombre de la variable** que acumula el código. En el video, el error fue escribir `code string` (con espacio) en lugar de `codeString`.
- **Usar `eval()` en lugar de `$.evalFile()`** para ejecutar el archivo. `eval()` evalúa un string, no un archivo. `$.evalFile()` es el método correcto en ExtendScript.
- **No incluir `\n`** al final de cada línea de código generado. El archivo resultante tendrá todo el código en una sola línea, lo que dificulta la depuración aunque funcione.

===== 8pzWPQAScuc.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente las reglas y el contenido del video.

# After Effects Scripting Tutorial [QuickTip]: Script UI Layout Guide
**Fuente:** NT Productions | https://youtu.be/8pzWPQAScuc

## Qué enseña (2 líneas)
Cómo crear interfaces de usuario (UI) complejas en After Effects anidando grupos (`group`) y paneles (`panel`) dentro de otros grupos para controlar la orientación (filas/columnas) de los elementos. Se demuestra la construcción de un layout con múltiples paneles y botones organizados jerárquicamente.

## Técnicas de scripting accionables
- **Crear ventana principal y definir orientación general:**
  ```javascript
  var window = new Window("palette", undefined, undefined);
  window.orientation = "column";
  ```
- **Crear grupos anidados para layouts mixtos (fila + columna):**
  ```javascript
  var windowGroup1 = window.add("group", undefined, "windowGroup1");
  windowGroup1.orientation = "row";
  var panel1 = windowGroup1.add("panel", undefined, "Panel 1");
  var panel2 = windowGroup1.add("panel", undefined, "Panel 2");

  var windowGroup2 = window.add("group", undefined, "windowGroup2");
  windowGroup2.orientation = "column"; // o "row"
  var panel3 = windowGroup2.add("panel", undefined, "Panel 3");
  ```
- **Crear subgrupos dentro de un panel para organizar botones:**
  ```javascript
  panel1.orientation = "row"; // El panel en sí puede tener orientación
  var panel1Group1 = panel1.add("group", undefined, "panel1Group1");
  panel1Group1.orientation = "row";
  var panel1Group2 = panel1.add("group", undefined, "panel1Group2");
  panel1Group2.orientation = "column";
  ```
- **Agregar botones a un grupo específico y asignar tamaño uniforme:**
  ```javascript
  var buttonSize = [80, 30]; // [ancho, alto]
  var button1 = panel1Group1.add("button", undefined, "1");
  button1.size = buttonSize;
  var button2 = panel1Group1.add("button", undefined, "2");
  button2.size = buttonSize;
  ```
- **Mostrar la ventana centrada:**
  ```javascript
  window.center();
  window.show();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **Usa `"group"` para contenedores invisibles** que solo organizan el layout; usa `"panel"` cuando quieras un borde visible y un título que ayude a depurar la estructura.
- **Define `orientation` explícitamente** en cada grupo o panel (`"row"` para horizontal, `"column"` para vertical). Si no se define, el valor por defecto puede no ser el esperado.
- **Asigna un `name` (tercer argumento)** a grupos y paneles para identificarlos fácilmente en el código, aunque no sea obligatorio.
- **Crea una variable para el tamaño de los botones** (`var buttonSize = [X, Y]`) y asígnela a cada botón con `.size` para mantener consistencia y ahorrar líneas.
- **Recuerda que un `panel` es un tipo de grupo**; puede contener otros grupos y tener su propia orientación.
- **Siempre llama a `window.center()` antes de `window.show()`** para que la UI aparezca centrada en la pantalla.

## Errores comunes
- **Olvidar establecer la orientación del grupo contenedor** (ej. `panel1.orientation = "row"`), lo que hace que los subgrupos se apilen en lugar de alinearse como se espera.
- **Agregar botones al grupo incorrecto** (ej. añadir `button6` a `panel1` en lugar de `panel2`), lo que rompe la estructura visual deseada.
- **No definir `buttonSize` o asignar tamaños inconsistentes** a cada botón, resultando en una UI desordenada.
- **Confundir el orden de anidamiento**: los grupos hijos deben agregarse al grupo padre correcto (ej. `panel1Group1 = panel1.add(...)` no `window.add(...)`).

===== A6GDN6SDS9M.md =====
Claro, aquí tienes la destilación del tutorial en español neutro, siguiendo tus instrucciones al pie de la letra.

---

# Automate Your Workflow: Batch Editing Compositions in After Effects with This Powerful Script!
**Fuente:** Emily Gentile | https://youtu.be/A6GDN6SDS9M

## Qué enseña (2 líneas)
El tutorial muestra cómo usar un script personalizado (llamado "Batch It Up") para duplicar y personalizar composiciones de After Effects a partir de los datos de un archivo CSV. El proceso incluye la preparación de datos y fotos, la creación de una plantilla con capas nombradas según los encabezados del CSV, y la ejecución del script para generar automáticamente las composiciones finales para cada fila de datos.

## Técnicas de scripting accionables
- **Preparación del CSV:** El script requiere que el archivo CSV tenga una columna llamada `name` (con N mayúscula, sin espacios) para nombrar las composiciones resultantes. Si se usan fotos, debe existir una columna llamada `photo` (con P mayúscula) que contenga el nombre del archivo de imagen (ej. `player1.png`).
- **Nombrado de capas en la plantilla:** Para que el script reemplace el contenido, la capa en la composición de plantilla debe llamarse exactamente igual que el encabezado de la columna en el CSV. Por ejemplo, si el CSV tiene una columna `player name`, la capa de texto en After Effects debe renombrarse a `player name`.
- **Foto de placeholder:** Se debe incluir una capa en la plantilla llamada `placeholder.jpg` (o `placeholder.png`, etc.). El script busca esta capa específica para reemplazarla con las fotos de la columna `photo` del CSV.
- **Ejecución del script:** Al ejecutar el script `.jsx`, este solicita dos cosas mediante cuadros de diálogo:
    1.  La ruta absoluta del archivo CSV en el sistema.
    2.  El nombre de la carpeta dentro del proyecto de After Effects donde se encuentran importadas las fotos.
- **Manejo de errores (sin fotos):** Si una plantilla no tiene fotos (y por lo tanto no tiene una capa `placeholder.jpg`), el script mostrará un error. La solución es añadir una capa nula (null object) a la plantilla y nombrarla `placeholder.jpg` (o la extensión que uses). Si no hay carpeta de fotos, se puede poner un nombre de archivo cualquiera en esa columna del CSV para que el script no falle.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **Nombres de columnas del CSV:** La columna `name` es obligatoria y debe escribirse exactamente así (con N mayúscula, sin espacios, sin "s" al final). La columna `photo` también es obligatoria si se usan imágenes y debe escribirse exactamente así (con P mayúscula, sin espacios).
- **Nombres de archivos de imagen:** En la columna `photo` del CSV, la extensión del archivo debe incluirse (ej. `.png`, `.jpg`). El nombre del archivo debe coincidir exactamente con el nombre de la capa importada en After Effects.
- **Nombres de capas en After Effects:** El nombre de la capa en la plantilla debe coincidir *exactamente* (incluyendo mayúsculas, minúsculas y espacios) con el encabezado de la columna del CSV. No es el contenido del texto, sino el nombre de la capa.
- **Composición de salida:** El script genera una nueva composición para cada fila del CSV. Estas composiciones se colocan dentro de una subcarpeta que se crea automáticamente dentro de la carpeta donde se encuentra la plantilla. Se recomienda poner la plantilla dentro de su propia carpeta para mantener el orden.
- **Composición en blanco:** El script tiene un comportamiento conocido (un "quirk") que crea una composición vacía adicional al ejecutarse. El operador debe simplemente eliminar esta composición sobrante.

## Errores comunes
- **Error "no se puede encontrar el placeholder":** Ocurre cuando la plantilla no tiene una capa llamada `placeholder.jpg` (o la extensión correspondiente) y el CSV tiene datos en la columna `photo`. **Solución:** Añadir una capa nula con ese nombre exacto a la plantilla.
- **El script no reemplaza el texto o la imagen:** El nombre de la capa en After Effects no coincide exactamente con el encabezado de la columna en el CSV. Revisar mayúsculas, minúsculas y espacios.
- **Las composiciones de salida no se nombran correctamente:** La columna `name` en el CSV no está escrita exactamente como `name` (con N mayúscula y sin espacios). El script usa esta columna para nombrar las composiciones resultantes.

===== BTuLbNaWPaA.md =====
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

===== DTBtfFiyjNU.md =====
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

===== GT0XX29HR4I.md =====
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

===== GlSIm60P4xA.md =====
# After Effects Scripting Tutorial: Embed Project Info in a Script
**Fuente:** NT Productions | https://youtu.be/GlSIm60P4xA

## Qué enseña (2 líneas)
Cómo incrustar un script completo (en formato binario .jsxbin) dentro de una sola variable de otro script, creando un archivo temporal, ejecutándolo y eliminándolo sin dejar rastro. Permite distribuir un solo archivo .jsx que contiene múltiples presets o funcionalidades sin depender de archivos externos.

## Técnicas de scripting accionables

- **Crear composición desde cero:**
  ```javascript
  var comp = app.project.items.addComp("nombre", 1920, 1080, 1, 10, 30);
  comp.openInViewer();
  ```

- **Agregar capa sólida a una composición:**
  ```javascript
  var layer = comp.layers.addSolid([1,1,1], "test solid", comp.width, comp.height, comp.pixelAspect);
  ```

- **Agregar efecto a una capa usando matchName:**
  ```javascript
  var effect = layer.property("ADBE Effect Parade").addProperty("ADBE Geometry2");
  ```

- **Obtener matchName de un efecto existente (técnica de debugging):**
  ```javascript
  var comp = app.project.activeItem;
  var layer = comp.layer(1);
  var effect = layer.effect(1);
  $.writeln(effect.matchName);
  ```

- **Exportar script a binario (desde el editor de ExtendScript):** Archivo → Exportar como binario (.jsxbin)

- **Leer archivo binario y almacenarlo como string en una variable:**
  ```javascript
  var script = "contenido binario en una sola línea";
  ```

- **Crear archivo temporal, escribir datos y cerrarlo:**
  ```javascript
  var path = Folder.desktop;
  var scriptFile = new File(path + "/test_script.jsx");
  scriptFile.open("w");
  scriptFile.write(script);
  scriptFile.close();
  ```

- **Ejecutar archivo JSX desde otro script:**
  ```javascript
  $.evalFile(scriptFile);
  ```

- **Eliminar archivo temporal después de ejecutarlo:**
  ```javascript
  scriptFile.remove();
  ```

- **Función completa para importar y ejecutar script incrustado:**
  ```javascript
  function importScripts() {
      var path = Folder.desktop;
      var scriptFile = new File(path + "/test_script.jsx");
      scriptFile.open("w");
      scriptFile.write(script);
      scriptFile.close();
      $.evalFile(scriptFile);
      scriptFile.remove();
  }
  importScripts();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `$.evalFile()`** cuando necesites ejecutar un archivo .jsx externo desde otro script. No funciona con strings directamente; requiere un objeto File.
- **Usa `File.open("w")`** para escribir datos en un archivo. Siempre debes cerrarlo con `.close()` después de escribir para liberar recursos.
- **Usa `Folder.desktop`** como ruta base para archivos temporales; es accesible y fácil de limpiar.
- **Usa `app.project.items.addComp()`** con los parámetros en orden exacto: nombre, ancho, alto, pixelAspect, duración (segundos), framerate.
- **Usa `layer.property("ADBE Effect Parade").addProperty(matchName)`** para agregar efectos. El matchName debe ser exacto (ej: `"ADBE Geometry2"` no `"ADBE Transform2"`).
- **Usa `$.writeln()`** para debuggear valores en la consola de JavaScript de ExtendScript.
- **Usa `comp.openInViewer()`** para traer la composición al frente en After Effects.
- **El contenido binario (.jsxbin) debe estar en una sola línea** dentro de la variable. Usa un script auxiliar (Binary Image Encoder) para convertir archivos .jsxbin a strings de una línea automáticamente.
- **La función `importScripts()` debe llamarse explícitamente** después de definirla; no se ejecuta automáticamente.

## Errores comunes

- **Usar matchName incorrecto:** `"ADBE Transform2"` no existe. El correcto para transformar geometría es `"ADBE Geometry2"`. Siempre verifica con `$.writeln(effect.matchName)` en un script de prueba.
- **No cerrar el archivo después de escribir:** Si omites `scriptFile.close()`, el archivo queda bloqueado y `$.evalFile()` puede fallar o dejar el archivo en uso.
- **No eliminar el archivo temporal:** Si olvidas `scriptFile.remove()`, se acumularán archivos .jsx basura en el escritorio del usuario.
- **Pegar contenido binario con saltos de línea:** El string debe ser una sola línea continua. Si el binario tiene múltiples líneas, la variable no se asigna correctamente.
- **Usar `eval()` en lugar de `$.evalFile()`:** `eval()` evalúa strings de código, pero para archivos .jsxbin se necesita `$.evalFile()` que maneja la ejecución de archivos binarios.
- **No verificar la ruta del archivo temporal:** Si el usuario no tiene permisos de escritura en `Folder.desktop`, la creación del archivo fallará silenciosamente.

===== HjeqG_MjpWA.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente tus reglas.

# Terminal rendering in After Effects
**Fuente:** Marcos Salvi | https://youtu.be/HjeqG_MjpWA

## Qué enseña (2 líneas)
Cómo enviar una composición a la cola de render desde la interfaz de After Effects y luego ejecutar el renderizado por línea de comandos (Terminal en macOS) para que el programa siga respondiendo mientras procesa, sin usar scripting.

## Técnicas de scripting accionables
- **No se usa scripting en este tutorial.** El método es completamente manual: seleccionar una composición en el panel Proyecto, presionar `Cmd+Shift+/` (Mac) para enviarla a la cola de render, configurar el módulo de salida (QuickTime, codec DNxHD, resolución 1080p 23.976 fps, 8-bit, sin audio) y la ruta de salida.
- **Comando de terminal (no ExtendScript):**  
  `renderaerender -project /ruta/al/archivo.aep`  
  (Arrastrar el ejecutable `aerender` desde la carpeta de After Effects a la terminal, luego escribir `-project`, arrastrar el archivo `.aep` y presionar Enter).

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **Usa `Cmd+Shift+/`** para enviar la composición seleccionada a la cola de render (atajo por defecto en macOS).
- **Guarda el proyecto (.aep) antes** de ejecutar el comando de terminal; si no, `aerender` no encontrará los cambios.
- **El comando `aerender`** permite que After Effects siga funcionando mientras renderiza en segundo plano (no bloquea la interfaz).
- **Evita el codec Animation** en los ajustes de formato QuickTime porque "tomaría una eternidad" (gotcha de rendimiento).

## Errores comunes
- **No guardar el proyecto** antes de ejecutar `aerender` → el render usará la última versión guardada, no los cambios recientes.
- **Olvidar el flag `-project`** en el comando de terminal → `aerender` no sabrá qué archivo abrir.
- **Usar codec Animation** en lugar de DNxHD → tiempos de render extremadamente largos y archivos de gran tamaño.