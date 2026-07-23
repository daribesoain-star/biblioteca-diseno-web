# Blender 2.8 How to use PBR textures with principled bsdf Cycles/Eevee
**Fuente:** CGMatter | https://youtu.be/a5KOdVft93E

## Qué enseña (2-3 líneas)
A conectar mapas PBR (basecolor, metallic, roughness, normal, height) al Principled BSDF en Blender 2.8, tanto en Eevee como en Cycles. Cubre la configuración correcta de nodos (Non-Color Data, Bump, Normal Map), el escalado de texturas con Mapping + Texture Coordinate, y la activación de oclusión ambiental en Eevee.

## Técnicas accionables
- **Preparar el material:** En el editor Shading, selecciona el objeto y haz clic en **New** si no hay material. Si prefieres crear desde cero: **Shift+A > Shader > Principled BSDF**, conéctalo al **Material Output**.
- **Conectar Basecolor:** Arrastra la imagen basecolor al editor. Conecta su socket **Color** al socket **Base Color** del Principled BSDF.
- **Conectar Metallic:** Arrastra la imagen metallic. En el nodo Image Texture, cambia el espacio de color a **Non-Color Data**. Conecta **Color** a **Metallic**.
- **Conectar Roughness:** Arrastra la imagen roughness. Cambia a **Non-Color Data**. Conecta **Color** a **Roughness**.
- **Conectar Normal + Height (Bump):**
    1. Arrastra la imagen normal y la imagen height. Ambas a **Non-Color Data**.
    2. **Shift+A > Vector > Bump**. Conecta la imagen height al socket **Height** del Bump.
    3. **Shift+A > Vector > Normal Map**. Conecta la imagen normal al socket **Color** del Normal Map.
    4. Conecta el socket **Normal** del Normal Map al socket **Normal** del Bump.
    5. Conecta el socket **Normal** del Bump al socket **Normal** del Principled BSDF.
- **Escalar texturas (tiling):**
    1. **Shift+A > Vector > Mapping**. **Shift+A > Input > Texture Coordinate**.
    2. Conecta el socket **UV** de Texture Coordinate al socket **Vector** de Mapping.
    3. Conecta el socket **Vector** de Mapping al socket **Vector** de cada Image Texture (basecolor, metallic, roughness, normal, height).
    4. En el nodo Mapping, ajusta los valores **Scale** (X, Y) para duplicar o triplicar el número de tiles (ej. 3 en X y 3 en Y).
- **Activar AO en Eevee:** En las propiedades de render, ve a la pestaña **Eevee** y activa **Ambient Occlusion**.
- **Cambiar entre Cycles/Eevee:** El setup de nodos es idéntico. Solo cambia el motor de render en el menú superior.
- **Ajustar intensidad del Bump:** En el nodo Bump, modifica el parámetro **Strength** (valor 1 por defecto; reduce o aumenta según la textura).
- **HDRI para iluminación:** En el editor Shading, cambia a **World**. **Shift+A > Texture > Environment Texture**. Conéctalo al socket **Surface** del World Output. Carga un archivo .hdr.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Non-Color Data** en los nodos Image Texture de metallic, roughness, normal y height; de lo contrario los valores se interpretan como color y el resultado es erróneo.
- Usa el nodo **Normal Map** para convertir la imagen normal (amarilla/púrpura) antes de conectarla al Bump; el socket Normal del Bump espera datos de normal map, no una imagen directa.
- Usa el socket **UV** de Texture Coordinate cuando el objeto tenga un UV map asignado; usa **Generated** solo para coordenadas procedurales (ej. rotar el HDRI en el mundo).
- Usa el parámetro **Strength** del Bump para controlar la intensidad del relieve; mantenlo en 1 si las texturas ya están calibradas.
- Activa **Ambient Occlusion** en Eevee manualmente; en Cycles se calcula automáticamente.
- No uses el mapa **Ambient Occlusion** en el material; Blender lo calcula en tiempo de render (Cycles) o con la opción de Eevee.

## Errores comunes / gotchas
- Olvidar cambiar a **Non-Color Data** en metallic, roughness, normal y height → los valores se distorsionan y el material se ve incorrecto.
- Conectar la imagen normal directamente al socket Normal del Principled BSDF sin pasar por el nodo **Normal Map** → el render ignora la información de normales o la interpreta mal.
- Conectar la imagen height directamente al socket Normal del Principled BSDF (sin Bump) → no genera relieve.
- No conectar el nodo **Mapping** a todos los Image Textures → al escalar solo una textura, las demás quedan desajustadas.
- Usar **Generated** en Texture Coordinate para un objeto con UV map → las texturas no siguen la forma del objeto.
- Esperar que el mapa Ambient Occlusion funcione como en juegos → en Blender es redundante y rompe la precisión física.