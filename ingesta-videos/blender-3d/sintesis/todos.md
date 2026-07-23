# DOCTRINA ACCIONABLE EN ESPAÑOL NEUTRO

## 1) Modelado (mesh, modificadores Bevel/Subdivision/Array, hard surface, atajos)

- **Añadir objetos:** `Shift+A` y elegir el tipo de malla. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Eliminar objetos:** Seleccionar y presionar `X`. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Modos:** Usar `Tab` para alternar entre Object Mode y Edit Mode. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Transformaciones en Edit Mode:** `G` para mover (grab), `R` para rotar, `S` para escalar. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Herramientas clave:** `E` para extruir, `I` para inset, `Ctrl+R` para loop cut, `D` para duplicar. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Bevel:** `Ctrl+B`, scroll para más segmentos. Para clamping (evitar que aristas se crucen), presionar `C`. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Subdivision Surface:** `Ctrl+2` para añadir 2 niveles. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Modificador Subdivision Surface:** Añadirlo a objetos como refrigeradores, luego añadir edge loops con `Ctrl+R` para controlar la curvatura. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Modificador Array:** Añadirlo para crear copias en línea (ej. perillas de horno). Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Modificador Mirror:** Colocar el origen en el centro del objeto, eliminar la mitad de la malla en Edit Mode, añadir el modificador Mirror para modelar simétricamente. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Proportional Editing:** Activarlo con `O` en Edit Mode; afecta vértices circundantes al transformar. Útil para deformar esferas UV al hacer árboles. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Esfera con topología perfecta:** Añadir cubo (`Shift+A > Mesh > Cube`). Agregar modificador **Subdivision Surface** (Generate), aumentar **Levels Viewport** a 3. Agregar modificador **Cast** (Deform), **Factor** = 1, **Target Shape** = Sphere. Aplicar ambos modificadores. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Unir objetos:** Seleccionar ambos, `Ctrl+J` para unir. En Edge Select mode (2), seleccionar dos edge loops, `W > Bridge Edge Loops`. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Separar geometría:** Seleccionar cara/círculo, `P > Selection` para separar a nuevo objeto. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Limpiar vértices dobles:** Seleccionar todo con `A`, `M > Merge by Distance`. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Duplicar y reflejar:** Colocar 3D cursor con `Shift+S > Cursor to Selected`. `Shift+D` para duplicar, `S > Z > -1` para reflejar en Z. Corregir normales con `Shift+N`. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Extruir caras por normales:** Seleccionar caras, `Alt+E > Extrude Faces Along Normals`. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Inflar caras:** Seleccionar caras, `Alt+S` para inflar/desinflar. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Shade Smooth:** En Object Mode, botón derecho > **Shade Smooth**. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Knife Tool:** `K` para activar. `C` para Cut Through. Hacer clic en vértices para cortar. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Modificador Screw:** Partir de un solo vértice (eliminar todos menos uno). Agregar **Screw** (Generate). Ajustar **Screw** (ej. -0.1 m), **Steps Viewport** (ej. 256), **Iterations** para largo. Aplicar. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Inset/Outset:** `I` para inset, `O` para outset (durante la operación). Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Seleccionar borde de loop:** `Alt+clic derecho` en edge loop. `Ctrl+E > Mark Seam` para marcar costura. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Loop Tools:** Activar en Edit > Preferences > Add-ons > Loop Tools. Usar `W > Loop Tools > Relax` (Linear, iteraciones 3) para suavizar. `W > Loop Tools > G-stretch` para enderezar. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Grid Fill:** Seleccionar borde de agujero, `Face > Grid Fill`. Ajustar **Span**. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **MatCap:** En Viewport Shading, cambiar de Studio a **MatCap**, elegir bola roja para detectar imperfecciones. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Snapping para modular:** Activar snapping magnético para alinear piezas al grid; colocar el origen del objeto en la base (pie del modelo) alineado al grid. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Suavizado de caras curvas:** Seleccionar el anillo de caras curvas (ej. cilindro), ir a Mesh > Faces > Shade Smooth; las caras planas dejarlas como Shade Flat. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78

## 2) Shading y materiales (Principled BSDF, nodos, PBR, Cycles vs Eevee)

- **Material metálico:** Subir **Metallic** a 1, bajar **Roughness** (~0.2). Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **UV Mapping básico:** En Shading tab, **New** material. `Shift+A > Image Texture`, cargar imagen. Conectar **Color** a **Base Color** del Principled BSDF. En Edit Mode, seleccionar caras, `U > Unwrap`. En UV Editor, mover/rotar/escalar el UV. Fuente: "The Perfect Hard Surface Modeling tutorial for Beginners" — https://youtu.be/F9y1rD3bhJg
- **Materiales múltiples:** Crear dos materiales en el Shading tab, seleccionar caras en Edit Mode, asignarlas al material deseado en el panel Material. Fuente: "How to make Game Models (For Beginners) from Start to Finish (blender)" — https://youtu.be/2Kzo68liq78
- **Cel shading por objeto (Eevee obligatorio):** En el Shader Editor, crear un material. Añadir "Shader to RGB", luego un "Color Ramp" (modo "Constant"). Mover los stops, cambiar colores, añadir más stops. Dejar el color del Principled BSDF en blanco para mejor control. Ajustar Roughness/Metallic para variantes. Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Cel shading con Map Range (para node groups):** Usar "Map Range" en vez de Color Ramp. Ajustar los valores "From Min"/"From Max" para controlar la transición (acercarlos para bordes duros). Conectar a "Mix Color" (Factor controla la mezcla). Para 3 colores: repetir con otro Map Range y Mix Color. Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Cel shading con Math node:** "Math" → "Greater Than" (solo bordes duros, sin gradientes). Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Cel shading stepped linear:** Map Range → "Stepped Linear". Ajustar "Steps" para número de bandas (espaciado uniforme). Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Cel shading vector stepped linear:** Map Range → "Vector" + "Stepped Linear". Divide colores del shader en sólidos. Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Cel shading por canales RGB:** Usar "Separate Color" para dividir en R, G, B. Crear luces roja, verde y azul. Mezclar canales con "Mix Color" (Add/Multiply). Usar el canal rojo como color principal. Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Cel shading sin luces (fake light direction):** Añadir "Texture Coordinate" (Normal) → "Vector Math" (Dot Product). Cambiar los valores Z (ej. Z=1 para luz desde arriba). Alternativa: usar un nodo "Normal" para control individual por objeto. Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8
- **Método con Color Curve (alternativa simple para toon shaders):** En el Editor de Shaders, añadir un nodo **Shader to RGB** (`Shift+A > Converter > Shader to RGB`), conectarlo a un nodo **Color Curve** (`Shift+A > Color > Color Curve`), y luego a un nodo **Multiply** (`Shift+A > Color > MixRGB`, modo Multiply) con tu textura. Ajustar la curva en el panel del nodo Color Curve: hacer clic para añadir puntos y arrastrar para crear escalones que generen bandas discretas de sombra. Fuente: "Stop Using Color Ramps For Toon Shaders" — https://youtu.be/7Pi5AUwyIJU
- **Método con HSV (recomendado para toon shaders):** Conectar el **Shader to RGB** a un nodo **Separate Color** (`Shift+A > Converter > Separate Color`). En sus propiedades, cambiar **Mode** a **HSV**. Tomar la salida **Value** (gris) y conectarla a un nodo **Color Ramp** o **Color Curve** para controlar las bandas de sombra. Luego conectar esa salida al canal **Value** de un nodo **Combine Color** (`Shift+A > Converter > Combine Color`, Mode: HSV). Conectar las salidas **Hue** y **Saturation** del Separate Color directamente a las entradas correspondientes del Combine Color. Finalmente, conectar el Combine Color a un nodo **Multiply** con tu textura. Fuente: "Stop Using Color Ramps For Toon Shaders" — https://youtu.be/7Pi5AUwyIJU
- **Extensión con Principled BSDF para toon shaders:** Reemplazar el nodo **Diffuse BSDF** por un **Principled BSDF** (`Shift+A > Shader > Principled BSDF`). Conectarlo al **Shader to RGB** para que el toon shader herede roughness, metallic, specular y normal maps. Ajustar los parámetros del Principled BSDF (Roughness, Metallic, etc.) como se desee; el efecto toon se aplicará sobre esas propiedades. Fuente: "Stop Using Color Ramps For Toon Shaders" — https://youtu.be/7Pi5AUwyIJU
- **Ajuste de bandas de sombra en toon shaders:** En el nodo **Color Ramp** o **Color Curve** conectado al Value, mover los puntos/controles para definir cuántas bandas de luz/sombra aparecen. Para un efecto de 2 tonos (sombra/luz), colocar un punto en el extremo izquierdo (negro) y otro en el derecho (blanco), ajustando la posición del punto de transición. Fuente: "Stop Using Color Ramps For Toon Shaders" — https://youtu.be/7Pi5AUwyIJU

## 3) Iluminación (HDRI, three-point, area/sun lights, world)

- **Cámara:** En vista frontal, presionar `Ctrl+Alt+Numpad 0` para alinear la cámara a la vista. Ajustar la distancia focal a **100 mm** para evitar distorsión de perspectiva en objetos como muebles. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Rotación de objeto:** Seleccionar el objeto, presionar `R`, luego `Z` y rotar **20 grados** para un ángulo lateral. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Ajuste de cámara sin distorsión:** Usar `Shift+Y` y `Shift+X` para simular un recorte de imagen grande sin barrel distortion. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Luz principal:** Agregar una lámpara puntual con `Shift+A > Light > Point`. Colocarla para crear sombras que revelen la forma 3D del objeto (ej. sombra en la curva del respaldo). Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Fondo infinito:** Añadir un plano (`Shift+A > Mesh > Plane`). Seleccionar un borde, presionar `E` y luego `Z` para extruir hacia arriba. Aplicar el modificador **Bevel** (parámetros: **Segments** alto, ajustar **Offset** para suavizar la línea de unión). Hacer clic derecho y seleccionar **Shade Smooth**. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Iluminación uniforme del fondo:** Alejar la luz principal del objeto y aumentar su potencia (Energy) para reducir el falloff por la ley del inverso del cuadrado. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Color Management:** En propiedades de render, bajo **Color Management**, cambiar **View Transform** a **Filmic** y **Look** a **High Contrast** para mejorar el contraste inmediatamente. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **False Color:** Cambiar **View Transform** a **False Color** para visualizar la exposición como un mapa de calor (gris = exposición correcta, verde = 1 stop sobreexpuesto, cian = 1 stop subexpuesto). Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Luz de relleno:** Agregar una segunda lámpara puntual para iluminar áreas específicas (ej. lado de una pata). Ocultar otras luces con `H` para aislar su efecto. Colocarla detrás del fondo para evitar que ilumine el backdrop. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Suavidad de sombras:** Aumentar el parámetro **Size** de la lámpara puntual para sombras más suaves; disminuirlo para sombras más nítidas. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Color de luz:** Para un tono sutil, ajustar el color de la luz a un azul ligeramente frío (temperatura de color baja) en lugar de colores saturados. Fuente: "How to Make Studio Lighting in Blender" — https://youtu.be/5UCc3Z_-ibs
- **Luz para cel shading plano:** Seleccionar la luz → Properties → Object Data → Shadow: desactivar "Shadow". Reducir el tamaño de la luz al mínimo. Fuente: "2d style materials in 3d animation" — https://youtu.be/AtetvOEcZt8

## 4) Geometry Nodes

- **Añadir cualquier nodo:** Presionar `Shift+A` y escribir el nombre (ej. "Set Position"). Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Conectar Group Input** (tamaño X, tamaño Y, vértices X, vértices Y) a un nodo **Grid** y luego a **Group Output** para controlar la cuadrícula desde el panel de modifiers. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Usar Mesh to Points** (modo "Faces") para convertir caras en puntos. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Conectar un nodo Instance on Points:** Arrastrar el objeto original (ej. el mismo Grid) al socket "Instance". Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Para cortar cables sin perder conexión:** Mantener `Shift + Botón derecho del ratón` y arrastrar para crear un **Reroute**. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Seleccionar varios nodos y presionar `Ctrl+J`** para agruparlos en un marco; presionar `F2` para renombrar el marco. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Añadir Rotate Instances** (ángulo 45°) y **Scale Instances** (escala 2) para transformar las instancias. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Duplicar un nodo** (ej. Scale Instances) con `Shift+D` y colocarlo en otra posición. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Conectar un nodo Position** al socket de un nodo de operación (ej. un nodo matemático "Distance"). Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Para crear un atributo personalizado:** Mantener el conector de salida de un nodo, soltarlo y escribir el nombre del atributo (ej. "distance"), presionar `Enter`. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Para previsualizar datos:** Seleccionar nodos con `Shift+Ctrl+clic izquierdo`, cambiar el dominio a "Instance" en el **Spreadsheet**. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Usar Realize Instances** para convertir instancias en geometría real. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Añadir Distribute Points on Faces** y luego **Instance on Points** con un objeto (ej. Suzanne) y un nodo **Random Value** para distribuir instancias aleatoriamente. Fuente: "How to Understand Geometry Nodes" — https://youtu.be/ETOXG3qdMKg
- **Preparar el eslabón base para valla procedural:** Eliminar el cubo por defecto (X). Añadir una **Bezier Curve** (`Shift+A → Curve → Bezier`). Entrar en Edit Mode (Tab), seleccionar todos los puntos, presionar `V` y elegir **Vector** para eliminar suavizado. Rotar 90° en vista frontal (R, 90, Enter). Extruir (E) el punto superior 1 unidad a la izquierda y el inferior 1 unidad a la derecha. Rotar 45° (R, 45, Enter). Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Suavizar esquinas del eslabón:** En Edit Mode, seleccionar un punto de esquina, presionar `V` → **Automatic**. Escalar (S) para ajustar el redondeo. Repetir en la otra esquina. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Duplicar y reflejar eslabón:** Seleccionar todo (A), `Shift+D` para duplicar, luego `Ctrl+M` → `X` para reflejar en eje X. Ajustar la posición. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Rotar eslabones entrelazados:** Cambiar el punto de pivote a **Individual Origins** (en el menú superior de la ventana 3D). Seleccionar los puntos del lado derecho, presionar `R` → `X` → `45`. Repetir en el lado izquierdo con `R` → `X` → `-45`. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Escalar al tamaño real:** Añadir un cubo (`Shift+A → Mesh → Cube`). En la barra lateral (N), establecer dimensiones a **5.08 cm** (escribir "5.08 cm" y Enter). Escalar el eslabón hasta que encaje dentro del cubo. Aplicar escala y rotación: `Ctrl+A` → **Scale**, luego `Ctrl+A` → **Rotation**. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Configurar Geometry Nodes:** Crear un nuevo objeto (cubo), ir al workspace **Geometry Nodes**. Añadir un **Group Input** y arrastrar los objetos **Fence Line** (curva Bezier) y **Chain** (eslabón) desde el Outliner al editor de nodos. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Crear la línea de valla:** Añadir **Mesh Line** (`Shift+A → Mesh Primitives → Mesh Line`). Conectarlo a **Group Output** → Geometry. Añadir **Instance on Points** (`Shift+A → Instances → Instance on Points`). Conectar **Fence Line** a Instance. Ajustar el **Offset** Z de Mesh Line copiando la altura Z del eslabón (seleccionar el eslabón, en la barra lateral N copiar Z con Ctrl+C, pegarlo en Offset Z). Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Instanciar eslabones:** Añadir otro **Instance on Points** (Shift+D). Conectar **Chain** a Instance. Añadir **Resample Curve** (`Shift+A → Curve → Resample Curve`) entre Mesh Line y el segundo Instance on Points. Cambiar el modo a **Length** e introducir el ancho X del eslabón (copiar con Ctrl+C desde dimensiones del eslabón, p.ej. 0.078 m). Ajustar el Offset Z de Mesh Line a **0.067** para que los eslabones se superpongan ligeramente. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Dar grosor a los eslabones:** Añadir **Curve to Mesh** (`Shift+A → Curve → Curve to Mesh`) después del segundo Instance on Points. Añadir **Curve Circle** (`Shift+A → Curve Primitives → Curve Circle`) y conectarlo a **Profile Curve**. Ajustar **Radius** a **0.009**. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Corregir rotación de eslabones:** Añadir **Align Euler to Vector** (`Shift+A → Utilities → Align Euler to Vector`). Conectarlo a **Rotation** del segundo Instance on Points. Añadir **Curve Tangent** (`Shift+A → Curve → Curve Tangent`) y conectarlo a **Vector** de Align Euler to Vector. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Añadir postes verticales:** Duplicar (Shift+D) el grupo Mesh Line + Instance on Points. Conectar la salida Geometry de este nuevo Instance on Points a los Points del Instance original. Conectar **Fence Line** a Instance. Añadir **Mesh to Curve** (`Shift+A → Mesh → Mesh to Curve`) y luego **Curve to Mesh** con otro **Curve Circle** (Radius **0.05**, activar **Fill Caps**). Unir con **Join Geometry** (`Shift+A → Geometry → Join Geometry`). Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Ajustar altura de postes:** Conectar el valor **Count** del Group Input al Count de Mesh Line de postes. Añadir un nodo **Math** (`Shift+A → Utilities → Math`) en modo **Add**, sumar **2** al Count para que los postes sobresalgan. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Añadir postes horizontales superiores:** Duplicar (Ctrl+Shift+D para mantener conexiones) el Mesh Line de altura. Añadir **Mesh to Curve** y **Reverse Curve** (`Shift+A → Curve → Reverse Curve`). Añadir **Resample Curve** y **Instance on Points**. Conectar **Fence Line** a Instance. Añadir **Curve to Mesh** con **Curve Circle** (Radius **0.025**). Añadir **Transform** (`Shift+A → Geometry → Transform`) antes de Curve to Mesh, con **Translate X = 0.025** para desplazar los postes al exterior. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Añadir postes verticales traseros:** Duplicar (Shift+D) el grupo de postes horizontales. Conectar la salida de Resample Curve a un nuevo **Instance on Points**. Usar **Mesh Line** como instancia. Añadir **Mesh to Curve** → **Curve to Mesh** con **Curve Circle** (Radius **0.025**, Fill Caps). Para desplazar hacia atrás, usar otro **Transform** con **Translate X = -0.025** antes de Instance on Points. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Organizar parámetros:** En el panel de modifiers (N → Item), renombrar los valores de entrada: **Height** para el Count de altura, **Horizontal Poles** para el Count/Length de postes horizontales. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0
- **Añadir material:** Añadir **Set Material** (`Shift+A → Material → Set Material`) antes de Join Geometry. Crear un material metálico (en Material tab, nombre "Metal", Base Color negro, Metallic 1, Roughness bajo). Seleccionar el material en Set Material. Fuente: "Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)" — https://youtu.be/CwOHqH60X-0

## 5) Rigging y animación (armature, weight paint, keyframes, graph editor)

- **Crear rig manual:** En **Edit Mode**, añadir un hueso con `Shift+A > Armature > Single Bone`. Activar **Armature > In Front** para ver huesos dentro del mesh. Seleccionar el hueso, hacer clic derecho y elegir **Subdivide** para crear la columna vertebral. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Extruir extremidades:** Seleccionar el extremo de un hueso y presionar `E` para extruir cuello/cabeza. Para brazos/piernas simétricos, activar **Tool > Options > X Mirror** y usar `Shift+E` (en lugar de E) para extruir en ambos lados. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Eliminar huesos sobrantes:** Seleccionar huesos innecesarios y presionar `Delete` (o `X`). Para reconectar huesos desconectados, seleccionar ambos, presionar `Ctrl+P` y elegir **Keep Offset**. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Parenting con pesos automáticos:** Seleccionar primero el mesh, luego el rig (con Shift), presionar `Ctrl+P` y elegir **Automatic Weights**. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Reparar pesos fallidos:** Si falla, ir a **Edit Mode** del mesh, luego **Mesh > Clean Up > Merge by Distance**. Si sigue fallando, añadir un **Decimate** modifier (en **Modifier Properties**), reducir el slider de **Ratio** hasta justo antes de ver deformaciones, aplicar con **Apply**, y reintentar el parenting. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Weight Paint manual:** Seleccionar el mesh, cambiar a **Weight Paint** mode (en el menú superior). En el panel **Vertex** (lado derecho), seleccionar el hueso problemático. Usar el **Add** brush (en **Brush** settings) y pintar de rojo las áreas que deben seguir al hueso. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Configurar Inverse Kinematics (IK):** En **Pose Mode**, seleccionar el hueso padre de la cadena (ej. antebrazo). Ir a **Bone Constraints** (icono de cadena), añadir **Inverse Kinematics**. En **Target**, seleccionar el armature; en **Bone**, elegir el hueso controlador (ej. mano). Duplicar el hueso controlador en **Edit Mode** con `Shift+D`, luego desparentar el duplicado con `Alt+P`. En el constraint, asignar el duplicado como **Bone** y ajustar **Chain Length** a 2. Fuente: "How to Rig and Animate in BLENDER!" — https://youtu.be/1khSuB6sER0
- **Pole Target para IK:** Du# DOCTRINA ACCIONABLE EN ESPAÑOL NEUTRO

## 1) Modelado (mesh, modificadores Bevel/Subdivision/Array, hard surface, atajos)

- **Subdivision Surface:** Añade modificador **Subdivision Surface** con `Ctrl+3`. Ajusta **Viewport Levels** y **Render Levels** (ej. 3). Para bloqueo inicial usa nivel 2; increméntalo a 3 o más cuando necesites más detalle. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Bevel por peso:** En Edit Mode, selecciona arista con crease, `Shift+G > Crease` para seleccionar todas las creases. `Ctrl+E > Edge Bevel Weight`, asigna valor **1**. Añade modificador **Bevel**, establece **Limit Method > Weight**, activa **Shading > Harden Normals**. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Pin de modificadores (Blender 4.2+):** Para mirror sin pinching, selecciona modificador **Bevel**, haz clic en el pin **Pin to Last** (icono de chincheta). Haz lo mismo con **Subdivision Surface**. Luego añade **Mirror** modifier: ocurrirá antes en la pila. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Mirror con Clipping:** Añade modificador **Mirror**. Activa solo eje deseado (ej. Y). Activa **Clipping** y **Merge** para que los vértices en el eje de simetría se fusionen al acercarlos. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Bevel aristas:** `Ctrl+B`, arrastrar para ajustar ancho. Parámetros del modificador: **Segments: 2**. Si da resultados extraños, cambiar **Offset** a **Percent**. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Loop Cut:** `Ctrl+R`. En modo amarillo, rueda del mouse para múltiples cortes. Clic para confirmar posición, luego deslizar y clic de nuevo. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Inset:** `I`. Para inserciones individuales por cara: en el popup, marcar **Individual**. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Extruir:** `E`. Para cancelar movimiento sin deshacer extrusión: `Escape` (deja aristas duplicadas en su lugar). (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Seleccionar loop de aristas/caras:** `Alt` + clic izquierdo sobre una arista/cara. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Merge por distancia:** `M` → **By Distance**. Verificar en popup cuántos vértices se eliminaron. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Grid Fill:** `F3` → escribir "Grid Fill". Ajustar **Offset** y probar **Simple Blending** on/off. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Shade Auto Smooth:** Clic derecho sobre el objeto → **Shade Auto Smooth**. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **MatCap + Cavity (vista de modelado):** Desplegable de shading (esfera) → **MatCap** → en el mismo menú, activar **Cavity** → tipo **Both** → subir **Valley** al máximo. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Recalcular normales:** En Edit Mode, `A` para seleccionar todo → Mesh → Normals → **Recalculate Outside**. (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Face Orientation (depuración):** Menú desplegable de overlays (esfera con círculos) → **Face Orientation** (caras azules = correctas, rojas = invertidas). (CBaileyFilm — https://youtu.be/SVl_tlbGrh4)
- **Shift+G > Face Angles:** Para seleccionar automáticamente aristas con bordes duros antes de aplicar creases con `Shift+E`. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Crease en aristas:** Selecciona arista, `Shift+E` para crear crease. Para aristas sin crease, selecciona el loop con `Alt+clic izquierdo`, `Shift+E` y arrastra a -1. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Cables con curvas:** `Shift+A > Curve > Bezier`. En Edit Mode, selecciona todo (`A`), elimina vértices (`X > Delete Vertices`). Activa **Draw Mode** (icono de lápiz en la barra superior). En vista ortográfica (tecla **5** del teclado numérico), activa snap a vista (`Shift+Tab` para snap, elige **Face** y **Align Rotation to Target**). Dibuja la curva desde el cursor. En Edit Mode, activa **Surface** en la barra superior para dibujar sobre geometría existente. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Uniones en ángulo recto:** Ten dos cilindros unidos como un solo objeto (`Ctrl+J`). Selecciona las aristas de los extremos, clic derecho > **Bridge Edge Loops**. Ajusta **Number of Cuts** (ej. 5) y **Smoothness**. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Shrinkwrap + Data Transfer para piezas pegadas:** Asegura que el origen del objeto esté en la base: en Edit Mode, selecciona el loop inferior con `Alt+clic izquierdo`, `Shift+S > Cursor to Selected`. En Object Mode, **Object > Set Origin > Origin to 3D Cursor**. En snap options, activa **Face** y **Align Rotation to Target**. Mueve con `G`, mantén `Ctrl` para snap. En Edit Mode, selecciona los polígonos exteriores, ve a **Vertex Groups** (pestaña de datos del objeto), crea nuevo grupo, **Assign**. Añade modificador **Shrinkwrap**, target = objeto base, **Vertex Group** = el creado. Duplica con `Shift+D`. Añade modificador **Data Transfer**, source = objeto base, expande **Face Corner Data > Custom Normals**, método **Nearest Face Interpolated**. Activa **Vertex Group** para aislar el efecto. Selecciona los demás objetos, luego el que tiene Data Transfer, y en el menú desplegable del modificador elige **Copy to Selected**. (CG Boost — https://youtu.be/Ml2t8uxPAQU)
- **Proportional Editing:** `O` para activar. Presionar `G` y usar scroll para ajustar el radio de influencia (círculo blanco). (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **X-Ray:** `Shift+Z` para activar (ver a través del objeto). (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Edge Slide:** `G+G` (doble G) para deslizar aristas a lo largo del tronco. (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Randomize:** En el panel lateral (tecla `N`), buscar la herramienta "Randomize" (dentro del menú Smooth, mantener presionado y arrastrar). Usar con mucha sutileza. (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Rellenar borde con cara:** Seleccionar el borde de aristas, presionar `F` para rellenar con una cara. (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Remesh (modificador):** Add Modifier → Remesh. Ajustar **Voxel Size** para controlar resolución. Opciones: Voxel, Smooth, Blocks (estilo Minecraft). Aplicar con `Ctrl+A` sobre el modificador. (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Triangulate:** Add Modifier → Generate → Triangulate. Aplicar igual. (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Mark Sharp:** En Edit Mode seleccionar aristas, `Ctrl+E` → "Mark Sharp". (SmartyRBX — https://youtu.be/W337AL7n3dc)
- **Esculpido - Subdivision Surface al cubo:** Añade un modificador **Subdivision Surface** al cubo con nivel **2**, luego aplícalo (`Ctrl+A`) para obtener geometría base. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Espejado en X:** Activa el **espejado en X** en el menú de herramientas de Sculpt Mode (icono de espejo) para que los cambios se reflejen en ambos lados. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Herramienta Grab:** Tecla **G** para estirar la forma general; ajusta el radio del pincel con **F** y moviendo el ratón izquierda/derecha. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Smooth temporal:** Mantén **Shift** y haz clic con cualquier herramienta de escultura (activa el Smooth Brush). (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Remesh en Sculpt Mode:** Usa la opción **Remesh** en la barra superior. Comienza con **0.05** de resolución, desactiva **Face Sets**, haz clic en **Remesh**. Si es poco detalle, deshaz (`Ctrl+Z`) y prueba **0.02** o **0.01**. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Apply Scale:** En Object Mode, presiona `N` para abrir el panel Item, verifica que los valores de Scale sean 1. Si no, presiona `Ctrl+A` > Apply > Scale. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Draw Sharp:** Mantén **Ctrl** para invertir la dirección. Activa **Stabilize Stroke** en el menú Stroke de la barra superior para trazos suaves. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Pinch:** Herramienta para afinar la línea de la boca. (Keelan Jon — https://youtu.be/HJSGoKbNBnQ)
- **Esculpido - Icosphere base:** `Shift+A` > Mesh > Icosphere, en el panel de ajustes sube **Subdivisions** a 7 para obtener una malla densa. (Ryan King Art — https://youtu.be/Lxem4yMs5Dg)
- **Esculpido - Pinceles esenciales:** Draw (`V`), Clay Strips, Crease, Smooth, Inflate, Scrapes, Grab (`G`), Snake Hook. (Ryan King Art — https://youtu.be/Lxem4yMs5Dg)
- **Esculpido - Dyntopo:** Actívalo marcando el check en el panel superior (junto a Dyntopo). Ajusta **Detail Size** (menor número = más detalle). Usa **Relative Detail** (por defecto) o cambia a **Constant Detail**. (Ryan King Art — https://youtu.be/Lxem4yMs5Dg)
- **Esculpido - Front Faces Only:** En el menú desplegable del pincel (junto a Brush Settings), marca **Front Faces Only** para evitar que el pincel afecte la cara posterior de la malla. (Ryan King Art — https://youtu.be/Lxem4yMs5Dg)
- **Esculpido - Stroke settings:** En el panel de pincel > **Stroke**, cambia el método: **Space** (ajusta **Spacing**) o **Line** (clic y arrastra para línea recta). (Ryan King Art — https://youtu.be/Lxem4yMs5Dg)

## 2) Shading y materiales (Principled BSDF, nodos, PBR, Cycles vs Eevee)

- **Crear material:** Selecciona el objeto, ve al panel **Material Properties** (icono de esfera roja), presiona **New**. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Múltiples materiales en un objeto:** En **Material Properties**, presiona **+** para añadir un slot, crea o selecciona el material, entra en **Edit Mode** (`Tab`), selecciona las caras deseadas, elige el material en el slot y presiona **Assign**. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Node Wrangler:** Actívalo en **Edit > Preferences > Add-ons**, busca "node wrangler" y marca la casilla. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Cortar conexiones (Node Wrangler):** Presiona `Ctrl + clic derecho` y arrastra cortando las líneas. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Aislar contribución de nodo (Node Wrangler):** Presiona `Ctrl+Shift` y haz clic sobre el nodo. Para restaurar, `Ctrl+Shift` clic sobre el nodo shader final. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Auto Mapping (Node Wrangler):** Selecciona un nodo de textura y presiona `Ctrl+T` para añadir automáticamente nodos **Mapping** y **Texture Coordinate**. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Agrupar nodos:** Selecciona varios nodos y presiona `Ctrl+J`. Para editar el grupo, selecciona el grupo y presiona `Tab`. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **ColorRamp:** Añade el nodo **ColorRamp** (`Shift+A > Converter > ColorRamp`), conecta la salida de la textura a su entrada **Factor**, y la salida **Color** al socket deseado. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Mix Shader:** Añade un nodo **Mix Shader** (`Shift+A > Shader > Mix Shader`). Conecta los dos shaders a los sockets **Shader** verde superior e inferior. El **Factor** (gris, 0-1) controla la mezcla: 0 = 100% shader superior, 1 = 100% shader inferior. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Mix RGB:** Añade un nodo **Mix RGB** (`Shift+A > Color > Mix RGB`). Conecta las entradas de color **A** y **B**, ajusta el **Factor** y elige el **Blend Mode** (Mix, Add, Multiply, etc.). (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Mapping + Texture Coordinate:** Añade **Mapping** (`Shift+A > Vector > Mapping`) y **Texture Coordinate** (`Shift+A > Input > Texture Coordinate`). Conecta la salida **Object** o **Generated** de Texture Coordinate al socket **Vector** de Mapping, y la salida **Vector** de Mapping al socket **Vector** de la textura. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Volumen en objeto:** Elimina el nodo Principled BSDF, añade un shader de volumen (ej. **Principled Volume** en `Shift+A > Shader`) y conéctalo al socket **Volume** del **Material Output**. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **Animación de textura procedural:** Cambia el tipo de dimensión a **4D** en el nodo de textura (ej. Noise Texture, Musgrave Texture), y keyframe el valor **W**. (Brandon 3D — https://youtu.be/Wg244y2f9Fw)
- **PBR - Non-Color Data:** En los nodos Image Texture de metallic, roughness, normal y height, cambia el espacio de color a **Non-Color Data**. (CGMatter — https://youtu.be/a5KOdVft93E)
- **PBR - Conexión Normal + Height:** `Shift+A > Vector > Bump`. Conecta la imagen height al socket **Height** del Bump. `Shift+A > Vector > Normal Map`. Conecta la imagen normal al socket **Color** del Normal Map. Conecta el socket **Normal** del Normal Map al socket **Normal** del Bump. Conecta el socket **Normal** del Bump al socket **Normal** del Principled BSDF. (CGMatter — https://youtu.be/a5KOdVft93E)
- **PBR - Escalar texturas (tiling):** Conecta el socket **UV** de Texture Coordinate al socket **Vector** de Mapping. Conecta el socket **Vector** de Mapping al socket **Vector** de cada Image Texture. En el nodo Mapping, ajusta los valores **Scale** (X, Y) para duplicar o triplicar el número de tiles. (CGMatter — https://youtu.be/a5KOdVft93E)
- **PBR - Intensidad del Bump:** En el nodo Bump, modifica el parámetro **Strength** (valor 1 por defecto; reduce o aumenta según la textura). (CGMatter — https://youtu.be/a5KOdVft93E)
- **PBR - HDRI para iluminación:** En el editor Shading, cambia a **World**. `Shift+A > Texture > Environment Texture`. Conéctalo al socket **Surface** del World Output. Carga un archivo .hdr. (CGMatter — https://youtu.be/a5KOdVft93E)
- **Vertex Paint - Material:** En el espacio **Shading**, añade un material nuevo al objeto. Presiona `Shift+A` > **Attribute**, selecciona **Color Attribute** y elige el nombre del atributo de color que pintaste. Conecta la salida **Color** del nodo Attribute a la entrada **Base Color** del Principled BSDF. (Ryan King Art — https://youtu.be/Lxem4yMs5Dg)

## 3) Iluminación (HDRI, three-point, area/sun lights, world)

- **Configuración inicial de luces:** Mueve el 3D cursor al centro del producto: selecciona el producto, presiona `Shift+S` y elige "Cursor to Selected". Cambia el pivot point a "3D Cursor" en el menú superior. (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Luz trasera (highlights):** Agrega un **Area Light** (`Shift+A > Light > Area`). Colócalo detrás del producto. Aumenta la intensidad (Power) a un valor moderado (ej. 500-1000 W). (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Luz lateral dura:** Duplica la luz trasera (`Shift+D`). Presiona `R` dos veces (`R+R`) para rotar libremente alrededor del producto. Colócala en un lado. Reduce la intensidad (ej. 200-400 W). Reduce el **Spread** del area light (en Object Data Properties > Light > Spread) a un valor bajo (ej. 15-30°). (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Luz lateral suave:** Duplica la luz lateral dura. Rota 180° (presiona `R`, luego escribe `180` y Enter). Aumenta el **Spread** a un valor alto (ej. 80-120°). (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Reflejos en productos brillantes (no vidrio):** En el Shader Editor, agrega un **Image Texture** (`Shift+A > Texture > Image Texture`). Carga una imagen de estudio. Conecta el color del Image Texture al **Base Color** de un **Principled BSDF** (o directamente a un **Emission** si es para reflejo). (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Iluminación de vidrio (planos con emisión):** Agrega un **Plane** (`Shift+A > Mesh > Plane`). Colócalo detrás del producto. En el Shader Editor, elimina el Principled BSDF. Agrega un **Emission** node (`Shift+A > Shader > Emission`) y conéctalo al **Material Output**. Ajusta la **Strength** (ej. 10-30 W). Para ocultar el plano del render: selecciona el plano, ve a **Object Properties** > **Visibility** > desmarca **Camera** (Ray Visibility > Camera). (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Gradiente en vidrio:** Duplica el plano trasero. Crea nuevo material: agrega **Emission**, **Gradient Texture** (`Shift+A > Texture > Gradient Texture`), **Texture Coordinate** y **Mapping**. Conecta: Texture Coordinate > Mapping > Gradient Texture > Color Ramp > Emission > Material Output. En el **Color Ramp**, cambia el tipo a **Spline**. Ajusta los controles deslizantes. Rota el gradiente con los valores de rotación del Mapping node (ej. Rotation Z = 180°). (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **Light Linking:** Selecciona una luz. Ve a **Object Data Properties** (icono de luz verde). En la sección **Light Linking**, haz clic en **New**. Arrastra los objetos que deseas que reciban esa luz al campo "Light Links". (Extra 3d — https://youtu.be/WreZ_VKDn4M)
- **HDRI en World:** En el editor Shading, cambia a **World**. `Shift+A > Texture > Environment Texture`. Conéctalo al socket **Surface** del World Output. Carga un archivo .hdr. (CGMatter — https://youtu.be/a5KOdVft93E)

## 4) Geometry Nodes

- **Crear sistema Geometry Nodes:** Haz clic en **New** en la pestaña **Geometry Nodes**; se añade automáticamente el modificador **Geometry Nodes** en el stack de modificadores. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Distribute Points on Faces:** `Shift+A > Points > Distribute Points on Faces`. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Instance on Points:** Añade el nodo **Instance on Points** después de **Distribute Points on Faces** y conecta un objeto en su entrada **Instance**. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Object Info:** Arrastra un objeto desde el Outliner al editor de nodos para generar automáticamente un nodo **Object Info** con ese objeto referenciado. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Join Geometry:** `Shift+A > Search > "Join Geometry"` para combinar múltiples entradas de geometría en una sola salida. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Random Value para rotación:** Usa el nodo **Random Value** (`Shift+A > Utilities > Random Value`) en modo **Vector** y conéctalo a **Rotation** del nodo **Instance on Points**. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Random Value para escala:** Usa **Random Value** en modo **Float** y conéctalo a **Scale** del nodo **Instance on Points**; evita que el mínimo sea 0. (Blender Guru — https://youtu.be/aO0eUnu0hO0)
- **Pin en editor de nodos:** Activa el icono de **pin** (alfiler) en la cabecera del editor de nodos para fijarlo a un objeto específico. (Blender Guru — https://youtu.be/aO0eUnu0hO0)

## 5) Rigging y animación (armature, weight paint, keyframes, graph editor)

- **Auto IK en Mixamo:** Actívalo, selecciona un hueso, presiona **G** para moverlo y usa la **rueda del ratón** para cambiar la longitud de la cadena. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Entrar a Pose Mode:** Selecciona el Armature y cambia a Pose Mode desde el menú, o presiona `Ctrl+Tab`. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Transformar huesos:** Presiona **G** (mover), **R** (rotar), **S** (escalar). Para rotación trackball presiona **R** dos veces. Para transformar en un eje específico: **G + X** (eje X global), **R + Y + Y** (eje Y local). (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Cambiar punto de pivote a Individual Origins:** Presiona **.** (punto) o usa el menú desplegable. Útil para rotar cadenas de huesos (dedos, colas). (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Insertar keyframes:** Con un hueso seleccionado, presiona **I** y elige entre Location, Rotation, Scale o LocRotScale. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Copiar/pegar poses:** Selecciona huesos, presiona `Ctrl+C` para copiar, `Ctrl+V` para pegar, `Ctrl+Shift+V` para pegar invertido. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Breakdowner tool:** Haz clic y mantén presionado el botón de herramienta para acceder a Push y Relax. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Motion Paths:** En Object Data Properties, selecciona huesos y presiona **Calculate**. Para actualizar, presiona **Update Path** (no se actualiza en tiempo real). (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Navegar entre keyframes:** Usa las teclas **Flecha arriba** y **Flecha abajo**. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Dope Sheet:** Cambia una ventana a Dope Sheet. Activa el botón de "bus" para ver todos los keyframes sin tener el hueso seleccionado. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Graph Editor:** Desde Dope Sheet o Timeline, presiona `Ctrl+Tab`. Usa clic y arrastra para box select. Enfoca puntos seleccionados con **.** (teclado numérico) o **`** (back tick). Activa **Normalize** para escala -1 a 1. Oculta canales con **H**, aísla con `Shift+H`, restaura todo con `Alt+H`. Presiona **N** para añadir modificadores (Noise, Cycle). (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Interpolación en Graph Editor:** Presiona **T** para cambiar modo de interpolación (Bezier, Back, etc.). Cambia easing type con `Ctrl+E` (elige Ease In and Out). Con Bezier, cambia handle type con **V**. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Action Editor:** En Dope Sheet, cambia a Action Editor. Renombra acciones, haz clic en el ícono de escudo para guardar. Crea nueva acción con el botón "+" (duplica la actual) o presiona **X** y elige **New**. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Auto Keying:** Activa el botón de auto keying. Al mover/rotar/escalar, se inserta keyframe automáticamente. Para grabación en tiempo real, presiona **Espacio** y mueve el Armature. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Keying Sets:** En Timeline, usa el menú desplegable **Keying** para elegir canales. Usa la flecha para que Auto Keying solo afecte esos canales. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Suavizar curvas en Graph Editor:** Selecciona puntos y presiona `Alt+O`. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Pose Library:** En Pose Mode, selecciona huesos, presiona **F3** y busca **Create Pose Asset**. Abre el panel **N** > pestaña **Animation** para ver y arrastrar poses (arrastra entre dos para blendear). También desde Asset Browser. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Wiggle Bones 2 (add-on):** En Pose Mode, selecciona un hueso, presiona **N** > pestaña **Animation** y actívalo. Elige **Head** (base) o **Tail** (punta). Ajusta **Stiffness** (menor valor = más movimiento). Añade colisión seleccionando un objeto o colección. Para renderizar, hornea con **Bake Action** (abajo) o duplica la acción, presiona **F3** > **Bake Action**, marca **Visual Keying** y **Overwrite Current Action**. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)
- **Video referencia:** Arrastra el video directamente a la vista 3D. Para ajustar frame range o start point, selecciona el objeto imagen y ve a **Object Data Properties**. (Joey Carlino — https://youtu.be/GAIZkIfXXjQ)

## 6) Rendering y optimización (samples, denoise, GPU, tiles)

- **Liberar VRAM:** Abre el Administrador de tareas con `Control + Shift + Escape` y monitorea el gráfico de VRAM. Si se llena y crash, reduce texturas: en el outliner activa "Data API" view para ver imágenes, luego redimensiona las más pesadas a 1K (usa el add-on "Optimize Tools" para seleccionar y presionar "Resize"). (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Renderizar por view layers:** Crea view layers separados (pestaña "View Layer") para dividir la escena en profundidades (fondo, primer plano) y renderiza una capa a la vez. (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Ajustar noise threshold:** En las propiedades de render (pestaña "Render"), baja el valor de "Noise Threshold" (ej. 0.1, 0.05, 0.01). Alternativa: activa "Scrambling Distance" en automático y baja el slider. (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Reducir ray bounces:** En "Render Properties > Light Paths > Max Bounces", baja el número (ej. de 12 a 4). (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Temporal denoising:** En "Render Properties > Denoising", selecciona "Temporal" en vez de "OpenImageDenoise" para reducir el "boiling" en animaciones. (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Upscaling e interpolación:** Reduce la resolución a la mitad (ej. 1920x1080 → 960x540) para reducir el tiempo de render por factor de 4. Para animaciones, renderiza solo fotogramas pares e interpola los impares. (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Persistent Data:** En "Render Properties > Performance > Memory", marca "Persistent Data" para mantener archivos en RAM entre fotogramas. (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Diagnosticar ruido excesivo:** Usa la herramienta de anotación (Annotation tool) para rodear áreas ruidosas. Crea un nuevo view layer con "Material Override" (un material blanco simple) en "View Layer Properties > Override". Si el ruido desaparece, el problema son materiales; si persiste, son luces. (Robin Squares — https://youtu.be/MzJ-w6Zmpco)
- **Aislar luces con Light Groups:** En "View Layer Properties > Light Groups", crea grupos. Luego, en el panel de objeto de cada luz (pestaña "Object Data" > "Light Groups"), asigna la luz a un grupo. (Robin Squares — https://youtu.be/MzJ-w6Zmp# DOCTRINA ACCIONABLE EN ESPAÑOL NEUTRO

## 1) Modelado (mesh, modificadores Bevel/Subdivision/Array, hard surface, atajos)

- **Añadir Subdivision Surface:** presiona `Ctrl+2` para añadir 2 niveles de Subdivision Surface rápidamente sin navegar menús. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Bevel de bordes:** seleccionar aristas → `Ctrl+B`; arrastrar para ajustar; rueda del mouse para cambiar número de segmentos; `P` para cambiar perfil (shape). (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Bevel modifier con Harden Normals:** añadir modificador **Bevel** → desplegar **Shading** → marcar **Harden Normals** para bordes nítidos sin degradado suave. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Desmarcar Clamp Overlap en Bevel:** desmarcar **Clamp Overlap** y reducir Amount manualmente cuando el biselado no afecta bordes internos por geometría pequeña. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Loop Cut:** `Ctrl+R` para añadir loop cuts; usar scroll del mouse para aumentar el número de cortes antes de hacer clic para confirmar. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Extruir:** `E` para extruir caras; combinar con eje: `E+Z` para extruir verticalmente. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Mover (Grab):** `G` para mover la selección; combinar con eje: `G+X`, `G+Y`, `G+Z`. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Escalar:** `S` para escalar; combinar con eje: `S+X`, `S+Y`, `S+Z`. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Rotar:** `R` para rotar; combinar con eje: `R+X`, `R+Y`, `R+Z`. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Duplicar linked (instancia):** `Alt+D` en lugar de `Shift+D` cuando necesites múltiples copias que compartan datos de malla. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Aplicar rotación/escala:** `Ctrl+A` → **Rotation & Scale** antes de añadir modificadores como Bevel o Shrinkwrap para evitar deformaciones por escala no uniforme. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Grid Fill:** seleccionar bucle de aristas → clic derecho → **Grid Fill** (o desde Face → Grid Fill); ajustar Span y Offset. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Proportional Editing:** `O` key; cambiar falloff a **Sphere**; seleccionar vértice/face y arrastrar. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Auto Merge y snapping:** activar **Auto Merge** en el header; cambiar snapping a **Vertex** (icono de imán); `G+G` para edge slide y `Ctrl` para forzar snap. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Shade Smooth:** clic derecho sobre el objeto → **Shade Smooth**; luego activar **Auto Smooth** en el panel de propiedades del objeto (pestaña verde triángulo) para controlar el ángulo de suavizado. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Crear crease:** seleccionar edge loops → `Shift+E` y arrastrar. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Separar selección:** en Edit Mode, `P` → **Selection**. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Join objects:** seleccionar múltiples objetos → `Ctrl+J`. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Bridge Faces:** seleccionar dos caras → clic derecho → **Bridge Faces**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Inset:** `I`. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Escalar a 0 en eje:** seleccionar bordes → `S` → `X` → `0`. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Añadir Solidify:** modificador **Solidify** → marcar **Even Thickness**; arrastrar arriba de Subdivision Surface en el stack. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Shrinkwrap:** modificador **Shrinkwrap** → Target: objeto → Method: **Project** → activar eje (X o Y) → Vertex Group: grupo creado previamente. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Crear Vertex Group:** en Edit Mode, seleccionar caras → panel **Vertex Groups** → `+` → **Assign**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Bool Tool:** seleccionar cutter → `Ctrl+Shift+B` → elegir **Brush Boolean → Slice**; luego reordenar Bevel debajo del Boolean en el stack. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Loop Tools - Circle:** seleccionar bucle de aristas → clic derecho → **LoopTools → Circle**. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Aplanar en eje:** `S` → `Y` → `0` → Enter. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Seleccionar arista completa (edge loop):** `Alt+clic` en una arista para seleccionar todo el loop. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Seleccionar pieza conectada:** `L` para seleccionar todo el elemento conectado bajo el cursor. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Añadir objetos:** `Shift+A` → **Mesh** para añadir primitivas: Plane, Cube, Circle, UV Sphere, Icosphere, Cylinder, Cone, Torus. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Ajustar número de vértices al añadir:** antes de hacer clic para colocar el objeto, usar el panel desplegable en la esquina inferior izquierda (o `F9`) para modificar parámetros como **Vertices**. (RoBuilder — https://youtu.be/peSv5IT5Ve4)
- **Subdivision Surface simple:** modificador **Subdivision Surface → Simple** cuando solo necesites más geometría para otro modificador sin suavizar. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Bevel vértices:** seleccionar vértices → clic derecho → **Bevel Vertices**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Deslizar borde:** seleccionar cara → `G` dos veces. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Escalar selección desde centro:** `Alt+S`. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Rellenar agujero:** seleccionar bordes superior e inferior → `F`. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Extruir caras por normales:** seleccionar caras → `Alt+E` → **Extrude Faces Along Normals**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Aislar objeto:** `/` (forward slash). (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Mover 3D Cursor a selección:** `Shift+S` → **Cursor to Selected**. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Reset transform de hijo:** `Alt+R`, `Alt+G`. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Curve modifier para deformar:** seleccionar objeto → modificador **Curve** → seleccionar la curva objetivo con el eyedropper; luego seleccionar objeto y curva → `Ctrl+P` → **Curve Deform**. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Spring (resorte):** activar add-on **Add Curve: Extra Objects** en Edit → Preferences → Add-ons; `Shift+A` → **Curve → Curve Spirals → Archimedean**; ajustar Turns, Height, Radius; en Geometry de la curva, ajustar Depth. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Decimate modifier:** añadir modificador **Decimate** → ajustar **Ratio** a **0.1** (reduce 90% de polígonos); en objetos curvos brillantes, aplicar **Auto Smooth** después (Object Data Properties → Normals → Auto Smooth). (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Aplicar Decimate con relación 0.45:** cuando tengas mallas densas innecesarias; con `Shift+clic` seleccionar otros objetos, `Ctrl+L` → **Vincular modificadores** para copiarlo. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)

## 2) Shading y materiales (Principled BSDF, nodos, PBR, Cycles vs Eevee)

- **Importar texturas manualmente:** `Shift+A` → **Image Texture** → botón **Open** para seleccionar el archivo, o arrastra y suelta la imagen desde el explorador de archivos directamente al Shader Editor. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Configurar mapas no-color:** para mapas de reflexión, rugosidad, normal y desplazamiento, cambiar el desplegable del nodo **Image Texture** de **sRGB** a **Non-Color**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Añadir nodos de mapeo automáticamente:** seleccionar un **Image Texture** y presionar `Ctrl+T` (requiere Node Wrangler activado) para agregar automáticamente un nodo **Mapping** y un **Texture Coordinate** (configurado en UV). (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Conectar múltiples mapas al mismo Mapping:** arrastrar el conector **Vector** del nodo **Mapping** a los sockets **Vector** de todos los **Image Texture** que uses. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Invertir mapa de brillo (gloss) a rugosidad:** `Shift+A` → **Invert** y colocarlo entre el **Image Texture** del gloss y el socket **Roughness** del **Principled BSDF**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Conectar mapa normal:** `Shift+A` → **Normal Map**; conectar el **Image Texture** (Non-Color) al socket **Color** del **Normal Map**, y el socket **Normal** (púrpura) de este nodo al socket **Normal** del **Principled BSDF**; ajustar **Strength**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Conectar desplazamiento:** `Shift+A` → **Displacement**; conectar el **Image Texture** (Non-Color) al socket **Height**, y el socket **Displacement** (púrpura) al socket **Displacement** del nodo **Material Output**; ajustar **Midlevel** a **0**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Activar desplazamiento real:** en panel **Material Properties** → **Settings** → **Surface** → cambiar **Displacement** de **Bump Only** a **Displacement and Bump**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Automatizar con Node Wrangler:** seleccionar el nodo **Principled BSDF**, presionar `Ctrl+Shift+T`, navegar a la carpeta de texturas, seleccionar los mapas (color, gloss, reflection, normal, displacement) y presionar **Principled Texture Setup**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Ajustar escala del material:** en el nodo **Mapping**, modificar **Scale** (X, Y, Z); para escalar uniformemente, hacer clic en el valor superior y arrastrar hacia abajo, o `Shift+A` → **Value** y conectarlo al socket **Scale** del **Mapping**. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Ajustar UV manualmente:** ir al espacio de trabajo **UV Editing**, seleccionar todo con **A**, presionar **S** para escalar, **G** para mover, **R** para rotar la UV sin alterar el material. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Añadir control de color:** entre el **Image Texture** de color y el **Base Color**, insertar `Shift+A` → **Hue/Saturation/Value** (ajustar Hue, Saturation, Value) o **RGB Curves** (canales R, G, B y combinado). (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Usar ColorRamp en mapas B/N:** conectar un nodo **ColorRamp** (`Shift+A`) entre el **Image Texture** y el socket de rugosidad/especular para controlar reflectividad moviendo los puntos de control. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Mutear nodos:** seleccionar un nodo y presionar **M** para desactivar sus cálculos temporalmente. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Añadir Reroute:** `Shift+A` → **Reroute**, o con Node Wrangler activado, mantener **Shift** y arrastrar sobre conexiones existentes. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Ocultar sockets no usados:** seleccionar el **Principled BSDF**, ir a **Node** → **Toggle Hidden Node Sockets** o presionar `Ctrl+H`. (Brandon 3D — https://youtu.be/jBT6MD7IzHU)
- **Material de vidrio:** **Principled BSDF**: **Transmission ~1.0**, **Roughness ~0.05**; o usar **Glass BSDF** directo. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Material metálico:** **Principled BSDF**: **Metallic 1.0**, **Roughness 0.0**. (Interactiv — https://youtu.be/oOCmYxEakjs)

## 3) Iluminación (HDRI, three-point, area/sun lights, world)

- **HDRI:** **Shader Editor** → **World** → **Add** → **Texture** → **Environment Texture** → cargar archivo .hdr (ej. "large_corridor" de Polyhaven). (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Configurar HDRI sin fondo visible:** **Add** → **Shader** → **Mix Shader** → Background1 (HDRI) → Background2 (color gris oscuro) → Factor: **Light Path** → **Is Camera Ray**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Activar AO:** **Render Properties** → marcar **Ambient Occlusion** → **Distance: 1**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Activar Bloom:** **Render Properties** → marcar **Bloom**. (CG Boost — https://youtu.be/nsTjnQ067sw)
- **Área light con plano translúcido:** `Shift+A` → **Light** → **Area**; `Shift+A` → **Mesh** → **Plane**; asignar material con **Translucent BSDF** conectado a Surface; seleccionar luz y plano → `Ctrl+P` → **Keep Transformation**. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Ray Visibility:** en **Object Properties** → **Visibility** → **Ray Visibility**, desmarcar canales (Camera, Glossy, etc.) para ocultar luces/planos del render sin eliminarlos. (Interactiv — https://youtu.be/oOCmYxEakjs)
- **Reducir iluminación del mundo:** **World Properties** → **Strength** → **0** para tener control total sobre las fuentes de luz. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Cambiar tipo de luz a área:** **Object Data Properties** → **Type** → **Area**. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Aumentar tamaño de luz para sombras suaves:** clic derecho en el light → **Size**; un tamaño grande da sombras suaves y transiciones graduales. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Ajustar potencia de la luz:** clic derecho en el light → **Power**; reajustar después de cada cambio de posición o tamaño. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Restablecer posición de luz:** `Alt+G`. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Colocar luz detrás del punto de interés:** para sombras que revelen la forma del torso, bíceps y hombros, con un borde de luz en los hombros. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Rotar el área de luz:** `R` para rotarla y evitar líneas de sombra rectas en el fondo. (Polyfjord — https://youtu.be/si7UAgvBd4Y)

## 4) Geometry Nodes

- **Crear nuevo árbol de Geometry Nodes:** seleccionar cualquier malla, curva o texto → abrir ventana Geometry Nodes → botón **New**. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir nodo Transform Geometry:** para mover/rotar/escalar geometría. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Join Geometry:** para combinar múltiples salidas de geometría. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir nodo Value:** para crear un valor numérico controlable. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Combine XYZ:** para convertir valores X, Y, Z separados en un solo vector. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir nodo Math → operación Multiply:** para escalar valores. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Exponer parámetros:** arrastrar el conector de un valor hacia el socket abierto del nodo **Group Input**. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Renombrar sockets del Group Input:** seleccionar nodo Group Input → `N` para abrir panel lateral → pestaña **Group** → doble clic en el nombre. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Configurar límites de parámetros expuestos:** en el panel Group, ajustar **Min** y **Max**. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir nodo Curve Circle:** como perfil para dar grosor a curvas. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Curve to Mesh:** para convertir curvas en malla (conectando perfil y curva principal). (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Merge by Distance:** para colapsar vértices duplicados (umbral de distancia). (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Convertir malla de vuelta a curva con Mesh to Curve.** (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Agrupar nodos:** seleccionar nodos → `Ctrl+J` → asignar color personalizado. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Resample Curve → modo Length:** para puntos equidistantes en una curva, independientemente de la posición de los manejadores Bézier. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Trim Curve → modo Factor:** (rango 0-1, funciona con cualquier escala) para recortar curvas de forma que funcione con cualquier escala. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Set Curve Radius:** antes de convertir a malla para controlar grosor variable a lo largo de la curva. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Spline Parameter → salida Factor:** para obtener valor progresivo a lo largo de la curva (0=inicio, 1=final). (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir RGB Curves:** para remapear visualmente el factor (crear punto medio en 1, extremos en 0 para efecto de taper). (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Previsualizar nodo:** `Ctrl+Shift+clic` en el nodo (requiere Node Wrangler). (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Instance on Points:** para colocar instancias en cada punto de una curva. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Collection Info:** activar **Separate Children**, **Pick Instance**, **Reset Children** para instanciar objetos individuales de una colección. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Set Position:** antes de Instance on Points para desplazar puntos antes de instanciar. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Random Value → modo Vector:** para aleatorizar posición en X, Y, Z. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Capture Attribute:** para almacenar atributos (como tilt y tangent) antes de modificarlos. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Vector Rotate:** para alinear vectores: conectar random value como vector, tangent como axis, tilt como angle. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Align Rotation to Vector → axis X, pivot Auto:** para orientar instancias a la tangente. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Duplicar Align Rotation to Vector → axis Z, pivot Y:** para incorporar tilt. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Store Named Attribute:** para guardar un atributo (ej. factor) con nombre personalizado. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Recuperar atributo con Named Attribute:** mismo nombre. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Vector Math → Distance:** para calcular distancia entre dos valores. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Usar Map Range:** para remapear valores (From Min/Max a To Min/Max). (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Añadir Set Material:** al final de cada cadena de geometría para asignar materiales. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Crear paneles en parámetros expuestos:** icono de carpetas en el panel Group → **Add Panel** → arrastrar parámetros dentro. (SharpWind — https://youtu.be/aTeLyeVO0Dc)
- **Cambiar tipo de socket a Single Value:** seleccionar en lista → marcar **Single Value** para que no espere atributos. (SharpWind — https://youtu.be/aTeLyeVO0Dc)

## 5) Rigging y animación (armature, weight paint, keyframes, graph editor)

- **Ocultar armadura:** seleccionar Armature, presionar `H`. (Polyfjord — https://youtu.be/si7UAgvBd4Y)
- **Eliminar sharp edges falsos del modelo:** `Tab` a Edit Mode, `Ctrl+E` → **Clear Sharp**. (Polyfjord — https://youtu.be/si7UAgvBd4Y)

## 6) Rendering y optimización (samples, denoise, GPU, tiles)

- **GPU rendering:** en **Edit** → **Preferences** → **System**, seleccionar **OptiX** (Nvidia), **HIP** (AMD) o **Metal** (Mac); no combinar CPU+GPU si la CPU es más lenta. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Activar GPU para Denoising y Compositor:** en la misma sección de Preferencias. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Noise Threshold:** en **Render Properties** → **Sampling** → **Noise Threshold**, cambiar el valor predeterminado de **0.01** a **0.03**; subir a **0.1** en escenas simples. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Max Samples:** bajar a **1000** o **2000** en lugar de 4096; el denoising compensa la calidad. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Min Samples:** subir a **20** para que todas las partes de la imagen reciban muestras mínimas. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Persistent Data:** en **Render Properties** → **Performance** → **Final Render**, activar **Persistent Data** para animaciones o renders por lotes; almacena BVH, shaders y geometría en memoria para reutilizar entre fotogramas. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Camera Culling:** en **Render Properties** → **Simplify**, activar **Camera Culling**; luego seleccionar todos los objetos, ir a **Object Properties** → **Ray Visibility**, mantener presionado **Alt** y activar **Use Camera Culling** para aplicar a todos. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Indirect Light Clamping:** en **Render Properties** → **Light Paths** → **Clamping**, reducir **Indirect Light Clamping** a un valor bajo (ej. 1-3) cuando tengas fireflies en vidrios/líquidos. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Simplificar vidrio:** para ventanas o vidrios finos, seleccionar el objeto, ir a **Object Properties** → **Ray Visibility** y desmarcar **Shadow**. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Fast GI Approximation:** en **Render Properties** → **Light Paths** → **Fast GI Approximation**, activarlo y ajustar el número de bounces (ej. **2**) para escenas interiores con iluminación indirecta. (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Texturas 4K en lugar de 8K:** usar el add-on **Polygon** y en sus preferencias fijar **Default Texture Size** a **4K**; si ya tienes texturas grandes, en **Render Properties** → **Simplify** activar **Texture Limit** (ej. 4096x4096). (Blender Guru — https://youtu.be/kIW648Cfo18)
- **Simplify:** en **Render Properties** → **Simplify**, activar **Simplify**; poner **Subdivisión máxima** en **1** (desde 6); poner **Límite de texturas** en **2048x2048**. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)
- **Light Paths (Max Bounces):** en **Render Properties** → **Light Paths**, reducir **Máx. rebotes** a **5** (desde 12); ajustar **Transparente** a 4 o 5 para vidrio. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)
- **Formato de salida:** en **Propiedades de Salida** → **Formato**, elegir **OpenEXR**; Precisión: **Half**; Compresión: **DWAA**; desmarcar **Alpha** si no se necesita. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)
- **Render resolution:** en **Propiedades de Salida** → **Dimensiones**, reducir **Porcentaje de resolución** a **50%** si planeas superescalar con flujo óptico en postproducción. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)
- **Denoising en Compositor:** en **View Layer Properties** → **Passes**, activar **Denoising Data**; en el Compositor, añadir nodo **Denoise** (OpenImageDenoise), poner **Quality: High** y **Accurate**; conectar los sockets **Image**, **Albedo** y **Normal**; activar **HDR** si trabajas con imágenes HDR. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Compositor GPU:** en **Render Properties** → **Performance** → **Compositor**, seleccionar **GPU** si tienes una GPU rápida. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Light Tree:** en **Render Properties** → **Light Paths**, desactivarlo si la escena tiene **menos de 10 luces**; activarlo para docenas/cientos de luces. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Animated Noise Seed:** en **Render Properties** → **Advanced**, activarlo para que el patrón de ruido varíe por frame y mejore el denoising en animaciones. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Instancias de colección:** reemplazar objetos duplicados idénticos con instancias usando `Shift+A` → **Collection Instance** para evitar que Blender cargue datos duplicados. (Kaizen — https://youtu.be/pkICXEWc1kM)
- **Culling:** en **Propiedades de Render** → **Capas de vista** → **Recortar**, activar **Recorte de distancia** y **Recorte de cámara** para descartar geometría fuera del campo de visión. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)
- **Clean up:** Archivo → **Limpiar** → **Datos no utilizados** y **Recursivo** para eliminar datos huérfanos. (CGMatter — https://youtu.be/kYOsR9Kb8Ek)
- **Hair particles:** en **Propiedades de Partículas** → **Curvas**, reducir **Subdivisiones de curva** a 2 o 3 (desde 5). (CGMatter — https://youtu.be/kYOsR9Kb8Ek)

## 7) Estilizado y toon/NPR

- **Crear shader cel/toon base:** `Shift+A` → **Shader** → **Diffuse BSDF**, luego `Shift+A` → **Converter** → **Shader to RGB**, luego `Shift+A` → **Converter** → **ColorRamp** (modo **Constant**); conectar: Diffuse BSDF > Shader to RGB > ColorRamp > Material Output Surface. (Comfee Mug — https://youtu.be/uCplB3zvQks)
- **Agregar sol (Sun) para toon:** **Strength = 3** y **Angle = 20** en las propiedades de luz. (Comfee Mug — https://youtu.be/uCplB3zvQks)
- **Shader que reacciona a luces de colores:** duplicar el **ColorRamp** (`Shift+D`); agregar `Shift+A` → **Color** → **Mix Color** (modo **Hue**); conectar el segundo ColorRamp (con stops negro y blanco) al segundo input del Mix Color, y el primer ColorRamp al primer input; el output del Mix Color va al Material Output. (Comfee Mug — https://youtu.be/uCplB3zvQks)
- **Corregir solapamiento en bordes de luz coloreada:** copiar la posición del stop de color original y sumarle **0.3 a 0.35** en el primer ColorRamp. (Comfee Mug — https://youtu.be/uCplB3zvQks)
- **Reducir el efecto de la luz coloreada:** bajar el valor (Value) del stop blanco