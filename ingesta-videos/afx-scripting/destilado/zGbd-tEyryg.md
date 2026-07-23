Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente el contenido del video y las reglas proporcionadas.

# After Effects Scripting Tutorial: Recreate Shape Layers
**Fuente:** NT Productions | https://youtu.be/zGbd-tEyryg

## Qué enseña (2 líneas)
A crear capas de forma desde cero con un script, añadiendo contenidos personalizados como trazados de polígono, trazo y relleno. También enseña a usar la consola de JavaScript para inspeccionar propiedades y obtener los "match names" necesarios para recrear cualquier capa de forma.

## Técnicas de scripting accionables

- **Verificar y crear composición activa:**
    ```javascript
    var proj = app.project;
    var comp = proj.activeItem;
    if (comp == null) {
        comp = proj.items.addComp("Test Comp", 1920, 1080, 1, 10, 30);
        comp.openInViewer();
    }
    ```

- **Agregar una capa de forma vacía:**
    ```javascript
    var shapeLayer = comp.layers.addShape();
    shapeLayer.name = "Hexagon";
    ```

- **Agregar un grupo de vectores (contenedor principal) y renombrarlo:**
    ```javascript
    app.beginUndoGroup("Create Hexagon");
    var hexagonGroup = shapeLayer.property("Contents").addProperty("ADBE Vector Group");
    hexagonGroup.name = "Hexagon";
    ```

- **Agregar un trazado de polígono/estrella (Poly Star Path):**
    ```javascript
    var pathGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Shape - Star");
    ```

- **Agregar un trazo (Stroke):**
    ```javascript
    var strokeGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Stroke");
    ```

- **Agregar un relleno (Fill):**
    ```javascript
    var fillGroup = shapeLayer.property("Contents").property("Hexagon").property("Contents").addProperty("ADBE Vector Graphic - Fill");
    ```

- **Configurar el trazado como polígono de 6 lados (hexágono):**
    ```javascript
    pathGroup.property("ADBE Vector Star - Type").setValue(2); // 1 = Star, 2 = Polygon
    pathGroup.property("ADBE Vector Star - Points").setValue(6);
    ```

- **Agrupar operaciones para permitir deshacer:**
    ```javascript
    app.beginUndoGroup("Create Hexagon");
    // ... todo el código de creación ...
    app.endUndoGroup();
    ```

- **Inspeccionar propiedades desde la consola de ExtendScript (para obtener match names):**
    ```javascript
    var layer = comp.layer(3); // Ejemplo: capa específica
    $.writeln(layer.property("Contents").matchName); // Muestra: "ADBE Root Vectors Group"
    $.writeln(layer.property("Contents").property(1).name); // Muestra: "Hexagon"
    $.writeln(layer.property("Contents").property(1).property("Contents").property(1).matchName); // Muestra: "ADBE Vector Shape - Star"
    ```

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.project.activeItem`** para obtener la composición activa. Si es `null`, usa `proj.items.addComp()` para crear una nueva.
- **Usa `comp.layers.addShape()`** para crear una capa de forma vacía. No requiere argumentos.
- **Usa `property("Contents")`** para acceder al grupo de contenidos de una capa de forma.
- **Usa `addProperty("ADBE Vector Group")`** para agregar un nuevo grupo contenedor dentro de "Contents".
- **Usa `addProperty("ADBE Vector Shape - Star")`** para agregar un trazado de polígono/estrella.
- **Usa `addProperty("ADBE Vector Graphic - Stroke")`** para agregar un trazo.
- **Usa `addProperty("ADBE Vector Graphic - Fill")`** para agregar un relleno.
- **Usa `setValue(2)` en la propiedad "ADBE Vector Star - Type"** para convertir un trazado de estrella en polígono.
- **Usa `app.beginUndoGroup("Nombre")` y `app.endUndoGroup()`** para que el usuario pueda deshacer toda la operación con un solo Ctrl+Z.
- **Usa `$.writeln()`** para imprimir en la consola de JavaScript de ExtendScript y así inspeccionar propiedades y obtener sus `matchName`.
- **Usa `.matchName`** para obtener el nombre interno de After Effects de cualquier propiedad (ej: `"ADBE Root Vectors Group"`). Es el que necesitas para `addProperty()`.
- **Usa `.name`** para obtener el nombre visible al usuario de una propiedad (ej: "Hexagon").

## Errores comunes

- **Asumir que el orden de las propiedades es el mismo que en la UI:** Al inspeccionar con `property(1)`, `property(2)`, etc., pueden aparecer propiedades ocultas (como "Blend Mode" o "Material Options") que no se ven en la interfaz. Hay que probar varios índices hasta encontrar la deseada.
- **Olvidar la capa oculta "Contents" dentro de un grupo:** Al agregar un grupo con `addProperty("ADBE Vector Group")`, dentro de él hay otro grupo "Contents" que es el que realmente contiene los trazados, trazos y rellenos. La ruta correcta es `shapeLayer.property("Contents").property("Hexagon").property("Contents")`.
- **Usar el nombre visible en lugar del `matchName`:** No se puede usar `addProperty("Poly Star Path")`. Siempre se debe usar el `matchName` (ej: `"ADBE Vector Shape - Star"`).
- **No verificar si hay una composición activa:** Si `app.project.activeItem` es `null` y no se crea una composición nueva, el script fallará al intentar agregar una capa.
- **No agrupar las operaciones con `beginUndoGroup`:** Si el usuario comete un error, no podrá deshacer todo el proceso de creación de la capa de forma de una sola vez.