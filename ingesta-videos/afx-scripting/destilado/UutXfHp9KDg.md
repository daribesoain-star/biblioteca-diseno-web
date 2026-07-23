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