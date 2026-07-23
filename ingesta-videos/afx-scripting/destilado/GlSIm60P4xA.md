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