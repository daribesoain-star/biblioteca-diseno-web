# How to Understand Geometry Nodes
**Fuente:** Yesway™ | https://youtu.be/ETOXG3qdMKg

## Qué enseña
Explica la base conceptual de Geometry Nodes: el flujo entre Group Input y Group Output, la función del Spreadsheet y los dominios (vertex, edge, face, face corner). Muestra cómo los nodos modifican atributos (posición, etc.) y cómo se relacionan con los índices. Incluye un ejemplo práctico para crear una cuadrícula con instancias y nodos básicos.

## Técnicas accionables
- Para añadir cualquier nodo: presiona **Shift+A** y escribe el nombre (ej. "Set Position").
- Conecta **Group Input** (tamaño X, tamaño Y, vértices X, vértices Y) a un nodo **Grid** y luego a **Group Output** para controlar la cuadrícula desde el panel de modifiers.
- Usa **Mesh to Points** (modo "Faces") para convertir caras en puntos.
- Conecta un nodo **Instance on Points**: arrastra el objeto original (ej. el mismo Grid) al socket "Instance".
- Para cortar cables sin perder conexión: mantén **Shift + Botón derecho del ratón** y arrastra para crear un **Reroute**.
- Selecciona varios nodos y presiona **Ctrl+J** para agruparlos en un marco; presiona **F2** para renombrar el marco.
- Añade **Rotate Instances** (ángulo 45°) y **Scale Instances** (escala 2) para transformar las instancias.
- Duplica un nodo (ej. Scale Instances) con **Shift+D** y colócalo en otra posición.
- Conecta un nodo **Position** al socket de un nodo de operación (ej. un nodo matemático "Distance").
- Para crear un atributo personalizado: mantén el conector de salida de un nodo, suéltalo y escribe el nombre del atributo (ej. "distance"), presiona **Enter**.
- Para previsualizar datos: selecciona nodos con **Shift+Ctrl+clic izquierdo**, cambia el dominio a "Instance" en el **Spreadsheet**.
- Usa **Realize Instances** para convertir instancias en geometría real.
- Añade **Distribute Points on Faces** y luego **Instance on Points** con un objeto (ej. Suzanne) y un nodo **Random Value** para distribuir instancias aleatoriamente.

## Reglas para el erudito
- Usa **Group Input** para exponer parámetros editables desde el panel de modifiers (tamaño, subdivisiones, etc.).
- Usa **Group Output** como salida final del nodo tree; todo lo que conectes ahí es lo que se renderiza.
- Usa el **Spreadsheet** para inspeccionar atributos por dominio (vertex, edge, face, face corner) y entender qué datos tiene cada elemento.
- Usa **Set Position** con un nodo **Position** conectado al offset para desplazar cada vértice según su propia posición original (efecto de duplicación de desplazamiento).
- Usa **Reroute** (Shift+Botón derecho) para organizar cables y evitar enredos en el node tree.
- Usa **Ctrl+J** y **F2** para agrupar nodos lógicos en marcos con nombre.
- Usa **Shift+Ctrl+clic izquierdo** en nodos para previsualizar atributos específicos en el Spreadsheet.
- Cambia el dominio del Spreadsheet a "Instance" cuando trabajes con instancias para ver sus atributos.
- Usa **Realize Instances** antes de aplicar nodos que requieran geometría real (ej. distribuir puntos en caras).

## Errores comunes / gotchas
- Conectar **Instance on Points** sin proporcionar un objeto en el socket "Instance" hace que desaparezca todo (no hay nada que instanciar).
- Olvidar que los nodos trabajan en orden inverso: un segundo **Set Position** con el mismo nodo **Position** suma el desplazamiento sobre el ya transformado, no sobre el original.
- No cambiar el dominio en el Spreadsheet (ej. dejar "Vertex" cuando trabajas con instancias) da información incorrecta o vacía.
- No usar **Realize Instances** cuando necesitas geometría editable (ej. para distribuir puntos sobre las instancias).
- No organizar el node tree con marcos y reroutes lleva a confusión y errores difíciles de depurar.