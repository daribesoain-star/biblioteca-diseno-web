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