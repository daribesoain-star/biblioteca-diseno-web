# Character animation for impatient people - Blender Tutorial
**Fuente:** Joey Carlino | https://youtu.be/GAIZkIfXXjQ

## Qué enseña
Métodos rápidos para animar personajes en Blender: desde soluciones automáticas (Mixamo, motion capture con Rokoko Video) hasta técnicas manuales de posing, keyframing, auto keying, pose library y el add-on Wiggle Bones 2. Cubre flujos de trabajo como pose-to-pose y uso de video referencia.

## Técnicas accionables
- **Obtener personaje riggeado:** Descarga personajes gratuitos de Mixamo (con add-on gratuito que genera controles) o de Blender Studio (con controles faciales, stretch controllers y pose library). También puedes usar el rig simple del autor desde Gumroad.
- **Auto IK en Mixamo:** Actívalo, selecciona un hueso, presiona **G** para moverlo y usa la **rueda del ratón** para cambiar la longitud de la cadena.
- **Entrar a Pose Mode:** Selecciona el Armature y cambia a Pose Mode desde el menú, o presiona **Ctrl+Tab**.
- **Transformar huesos:** Presiona **G** (mover), **R** (rotar), **S** (escalar). Para rotación trackball presiona **R** dos veces. Para transformar en un eje específico: **G + X** (eje X global), **R + Y + Y** (eje Y local).
- **Cambiar punto de pivote a Individual Origins:** Presiona **.** (punto) o usa el menú desplegable. Útil para rotar cadenas de huesos (dedos, colas).
- **Insertar keyframes:** Con un hueso seleccionado, presiona **I** y elige entre Location, Rotation, Scale o LocRotScale.
- **Copiar/pegar poses:** Selecciona huesos, presiona **Ctrl+C** para copiar, **Ctrl+V** para pegar, **Ctrl+Shift+V** para pegar invertido.
- **Breakdowner tool:** Haz clic y mantén presionado el botón de herramienta para acceder a Push y Relax.
- **Motion Paths:** En Object Data Properties, selecciona huesos y presiona **Calculate**. Para actualizar, presiona **Update Path** (no se actualiza en tiempo real).
- **Navegar entre keyframes:** Usa las teclas **Flecha arriba** y **Flecha abajo**.
- **Dope Sheet:** Cambia una ventana a Dope Sheet. Activa el botón de "bus" para ver todos los keyframes sin tener el hueso seleccionado.
- **Graph Editor:** Desde Dope Sheet o Timeline, presiona **Ctrl+Tab**. Usa clic y arrastra para box select. Enfoca puntos seleccionados con **.** (teclado numérico) o **`** (back tick). Activa **Normalize** para escala -1 a 1. Oculta canales con **H**, aísla con **Shift+H**, restaura todo con **Alt+H**. Presiona **N** para añadir modificadores (Noise, Cycle).
- **Interpolación en Graph Editor:** Presiona **T** para cambiar modo de interpolación (Bezier, Back, etc.). Cambia easing type con **Ctrl+E** (elige Ease In and Out). Con Bezier, cambia handle type con **V**.
- **Action Editor:** En Dope Sheet, cambia a Action Editor. Renombra acciones, haz clic en el ícono de escudo para guardar. Crea nueva acción con el botón "+" (duplica la actual) o presiona **X** y elige **New**.
- **Auto Keying:** Activa el botón de auto keying. Al mover/rotar/escalar, se inserta keyframe automáticamente. Para grabación en tiempo real, presiona **Espacio** y mueve el Armature.
- **Keying Sets:** En Timeline, usa el menú desplegable **Keying** para elegir canales. Usa la flecha para que Auto Keying solo afecte esos canales.
- **Suavizar curvas en Graph Editor:** Selecciona puntos y presiona **Alt+O**.
- **Pose Library:** En Pose Mode, selecciona huesos, presiona **F3** y busca **Create Pose Asset**. Abre el panel **N** > pestaña **Animation** para ver y arrastrar poses (arrastra entre dos para blendear). También desde Asset Browser.
- **Wiggle Bones 2 (add-on gratuito):** En Pose Mode, selecciona un hueso, presiona **N** > pestaña **Animation** y actívalo. Elige **Head** (base) o **Tail** (punta). Ajusta **Stiffness** (menor valor = más movimiento). Añade colisión seleccionando un objeto o colección. Para renderizar, hornea con **Bake Action** (abajo) o duplica la acción, presiona **F3** > **Bake Action**, marca **Visual Keying** y **Overwrite Current Action**.
- **Video referencia:** Arrastra el video directamente a la vista 3D. Para ajustar frame range o start point, selecciona el objeto imagen y ve a **Object Data Properties**.

## Reglas para el erudito
- Usa **Auto IK** cuando trabajes con rigs de Mixamo sin controles, pero no esperes la precisión de un rig con controles dedicados.
- Usa **Individual Origins** (tecla **.**) cuando quieras curvar cadenas de huesos (dedos, colas, tentáculos) rotándolos uno tras otro.
- Usa **Ctrl+Shift+V** para pegar una pose invertida cuando necesites simetría rápida en movimientos como caminatas.
- Usa **Normalize** en el Graph Editor cuando tengas canales con escalas muy diferentes y quieras comparar curvas visualmente.
- Usa **Keying Sets** cuando hagas auto keying por capas: graba primero Location, luego Rotation por separado para evitar keyframes basura.
- Usa **Wiggle Bones 2** en modo **Tail** para movimientos más exagerados y rotación adicional; en **Head** para movimientos más sutiles desde la base.
- Usa **pose-to-pose** como flujo principal: primero keyframes clave grandes, luego rellena los intermedios (breakdowns).
- Usa **video referencia** arrastrándolo a la vista 3D para tener referencia visual directa mientras animas.

## Errores comunes / gotchas
- Mixamo no genera controles de rig por defecto, solo huesos de deformación; necesitas el add-on gratuito o usar Auto IK.
- Auto keying sobre keyframes existentes produce resultados glitchy; evita superponerlo con animación ya keyframeda.
- Motion Paths no se actualizan en tiempo real; debes presionar **Update Path** manualmente tras cada cambio.
- El rig simple del autor (Gumroad) no tiene controles faciales, solo sirve para animación corporal.
- Al usar Rokoko Video gratis, brazos y piernas deben verse claramente en el video; de lo contrario la captura será imprecisa.
- Wiggle Bones 2 requiere horneado (Bake Action) antes de renderizar; de lo contrario el movimiento no se exporta.
- Al duplicar acciones para horneado, guarda siempre la original sin hornear por si necesitas ajustar después.
- La pose library guarda poses como acciones; si editas una pose, hazlo desde el Action Editor, no desde el panel de poses.