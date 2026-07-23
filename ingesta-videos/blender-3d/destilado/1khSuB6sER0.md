# How to Rig and Animate in BLENDER!
**Fuente:** ProductionCrate | https://youtu.be/1khSuB6sER0

## Qué enseña (2-3 líneas)
Tres métodos para crear un rig (esqueleto digital) en Blender: rig manual desde cero, uso del add-on Rigify para rigs humanos/animales, y automatización vía Mixamo.com. Cubre desde la creación de huesos, asignación de pesos (weight painting), hasta configuración de cinemática inversa (IK).

## Técnicas accionables
- **Crear rig manual:** En **Edit Mode**, añade un hueso con **Shift+A > Armature > Single Bone**. Activa **Armature > In Front** para ver huesos dentro del mesh. Selecciona el hueso, haz clic derecho y elige **Subdivide** para crear la columna vertebral.
- **Extruir extremidades:** Selecciona el extremo de un hueso y presiona **E** para extruir cuello/cabeza. Para brazos/piernas simétricos, activa **Tool > Options > X Mirror** y usa **Shift+E** (en lugar de E) para extruir en ambos lados.
- **Eliminar huesos sobrantes:** Selecciona huesos innecesarios y presiona **Delete** (o **X**). Para reconectar huesos desconectados, selecciona ambos, presiona **Ctrl+P** y elige **Keep Offset**.
- **Parenting con pesos automáticos:** Selecciona primero el mesh, luego el rig (con Shift), presiona **Ctrl+P** y elige **Automatic Weights**.
- **Reparar pesos fallidos:** Si falla, ve a **Edit Mode** del mesh, luego **Mesh > Clean Up > Merge by Distance**. Si sigue fallando, añade un **Decimate** modifier (en **Modifier Properties**), reduce el slider de **Ratio** hasta justo antes de ver deformaciones, aplica con **Apply**, y reintenta el parenting.
- **Weight Paint manual:** Selecciona el mesh, cambia a **Weight Paint** mode (en el menú superior). En el panel **Vertex** (lado derecho), selecciona el hueso problemático. Usa el **Add** brush (en **Brush** settings) y pinta de rojo las áreas que deben seguir al hueso.
- **Configurar Inverse Kinematics (IK):** En **Pose Mode**, selecciona el hueso padre de la cadena (ej. antebrazo). Ve a **Bone Constraints** (icono de cadena), añade **Inverse Kinematics**. En **Target**, selecciona el armature; en **Bone**, elige el hueso controlador (ej. mano). Duplica el hueso controlador en **Edit Mode** con **Shift+D**, luego desparenta el duplicado con **Alt+P**. En el constraint, asigna el duplicado como **Bone** y ajusta **Chain Length** a 2.
- **Pole Target para IK:** Duplica el hueso controlador, desparenta con **Alt+P**, y colócalo detrás del personaje (donde el codo debe apuntar). En el constraint IK, asigna este hueso como **Pole Target**. Ajusta **Pole Angle** si el brazo se dobla incorrectamente.
- **Usar Rigify:** Actívalo en **Edit > Preferences > Add-ons**, busca "Rigify". En **Add > Armature**, elige **Human (Meta-Rig)**. En **Edit Mode**, alinea los huesos con el modelo (usa **S** para escalar, **R** para rotar). Activa **X Mirror** para editar un solo lado. En **Armature** tab, desactiva capas de huesos innecesarios (ej. faciales). En **Object Data Properties**, haz clic en **Generate Rig**.
- **Usar Mixamo:** Sube el modelo a mixamo.com (requiere cuenta Adobe). Marca los jointes principales. Descarga el modelo rigged (con o sin animación). Importa a Blender. Instala el add-on **Mixamo Rig Converter** desde Adobe. Selecciona el rig, ve a la pestaña **Mixamo** y haz clic en **Create Control Rig**.

## Reglas para el erudito
- Usa **Automatic Weights** solo después de limpiar el mesh con **Merge by Distance**; si falla, aplica **Decimate** antes de reintentar.
- Activa **X Mirror** siempre que edites huesos simétricos para ahorrar trabajo manual.
- Usa **Shift+E** en lugar de **E** cuando **X Mirror** esté activo para extruir en ambos lados simultáneamente.
- Para IK, duplica y desparenta el hueso controlador (con **Alt+P**) para que sea independiente de la cadena.
- Ajusta **Chain Length** en el constraint IK a 2 para limitar el control solo al brazo/pierna.
- Configura **Pole Target** siempre en IK para controlar la dirección del codo/rodilla.
- En Rigify, desactiva capas de huesos no necesarios en el panel **Armature** antes de generar el rig final.

## Errores comunes / gotchas
- **Automatic Weights falla frecuentemente** (~50% de los casos); no confíes ciegamente, revisa siempre en **Pose Mode** moviendo huesos.
- **Huesos desconectados** después de eliminar: no olvides reparentarlos con **Ctrl+P > Keep Offset**.
- **IK no funciona** si el hueso controlador sigue parentado a la cadena; debe ser un duplicado independiente (desparentado con **Alt+P**).
- **Pole Angle incorrecto** hace que el codo/rodilla se doble hacia atrás; ajusta el ángulo en el constraint IK.
- **Rigify genera huesos faciales** incluso si no los necesitas; ocúltalos en las capas del armature para evitar confusión.
- **Mixamo rig no tiene IK** por defecto; el add-on **Mixamo Rig Converter** es obligatorio para añadirlo.
- **Decimate modifier** puede deformar el mesh si reduces demasiado el ratio; detente justo antes de ver cambios visibles.