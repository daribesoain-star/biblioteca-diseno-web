# DUIK Angela Jumpstart Complete Beginner's Guide
**Fuente:** Jake In Motion | https://youtu.be/Y0RRBVnn2MA

## Qué enseña
Este tutorial enseña el proceso completo de rigging de personajes 2D en Adobe After Effects usando el plugin gratuito DUIK Angela, desde la preparación del artwork en Illustrator hasta la creación de un sistema de esqueleto, rigging automático y ciclos de caminar y correr automáticos. Cubre la configuración del espacio de trabajo, creación de huesos (bones), auto-rigging, controladores IK/FK y animación procedural.

## Técnicas accionables

- **Preparación del artwork en Illustrator:** Crear círculos perfectos en todas las articulaciones del personaje (codos, rodillas, caderas, cuello, muñecas, tobillos). Usar una mesa de trabajo (artboard) de 2000x2000 píxeles o mayor si se necesita hacer zoom. Nombrar las capas con etiquetas como "R_arm", "L_forearm", "R_hand" (R = right, L = left desde la perspectiva del personaje). Dar una ligera curvatura a las extremidades para que DUIK sepa en qué dirección deben doblarse.

- **Importación a After Effects:** Importar el archivo de Illustrator como "Composición" con "Tamaño de capa" como dimensión del metraje (footage dimension). Duplicar la composición original y renombrarla como "[nombre]_artwork" para tener una copia de seguridad.

- **Configuración del espacio de trabajo:** Acoplar el panel de línea de tiempo (timeline) en el lado izquierdo del espacio de trabajo. Cerrar paneles innecesarios (Character, etc.). Guardar como nuevo espacio de trabajo: Window > Workspace > Save as New Workspace, nombrarlo "character_rigging". En DUIK, ir a Settings > Edit Settings y cambiar UI Mode a "rookie" para ver etiquetas de texto en los botones.

- **Ajuste de puntos de anclaje (Anchor Points):** Activar la capa "guides" del personaje. Presionar **Y** para la herramienta Anchor Point. Para precisión: hacer clic derecho en la capa guides > Create > Shapes from Vector Layer para convertir los círculos en capas de forma. Luego, mantener presionado **Control (Windows)** o **Command (Mac)** mientras se arrastra el Anchor Point para activar el snapping al centro del círculo. Alternativa: reducir la escala de los círculos guía al 20% para facilitar la colocación.

- **Creación de huesos (Bones) - Método 1 (selección de capas):** Seleccionar las capas de la extremidad en orden desde la raíz hasta la punta (ej: arm > forearm > hand). Ir a la pestaña Bones > Hominoid > opciones de Arm. Configurar: Front/Back según corresponda, Right/Left según el lado del personaje. Desmarcar "shoulder bone" si no existe en el artwork. Mantener presionado **Control** y hacer clic en el botón Arm. Esto genera huesos alineados a los Anchor Points y auto-parenta el artwork a los huesos. Reposicionar el hueso de la punta (tip) al final del dedo/extremidad.

- **Creación de huesos (Bones) - Método 2 (dibujar trazado):** Con la herramienta Pluma (Pen Tool), dibujar un trazado colocando un punto en cada articulación y un punto final en la punta de la extremidad. Seleccionar el trazado (no solo la capa), ir a Bones > Hominoid > opciones de Arm, configurar etiquetas y hacer clic en Arm. Luego, seleccionar las capas de artwork correspondientes y usar el botón "Link Art" para que DUIK auto-parente el artwork a los huesos basándose en los nombres de las capas.

- **Creación de la columna vertebral (Spine):** Mover los Anchor Points de hips, torso, neck y head a sus respectivas articulaciones. Seleccionar en orden: hips > torso > neck > head. Ir a Bones > Hominoid > opciones de Spine. Configurar: hips activado, spine sections = 1, neck = 1, head activado. Mantener **Control** y hacer clic en Spine. Reposicionar el hueso de la punta al tope de la cabeza. Parentear manualmente los elementos faciales al hueso head.

- **Creación de piernas (Legs):** Repetir el proceso de las extremidades. En opciones de Leg, activar "toes". Configurar Front/Back y Right/Left. Después de generar los huesos, alinear el hueso "toe" a la punta de los dedos y el hueso "heel" al talón (mantener Shift para movimiento horizontal).

- **Auto-rigging:** Duplicar la composición de huesos y renombrarla como "[nombre]_rig". Eliminar las capas guides y background. Seleccionar todos los huesos usando el botón "Select All Bones" en el panel Bones. Ir a la pestaña Auto-rig y hacer clic en el botón. Antes de hacer clic, marcar la casilla para ocultar overlays (esto acelera el proceso). Esperar a que termine el proceso.

- **Post-auto-rigging:** Ocultar los huesos con el botón "Show/Hide Bones" en el panel Bones. Seleccionar todas las capas controller (Ctrl), presionar **P** para ver posición. Deseleccionar los que ya están en cero (torso, hips). Ir a la pestaña Links & Constraints > botón "Add Zero". Esto genera nulos (nulls) en la misma posición que los controladores y los parentea, permitiendo resetear a 0,0 para volver a la pose neutral.

- **Limpieza de la composición:** Bloquear (lock) todas las capas de artwork y bones. Activar el switch "Shy" en todas las capas excepto los controladores. Hacer clic en el icono de Shy para ocultar las capas shy.

- **Ajuste de controladores (Controllers):** Para cada controlador, ir al efecto "Icon" y ajustar la posición (Position) para mover el icono fuera del personaje. Cambiar el color si es necesario. Para los controladores de manos: en el efecto "Icon", rotar 180° en el eje Z para que apunten hacia abajo, luego desplazar en Y. Para los controladores de pies: rotar 90° y desplazar hacia abajo/delante.

- **Corrección de dirección de flexión (IK bend):** Si una extremidad se dobla en dirección opuesta a la deseada, ir al controlador de mano/pie > efecto "IK" > cambiar "Side" de 100% a -100% (o viceversa).

- **Ocultar puntos de anclaje de controladores:** Seleccionar todos los controladores. En el efecto "Icon", buscar la propiedad "Anchor Point Size" y cambiarla a 0.

- **Ciclo automático de caminar/correr:** Duplicar la composición rig. Seleccionar todos los controladores (incluyendo los que estaban ocultos/bloqueados). Ir a la pestaña Automation > Walk/Run Cycle > botón de settings para verificar que los controladores correctos están asignados a cada parte del cuerpo. Hacer clic en "Walk/Run Cycle". Aparecerá un nuevo controlador con parámetros. Para encontrar la duración del ciclo: ir a Computation > Cycle Duration (frames). Establecer el área de trabajo (Work Area) en cycle duration - 1 frame (ej: 24 frames → work area hasta frame 23).

- **Parámetros del ciclo de caminar:** General Motion: controla la transición entre caminar y no caminar (0% = quieto, 100% = caminando). Walk/Run: controla qué ciclo está activo. Main Parameters: Height, Energy, Softness. Walk Cycle: Walk Speed (distancia entre pasos; valor negativo invierte dirección), Walk Type (Realistic/Dancing). Advanced Parameters: Step Amplitude, Step Frequency. Individual Limb Adjustments: controlan cabeceo de cabeza, balanceo de cuello, etc.

- **Transición entre ciclos:** Keyframear General Motion de 0% a 100% para iniciar la caminata gradualmente. Para transicionar de caminar a correr: keyframear Walk de 100 a 0 y Run de 0 a 100 simultáneamente. Ajustar Step Amplitude y Step Frequency en el punto de transición.

- **Copiar/pegar animación entre composiciones:** Usar la pestaña Animation > Copy Animation y Paste Animation para transferir keyframes de controladores entre diferentes puntos en el tiempo.

## Reglas para el erudito

- **Usa círculos perfectos en todas las articulaciones** del artwork en Illustrator para que las rotaciones no muestren costuras.
- **Nunca uses Shape Layers ni Continuous Rasterize** en After Effects para el artwork; DUIK puede romperse o complicarse. Trata el artwork de Illustrator como imágenes planas (flat layers).
- **Importa siempre como "Composición" con "Tamaño de capa"** como dimensión del metraje.
- **Nombra las capas de artwork con etiquetas consistentes** (R_ / L_ para right/left del personaje, no del espectador) para que el botón "Link Art" funcione automáticamente.
- **Selecciona las capas desde la raíz hasta la punta** (root to tip) antes de generar huesos para que el auto-parenting funcione correctamente.
- **Mantén presionado Control/Command** al hacer clic en el botón de generación de huesos (Arm, Leg, Spine) para activar el auto-parenting.
- **Después del Auto-rig, usa siempre "Add Zero"** en todos los controladores para poder resetear a la pose neutral con valores 0,0.
- **Usa el controlador "Body" (centro de gravedad) para mover al personaje completo**, no los controladores de torso, shoulders o hips individualmente.
- **Para el ciclo de caminar, establece el Work Area en Cycle Duration - 1 frame** para evitar el frame duplicado del loop.
- **No modifiques los marcadores (markers) generados por DUIK** en las capas; son esenciales para que el sistema funcione.

## Errores comunes que evita o menciona

- **No alinear correctamente los Anchor Points** a los círculos de las articulaciones causa que las extremidades se separen visiblemente al rotar. Solución: usar snapping con Control/Command o reducir la escala de los círculos guía al 20%.
- **No dar una curvatura inicial a las extremidades** en Illustrator puede hacer que DUIK no sepa en qué dirección deben doblarse, resultando en flexiones inversas. Solución: usar el parámetro "Side" en el efecto IK del controlador (cambiar de 100% a -100%).
- **Mover el controlador de hips o torso para desplazar al personaje** en lugar de usar el controlador Body causa desalineaciones en el rig. Regla: solo el controlador Body debe usarse para mover/rotar todo el personaje.
- **No ocultar los overlays antes del Auto-rig** hace que el proceso sea extremadamente lento. Siempre marcar la casilla de ocultar overlays antes de hacer clic en Auto-rig.
- **No usar "Add Zero" después del Auto-rig** impide volver a la pose neutral, ya que las posiciones de los controladores tienen valores arbitrarios no memorizables.
- **Intentar usar Shape Layers o Continuous Rasterize** para el artwork causa problemas de compatibilidad con DUIK. Usar siempre capas de Illustrator importadas como composición.
- **No verificar la duración del ciclo después de modificar parámetros** (Step Amplitude, Step Frequency) cambia la duración del loop, rompiendo la sincronización del Work Area. Siempre revisar Computation > Cycle Duration después de cambios.