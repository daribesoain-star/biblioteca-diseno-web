# The ULTIMATE Blender Modeling Guide for Noobs! (Make Assets For Games!)
**Fuente:** SmartyRBX | https://youtu.be/W337AL7n3dc

## Qué enseña
Tutorial desde cero para modelar assets low poly en Blender y exportarlos a Roblox Studio. Cubre descarga, interfaz, atajos esenciales, modelado de un árbol, texturizado con UV mapping y exportación en FBX/OBJ.

## Técnicas accionables
- **Descarga e instalación:** Ir a blender.org, hacer clic en "Download" bajo el título de la última versión, verificar que sea el archivo correcto para tu sistema (Windows/Mac/Linux, arquitectura x86/ARM), abrir el instalador y seguir el proceso.
- **Navegación en viewport:** Mantener presionado el botón central del mouse (o dos dedos en trackpad) para orbitar la vista. Shift + botón central del mouse para desplazamiento horizontal/vertical.
- **Manipulación básica de objetos:**
  - `G` para mover (grab). Click izquierdo confirma, click derecho cancela.
  - `S` para escalar (scale). Click izquierdo confirma, click derecho cancela.
  - `R` para rotar (rotate). Click izquierdo confirma, click derecho cancela.
  - Para restringir a un eje: presiona `X`, `Y` o `Z` después de `G`, `S` o `R`. Ejemplo: `R` + `Z` rota sobre el eje Z.
  - Para rotar un número exacto de grados: `R` + `X` + `180` (teclear el número) + Enter.
- **Modos de trabajo:**
  - `Tab` para alternar entre Object Mode y Edit Mode.
  - En Edit Mode: `1` para selección de vértices, `2` para aristas, `3` para caras.
  - `Shift` + clic para seleccionar múltiples elementos.
- **Modelado del árbol:**
  - En Object Mode: seleccionar cubo por defecto, presionar `X` → "Delete".
  - `Shift` + `A` → Mesh → Cylinder. Sin hacer clic, en el panel inferior izquierdo cambiar "Vertices" a `10`.
  - `Tab` a Edit Mode, `3` para selección de caras. Seleccionar cara superior, `E` para extruir, mover mouse arriba, click para confirmar.
  - `S` para escalar la nueva sección, luego `E` + `S` para extruir y escalar otra vez (forma el tronco).
  - `2` para selección de aristas, `Shift` + `Z` para activar X-Ray (ver a través del objeto). Seleccionar aristas del tronco con arrastre de caja.
  - `G` para mover aristas seleccionadas, `R` para rotarlas (dar forma natural al tronco).
  - En el panel lateral (tecla `N` si no se ve), buscar la herramienta "Randomize" (dentro del menú Smooth, mantener presionado y arrastrar). Usar con mucha sutileza.
  - `G` + `G` (doble G) para deslizar aristas a lo largo del tronco (Edge Slide).
  - Para ramas: seleccionar arista superior, `Shift` + `D` para duplicar, mover y rotar a la posición deseada, luego `E` para extruir desde ahí.
  - Si falta una cara en el extremo de la rama: seleccionar el borde de aristas, presionar `F` para rellenar con una cara (opcional, se puede omitir para ahorrar polígonos).
  - Para eliminar solo una cara: seleccionarla, `X` → "Only Faces".
  - `Ctrl` + `R` (Command + `R` en Mac) para añadir subdivisiones a una arista: pasar el mouse sobre la arista, scroll para aumentar/disminuir número de cortes, click para confirmar.
- **Hojas del árbol:**
  - `Shift` + `A` → Mesh → Icosphere. En el panel inferior izquierdo, ajustar "Subdivisions" (valor recomendado: 2).
  - Mover con `G`, escalar con `S`, duplicar con `Shift` + `D` + `S`.
  - Para deformar: `3` (selección de caras), `O` para activar Proportional Editing Mode. Presionar `G` y usar scroll para ajustar el radio de influencia (círculo blanco). Arrastrar para mover vértices con suavidad.
  - Para unir todos los objetos: `Tab` a Object Mode, `Shift` + clic en cada parte, `Ctrl` + `J` (Command + `J` en Mac) para Join.
- **Modificadores (Modifiers):**
  - En el panel de propiedades, pestaña de modificadores (llave inglesa azul).
  - **Remesh:** Add Modifier → Remesh. Ajustar "Voxel Size" para controlar resolución. Opciones: Voxel, Smooth, Blocks (estilo Minecraft). Aplicar con `Ctrl` + `A` (Command + `A` en Mac) sobre el modificador.
  - **Triangulate:** Add Modifier → Generate → Triangulate. Aplicar igual.
  - **Shade Smooth:** Click derecho sobre el objeto → "Shade Smooth". Para control fino: activar "Auto Smooth" en el panel de datos del objeto (triángulo verde). Para bordes afilados personalizados: en Edit Mode seleccionar aristas, `Ctrl` + `E` → "Mark Sharp".
- **Corrección de normales:**
  - En el menú de overlays del viewport (arriba derecha), activar "Face Orientation". Las caras azules apuntan hacia afuera (correcto), las rojas están invertidas.
  - Para corregir: en Edit Mode, `A` para seleccionar todo, `Alt` + `N` (Option + `N` en Mac) → "Recalculate Outside".
- **UV Mapping y texturizado:**
  - Cambiar a espacio de trabajo "UV Editing" (menú superior).
  - En el panel de materiales (esfera roja en propiedades): click "New", click en el punto amarillo junto a "Base Color" → "Image Texture" → "Open" → seleccionar la paleta de colores descargada.
  - En el viewport, cambiar modo de visualización a "Material Preview" (tercer ícono de esfera arriba derecha).
  - En Edit Mode, seleccionar las caras del tronco con `3` (face select). `U` → "Project from View". En el editor UV, escalar (`S`) y mover (`G`) el UV para que ocupe solo un color sólido (muy pequeño, evitando gradientes).
  - Para seleccionar las hojas: `Ctrl` + `I` (Command + `I` en Mac) para invertir selección. Reposicionar el UV sobre un color verde.
- **Exportación a Roblox:**
  - `File` → Export → `FBX` (recomendado para texturas) u `OBJ`.
  - En opciones de exportación: activar "Limit to Selected Objects" para exportar solo lo seleccionado.
  - En Roblox Studio: `File` → `Publish to Roblox` (publicar el lugar). Luego `View` → `Asset Manager` → botón "Bulk Import" → seleccionar archivo FBX. Opciones: dejar marcados "Import Textures" y "Import as Rig" (desmarcar "Import as Single Mesh" a menos que se desee un solo mesh).

## Reglas para el erudito
- Usa `Shift` + `A` para añadir mallas, no arrastres desde el panel de herramientas.
- Usa `X` para eliminar objetos o elementos, no la tecla Suprimir (puede diferir según sistema).
- Usa `Ctrl` + `Z` (Command + `Z` en Mac) para deshacer, y click derecho para cancelar una operación en curso.
- Usa `Shift` + `Z` para activar X-Ray cuando necesites seleccionar elementos ocultos detrás de la malla.
- Usa `Ctrl` + `R` para añadir subdivisiones a aristas cuando quieras curvar o doblar una sección.
- Usa `O` para activar Proportional Editing cuando deformes superficies orgánicas (hojas, nubes, terreno).
- Usa `M` para fusionar vértices seleccionados (Merge) cuando tengas geometría duplicada o anómala.
- Usa `F` para rellenar un borde de aristas con una cara cuando sea necesario cerrar un hueco.
- Usa `Alt` + `N` → "Recalculate Outside" siempre antes de exportar, para garantizar normales correctas.
- Usa FBX en lugar de OBJ cuando exportes modelos texturizados, para conservar los materiales.
- Usa "Limit to Selected Objects" al exportar para evitar incluir objetos no deseados en la escena.

## Errores comunes / gotchas
- **No ajustar el número de vértices del cilindro antes de hacer clic:** si haces clic fuera del panel de opciones, desaparece y el cilindro se crea con 32 vértices por defecto (demasiado para low poly). Debes ajustar "Vertices" inmediatamente después de `Shift` + `A`.
- **Extruir desde aristas sin duplicar primero:** si extruyes directamente desde una arista, la nueva geometría sale torcida o desalineada. Siempre usa `Shift` + `D` para duplicar la arista, luego mueve/rota, y después extruye con `E`.
- **Olvidar verificar normales antes de exportar:** las caras pueden aparecer invertidas (transparentes o negras) en Roblox Studio. Siempre revisa "Face Orientation" y recalcula con `Alt` + `N`.
- **Aplicar modificadores antes de unir objetos con `Ctrl` + `J`:** si no aplicas los modificadores primero, al unir se aplicarán al objeto completo y pueden arruinar la geometría. Aplica cada modificador con `Ctrl` + `A` antes de Join.
- **Usar valores extremos en Remesh (Voxel Size muy bajo):** puede congelar o crashear Blender, especialmente en computadoras no potentes. Ajusta gradualmente.
- **No publicar el lugar en Roblox Studio antes de importar:** el botón "Bulk Import" no funcionará si el proyecto no está publicado en Roblox. Ve a `File` → `Publish to Roblox` primero.
- **Seleccionar partes del modelo por error al texturizar:** usa `Ctrl` + `I` para invertir la selección en lugar de intentar seleccionar manualmente las hojas sin tocar el tronco.