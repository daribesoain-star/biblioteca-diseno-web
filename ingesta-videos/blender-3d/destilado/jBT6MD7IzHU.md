# Blender PBR Material Shading (Material Series Part 2)
**Fuente:** Brandon 3D | https://youtu.be/jBT6MD7IzHU

## Qué enseña
Explica qué son los materiales PBR (Physically Based Rendering), dónde obtener texturas PBR gratuitas y de pago (Poliigon, Ambient CG), y cómo configurarlas manualmente en el Shader Editor de Cycles (compatible con Eevee). También cubre el uso del addon Node Wrangler para automatizar la conexión de mapas, y técnicas avanzadas como desplazamiento adaptativo y ajustes de color.

## Técnicas accionables
- **Importar texturas manualmente:** Presiona **Shift+A** → `Image Texture` → botón `Open` para seleccionar el archivo, o arrastra y suelta la imagen desde el explorador de archivos directamente al Shader Editor (requiere extraer el ZIP).
- **Conectar mapa de color:** Arrastra el conector amarillo (`Color`) del nodo `Image Texture` al socket `Base Color` (amarillo) del `Principled BSDF`.
- **Configurar mapas no-color:** Para mapas de reflexión, rugosidad, normal y desplazamiento, cambia el desplegable del nodo `Image Texture` de `sRGB` a `Non-Color`.
- **Añadir nodos de mapeo:** Selecciona un `Image Texture` y presiona **Ctrl+T** (requiere Node Wrangler activado) para agregar automáticamente un nodo `Mapping` y un `Texture Coordinate` (configurado en `UV`).
- **Conectar múltiples mapas al mismo Mapping:** Arrastra el conector `Vector` del nodo `Mapping` a los sockets `Vector` de todos los `Image Texture` que uses.
- **Invertir mapa de brillo (gloss) a rugosidad:** Presiona **Shift+A** → `Invert` y colócalo entre el `Image Texture` del gloss y el socket `Roughness` del `Principled BSDF`.
- **Conectar mapa normal:** Presiona **Shift+A** → `Normal Map`. Conecta el `Image Texture` (Non-Color) al socket `Color` del `Normal Map`, y el socket `Normal` (púrpura) de este nodo al socket `Normal` del `Principled BSDF`. Ajusta `Strength` (ej. 10 para enfatizar).
- **Conectar desplazamiento:** Presiona **Shift+A** → `Displacement`. Conecta el `Image Texture` (Non-Color) al socket `Height`, y el socket `Displacement` (púrpura) al socket `Displacement` del nodo `Material Output`. Ajusta `Midlevel` a `0` para evitar desplazamiento no deseado.
- **Activar desplazamiento real:** En el panel `Material Properties` → `Settings` → `Surface` → cambia `Displacement` de `Bump Only` a `Displacement and Bump`.
- **Subdividir para desplazamiento:** Selecciona el objeto, presiona **Tab** para Edit Mode, presiona **Ctrl+R** para subdividir varias veces, o agrega un modificador `Subdivision Surface` (tipo `Simple` en vez de `Catmull-Clark`).
- **Usar subdivisión adaptativa:** En `Render Properties` → `Render Engine: Cycles` → `Feature Set: Experimental`. Luego en el modificador `Subdivision Surface`, marca `Adaptive Subdivision`.
- **Automatizar con Node Wrangler:** Selecciona el nodo `Principled BSDF`, presiona **Ctrl+Shift+T**, navega a la carpeta de texturas, selecciona los mapas (color, gloss, reflection, normal, displacement) y presiona `Principled Texture Setup`. Blender crea y conecta todo automáticamente.
- **Ajustar escala del material:** En el nodo `Mapping`, modifica `Scale` (X, Y, Z). Para escalar uniformemente, haz clic en el valor superior y arrastra hacia abajo, o presiona **Shift+A** → `Value` y conéctalo al socket `Scale` del `Mapping`.
- **Ajustar UV manualmente:** Ve al espacio de trabajo `UV Editing`, selecciona todo con **A**, presiona **S** para escalar, **G** para mover, **R** para rotar la UV sin alterar el material.
- **Añadir control de color:** Entre el `Image Texture` de color y el `Base Color`, inserta **Shift+A** → `Hue/Saturation/Value` (ajusta `Hue`, `Saturation`, `Value`) o `RGB Curves` (canales R, G, B y combinado).
- **Usar ColorRamp en mapas B/N:** Conecta un nodo `ColorRamp` (Shift+A) entre el `Image Texture` y el socket de rugosidad/especular para controlar reflectividad moviendo los puntos de control.
- **Mutear nodos:** Selecciona un nodo y presiona **M** para desactivar sus cálculos temporalmente.
- **Añadir Reroute:** Presiona **Shift+A** → `Reroute`, o con Node Wrangler activado, mantén **Shift** y arrastra sobre conexiones existentes.
- **Colapsar nodos:** Haz clic en la flecha expandir/colapsar (esquina superior izquierda del nodo).
- **Ocultar sockets no usados:** Selecciona el `Principled BSDF`, ve a `Node` → `Toggle Hidden Node Sockets` o presiona **Ctrl+H**.
- **Ajustar curvatura de noodles:** `Edit` → `Preferences` → `Themes` → `Node Editor` → `Noodle Curving` (valor 0 = recto, 4 = curvo predeterminado).

## Reglas para el erudito
- Usa `Non-Color` en todo `Image Texture` que no sea el mapa de color (reflection, gloss, roughness, normal, displacement).
- Conecta todos los `Image Texture` al mismo nodo `Mapping` para que las texturas se alineen entre sí.
- Usa un nodo `Invert` entre el gloss map y el socket `Roughness` porque gloss es el inverso de roughness.
- Usa un nodo `Normal Map` entre la textura normal y el socket `Normal` del Principled BSDF; nunca conectes directamente un amarillo a un púrpura.
- Usa un nodo `Displacement` entre la textura de desplazamiento y el socket `Displacement` del `Material Output`; ajusta `Midlevel` a 0 para evitar desplazamiento no deseado.
- Cambia `Displacement` a `Displacement and Bump` en `Material Properties` → `Settings` para obtener el efecto completo.
- Usa `Experimental` en Cycles y `Adaptive Subdivision` en el modificador `Subdivision Surface` para desplazamiento eficiente.
- Usa **Ctrl+Shift+T** sobre el `Principled BSDF` con Node Wrangler para configurar PBR automáticamente.
- Ajusta la escala del material en el UV Editor (S, G, R) en lugar del nodo `Mapping` si solo afecta a un objeto.

## Errores comunes / gotchas
- No cambiar `sRGB` a `Non-Color` en mapas de reflexión, rugosidad, normal o desplazamiento causa resultados visuales incorrectos.
- Arrastrar y soltar imágenes desde un ZIP sin extraer no funciona; hay que extraer los archivos primero.
- Conectar un mapa de color amarillo directamente a un socket púrpura (normal o desplazamiento) sin nodo convertidor no funciona.
- En Eevee, aumentar la fuerza del `Normal Map` no tiene efecto notable; Cycles maneja mejor estos detalles.
- El desplazamiento real no se muestra en `Material Preview`; solo en `Render Preview` con Cycles.
- El valor `Midlevel` predeterminado (0.5) en el nodo `Displacement` desplaza toda la geometría; cambiarlo a 0 evita ese efecto.
- Subdividir manualmente o con `Subdivision Surface` aumenta drásticamente la geometría y afecta el rendimiento.
- Cambiar la escala en el nodo `Mapping` afecta a todos los objetos que usan ese material; para cambios por objeto, ajusta la UV en el UV Editor.