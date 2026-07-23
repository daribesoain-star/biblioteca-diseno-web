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