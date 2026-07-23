# The Perfect Hard Surface Modeling tutorial for Beginners
**Fuente:** Aryan | https://youtu.be/F9y1rD3bhJg

## Qué enseña
Modelado de una bujía (spark plug) desde cero en Blender, enfocado en topología limpia y técnicas profesionales para superficies duras. Cubre desde referencias, modelado con subdivision surface, creación de roscas con el modificador Screw, hasta UV mapping básico y materiales.

## Técnicas accionables
- **Referencias:** Buscar imágenes en Google Images, guardar como fondo con **Shift+A > Image > Reference**, mover con **G+Y** hacia atrás, ajustar opacidad en Object Data Properties > Opacity. Usar PureRef para referencias secundarias (Ctrl+V para pegar, modo "Always on top").
- **Modelado base:** Eliminar cubo por defecto. **Shift+A > Mesh > Circle** (32 vértices por defecto). Extruir con **E**, escalar con **S**, mover en Z. Bevel con **Ctrl+B**, scroll para más segmentos.
- **Esfera con topología perfecta:** Añadir cubo (**Shift+A > Mesh > Cube**). Agregar modificador **Subdivision Surface** (Generate), aumentar **Levels Viewport** a 3. Agregar modificador **Cast** (Deform), **Factor** = 1, **Target Shape** = Sphere. Aplicar ambos modificadores.
- **Unir objetos:** Seleccionar ambos, **Ctrl+J** para unir. En Edge Select mode (2), seleccionar dos edge loops, **W > Bridge Edge Loops**.
- **Subdivision Surface:** **Ctrl+2** para añadir 2 niveles. Bevel aristas para afilar: **Ctrl+B**, ajustar segmentos (2) y **Profile** (1 para bordes duros, 0.5 para suaves).
- **Separar geometría:** Seleccionar cara/círculo, **P > Selection** para separar a nuevo objeto.
- **Bevel con clamping:** **Ctrl+B**, si las aristas se cruzan presionar **C** para activar clamping.
- **Limpiar vértices dobles:** Seleccionar todo con **A**, **M > Merge by Distance**.
- **Duplicar y reflejar:** Colocar 3D cursor con **Shift+S > Cursor to Selected**. **Shift+D** para duplicar, **S > Z > -1** para reflejar en Z. Corregir normales con **Shift+N**.
- **Extruir caras por normales:** Seleccionar caras, **Alt+E > Extrude Faces Along Normals**.
- **Inflar caras:** Seleccionar caras, **Alt+S** para inflar/desinflar.
- **Shade Smooth:** En Object Mode, botón derecho > **Shade Smooth**.
- **UV Mapping básico:** En Shading tab, **New** material. **Shift+A > Image Texture**, cargar imagen. Conectar **Color** a **Base Color** del Principled BSDF. En Edit Mode, seleccionar caras, **U > Unwrap**. En UV Editor, mover/rotar/escalar el UV.
- **Material metálico:** Subir **Metallic** a 1, bajar **Roughness** (~0.2).
- **Knife Tool:** **K** para activar. **C** para Cut Through. Hacer clic en vértices para cortar.
- **Screw Modifier:** Partir de un solo vértice (eliminar todos menos uno). Agregar **Screw** (Generate). Ajustar **Screw** (ej. -0.1 m), **Steps Viewport** (ej. 256), **Iterations** para largo. Aplicar.
- **Inset/Outset:** **I** para inset, **O** para outset (durante la operación).
- **Seleccionar borde de loop:** **Alt+clic derecho** en edge loop. **Ctrl+E > Mark Seam** para marcar costura.
- **Loop Tools:** Activar en Edit > Preferences > Add-ons > Loop Tools. Usar **W > Loop Tools > Relax** (Linear, iteraciones 3) para suavizar. **W > Loop Tools > G-stretch** para enderezar.
- **Grid Fill:** Seleccionar borde de agujero, **Face > Grid Fill**. Ajustar **Span**.
- **MatCap:** En Viewport Shading, cambiar de Studio a **MatCap**, elegir bola roja para detectar imperfecciones.

## Reglas para el erudito
- Usa una UV sphere con segmentos divisibles por 6 (ej. 72) y Rings = mitad de segmentos (36) cuando necesites topología limpia para formas hexagonales.
- Usa un cubo subdividido + Cast modifier en vez de UV sphere cuando necesites una esfera sin E-poles en los polos.
- Usa **Merge by Distance** después de cualquier operación que pueda crear vértices duplicados (bevel, bridge, mirror).
- Usa **Recalculate Normals (Shift+N)** después de reflejar o duplicar geometría.
- Usa **Edge Select mode** (2) en vez de Vertex Select mode cuando selecciones loops para bevel, para evitar seleccionar aristas conectoras.
- Usa **Ctrl+** para expandir selección y **Ctrl+I** para invertir selección.
- Usa **Alt+S** para inflar caras seleccionadas en lugar de escalar manualmente cuando quieras mantener la forma curva.
- Usa **MatCap** (bola roja) para inspeccionar shading artifacts en superficies curvas.

## Errores comunes / gotchas
- No confundir "Delete Vertices" con "Delete Faces": al eliminar vértices se eliminan también las aristas y caras conectadas.
- Una UV sphere tiene mala topología en los polos (E-poles) que causa artefactos con Subdivision Surface.
- Al usar el modificador Screw, la distancia de extrusión del vértice original debe coincidir exactamente con el valor **Screw** para que el hilo sea continuo.
- Al reflejar geometría con **S > Z > -1**, las normales se invierten; siempre corregir con **Shift+N**.
- Los bevels con **Profile = 1** crean bordes duros; con **Profile = 0.5** crean bordes redondeados.
- Al usar **Bridge Edge Loops**, los loops deben tener el mismo número de vértices.
- Las caras largas y delgadas (bad topology) causan artefactos con Subdivision Surface; usar loop cuts para mantener cuadrados.
- Blender puede crashear sin razón aparente; guardar el archivo frecuentemente.