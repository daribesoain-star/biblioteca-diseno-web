

===== JKEMijMjddE.md =====
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

===== N_42-DTDuHI.md =====
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

===== OUS0PMIwZyE.md =====
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

===== Or1z-J8KOlM.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente el contenido del video.

# ExtendScript Tutorial: Read All Installed Effects
**Fuente:** NT Productions | https://youtu.be/Or1z-J8KOlM

## Qué enseña (2 líneas)
Cómo crear un script con interfaz de usuario (UI) que lea todos los efectos instalados en After Effects y los muestre en dos listas desplegables: una con el nombre visible y otra con el *match name*. Al seleccionar un efecto en una lista, la otra se actualiza automáticamente.

## Técnicas de scripting accionables

- **Crear ventana tipo "palette" con orientación vertical:**
  ```javascript
  var mainWindow = new Window("palette", "Read All Installed Effects", undefined);
  mainWindow.orientation = "column";
  ```

- **Agregar un grupo con orientación horizontal (fila) dentro de la ventana:**
  ```javascript
  var nameGroup = mainWindow.add("group", undefined);
  nameGroup.orientation = "row";
  ```

- **Agregar texto estático y un desplegable (`dropdownlist`) dentro del grupo, forzando tamaños fijos:**
  ```javascript
  var nameText = nameGroup.add("statictext", undefined, "Name");
  nameText.size = [80, 25];
  var nameDD = nameGroup.add("dropdownlist", undefined, undefined);
  nameDD.size = [220, 25];
  ```

- **Poblar el desplegable con un array de strings y seleccionar el primer elemento por defecto:**
  ```javascript
  nameDD.selection = 0;
  ```

- **Obtener todos los efectos instalados usando `app.effects`:**
  ```javascript
  var effects = app.effects;
  ```

- **Recorrer el array de efectos y extraer el `displayName` (nombre visible):**
  ```javascript
  function getAllEffectNames() {
      var names = [];
      var effects = app.effects;
      for (var i = 0; i < effects.length; i++) {
          names.push(effects[i].displayName);
      }
      return names;
  }
  ```

- **Recorrer el array de efectos y extraer el `matchName`:**
  ```javascript
  function getAllEffectMatchNames() {
      var matchNames = [];
      var effects = app.effects;
      for (var i = 0; i < effects.length; i++) {
          matchNames.push(effects[i].matchName);
      }
      return matchNames;
  }
  ```

- **Asignar el array de nombres al desplegable usando la función creada:**
  ```javascript
  var nameDD = nameGroup.add("dropdownlist", undefined, getAllEffectNames());
  ```

- **Sincronizar dos desplegables con un evento `onChange` (usando `selection.index` para obtener el número de índice):**
  ```javascript
  nameDD.onChange = function() {
      matchNameDD.selection = nameDD.selection.index;
  };
  matchNameDD.onChange = function() {
      nameDD.selection = matchNameDD.selection.index;
  };
  ```

- **Centrar y mostrar la ventana:**
  ```javascript
  mainWindow.center();
  mainWindow.show();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `new Window("palette", ...)`** cuando quieras una ventana que no tenga barra de título de sistema operativo (típica de paneles de After Effects).
- **Usa `undefined` en los parámetros de tamaño** de `add("group")` o `add("dropdownlist")` para que el elemento use valores por defecto, y luego **ajusta manualmente la propiedad `.size`** (ej. `[220, 25]`) para forzar que todos los elementos tengan el mismo tamaño y la UI se vea alineada.
- **Usa `selection.index`** dentro de un evento `onChange` para obtener el número de posición (entero) del elemento seleccionado en la lista. No uses `selection` directamente, porque eso devuelve el objeto del elemento, no su índice.
- **Usa `app.effects`** para obtener un array de objetos, cada uno con propiedades como `displayName`, `category` y `matchName`. No confundas `displayName` (nombre legible) con `matchName` (nombre interno del efecto).
- **Al duplicar grupos de UI**, usa "Buscar y reemplazar" en el editor de código para cambiar sistemáticamente los nombres de las variables (ej. `name` → `matchName`) y evitar errores de referencias cruzadas.

## Errores comunes

- **No definir las funciones `getAllEffectNames` y `getAllEffectMatchNames` antes de usarlas.** El script fallará al intentar poblar los desplegables si las funciones no existen en el momento de crear la UI.
- **Olvidar cambiar el texto del `statictext`** al duplicar el grupo. Si copias el grupo "Name" para crear "Match Name", debes cambiar manualmente el texto del `statictext` de "Name" a "Match Name".
- **Usar `selection` en lugar de `selection.index`** en los eventos `onChange`. Esto causará que la sincronización entre listas no funcione, porque estarías asignando un objeto en lugar de un número.
- **No forzar el tamaño de los desplegables (`dropdownlist`)**. Si no se define un tamaño fijo con `.size`, los desplegables pueden tener anchos diferentes, rompiendo la alineación visual de la interfaz.

===== UJCe06QZnwc.md =====
# ExtendScript Beginner Tutorial for After Effects
**Fuente:** Coding After Effects | https://youtu.be/UJCe06QZnwc

## Qué enseña (2 líneas)
Diferencia entre Expressions (propiedades de capa) y ExtendScript (control total de After Effects). Cómo ejecutar scripts desde ExtendScript Toolkit, usar `alert()`, `write()`, `writeln()` y `clearOutput()` para comunicación básica con la aplicación.

## Técnicas de scripting accionables

- **Mostrar ventana emergente en After Effects:**
  ```jsx
  alert("Hello World");
  ```
  (Ejecutar desde ExtendScript Toolkit con el target configurado a la versión de After Effects)

- **Escribir en el panel Info de After Effects:**
  ```jsx
  write("Hello World");
  ```

- **Escribir con salto de línea en el panel Info:**
  ```jsx
  writeln("Hello World");
  ```

- **Evaluar expresiones aritméticas en la salida:**
  ```jsx
  write(5 + 5); // muestra 10 en el panel Info
  ```

- **Limpiar el panel Info:**
  ```jsx
  clearOutput();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `alert()`** cuando quieras un mensaje emergente inmediato para depuración o feedback visual.
- **Usa `write()`** cuando quieras texto continuo en el panel Info (sin saltos de línea automáticos).
- **Usa `writeln()`** cuando necesites que cada salida termine con un salto de línea.
- **Usa `clearOutput()`** para limpiar el panel Info antes de nueva salida.
- **Gotcha:** Si ejecutas el script sin cambiar el target de ExtendScript Toolkit a tu versión de After Effects, el script se ejecuta solo en el toolkit y no afecta a After Effects. Debes seleccionar "After Effects [versión]" en el menú desplegable del toolkit.
- **Gotcha:** Algunas versiones de After Effects pueden tener problemas para abrir el editor de scripts desde el menú File > Scripts > Open Script Editor. Si falla, abre ExtendScript Toolkit desde el acceso directo del escritorio o desde la instalación de Adobe.

## Errores comunes

- **Ejecutar el script sin configurar el target:** El script corre solo en ExtendScript Toolkit y no aparece nada en After Effects. Solución: seleccionar la versión correcta de After Effects en el menú desplegable del toolkit.
- **Usar `write()` cuando se necesita `writeln()`:** El texto se acumula sin saltos de línea, dificultando la lectura. Solución: usar `writeln()` para cada línea independiente.
- **No limpiar la salida antes de nuevas pruebas:** El panel Info acumula texto de ejecuciones anteriores. Solución: llamar `clearOutput()` al inicio del script.
- **Confundir Expressions con ExtendScript:** Expressions solo modifican propiedades de capa; ExtendScript puede crear composiciones, controlar la línea de tiempo, etc. Usa Expressions para animación simple y ExtendScript para automatización compleja.

===== UutXfHp9KDg.md =====
# After Effects Scripting for Absolute Beginners - ExtendScript Tutorial
**Fuente:** Code and Motion | https://youtu.be/UutXfHp9KDg

## Qué enseña (2 líneas)
Crear un script que aplica una expresión a todas las propiedades seleccionadas en After Effects, explicando desde cero variables, funciones, objetos, arrays, condicionales y bucles en ExtendScript. Incluye creación de panel UI básico con ScriptUI.

## Técnicas de scripting accionables

- **Obtener propiedades seleccionadas:**
  ```javascript
  var selected = app.project.activeItem.selectedProperties;
  ```

- **Acceder a la primera propiedad seleccionada:**
  ```javascript
  var prop = selected[0];
  ```

- **Obtener valor de una propiedad:**
  ```javascript
  alert(prop.value);
  ```

- **Cambiar valor de una propiedad:**
  ```javascript
  prop.setValue(30);
  ```

- **Agregar expresión a una propiedad:**
  ```javascript
  prop.expression = "loopOut()";
  ```

- **Iniciar y finalizar grupo de deshacer:**
  ```javascript
  app.beginUndoGroup("Mi script acción");
  // ... acciones ...
  app.endUndoGroup();
  ```

- **Recorrer todas las propiedades seleccionadas con bucle for:**
  ```javascript
  for (var i = 0; i < selected.length; i++) {
      selected[i].expression = "loopOut()";
  }
  ```

- **Verificar si hay propiedades seleccionadas:**
  ```javascript
  if (selected.length > 0) {
      // aplicar expresión
  } else {
      alert("Por favor selecciona una propiedad");
  }
  ```

- **Crear panel UI básico con ScriptUI:**
  ```javascript
  function expressionPanel(thisObj) {
      var panel = (thisObj instanceof Panel) ? thisObj : new Window("palette", "Expression Tool", [100,100,400,300]);
      var expressionInput = panel.add("edittext", [20,20,280,50], "loopOut()");
      var applyButton = panel.add("button", [20,70,280,100], "Apply");
      applyButton.onClick = function() {
          var selected = app.project.activeItem.selectedProperties;
          if (selected && selected.length > 0) {
              app.beginUndoGroup("Apply Expression");
              for (var i = 0; i < selected.length; i++) {
                  selected[i].expression = expressionInput.text;
              }
              app.endUndoGroup();
          } else {
              alert("Please select a property");
          }
      };
      if (!(thisObj instanceof Panel)) panel.show();
      return panel;
  }
  expressionPanel(this);
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `var`** para declarar variables (no `let` ni `const`, no son compatibles con ExtendScript).
- **Usa camelCase** para nombres de variables: primera letra minúscula, cada palabra nueva con mayúscula (ej: `myVariable`).
- **Termina cada línea con punto y coma** (`;`), uno solo, no dos.
- **Usa `===` para comparar** (dos iguales), no `=` (un igual asigna valor).
- **Usa `!==` para "no es igual"** (ej: `if (myNumber !== 6)`).
- **Usa `&&` para AND** y `||` para OR en condicionales.
- **Usa `//` para comentarios** de una línea (el código se salta esa línea).
- **Usa `alert()` para depurar** — muestra ventanas emergentes con valores de variables para ver dónde falla el código.
- **Usa `app.beginUndoGroup`/`app.endUndoGroup`** para todas las acciones grandes del script, así el usuario puede deshacer con Ctrl+Z.
- **Los arrays empiezan en índice 0**: el primer elemento es `[0]`, el segundo es `[1]`, etc.
- **Para texto en variables, usa comillas** dobles o simples: `var texto = "Hola mundo"`.
- **Nombres de archivo .jsx**: el nombre del archivo determina cómo aparece en el menú Ventana de After Effects.
- **Guardar script permanente**: colocar el archivo `.jsx` en `Program Files/Adobe/Adobe After Effects [versión]/Support Files/Scripts/ScriptUI Panels/`.

## Errores comunes

- **No declarar variable con `var`** → la variable se vuelve global y puede causar conflictos.
- **Usar `=` en lugar de `===` para comparar** → asigna un valor en lugar de comparar, rompiendo la lógica del `if`.
- **Olvidar que los arrays empiezan en 0** → acceder a `selected[1]` cuando solo hay un elemento devuelve `undefined`.
- **No verificar si `selectedProperties` existe** → ejecutar el script sin propiedades seleccionadas da error "undefined is not an object". Siempre verificar con `if (selected && selected.length > 0)`.
- **No cerrar el grupo de deshacer** → `app.beginUndoGroup` sin `app.endUndoGroup` deja After Effects en un estado inconsistente.
- **Usar `let` o `const`** → ExtendScript (basado en ECMAScript 3) no soporta estas palabras clave; usar solo `var`.
- **Olvidar punto y coma al final de línea** → el script puede fallar silenciosamente o dar errores difíciles de rastrear.
- **No comentar el código** → al reabrir el script meses después, es difícil entender qué hace cada sección.

===== WyNpq9U-Rno.md =====
Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente el contenido del video y sin inventar APIs.

# Adobe Scripting Tutorial: Búsqueda por Lotes de Composiciones y Metraje
**Fuente:** NT Productions | https://youtu.be/WyNpq9U-Rno

## Qué enseña (2 líneas)
Cómo crear un script en ExtendScript que abre múltiples proyectos de After Effects (.aep) desde una carpeta, recorre todos sus elementos y devuelve los nombres de todas las composiciones (compItem) y metraje (footage) encontrados, almacenándolos en arrays para su visualización.

## Técnicas de scripting accionables

- **Obtener archivos .aep de una carpeta (filtrando por extensión):**
  ```javascript
  var folder = Folder("ruta/a/tu/carpeta");
  var items = folder.getFiles();
  var aeps = [];
  for (var i = 0; i < items.length; i++) {
      if (items[i].name.slice(items[i].name.length - 4) === ".aep") {
          aeps.push(items[i]);
      }
  }
  ```

- **Abrir un proyecto y suprimir diálogos emergentes:**
  ```javascript
  app.beginSuppressDialogs();
  app.open(projectFile); // projectFile es un objeto File
  app.endSuppressDialogs(false); // false para NO mostrar errores después
  ```

- **Recorrer todos los elementos del proyecto abierto:**
  ```javascript
  for (var e = 1; e <= app.project.numItems; e++) {
      var item = app.project.item(e);
      // ... checks aquí
  }
  ```

- **Verificar si un elemento es una composición:**
  ```javascript
  if (item instanceof CompItem) {
      compNames.push(item.name);
  }
  ```

- **Verificar si un elemento es metraje (footage) con archivo local:**
  ```javascript
  if (item.file !== null) { // o if (item.file)
      footageNames.push(item.name);
  }
  ```

- **Cerrar el proyecto sin guardar cambios:**
  ```javascript
  app.project.close(CloseOption.DO_NOT_SAVE_CHANGES);
  ```

- **Estructura de retorno de datos (array de arrays):**
  ```javascript
  return [compNames, footageNames];
  // Luego se accede: compsYFootage[0] para comps, compsYFootage[1] para footage
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.beginSuppressDialogs()` / `app.endSuppressDialogs(false)`** antes y después de `app.open()` para evitar que ventanas de "falta de fuente" o "expresiones rotas" detengan el bucle.
- **Usa `CloseOption.DO_NOT_SAVE_CHANGES`** al cerrar (`app.project.close(...)`) para evitar que After Effects pregunte "¿Guardar cambios?" en cada proyecto, ya que abrirlos puede marcar el proyecto como modificado en memoria.
- **Almacena solo los nombres** (`item.name`) de comps y footage, no los objetos `item`. Los objetos de proyecto se vuelven inválidos en cuanto se cierra ese proyecto.
- **El filtro de extensión debe usar `.slice(name.length - 4)`** para obtener exactamente ".aep" y no confundir archivos como "log.aep.log".
- **El bucle de elementos del proyecto comienza en `e = 1`**, no en 0, porque `app.project.item(0)` no existe (la indexación en AE comienza en 1).

## Errores comunes

- **Error al filtrar archivos:** Usar `name.indexOf(".aep")` en lugar de `name.slice(-4) === ".aep"` puede incluir falsos positivos (ej: "texto.aep.backup").
- **Olvidar cerrar el proyecto:** Si no se llama a `app.project.close()`, el proyecto actual permanece abierto y el siguiente `app.open()` falla o se acumulan proyectos.
- **Guardar cambios accidentalmente:** Usar `CloseOption.SAVE_CHANGES` o no especificar opción provoca diálogos de guardado que rompen la automatización.
- **Indexación incorrecta:** Usar `for (var e = 0; ...)` en el bucle de items causa un error porque `app.project.item(0)` no existe.
- **No suprimir diálogos:** Al abrir proyectos con elementos faltantes, aparecen ventanas modales que detienen el script hasta que el usuario haga clic.

===== _hpsV2q9M2Q.md =====
Claro, aquí tienes la destilación del tutorial en español neutro, siguiendo tus instrucciones al pie de la letra.

# After Effects Scripting QuickTip - Practical Scripting Examples
**Fuente:** NT Productions | https://youtu.be/_hpsV2q9M2Q

## Qué enseña (2 líneas)
Este tutorial presenta tres ejemplos reales de scripts para After Effects, desde uno simple que aplica efectos isométricos hasta un sistema complejo de 3.500 líneas que genera formas, aleatoriza propiedades y gestiona la cola de render. Muestra el rango de posibilidades del scripting con ExtendScript (.jsx) para automatizar flujos de trabajo.

## Técnicas de scripting accionables

- **Script simple (Isométrico):** Usa `app.project` para acceder al proyecto activo y `app.project.activeItem` para obtener la composición actual. Aplica efectos de transformación mediante `layer.property("ADBE Transform Group").property("ADBE Position")` y `layer.property("ADBE Effect Parade").addProperty("ADBE Slider Control")`. Los botones de la interfaz (`ScriptUI`) ejecutan funciones que modifican estas propiedades.
- **Script de complejidad media (JSON + Render):** Lee un archivo JSON externo con `File.openDialog("Selecciona el archivo JSON", "*.json")` y `file.read()`. Itera sobre las capas de la composición con `comp.layers` y busca capas específicas por nombre (`layer.name === "TEXT_SALE_PRICE"`). Modifica propiedades de texto con `layer.property("ADBE Text Properties").property("ADBE Text Document").setValue(newTextDocument)`. Inserta imágenes usando `footageItem = app.project.importFile(new ImportOptions(file))` y luego `comp.layers.add(footageItem)`. Finalmente, añade la composición a la cola de render con `app.project.renderQueue.items.add(comp)` y fuerza el render con `renderQueueItem.render()`.
- **Script complejo (Suite de herramientas):** Crea capas de forma con `comp.layers.addShape()` y sólidos con `comp.layers.addSolid([1,0,0], "Mi Sólido", 1920, 1080, 1)`. Para la aleatorización, usa `Math.random()` para generar valores y los aplica con `layer.property("ADBE Transform Group").property("ADBE Position").setValue([x, y])`. Implementa un panel `ScriptUI` con `Window` (tipo 'palette'), `Panel`, `Button` y `onClick` para ejecutar funciones. Agrupa las operaciones en una sola acción de deshacer con `app.beginUndoGroup("Nombre de la acción")` y `app.endUndoGroup()`.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.beginUndoGroup("descripción")` y `app.endUndoGroup()`** siempre que tu script realice múltiples cambios en el proyecto (añadir capas, modificar propiedades, etc.). Esto permite al usuario deshacer toda la operación con un solo Ctrl+Z.
- **Usa `matchNames` (nombres de coincidencia)** para acceder a propiedades de forma fiable, independientemente del idioma de la interfaz de After Effects. Por ejemplo, usa `"ADBE Transform Group"` en lugar de `"Transform"`. Esto evita errores en versiones localizadas del software.
- **Usa `File.openDialog()` y `Folder.selectDialog()`** para permitir al usuario seleccionar archivos o carpetas externos. Esto es crucial para scripts que procesan datos JSON o assets multimedia.
- **Gotcha de ExtendScript:** La sintaxis JSON no es nativa. Para parsear un JSON, debes usar `eval('(' + jsonString + ')')` o una función similar, ya que `JSON.parse` no existe en ExtendScript. Ten cuidado con la seguridad si el JSON proviene de una fuente no confiable.
- **Gotcha de ExtendScript:** Los nombres de las propiedades de efectos (`matchNames`) pueden ser largos y crípticos. Siempre verifica el `matchName` exacto usando la consola de ExtendScript Toolkit o el panel "Info" de After Effects.

## Errores comunes

- **No cerrar el grupo de deshacer:** Olvidar llamar a `app.endUndoGroup()` después de `app.beginUndoGroup()` puede dejar a After Effects en un estado inconsistente, impidiendo deshacer correctamente.
- **Asumir que `layer.name` es único:** En el script de JSON, se busca una capa por su nombre exacto. Si hay dos capas con el mismo nombre, el script solo modificará la primera que encuentre, o podría fallar si se espera una única capa.
- **No verificar la existencia de un archivo antes de leerlo:** Intentar leer un archivo con `file.read()` sin antes comprobar `file.exists` puede lanzar un error y detener el script. Siempre valida que el archivo exista y sea legible.

===== aOFrxATiN8c.md =====
# Create Your Own Plugin in After Effects (Free & Easy ScriptUI Panel Method)
**Fuente:** AM Film | https://youtu.be/aOFrxATiN8c

## Qué enseña (2 líneas)
Crear un panel ScriptUI personalizado en After Effects usando un script .jsx generado por ChatGPT, que aplica presets de animación guardados y ejecuta acciones como añadir capas o aplicar Easy Ease. El panel se instala en la carpeta `ScriptUI Panels` y se accede desde el menú `Window`.

## Técnicas de scripting accionables

- **Guardar preset de efecto para usar en el panel:**
  - Aplica un efecto a una capa, selecciona el efecto en el panel `Effects`, ve a `Animation > Save Animation Preset`, elige carpeta y nombre (ej. `lmetry.ffx`).
  - El script carga el preset desde la ruta especificada.

- **Estructura del script .jsx generado (basado en el tutorial):**
  ```javascript
  // Ejemplo de estructura que genera ChatGPT (no código exacto del video)
  var myPanel = new Window("palette", "My Plugin", undefined);
  myPanel.orientation = "column";
  myPanel.alignChildren = ["left", "top"];

  // Botón para aplicar preset
  var btnPreset = myPanel.add("button", undefined, "Lummetry Color");
  btnPreset.onClick = function() {
      app.beginUndoGroup("Apply Preset");
      var comp = app.project.activeItem;
      if (comp && comp instanceof CompItem) {
          var layer = comp.selectedLayers[0];
          if (layer) {
              var presetFile = new File("C:/ruta/a/tu/preset/lmetry.ffx");
              layer.property("ADBE Effect Parade").addProperty("ADBE Lummetry Color");
              // Aplicar preset (método hipotético, no mostrado en video)
          }
      }
      app.endUndoGroup();
  };

  // Botón para crear sólido
  var btnSolid = myPanel.add("button", undefined, "New Solid");
  btnSolid.onClick = function() {
      app.beginUndoGroup("Create Solid");
      var comp = app.project.activeItem;
      if (comp && comp instanceof CompItem) {
          comp.layers.addSolid([1,0,0], "Red Solid", 1920, 1080, 1);
      }
      app.endUndoGroup();
  };

  myPanel.show();
  ```

- **Instalación del panel:**
  - Guarda el script como archivo `.jsx` (ej. `MyPlugin.jsx`).
  - Copia a: `C:\Program Files\Adobe\Adobe After Effects <versión>\Support Files\Scripts\ScriptUI Panels\`
  - Reinicia After Effects, ve a `Window > MyPlugin`.

- **Acciones comunes en el panel (según el tutorial):**
  - `app.project.activeItem` → obtener la composición activa.
  - `comp.layers.addSolid(r,g,b, width, height, pixelAspect)` → añadir capa sólida.
  - `comp.layers.addCamera("Camera Name", [0,0,0])` → añadir cámara.
  - `layer.selectedProperties[0].setValueAtTime(time, value)` → no usado directamente, pero implícito en Easy Ease.
  - `app.beginUndoGroup("nombre")` / `app.endUndoGroup()` → agrupar acciones para deshacer.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.beginUndoGroup` / `app.endUndoGroup`** siempre que ejecutes múltiples cambios en el proyecto (ej. aplicar preset + modificar capa) para permitir deshacer como una sola acción.
- **Usa `File` con ruta absoluta** para cargar presets; las rutas relativas no funcionan en ScriptUI Panels.
- **Usa `comp.selectedLayers[0]`** para aplicar efectos solo a la capa seleccionada; si no hay selección, el script falla.
- **Usa `addProperty("matchName")`** para agregar efectos; los matchNames son cadenas como `"ADBE Lummetry Color"` (dependen del efecto).
- **Gotcha:** ChatGPT puede generar código con errores (ej. rutas incorrectas, nombres de propiedades mal escritos). Siempre prueba el panel y corrige con ChatGPT iterativamente.
- **Gotcha:** El panel no se actualiza automáticamente al añadir nuevos presets; debes reiniciar After Effects.
- **Gotcha:** Si el panel no aparece en `Window`, verifica que el archivo `.jsx` esté en `ScriptUI Panels` (no en `Scripts`).

## Errores comunes

- **El efecto no se aplica al hacer clic:** ChatGPT a menudo escribe mal el matchName del efecto o la ruta del preset. Solución: pide a ChatGPT que corrija el script (ej. "presets not applying").
- **El panel no aparece en el menú Window:** El archivo no tiene extensión `.jsx` o está en la carpeta incorrecta. Renombra a `.jsx` y colócalo en `ScriptUI Panels`.
- **Error "Cannot access property 'activeItem' of undefined":** No hay composición abierta. Asegúrate de tener una comp activa antes de usar el panel.
- **El botón "New Solid" no crea nada:** Falta `app.beginUndoGroup` o la sintaxis de `addSolid` es incorrecta (usa `comp.layers.addSolid([r,g,b], name, width, height, pixelAspect)`).
- **El preset guardado no se carga:** La ruta en el script no coincide con la ubicación real del archivo `.ffx`. Copia la ruta exacta desde el explorador de archivos.