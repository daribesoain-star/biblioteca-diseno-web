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