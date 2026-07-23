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