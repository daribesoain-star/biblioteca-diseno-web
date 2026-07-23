# Learn the BASICS of Material Shading in BLENDER (Part 1)
**Fuente:** Brandon 3D | https://youtu.be/Wg244y2f9Fw

## Qué enseña
Introducción completa al sistema de materiales y sombreado en Blender usando Cycles. Cubre el panel de propiedades de material, el editor de sombreadores, el nodo Principled BSDF, nodos de textura procedural (Musgrave, Voronoi, Wave, Noise, Brick), nodos de conversión (ColorRamp, Mix RGB, Math), nodos de mapeo (Mapping, Texture Coordinate), shaders de volumen (Volume Absorption, Volume Scatter, Principled Volume) y el addon Node Wrangler con sus atajos esenciales.

## Técnicas accionables
- Para crear un material: selecciona el objeto, ve al panel **Material Properties** (icono de esfera roja), presiona **New**.
- Para asignar múltiples materiales a un mismo objeto: en **Material Properties**, presiona **+** para añadir un slot, crea o selecciona el material, entra en **Edit Mode** (Tab), selecciona las caras deseadas, elige el material en el slot y presiona **Assign**.
- Para renombrar un material: haz doble clic sobre su nombre en el slot de materiales.
- Para abrir el **Shader Editor**: cambia al workspace **Shading** en la barra superior.
- Para activar **Node Wrangler**: ve a **Edit > Preferences > Add-ons**, busca "node wrangler" y marca la casilla.
- Para añadir un nodo en el Shader Editor: presiona **Shift+A** y busca por nombre o navega en las categorías.
- Para duplicar un nodo: selecciónalo y presiona **Shift+D**.
- Para eliminar un nodo: selecciónalo y presiona **X**.
- Para mover un nodo: selecciónalo y presiona **G**, o arrástralo con el ratón.
- Para conectar sockets: arrastra desde un socket de salida (derecha del nodo) hasta un socket de entrada (izquierda).
- Para desconectar una conexión: con **Node Wrangler** activado, presiona **Ctrl + clic derecho** y arrastra cortando las líneas.
- Para insertar un nodo entre dos conectados: arrastra el nodo sobre la línea de conexión existente.
- Para ver la contribución de un solo nodo: con **Node Wrangler** activado, presiona **Ctrl+Shift** y haz clic sobre el nodo. Para restaurar, **Ctrl+Shift** clic sobre el nodo shader final.
- Para añadir automáticamente nodos **Mapping** y **Texture Coordinate**: selecciona un nodo de textura y presiona **Ctrl+T** (requiere Node Wrangler).
- Para agrupar nodos: selecciona varios nodos y presiona **Ctrl+J**. Para editar el grupo, selecciona el grupo y presiona **Tab**. Para exponer un parámetro, conecta un socket vacío del **Group Input** al valor deseado dentro del grupo.
- Para abrir el panel lateral del Shader Editor: presiona **N**.
- Para añadir un nodo a **Quick Favorites**: haz clic derecho sobre el nodo en el menú **Shift+A** y elige **Add to Quick Favorites**. Luego presiona **Q** en el Shader Editor para acceder.
- Para usar **ColorRamp** después de una textura: añade el nodo **ColorRamp** (Shift+A > Converter > ColorRamp), conecta la salida de la textura a su entrada **Factor**, y la salida **Color** al socket deseado. Ajusta los puntos de color arrastrándolos o seleccionándolos y cambiando su color.
- Para mezclar dos shaders: añade un nodo **Mix Shader** (Shift+A > Shader > Mix Shader). Conecta los dos shaders a los sockets **Shader** verde superior e inferior. El **Factor** (gris, 0-1) controla la mezcla: 0 = 100% shader superior, 1 = 100% shader inferior.
- Para mezclar dos colores/texturas: añade un nodo **Mix RGB** (Shift+A > Color > Mix RGB). Conecta las entradas de color **A** y **B**, ajusta el **Factor** y elige el **Blend Mode** (Mix, Add, Multiply, etc.).
- Para mapear una textura procedural: añade **Mapping** (Shift+A > Vector > Mapping) y **Texture Coordinate** (Shift+A > Input > Texture Coordinate). Conecta la salida **Object** o **Generated** de Texture Coordinate al socket **Vector** de Mapping, y la salida **Vector** de Mapping al socket **Vector** de la textura.
- Para usar volumen en un objeto: en el Shader Editor, elimina el nodo Principled BSDF, añade un shader de volumen (ej. **Principled Volume** en Shift+A > Shader) y conéctalo al socket **Volume** del **Material Output**.
- Para animar una textura procedural: cambia el tipo de dimensión a **4D** en el nodo de textura (ej. Noise Texture, Musgrave Texture), y keyframe el valor **W**.
- Para cambiar el **IOR** (Índice de Refracción) en el shader **Glass BSDF**: ajústalo en el parámetro **IOR** (valor por defecto 1.45 para vidrio).

## Reglas para el erudito
- Usa el nodo **Principled BSDF** como base para casi todos los materiales de superficie; es el más versátil.
- Usa **Cycles** como motor de render para resultados más precisos con materiales; los ajustes pueden diferir ligeramente en **Eevee**.
- Usa **Node Wrangler** siempre activado; actívalo en **Edit > Preferences > Add-ons**.
- Usa **ColorRamp** después de texturas procedurales para controlar la transición entre valores y asignar colores personalizados.
- Usa sockets de color amarillo para información de color, sockets verdes para shaders completos, sockets grises para valores numéricos (0-1) o escala de grises, y sockets púrpura para información vectorial (mapeo, normales).
- Conecta siempre sockets del mismo color cuando sea posible (verde con verde, púrpura con púrpura); amarillo y gris pueden intercambiarse si el contenido es escala de grises.
- Usa el nodo **Mapping** junto con **Texture Coordinate** (salida **Object** o **Generated**) para controlar posición, rotación y escala de texturas procedurales.
- Usa el nodo **Math** entre nodos para operaciones aritméticas (multiplicar, sumar, etc.) sobre valores de grises.
- Usa **Volume Scatter** o **Principled Volume** para niebla o efectos volumétricos; ten en cuenta que son muy demandantes para el render.
- Usa **Ctrl+J** para agrupar nodos y **Tab** para entrar/salir del grupo; nombra y colorea los grupos en el panel lateral (**N**) para organizar árboles complejos.
- Usa **Ctrl+Shift + clic** sobre un nodo para aislar visualmente su contribución; restaura con **Ctrl+Shift + clic** sobre el shader final.

## Errores comunes / gotchas
- Olvidar activar **Node Wrangler**: sin él, atajos como **Ctrl+T** (auto-mapping) y **Ctrl + clic derecho** (cortar conexiones) no funcionan.
- Conectar un shader (socket verde) a un socket de color (amarillo) o viceversa: no funcionará; los sockets verdes solo conectan con otros verdes.
- Intentar conectar dos salidas a un mismo socket de entrada: un input solo acepta una conexión; usa nodos **Mix** o **Math** para combinar.
- Asignar un material a todo el objeto cuando se quería solo una parte: recuerda entrar en **Edit Mode**, seleccionar caras y presionar **Assign** en el slot correcto.
- Usar valores mayores a 1 en sockets grises: aunque es posible escribir valores >1, muchos parámetros (como Roughness) están diseñados para el rango 0-1; valores extremos pueden dar resultados no deseados.
- No conectar **Texture Coordinate** al nodo **Mapping**: sin Texture Coordinate, el Mapping no tiene referencia y la textura puede desaparecer o mapearse incorrectamente.
- Usar volumen en objetos sin suficiente geometría o con muestras bajas: el render de volumen es muy lento; ajusta los samples de render y usa con moderación.
- Confundir **Transmission** (transmisión de luz a través del material) con **Alpha** (transparencia): Transmission permite que la luz pase (como en vidrio), Alpha controla la opacidad (1 = opaco, 0 = transparente).
- No renombrar los materiales: cuando el proyecto crece, es fácil perderse entre "Material.001", "Material.002", etc.