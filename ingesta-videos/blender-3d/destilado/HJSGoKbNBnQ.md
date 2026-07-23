# Blender Sculpting Tutorial for Beginners - Stylized Head Sculpt Blender Tutorial
**Fuente:** Keelan Jon | https://youtu.be/HJSGoKbNBnQ

## Qué enseña (2-3 líneas)
Transforma el cubo predeterminado de Blender en una cabeza de personaje estilizada mediante escultura digital. Cubre desde el bloqueo inicial con subdivisiones y la herramienta Grab, hasta la adición de cuello, orejas, ojos, nariz y boca con remallado y unión de objetos.

## Técnicas accionables
- Elimina luz, cámara, línea de tiempo y gizmos del viewport para un espacio de trabajo minimalista.
- Añade un modificador **Subdivision Surface** al cubo con nivel **2**, luego aplícalo (Ctrl+A) para obtener geometría base.
- Activa el **espejado en X** en el menú de herramientas de Sculpt Mode (icono de espejo) para que los cambios se reflejen en ambos lados.
- Usa la herramienta **Grab** (tecla **G**) para estirar la forma general de la cabeza; ajusta el radio del pincel con **F** y moviendo el ratón izquierda/derecha.
- Para suavizar, mantén **Shift** y haz clic con cualquier herramienta de escultura (activa el Smooth Brush).
- Cambia a **MatCap** en el menú desplegable superior del viewport y selecciona el rojo para mejor visualización al esculpir.
- Para el cuello: en Object Mode, **Shift+A** > Cube, añade **Subdivision Surface** con nivel **3** (sin aplicar), escala con **S**, mueve con **G Y** en Side View. Entra en Edit Mode (**Tab**), selecciona caras (**3**), extruye con **E** o mantén **Ctrl + clic derecho** para extrusiones consecutivas. Añade Loop Cuts con **Ctrl+R**.
- Para las orejas: mueve el 3D Cursor con **Shift+S** > Cursor to Selected, añade otro cubo, escala y aplana con **S Y**. Añade **Subdivision Surface** nivel **3**, luego **Shade Smooth** (clic derecho > Shade Smooth). Añade modificador **Mirror** con el objeto objetivo siendo la cabeza.
- Aplica todos los modificadores de los objetos secundarios antes de unirlos: haz clic en el modificador > **Apply**.
- Une objetos: selecciona el cuello, luego **Shift+clic** en la cabeza, presiona **Ctrl+J** (o clic derecho > Join).
- Remalla en Sculpt Mode: usa la opción **Remesh** en la barra superior. Comienza con **0.05** de resolución, desactiva **Face Sets**, haz clic en **Remesh**. Si es poco detalle, deshaz (Ctrl+Z) y prueba **0.02** o **0.01**.
- Activa **Statistics** en el menú del viewport (flecha desplegable) para ver el número de caras.
- Para escalas no uniformes: en Object Mode, presiona **N** para abrir el panel Item, verifica que los valores de Scale sean 1. Si no, presiona **Ctrl+A** > Apply > Scale.
- Para añadir ojos: **Shift+clic derecho** para colocar el cursor en la órbita ocular, **Shift+A** > UV Sphere, escala con **S**, rota **R X 90**. Añade modificador **Mirror**.
- Para la nariz: **Shift+S** > Cursor to Selected, **Shift+A** > Cube, escala, mueve con **G Y**. En Edit Mode, añade Loop Cuts con **Ctrl+R**. Aplica **Shade Smooth**, convierte a mesh (clic derecho > Convert to Mesh), une con **Ctrl+J** y remalla.
- Para la boca: desactiva el espejado en X. Usa la herramienta **Draw Sharp** (mantén **Ctrl** para invertir la dirección). Activa **Stabilize Stroke** en el menú Stroke de la barra superior para trazos suaves. Ajusta la fuerza del pincel en el menú de herramientas (arriba, valor numérico). Usa la herramienta **Pinch** para afinar la línea de la boca.
- Para mover la vista a un punto específico: **Alt + clic central del ratón** sobre cualquier parte del mesh.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Subdivision Surface** con nivel 2 para el bloqueo inicial; increméntalo a 3 o más cuando necesites más detalle para esculpir.
- Usa **F** para ajustar el radio del pincel sobre la marcha, no el slider numérico, para mayor fluidez.
- Usa **Shift + clic** para suavizar después de cada operación de remallado, especialmente en las uniones entre objetos.
- Usa **Ctrl + clic derecho** en lugar de **E** para extrusiones rápidas y controladas en Edit Mode.
- Usa **Alt + clic en un borde** en Edit Mode para seleccionar todo el loop de caras.
- Usa **Stabilize Stroke** cuando dibujes líneas finas (como la boca) para evitar temblores.
- Usa **Apply Scale** (Ctrl+A > Scale) antes de esculpir si el objeto tiene escalas no uniformes (valores distintos de 1 en el panel Item).
- Usa el remallado con resolución **0.02** como punto de partida para un equilibrio entre detalle y rendimiento; baja a **0.01** solo si tu hardware lo soporta.

## Errores comunes / gotchas
- El **3D Cursor demasiado pequeño** al usar Grab puede crear picos en el mesh; aumenta el radio con **F** antes de comenzar.
- **No aplicar la escala** (Ctrl+A > Scale) antes de esculpir causa deformaciones impredecibles al transformar el objeto.
- **Remallar con resolución demasiado baja** (ej. 0.005) puede congelar o crashar Blender; empieza siempre con 0.05 y disminuye gradualmente.
- **Olvidar desactivar el modificador Mirror** al esculpir detalles asimétricos (como la boca) duplica los trazos en ambos lados.
- **No guardar copias de seguridad** antes de remallar o unir objetos; usa **Shift+D** para duplicar y guarda en una colección aparte (tecla **M**).
- **Las líneas de remallado** aparecen como artefactos en la superficie; se corrigen suavizando con **Shift + clic** hasta que desaparezcan.
- **El modificador Subdivision Surface activo** en el viewport mientras se esculpe afecta el rendimiento; aplícalo antes de entrar en Sculpt Mode para objetos secundarios.