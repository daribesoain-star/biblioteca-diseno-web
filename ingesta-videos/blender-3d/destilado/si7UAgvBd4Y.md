# Tutorial: Cinematic Lighting in Blender
**Fuente:** Polyfjord | https://youtu.be/si7UAgvBd4Y

## Qué enseña (2-3 líneas)
Configuración de iluminación cinematográfica de un solo punto usando un área de luz grande colocada detrás del sujeto. Explica cómo pensar en términos de sombras para enfatizar la forma, no solo iluminar la escena. Cubre la diferencia entre iluminación "exterior" (misteriosa) e "interior" (reveladora) respecto al punto de interés.

## Técnicas accionables
- Importar modelo FBX animado: `F4` → Import → FBX, seleccionar archivo descargado de Mixamo
- Crear plano de suelo: `Shift+A` → Mesh → Plane. Escalar con `S`. Entrar a Edit Mode con `Tab`, seleccionar dos vértices traseros, extruir en Z con `E`
- Suavizar fondo curvo: en Object Mode, ir a Modifier Properties → Add Modifier → Bevel. Aumentar Amount y Segments. Luego clic derecho → Shade Smooth
- Escalar fondo en X: `S` → X → arrastrar
- Crear cámara: `Shift+A` → Camera → Camera. Posicionar vista, luego `Ctrl+Alt+Numpad 0` (View → Align View → Align Active Camera to View)
- Mover cámara: `G` para mover, luego `Z` dos veces para restringir al eje Z local
- Activar Cycles: Render Properties → Render Engine → Cycles
- Vista renderizada: mantener `Z` y arrastrar hacia arriba en el menú radial, o presionar `Z` y seleccionar Rendered
- Ocultar armadura: seleccionar Armature, presionar `H`
- Eliminar sharp edges falsos del modelo: `Tab` a Edit Mode, `Ctrl+E` → Clear Sharp
- Añadir luz puntual inicial: `Shift+A` → Light → Point Light. Mover con `G`. Ajustar potencia con clic derecho en el light → Power
- Restablecer posición de luz: `Alt+G`
- Cambiar tipo de luz a área: Object Data Properties → Type → Area
- Aumentar tamaño de luz para sombras suaves: clic derecho en el light → Size
- Dividir ventana: clic derecho en el borde de la ventana 3D → Vertical Split. En la nueva ventana, presionar el ícono de cámara para vista de cámara
- Ocultar overlays en vista de cámara: `Alt+Shift+Z`
- Desactivar gizmo de cámara: Viewport Overlays → Gizmos → desmarcar "Look At"
- Reducir iluminación del mundo: World Properties → Strength → 0
- Añadir Subdivision Surface: seleccionar geometría, presionar `Ctrl+1`. En Modifier Properties, ajustar Render y Viewport a 1
- Renderizar imagen: Render Properties → Samples (reducir para prueba), luego Render → Render Image

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa un área de luz grande (Size alto) cuando quieras sombras suaves y transiciones graduales; usa un tamaño pequeño para sombras duras y definidas.
- Coloca la luz detrás del punto de interés (entre el fondo y el sujeto) cuando quieras sombras que revelen la forma del torso, bíceps y hombros, con un borde de luz en los hombros.
- Coloca la luz más cerca del fondo y lejos del sujeto cuando busques un efecto misterioso o de silueta (iluminación "exterior").
- Coloca la luz entre el sujeto y la cámara cuando quieras revelar todo sin sombras marcadas (iluminación "interior" o plana).
- Rota el área de luz para evitar líneas de sombra rectas en el fondo: selecciona la luz y usa `R` para rotarla.
- Ajusta la potencia de la luz después de cada cambio de posición o tamaño para mantener el brillo deseado.
- Desactiva la iluminación del mundo (World Strength = 0) para tener control total sobre la fuente de luz única.
- Usa Cycles en lugar de Eevee para este setup, ya que el bounce light (luz rebotada en el suelo y el fondo) hace gran parte del trabajo pesado.

## Errores comunes / gotchas
- El modelo de Mixamo puede tener "fake sharpening" (sharp edges falsos). Si ves líneas duras no deseadas, entra a Edit Mode y usa `Ctrl+E` → Clear Sharp.
- El área de luz emite solo 180 grados, lo que puede crear una línea de sombra recta en el fondo si no se rota adecuadamente. Solución: rotar la luz para que el borde del cono de luz no coincida con el fondo.
- Si el personaje parece levitar, selecciona los huesos (armature) y muévelo hacia abajo en Z hasta que toque el suelo.
- Las sombras duras iniciales al cambiar a área de luz se deben al tamaño pequeño de la luz. Aumenta el Size para suavizarlas.
- Si aparecen artefactos en el estómago o cabello, añade un modificador Subdivision Surface (`Ctrl+1`) y ajusta los niveles de Render y Viewport.