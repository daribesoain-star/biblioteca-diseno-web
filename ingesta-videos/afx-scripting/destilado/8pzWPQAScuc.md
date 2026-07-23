Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente las reglas y el contenido del video.

# After Effects Scripting Tutorial [QuickTip]: Script UI Layout Guide
**Fuente:** NT Productions | https://youtu.be/8pzWPQAScuc

## Qué enseña (2 líneas)
Cómo crear interfaces de usuario (UI) complejas en After Effects anidando grupos (`group`) y paneles (`panel`) dentro de otros grupos para controlar la orientación (filas/columnas) de los elementos. Se demuestra la construcción de un layout con múltiples paneles y botones organizados jerárquicamente.

## Técnicas de scripting accionables
- **Crear ventana principal y definir orientación general:**
  ```javascript
  var window = new Window("palette", undefined, undefined);
  window.orientation = "column";
  ```
- **Crear grupos anidados para layouts mixtos (fila + columna):**
  ```javascript
  var windowGroup1 = window.add("group", undefined, "windowGroup1");
  windowGroup1.orientation = "row";
  var panel1 = windowGroup1.add("panel", undefined, "Panel 1");
  var panel2 = windowGroup1.add("panel", undefined, "Panel 2");

  var windowGroup2 = window.add("group", undefined, "windowGroup2");
  windowGroup2.orientation = "column"; // o "row"
  var panel3 = windowGroup2.add("panel", undefined, "Panel 3");
  ```
- **Crear subgrupos dentro de un panel para organizar botones:**
  ```javascript
  panel1.orientation = "row"; // El panel en sí puede tener orientación
  var panel1Group1 = panel1.add("group", undefined, "panel1Group1");
  panel1Group1.orientation = "row";
  var panel1Group2 = panel1.add("group", undefined, "panel1Group2");
  panel1Group2.orientation = "column";
  ```
- **Agregar botones a un grupo específico y asignar tamaño uniforme:**
  ```javascript
  var buttonSize = [80, 30]; // [ancho, alto]
  var button1 = panel1Group1.add("button", undefined, "1");
  button1.size = buttonSize;
  var button2 = panel1Group1.add("button", undefined, "2");
  button2.size = buttonSize;
  ```
- **Mostrar la ventana centrada:**
  ```javascript
  window.center();
  window.show();
  ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **Usa `"group"` para contenedores invisibles** que solo organizan el layout; usa `"panel"` cuando quieras un borde visible y un título que ayude a depurar la estructura.
- **Define `orientation` explícitamente** en cada grupo o panel (`"row"` para horizontal, `"column"` para vertical). Si no se define, el valor por defecto puede no ser el esperado.
- **Asigna un `name` (tercer argumento)** a grupos y paneles para identificarlos fácilmente en el código, aunque no sea obligatorio.
- **Crea una variable para el tamaño de los botones** (`var buttonSize = [X, Y]`) y asígnela a cada botón con `.size` para mantener consistencia y ahorrar líneas.
- **Recuerda que un `panel` es un tipo de grupo**; puede contener otros grupos y tener su propia orientación.
- **Siempre llama a `window.center()` antes de `window.show()`** para que la UI aparezca centrada en la pantalla.

## Errores comunes
- **Olvidar establecer la orientación del grupo contenedor** (ej. `panel1.orientation = "row"`), lo que hace que los subgrupos se apilen en lugar de alinearse como se espera.
- **Agregar botones al grupo incorrecto** (ej. añadir `button6` a `panel1` en lugar de `panel2`), lo que rompe la estructura visual deseada.
- **No definir `buttonSize` o asignar tamaños inconsistentes** a cada botón, resultando en una UI desordenada.
- **Confundir el orden de anidamiento**: los grupos hijos deben agregarse al grupo padre correcto (ej. `panel1Group1 = panel1.add(...)` no `window.add(...)`).