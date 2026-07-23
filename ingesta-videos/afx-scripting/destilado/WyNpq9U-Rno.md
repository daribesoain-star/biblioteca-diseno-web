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