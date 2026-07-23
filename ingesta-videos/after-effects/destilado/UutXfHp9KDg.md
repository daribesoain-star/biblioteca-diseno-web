# After Effects Scripting for Absolute Beginners - ExtendScript Tutorial
**Fuente:** Code and Motion | https://youtu.be/UutXfHp9KDg

## Qué enseña
Este tutorial enseña los fundamentos de ExtendScript (variante de JavaScript) para automatizar tareas en After Effects. Al final, el alumno puede escribir un script que aplica una expresión personalizada a todas las propiedades seleccionadas, comprendiendo variables, funciones, objetos, arrays, condicionales y bucles.

## Técnicas accionables
- **Crear una variable de texto:** `var myVariable = "mi texto";` (siempre con comillas dobles y punto y coma al final).
- **Mostrar un pop-up de prueba:** `alert(myVariable);` dentro del código.
- **Obtener propiedades seleccionadas en la composición activa:** `var selected = app.project.activeItem.selectedProperties;` (esto devuelve un array).
- **Acceder al primer elemento del array:** `selected[0]` (el índice empieza en 0).
- **Leer el valor de una propiedad:** `alert(selected[0].value);`
- **Cambiar el valor de una propiedad:** `selected[0].setValue(30);`
- **Añadir una expresión a una propiedad:** `selected[0].expression = "loopOut();";`
- **Agrupar acciones en un solo paso de deshacer:**
  ```javascript
  app.beginUndoGroup("mi script action");
  // ... acciones ...
  app.endUndoGroup();
  ```
- **Verificar si hay propiedades seleccionadas:**
  ```javascript
  if (selected.length === 0) {
      alert("Please select a property");
  } else {
      // aplicar expresión
  }
  ```
- **Recorrer todas las propiedades seleccionadas con un bucle for:**
  ```javascript
  for (var i = 0; i < selected.length; i++) {
      selected[i].expression = "loopOut();";
  }
  ```
- **Crear un panel de UI básico (código copiado del tutorial):** usar una función que devuelve un objeto `palette` con un campo de texto (`editText` de 25 caracteres) y un botón (`button`). El botón tiene un evento `onClick` que ejecuta la función `addExpression`, la cual lee el texto del campo con `expressionInput.text`.
- **Guardar el script como panel permanente:** guardar el archivo `.jsx` en `C:\Program Files\Adobe\Adobe After Effects [versión]\Support Files\Scripts\ScriptUI Panels\`. El nombre del archivo aparece en el menú `Window` de After Effects.
- **Comentar código:** usar `//` para comentar una línea y evitar que se ejecute.
- **Depurar con alerts:** usar `alert()` en diferentes puntos del código para rastrear el flujo y los valores de las variables.

## Reglas para el erudito
- **Usa camelCase para nombrar variables:** la primera letra en minúscula y cada palabra siguiente con mayúscula (ej: `myVariable`).
- **Nunca uses espacios, guiones ni números al inicio en nombres de variables.**
- **Siempre termina cada línea de código con un punto y coma (`;`), no dos.**
- **Usa `===` para comparar valores, no `=` (un solo signo asigna, no compara).**
- **Usa `!==` para verificar desigualdad.**
- **Usa `&&` para "Y" lógico y `||` para "O" lógico en condiciones.**
- **Agrupa acciones grandes con `beginUndoGroup` y `endUndoGroup` para permitir deshacer todo de una vez.**
- **Siempre verifica que `selectedProperties` no esté vacío antes de operar sobre él.**
- **Usa nombres de variables descriptivos para facilitar la lectura futura del código.**
- **Comenta las secciones importantes del código con `//` para recordar su propósito.**

## Errores comunes que evita o menciona
- **No seleccionar ninguna propiedad:** si `selectedProperties` devuelve `undefined` o un array vacío, el script falla. El tutorial enseña a usar un `if` para comprobar `selected.length === 0` y mostrar un mensaje de advertencia.
- **Usar un solo `=` en lugar de `===` en comparaciones:** esto asigna un valor en lugar de compararlo, causando errores lógicos.
- **Olvidar que los arrays empiezan en índice 0:** el segundo elemento tiene índice 1, el tercero índice 2, etc.
- **No usar `beginUndoGroup`:** sin esto, el usuario no puede deshacer todas las acciones del script con un solo Ctrl+Z.
- **No comentar el código:** dificulta entender el script meses después.
- **No usar alerts para depurar:** impide rastrear el flujo del programa y detectar errores.