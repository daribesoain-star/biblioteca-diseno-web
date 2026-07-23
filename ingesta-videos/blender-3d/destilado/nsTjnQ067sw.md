# Blender Hard-Surface Modeling Fundamentals #b3d #tutorial
**Fuente:** CG Boost | https://youtu.be/nsTjnQ067sw

## Qué enseña (2-3 líneas)
Tutorial práctico de modelado hard-surface en Blender vanilla (sin addons de pago) usando modificadores, subdivisiones y técnicas no destructivas. Construye un robot-copa desde un concept sketch, aplicando flujo de trabajo low-poly con resultados high-poly mediante Subdivision Surface, Bevel y Shrinkwrap.

## Técnicas accionables
- Activar addon: **Edit → Preferences → Add-ons → buscar "Extra" → activar "Add Mesh: Extra Objects"**
- Activar addon Bool Tool: **Edit → Preferences → Add-ons → buscar "bool" → activar "Bool Tool"**
- Crear Quad Sphere: **Shift+A → Mesh → Round Cube → en operator preset elegir "Quad Sphere" → Subdivisions: 4**
- Seleccionar caras superiores: **3** (poly select) + **Alt+clic izquierdo** en bucle de caras → **X → Delete Faces**
- Extruir borde: **2** (edge select) + **Alt+clic izquierdo** en bucle → **E → Z** para mover vertical
- Añadir Subdivision Surface: **Ctrl+2** (atajo directo) o desde panel Modifiers → **Add Modifier → Subdivision Surface** → Viewport Level: **2**, Render Level: **2**
- Shade Smooth Auto: **clic derecho → Shade Auto Smooth**
- Añadir Solidify: **Add Modifier → Solidify** → ajustar grosor (inset)
- Añadir Bevel: **Add Modifier → Bevel** → ajustar Amount, Segments: **2** → desplegar Shading → marcar **Harden Normals**
- Duplicar objeto: **Alt+D** (linked duplicate) → **clic derecho** para soltar
- Escalar selección desde centro: **Alt+S**
- Loop Cut: **Ctrl+R** → clic para posicionar
- Separar selección: seleccionar bucle de caras con **Alt+clic izquierdo** → **Y**
- Aplicar rotación/escala: **Ctrl+A → Rotation & Scale**
- Inset: **I**
- Bridge Faces: seleccionar dos caras → **clic derecho → Bridge Faces**
- Escalar a 0 en eje: seleccionar bordes → **S → X → 0**
- Crear crease: seleccionar edge loops → **Shift+E** y arrastrar
- Añadir Bevel a bordes: seleccionar bordes → **Ctrl+B**
- Rellenar agujero: seleccionar bordes superior e inferior → **F**
- Shrinkwrap: **Add Modifier → Shrinkwrap** → Target: objeto cup → Method: **Project** → activar eje (X o Y) → Vertex Group: grupo creado previamente
- Crear Vertex Group: en Edit Mode, seleccionar caras → panel **Vertex Groups** → **+** → **Assign**
- Colocar cursor 3D: **Shift+S → Cursor to Selected** o **Shift+clic derecho** para posicionar libremente
- Añadir cilindro: **Shift+A → Mesh → Cylinder** → Vertices: **16** (o **8** para más pequeño)
- Rotar con snapping: **R → X → Ctrl** (snap 5°) → **-90**
- Grid Fill: seleccionar borde → **Ctrl+F → Grid Fill**
- Seleccionar bucle lateral: **Ctrl+Alt+clic izquierdo** → luego **Select → Select Loops → Edge Loops**
- Desmarcar Clamp Overlap en Bevel: desmarcar **Clamp Overlap** y reducir Amount
- Aislar objeto: **/** (forward slash)
- Extruir caras por normales: seleccionar caras → **Alt+E → Extrude Faces Along Normals**
- Add Primitive Tool: seleccionar **Add Cube** en toolbar → arrastrar para forma, soltar, extruir, clic para confirmar
- Deslizar borde: seleccionar cara → **G** dos veces
- Bool Tool: seleccionar cutter → **Ctrl+Shift+B** → elegir **Brush Boolean → Slice**
- Reordenar modificadores: arrastrar Bevel debajo del Boolean en el stack
- Duplicar linked con simetría: **Alt+D** → **Ctrl+M → X** (espejar en X)
- Subdividir plano: **clic derecho → Subdivide** → en operator panel: **Number of Cuts: 10**
- Bevel vértices: seleccionar vértices → **clic derecho → Bevel Vertices**
- Subdivision Surface simple: **Add Modifier → Subdivision Surface → Simple**
- HDRI: **Shader Editor → World → Add → Texture → Environment Texture** → cargar archivo .hdr (ej. "large_corridor" de Polyhaven)
- Configurar HDRI sin fondo visible: **Add → Shader → Mix Shader** → Background1 (HDRI) → Background2 (color gris oscuro) → Factor: **Light Path → Is Camera Ray**
- Activar AO: **Render Properties → marcar Ambient Occlusion → Distance: 1**
- Bloom: **Render Properties → marcar Bloom**
- Alinear cámara: seleccionar cámara → **View → Align View → Align Active Camera to View**
- Renderizar: **F12**

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Quad Sphere** (Round Cube con preset Quad Sphere) cuando necesites una esfera con topología de quads para subdivisiones limpias.
- Usa **Ctrl+2** para añadir Subdivision Surface rápidamente sin navegar menús.
- Usa **Harden Normals** en el Bevel modifier cuando quieras bordes nítidos sin degradado suave.
- Usa **Alt+D** (linked duplicate) cuando dupliques elementos que compartirán el mismo mesh y materiales (ej. patas simétricas).
- Usa **Ctrl+A → Rotation & Scale** antes de añadir modificadores como Bevel o Shrinkwrap para evitar deformaciones por escala no uniforme.
- Usa **Shrinkwrap con Project** y un solo eje cuando quieras que solo ciertos vértices se adhieran a una superficie (ej. extremos del asa).
- Usa **Vertex Groups** para limitar el efecto del Shrinkwrap solo a las caras seleccionadas.
- Usa **Bool Tool → Brush Boolean → Slice** para cortes no destructivos con geometría separada.
- Usa **Shift+E** (crease) en bordes cuando quieras bordes duros sin añadir más geometría con loop cuts.
- Usa **Subdivision Surface en modo Simple** cuando solo necesites más geometría para otro modificador (ej. Shrinkwrap) sin suavizar.
- Usa **Mix Shader con Light Path → Is Camera Ray** para que el HDRI ilumine pero no aparezca en el fondo del render.

## Errores comunes / gotchas
- Olvidar **aplicar rotación y escala (Ctrl+A)** antes de añadir modificadores → el Bevel se aplica desproporcionadamente y el Shrinkwrap no proyecta correctamente.
- El Shrinkwrap con método **Nearest Surface Point** aplana toda la geometría contra el target; usar **Project** con un solo eje para control.
- El Bevel modifier puede no afectar bordes internos si **Clamp Overlap** está activo y la geometría es pequeña → desmarcarlo y reducir Amount manualmente.
- Al usar **Bool Tool**, el Bevel debe estar **debajo** del Boolean en el stack de modificadores para que el biselado recorra todo el borde del corte.
- La selección de edge loops laterales con **Ctrl+Alt+clic izquierdo** selecciona en dirección perpendicular; combinarlo con **Select → Select Loops → Edge Loops** para obtener el bucle completo.
- Al separar geometría con **Y**, asegurarse de que la selección de caras sea correcta (usar **Alt+clic** en poly mode).
- El Shrinkwrap no funciona si el objeto cutter tiene rotación/escala sin aplicar → aplicar **Ctrl+A** antes de usarlo.