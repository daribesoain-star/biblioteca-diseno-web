# Realistic Product Lighting In Blender
**Fuente:** Extra 3d | https://youtu.be/WreZ_VKDn4M

## Qué enseña (2-3 líneas)
Técnicas de iluminación de productos en Blender usando luces de área y planos con emisión, desde conceptos básicos de iluminación de tres lados hasta casos complejos como vidrio y reflejos en superficies brillantes. Incluye el uso de image textures para reflejos, gradientes con emission shader para vidrio, y light linking para controlar qué objetos reciben luz.

## Técnicas accionables

- **Configuración inicial:** Coloca la cámara y el producto en la escena. Para rotar la luz alrededor del producto, mueve el 3D cursor al centro del producto: selecciona el producto, presiona **Shift+S** y elige "Cursor to Selected", o presiona **Shift+clic derecho** en el centro deseado. Cambia el pivot point a "3D Cursor" en el menú superior (junto a Transform Orientations).
- **Luz trasera (highlights):** Agrega un **Area Light** (Shift+A > Light > Area). Colócalo detrás del producto. Aumenta la intensidad (Power) a un valor moderado (ej. 500-1000 W, ajusta según escala). Mantén la vista en el render preview (Viewport Shading > Rendered) para evaluar.
- **Luz lateral dura (sharp light):** Duplica la luz trasera (Shift+D). Presiona **R** dos veces (R+R) para rotar libremente alrededor del producto (con pivot en 3D Cursor). Colócala en un lado del producto. Reduce la intensidad (ej. 200-400 W). Reduce el **Spread** del área light (en Object Data Properties > Light > Spread) a un valor bajo (ej. 15-30°) para crear sombras duras y definidas.
- **Luz lateral suave:** Duplica la luz lateral dura. Rota 180° (presiona **R**, luego escribe **180** y Enter) para colocarla en el lado opuesto. Aumenta el **Spread** a un valor alto (ej. 80-120°) para iluminar suavemente el producto principal.
- **Reflejos en productos brillantes (no vidrio):** En el Shader Editor, agrega un **Image Texture** (Shift+A > Texture > Image Texture). Carga una imagen de estudio (ej. gradiente o mapa de luz). Conecta el color del Image Texture al **Base Color** de un **Principled BSDF** (o directamente a un **Emission** si es para reflejo). Ajusta la fuerza con un **Mix Shader** o aumentando la intensidad de la emisión.
- **Iluminación de vidrio (planes con emisión):** Agrega un **Plane** (Shift+A > Mesh > Plane). Colócalo detrás del producto. En el Shader Editor, elimina el Principled BSDF por defecto (selecciona y presiona **X** o **Delete**). Agrega un **Emission** node (Shift+A > Shader > Emission) y conéctalo al **Material Output**. Ajusta la **Strength** (ej. 10-30 W). Para ocultar el plano del render: selecciona el plano, ve a **Object Properties** > **Visibility** > desmarca **Camera** (Ray Visibility > Camera).
- **Gradiente en vidrio:** Duplica el plano trasero (Shift+D). Colócalo en un lado del producto. Crea un nuevo material: en el Shader Editor, agrega **Emission**, **Gradient Texture** (Shift+A > Texture > Gradient Texture), **Texture Coordinate** y **Mapping** (Shift+A > Vector > Mapping/Texture Coordinate). Conecta: Texture Coordinate > Mapping > Gradient Texture > Color Ramp > Emission > Material Output. En el **Color Ramp**, cambia el tipo a **Spline** (en lugar de Linear). Ajusta los controles deslizantes para que el blanco (luz) esté en el lado exterior del producto y el negro (oscuro) hacia el interior. Rota el gradiente con los valores de rotación del Mapping node (ej. Rotation Z = 180°). Ajusta la Strength del Emission (ej. 5-20 W). Repite para el otro lado.
- **Light Linking (aislar luz a objetos específicos):** Selecciona una luz (Area Light o plano con emisión). Ve a **Object Data Properties** (icono de luz verde). En la sección **Light Linking**, haz clic en **New** (crea un nuevo link). Arrastra los objetos que deseas que reciban esa luz (ej. el producto principal) desde la colección o la vista 3D al campo "Light Links". Repite para cada luz que necesite control.

## Reglas para el erudito (imperativas, "usa X cuando Y")

- Usa **Area Lights** con **Spread bajo** (15-30°) cuando necesites sombras duras y definidas en productos opacos o mates.
- Usa **Area Lights** con **Spread alto** (80-120°) cuando necesites iluminación suave y difusa en el lado opuesto a la luz dura.
- Usa **Image Texture** en el Shader Editor para reflejos en productos brillantes (no vidrio) cuando las luces de área generen reflejos artificiales o "terribles".
- Usa **planos con Emission Shader** en lugar de Area Lights cuando ilumines vidrio o superficies altamente reflectantes, para evitar reflejos duros y no deseados.
- Usa **Gradient Texture + Color Ramp (Spline)** en planos de iluminación para vidrio cuando necesites un degradado suave que se funda con el material glossy del producto.
- Usa **Light Linking** cuando tengas un suelo u otros objetos que reflejen la luz de forma no deseada y quieras que la iluminación solo afecte al producto principal.
- Mueve el **3D Cursor al centro del producto** (Shift+S > Cursor to Selected) antes de duplicar y rotar luces, para que giren alrededor del producto correctamente.

## Errores comunes / gotchas

- **No mover el 3D Cursor al centro del producto** antes de rotar las luces: al presionar R+R, las luces rotarán alrededor del origen de la escena (0,0,0) en lugar del producto, desalineando la iluminación.
- **Aumentar demasiado la intensidad (Strength/Power)** de las luces de área o emisión: causa quemado (blown-out highlights) y pérdida de detalle. Ajusta gradualmente.
- **Olvidar ocultar los planos de iluminación del render** (desmarcar Camera en Ray Visibility): aparecerán como objetos sólidos en la imagen final.
- **Usar Area Lights para vidrio**: generan reflejos duros y poco realistas. Siempre prefiere planos con Emission + Gradient para vidrio.
- **No ajustar el Spread en luces laterales**: usar el valor por defecto (Spread=180°) en la luz dura produce sombras suaves, no el efecto deseado de sombras marcadas.
- **Conectar incorrectamente el Gradient Texture**: si el lado blanco del gradiente apunta hacia el interior del producto, la iluminación se invertirá y no se verá el degradado suave en el vidrio.
- **No usar Light Linking cuando hay suelo reflectante**: las luces iluminan el suelo y este refleja la luz de forma no controlada, arruinando la iluminación del producto.