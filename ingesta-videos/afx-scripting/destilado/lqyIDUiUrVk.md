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