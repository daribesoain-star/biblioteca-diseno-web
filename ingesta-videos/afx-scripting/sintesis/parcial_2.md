Claro. A continuación, la doctrina accionable extraída de los documentos proporcionados, organizada por subtema.

# Doctrina Accionable: After Effects Scripting (ExtendScript)

## 1) Fundamentos ExtendScript (sintaxis, app.project, beginUndoGroup, ejecutar/depurar, File I/O)

- **Declaración de variables y sintaxis básica:** Usa `var` para declarar variables (no `let` ni `const`, no son compatibles con ExtendScript). Termina cada línea con punto y coma (`;`). Usa `===` para comparar y `!==` para "no es igual".
    ```javascript
    var myVariable = "Hola";
    if (myVariable === "Hola") { /* ... */ }
    ```
    (Fuente: UutXfHp9KDg — Code and Motion)

- **Comunicación básica con la aplicación:** Usa `alert()` para mensajes emergentes, `write()` para texto continuo en el panel Info, `writeln()` para texto con salto de línea, y `clearOutput()` para limpiar el panel Info.
    ```javascript
    alert("Hello World");
    write("Hello World");
    writeln("Hello World");
    clearOutput();
    ```
    (Fuente: UJCe06QZnwc — Coding After Effects)

- **Agrupar acciones para deshacer:** Envuelve todas las operaciones que modifican el proyecto entre `app.beginUndoGroup("Nombre")` y `app.endUndoGroup()`. Esto permite al usuario deshacer toda la operación con un solo Ctrl+Z.
    ```javascript
    app.beginUndoGroup("Mi Acción");
    // ... todo el código de creación y modificación ...
    app.endUndoGroup();
    ```
    (Fuente: JKEMijMjddE — NT Productions; UutXfHp9KDg — Code and Motion; OUS0PMIwZyE — NT Productions)

- **Referencia al proyecto y composición activa:**
    ```javascript
    var project = app.project;
    var comp = project.activeItem;
    ```
    (Fuente: OUS0PMIwZyE — NT Productions)

- **Verificar tipo de objeto:** Usa `instanceof` para asegurarte de que un ítem es una composición (`CompItem`) o una capa de texto (`TextLayer`) antes de operar sobre él.
    ```javascript
    if (app.project.item(i) instanceof CompItem) { /* ... */ }
    if (comp.layer(e) instanceof TextLayer) { /* ... */ }
    ```
    (Fuente: JKEMijMjddE — NT Productions; OUS0PMIwZyE — NT Productions)

- **Suprimir diálogos al abrir proyectos:** Usa `app.beginSuppressDialogs()` y `app.endSuppressDialogs(false)` para evitar que ventanas modales interrumpan la automatización.
    ```javascript
    app.beginSuppressDialogs();
    app.open(projectFile);
    app.endSuppressDialogs(false);
    ```
    (Fuente: WyNpq9U-Rno — NT Productions)

- **Cerrar proyecto sin guardar:**
    ```javascript
    app.project.close(CloseOption.DO_NOT_SAVE_CHANGES);
    ```
    (Fuente: WyNpq9U-Rno — NT Productions)

- **Selección de archivos por el usuario:**
    ```javascript
    var file = File.openDialog("Selecciona el archivo JSON", "*.json");
    var folder = Folder.selectDialog("Selecciona la carpeta");
    ```
    (Fuente: _hpsV2q9M2Q — NT Productions)

- **Filtrar archivos por extensión:**
    ```javascript
    var items = folder.getFiles();
    var aeps = [];
    for (var i = 0; i < items.length; i++) {
        if (items[i].name.slice(items[i].name.length - 4) === ".aep") {
            aeps.push(items[i]);
        }
    }
    ```
    (Fuente: WyNpq9U-Rno — NT Productions)

## 2) Crear y manipular comps y capas (addComp, layers.add*, parent, propiedades)

- **Duplicar una composición del proyecto:**
    ```javascript
    var userComp = getPresetComp(presetDropdown.selection).duplicate();
    ```
    (Fuente: JKEMijMjddE — NT Productions)

- **Función para buscar una composición por nombre:**
    ```javascript
    function getPresetComp(name) {
        for (var i = 1; i <= app.project.numItems; i++) {
            if (app.project.item(i).name === name && app.project.item(i) instanceof CompItem) {
                return app.project.item(i);
            }
        }
    }
    ```
    (Fuente: JKEMijMjddE — NT Productions)

- **Renombrar una composición:**
    ```javascript
    userComp.name = "Lower for User";
    ```
    (Fuente: JKEMijMjddE — NT Productions)

- **Abrir una composición en el visor:**
    ```javascript
    userComp.openInViewer();
    ```
    (Fuente: JKEMijMjddE — NT Productions)

- **Añadir una capa sólida:**
    ```javascript
    comp.layers.addSolid([1,0,0], "Red Solid", 1920, 1080, 1);
    ```
    (Fuente: aOFrxATiN8c — AM Film; _hpsV2q9M2Q — NT Productions)

- **Añadir una capa de cámara:**
    ```javascript
    comp.layers.addCamera("Camera Name", [0,0,0]);
    ```
    (Fuente: aOFrxATiN8c — AM Film)

- **Añadir una capa de forma:**
    ```javascript
    comp.layers.addShape();
    ```
    (Fuente: _hpsV2q9M2Q — NT Productions)

- **Añadir un objeto de metraje importado a la composición:**
    ```javascript
    var footageItem = app.project.importFile(new ImportOptions(file));
    comp.layers.add(footageItem);
    ```
    (Fuente: _hpsV2q9M2Q — NT Productions)

- **Acceder y modificar propiedades de capa usando matchNames:**
    ```javascript
    // Posición
    layer.property("ADBE Transform Group").property("ADBE Position").setValue([x, y]);
    // Escala
    var curScale = comp.layer(r).property("Scale").value;
    var newScale = curScale * scalePercent;
    comp.layer(r).property("Scale").setValue(newScale);
    ```
    (Fuente: _hpsV2q9M2Q — NT Productions; OUS0PMIwZyE — NT Productions)

- **Recorrer capas de una composición:**
    ```javascript
    for (var i = 1; i <= userComp.numLayers; i++) {
        // userComp.layer(i) ...
    }
    ```
    (Fuente: JKEMijMjddE — NT Productions)

## 3) Keyframes, easing e interpolación (setValueAtTime, KeyframeEase, interpolationType)

- **Cambiar el valor de una propiedad en un tiempo específico:**
    ```javascript
    userComp.layer(i).property("Source Text").setValueAtTime(0, titleEditText.text);
    ```
    (Fuente: JKEMijMjddE — NT Productions)

- **Cambiar el valor de una propiedad (sin keyframe, valor estático):**
    ```javascript
    prop.setValue(30);
    ```
    (Fuente: UutXfHp9KDg — Code and Motion)

## 4) Expressions por script (property.expression, patrones)

- **Agregar una expresión a una propiedad:**
    ```javascript
    prop.expression = "loopOut()";
    ```
    (Fuente: UutXfHp9KDg — Code and Motion)

- **Remover expresiones de propiedades recursivamente:**
    ```javascript
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
    (Fuente: N_42-DTDuHI — ChatGPT / Tutorial)

- **Verificar si una propiedad tiene expresión habilitada:**
    ```javascript
    if (prop.expressionEnabled) { /* ... */ }
    ```
    (Fuente: N_42-DTDuHI — ChatGPT / Tutorial)

## 5) Effects (matchNames) y presets (addProperty, applyPreset)

- **Agregar un efecto a una capa usando su matchName:**
    ```javascript
    comp.layer(q).property("ADBE Effect Parade").addProperty(effectMatchName);
    ```
    (Fuente: OUS0PMIwZyE — NT Productions)

- **Acceder a la lista de efectos de una capa:**
    ```javascript
    var effects = layer.property("ADBE Effect Parade");
    ```
    (Fuente: N_42-DTDuHI — ChatGPT / Tutorial)

- **Eliminar todos los efectos de una capa (iterando de atrás hacia adelante):**
    ```javascript
    if (effects && effects.numProperties > 0) {
        for (var j = effects.numProperties; j >= 1; j--) {
            effects.property(j).remove();
        }
    }
    ```
    (Fuente: N_42-DTDuHI — ChatGPT / Tutorial)

- **Obtener todos los efectos instalados:**
    ```javascript
    var effects = app.effects;
    for (var i = 0; i < effects.length; i++) {
        var name = effects[i].displayName;
        var matchName = effects[i].matchName;
    }
    ```
    (Fuente: Or1z-J8KOlM — NT Productions)

## 6) ScriptUI (Window/panel, controles, onClick, dockable)

- **Crear una ventana tipo "palette" (acoplable):**
    ```javascript
    var mainWindow = new Window("palette", "Título", undefined);
    mainWindow.orientation = "column";
    ```
    (Fuente: JKEMijMjddE — NT Productions; N_42-DTDuHI — ChatGPT / Tutorial)

- **Hacer un panel acoplable y redimensionable:**
    ```javascript
    var win = new Window("palette", "My Script", undefined, {resizeable: true});
    ```
    (Fuente: N_42-DTDuHI — ChatGPT / Tutorial)

- **Agregar grupos para organizar controles:**
    ```javascript
    var presetGroup = mainWindow.add("group", undefined);
    presetGroup.orientation = "row";
    ```
    (Fuente: JKEMijMjddE — NT Productions)

- **Agregar controles comunes:**
    ```javascript
    // Texto estático
    var presetText = presetGroup.add("statictext", undefined, "Presets");
    presetText.size = [50, 25];

    // Menú desplegable
    var presetDropdown = presetGroup.add("dropdownlist", undefined, ["Op1", "Op2"]);
    presetDropdown.selection = 0;

    // Campo de texto editable
    var titleEditText = titleGroup.add("edittext", undefined, "First Name");
    titleEditText.size = [120, 20];

    // Botón
    var createButton = mainWindow.add("button", undefined, "Create");

    // Checkbox
    var cbExpr = win.add("checkbox", undefined, "Remove Expressions");
    ```
    (Fuente: JKEMijMjddE — NT Productions; N_42-DTDuHI — ChatGPT / Tutorial)

- **Asignar eventos a botones y controles:**
    ```javascript
    createButton.onClick = function() {
        // Código a ejecutar al hacer clic
    };
    nameDD.onChange = function() {
        matchNameDD.selection = nameDD.selection.index;
    };
    ```
    (Fuente: JKEMijMjddE — NT Productions; Or1z-J8KOlM — NT Productions)

- **Mostrar y centrar la ventana:**
    ```javascript
    mainWindow.center();
    mainWindow.show();
    ```
    (Fuente: OUS0PMIwZyE — NT Productions)

- **Estructura para panel ScriptUI reutilizable (acoplable o flotante):**
    ```javascript
    function myPanel(thisObj) {
        var panel = (thisObj instanceof Panel) ? thisObj : new Window("palette", "My Tool", [100,100,400,300]);
        // ... agregar controles ...
        if (!(thisObj instanceof Panel)) panel.show();
        return panel;
    }
    myPanel(this);
    ```
    (Fuente: UutXfHp9KDg — Code and Motion)

- **Instalación del panel:** Guardar como `.jsx` en `Program Files/Adobe/Adobe After Effects [versión]/Support Files/Scripts/ScriptUI Panels/`. Se accede desde `Window > Nombre del Script`.
    (Fuente: aOFrxATiN8c — AM Film; UutXfHp9KDg — Code and Motion)

## 7) Render y automatización (renderQueue, aerender CLI, batch, OMtemplate)

- **Añadir una composición a la cola de render:**
    ```javascript
    var renderQueueItem = app.project.renderQueue.items.add(comp);
    ```
    (Fuente: _hpsV2q9M2Q — NT Productions)

- **Forzar el render de un ítem de la cola:**
    ```javascript
    renderQueueItem.render();
    ```
    (Fuente: _hpsV2q9M2Q — NT Productions)