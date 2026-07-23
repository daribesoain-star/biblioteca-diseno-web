

===== GAIZkIfXXjQ.md =====
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

===== HJSGoKbNBnQ.md =====
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

===== Lxem4yMs5Dg.md =====
# Sculpting for Complete Beginners! (Blender Tutorial)
**Fuente:** Ryan King Art | https://youtu.be/Lxem4yMs5Dg

## Qué enseña (2-3 líneas)
Tutorial introductorio a esculpido en Blender: configuración del espacio de trabajo, navegación con tableta, uso de los pinceles esenciales (Draw, Clay Strips, Crease, Smooth, Inflate, Scrapes, Grab, Snake Hook), técnicas de remesh y Dyntopo, y pintado básico sobre vértices. Incluye un ejercicio práctico esculpiendo un pez estilizado desde una malla base.

## Técnicas accionables
- **Configuración inicial:** Agrega una icosphere (`Shift+A` > Mesh > Icosphere) y en el panel de ajustes (abajo a la izquierda) sube **Subdivisions** a 7 para obtener una malla densa. Cambia al espacio **Sculpting** (pestaña superior) para acceder a pinceles y paneles.
- **Navegación con tableta (pen hovering, sin presionar):**  
  - Orbitar: clic con botón frontal del lápiz (sin teclas).  
  - Zoom: `Ctrl` + clic con botón frontal + arrastrar.  
  - Pan: `Shift` + clic con botón frontal + arrastrar.  
  - Zoom a punto: `Alt` + clic con botón frontal.  
  - Enfocar selección: selecciona un área esculpida y presiona **`.` (punto)** para centrar la vista.
- **Esculpido básico:** Presiona el lápiz sobre la tableta para añadir clay. Mantén `Ctrl` mientras esculpes para hundir clay (efecto inverso). Alternativamente, usa los botones **+** (añadir) y **-** (restar) en el panel de pinceles.
- **Ajuste de pincel:**  
  - Tamaño: presiona **F** y arrastra el lápiz (sin presionar), luego haz clic para confirmar.  
  - Fuerza: presiona `Shift+F` y arrastra; el valor numérico y la oscuridad indican la intensidad.  
  - También puedes ajustar **Radius** y **Strength** en el panel superior o en la barra lateral (`N`).
- **Pen pressure:** Actívalo para **Strength** (icono de presión junto a Strength) o para **Radius** (icono junto a Radius). Recomendado: solo Strength activado, Radius desactivado.
- **Pinceles esenciales (acceso por clic en el panel izquierdo o atajos):**  
  - **Draw (V):** añade protuberancias.  
  - **Clay Strips:** añade capas planas de clay.  
  - **Crease:** pliega/afila clay; con `Ctrl` lo expande hacia afuera.  
  - **Smooth:** suaviza la superficie. Atajo temporal: mantén `Shift` mientras usas cualquier otro pincel.  
  - **Inflate:** infla/abulta el área.  
  - **Scrapes:** aplana y raspa clay.  
  - **Grab (G):** arrastra y deforma la malla (mejor con pincel grande).  
  - **Snake Hook:** estira clay en una forma alargada.
- **Simetría:** Activa el eje **X** (icono de mariposa en el panel superior) para esculpir simétricamente. Si ya esculpiste sin simetría, usa el menú desplegable junto a los ejes > **Symmetrize** (dirección: Negative X to Positive X o viceversa) para reflejar un lado al otro.
- **Remesh (rejilla):** Presiona **R** para mostrar una cuadrícula, arrastra para definir el tamaño de los polígonos, haz clic para fijar, luego presiona `Ctrl+R` para aplicar el remesh. Útil para uniformizar la geometría cuando se estira.
- **Dyntopo (malla dinámica):** Actívalo marcando el check en el panel superior (junto a Dyntopo). Ajusta **Detail Size** (menor número = más detalle). Usa **Relative Detail** (por defecto) para que el detalle aumente al acercar la cámara; cambia a **Constant Detail** si prefieres resolución fija (ajusta **Resolution** manualmente). Dyntopo añade geometría solo donde esculpes.
- **Front Faces Only:** En el menú desplegable del pincel (junto a Brush Settings), marca **Front Faces Only** para evitar que el pincel afecte la cara posterior de la malla (especialmente útil en zonas delgadas como aletas).
- **Stroke settings:** En el panel de pincel > **Stroke**, cambia el método:  
  - **Space:** espaciado entre "sellos" del pincel (ajusta **Spacing**; valores altos crean puntos separados).  
  - **Line:** haz clic y arrastra para definir una línea recta, suelta para aplicarla.
- **Pintado sobre vértices (Vertex Paint):** En el espacio Sculpting, cambia el modo a **Paint** (menú desplegable en la barra superior). Selecciona color en el selector (arriba a la izquierda). Pinta directamente sobre la malla; la simetría (eje X) también funciona aquí.
- **Material para vertex paint:** En el espacio **Shading**, añade un material nuevo al objeto. Presiona `Shift+A` > **Attribute**, selecciona **Color Attribute** y elige el nombre del atributo de color que pintaste. Conecta la salida **Color** del nodo Attribute a la entrada **Base Color** del Principled BSDF.
- **Ajustes finales de render:** En **Render Properties** > **Color Management**, cambia **Look** a **Very High Contrast** para saturar colores. En la vista **Material Preview**, elige un HDRI (icono de círculo junto a la luz) y ajusta la intensidad. Reduce **Roughness** en el material del pez para mayor reflectividad.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa una **icosphere con Subdivisions 7** como malla base para esculpido; un cubo low-poly no permite detalle.
- Usa **tableta gráfica** (incluso básica, sin pantalla) para mejor control de presión y trazos suaves; el ratón es viable pero más difícil.
- Usa **F** para cambiar tamaño del pincel y `Shift+F` para fuerza; memoriza estos atajos para fluidez.
- Usa **`Ctrl`** mientras esculpes para hundir clay en lugar de añadirlo (efecto inverso en todos los pinceles).
- Usa **`Shift`** como atajo temporal para el pincel Smooth; suelta para volver al pincel anterior.
- Usa **simetría en X** al inicio de cualquier personaje/objeto simétrico; activa **Front Faces Only** en pinceles que puedan atravesar la malla (Clay Strips, Crease, etc.).
- Usa **Remesh (`R` + `Ctrl+R`)** cuando la geometría se estire demasiado o necesites uniformidad; usa **Dyntopo** para detalle localizado y progresivo (especialmente en áreas finas como escamas o branquias).
- Usa **Vertex Paint** solo para coloreado rápido y estilizado; no es un sustituto de UV mapping + texturas para alta calidad.
- Usa **nodo Attribute > Color Attribute** en Shader Editor para que los colores pintados aparezcan en el material; conéctalo a **Base Color** del Principled BSDF.

## Errores comunes / gotchas
- **Olvidar activar simetría antes de esculpir:** Si ya esculpiste un lado, usa **Symmetrize** en el menú de simetría para reflejarlo; no se puede deshacer parcialmente.
- **Esculpir en malla low-poly:** No se añade detalle; la malla debe ser densa (icosphere subdividida o con Subdivision Surface aplicado).
- **No activar Front Faces Only en zonas delgadas:** El pincel puede deformar la cara opuesta de la malla (ej. aletas), arruinando la forma.
- **Olvidar re-aplicar Front Faces Only al cambiar de pincel:** Al seleccionar un pincel diferente, esta opción se desactiva; verifícala siempre.
- **Usar Dyntopo sin ajustar Detail Size:** Si el detalle es muy bajo (Detail Size alto), no se añade geometría fina; reduce el número para más resolución.
- **Confundir Remesh con Dyntopo:** Remesh uniformiza toda la malla; Dyntopo añade geometría solo donde esculpes. No son intercambiables.
- **No guardar (`Ctrl+S`) antes de aplicar modificadores o remesh:** Si algo sale mal, no hay marcha atrás.
- **Vertex Paint no visible en viewport:** Debes añadir el nodo **Attribute > Color Attribute** en el Shader Editor y conectarlo al Base Color; de lo contrario, el material ignora la pintura.
- **Usar Stroke > Line sin ajustar Spacing:** Si el espaciado es muy alto, la línea se aplica como puntos separados en lugar de un trazo continuo.

===== Ml2t8uxPAQU.md =====
# 6 Blender Hard-Surface Modeling Tricks I Wish I Knew Earlier
**Fuente:** CG Boost | https://youtu.be/Ml2t8uxPAQU

## Qué enseña
Seis técnicas de modelado hard-surface en Blender para lograr formas suaves con bordes definidos usando baja densidad de polígonos, modificadores y flujos de trabajo eficientes. Cubre desde la creación de geometría base hasta la integración perfecta de piezas separadas mediante datos de normales.

## Técnicas accionables
- **Modelado low-poly con Subdivision Surface:** Añade cilindro con **Shift+A > Mesh > Cylinder** (16 vértices). En Edit Mode (**Tab**), escala en Y con **S > Y**. Selecciona polígonos superior e inferior con **3** (poly select), presiona **I** para inset, luego clic derecho > **Bridge Faces**. Selecciona aristas en edge mode (**2**), presiona **Ctrl+B** para bevel. Para el frente, selecciona grupo de polígonos, **E** para extruir, **S > Y** para escalar. Con Loop Tools activado (Preferencias > Add-ons > Mesh: Loop Tools), clic derecho > **Loop Tools > Circle**, escala con **S**, **E** para extruir, **I** para inset, otra **E** hacia adentro.
- **Subdivision y creases:** Añade modificador **Subdivision Surface** con **Ctrl+3**. En Edit Mode, selecciona una arista en edge mode, **Shift+G > Face Angles** para seleccionar aristas por ángulo. Ajusta el umbral en la esquina inferior izquierda. Presiona **Shift+E** para crear crease. Para aristas sin crease, selecciona el loop con **Alt+clic izquierdo**, **Shift+E** y arrastra a -1. Activa **Shade Smooth** (clic derecho en Object Mode). Oculta wireframes con **Alt+Shift+Z** (desactiva overlays).
- **Bevel por peso:** En Edit Mode, selecciona arista con crease, **Shift+G > Crease** para seleccionar todas las creases. **Ctrl+E > Edge Bevel Weight**, asigna valor **1**. Añade modificador **Bevel**, establece **Limit Method > Weight**, activa **Shading > Harden Normals**.
- **Pin de modificadores (Blender 4.2+):** Para mirror sin pinching, selecciona modificador **Bevel**, haz clic en el pin **Pin to Last** (icono de chincheta). Haz lo mismo con **Subdivision Surface**. Luego añade **Mirror** modifier: ocurrirá antes en la pila.
- **Cables con curvas:** **Shift+A > Curve > Bezier**. En Edit Mode, selecciona todo (**A**), elimina vértices (**X > Delete Vertices**). Activa **Draw Mode** (icono de lápiz en la barra superior). En vista ortográfica (tecla **5** del teclado numérico), activa snap a vista (**Shift+Tab** para snap, elige **Face** y **Align Rotation to Target**). Dibuja la curva desde el cursor. En Edit Mode, activa **Surface** en la barra superior para dibujar sobre geometría existente.
- **Uniones en ángulo recto:** Ten dos cilindros unidos como un solo objeto (**Ctrl+J**). Selecciona las aristas de los extremos, clic derecho > **Bridge Edge Loops**. Ajusta **Number of Cuts** (ej. 5) y **Smoothness**.
- **Shrinkwrap + Data Transfer para piezas pegadas:** Asegura que el origen del objeto esté en la base: en Edit Mode, selecciona el loop inferior con **Alt+clic izquierdo**, **Shift+S > Cursor to Selected**. En Object Mode, **Object > Set Origin > Origin to 3D Cursor**. En snap options, activa **Face** y **Align Rotation to Target**. Mueve con **G**, mantén **Ctrl** para snap. En Edit Mode, selecciona los polígonos exteriores, ve a **Vertex Groups** (pestaña de datos del objeto), crea nuevo grupo, **Assign**. Añade modificador **Shrinkwrap**, target = objeto base, **Vertex Group** = el creado. Duplica con **Shift+D**. Añade modificador **Data Transfer**, source = objeto base, expande **Face Corner Data > Custom Normals**, método **Nearest Face Interpolated**. Activa **Vertex Group** para aislar el efecto. Selecciona los demás objetos, luego el que tiene Data Transfer, y en el menú desplegable del modificador elige **Copy to Selected**.

## Reglas para el erudito
- Usa **Shift+G > Face Angles** para seleccionar automáticamente aristas con bordes duros antes de aplicar creases con **Shift+E**.
- Usa **Shift+G > Crease** para seleccionar todas las aristas con crease y luego asigna **Edge Bevel Weight** con **Ctrl+E** antes de añadir el modificador **Bevel** con **Limit Method > Weight**.
- Usa **Pin to Last** en los modificadores **Bevel** y **Subdivision Surface** cuando añadas un **Mirror** modifier para evitar pinching en la línea de simetría.
- Usa **Draw Mode** en curvas Bezier para trazar cables directamente sobre la superficie, activando **Surface** en Edit Mode para que se adhieran a la geometría.
- Usa **Shrinkwrap** con un **Vertex Group** para pegar piezas a la superficie, y luego **Data Transfer** con **Custom Normals > Nearest Face Interpolated** para que la unión sea invisible.

## Errores comunes / gotchas
- Olvidar activar **Loop Tools** en Preferencias > Add-ons antes de usar **Loop Tools > Circle**; si no está activado, la opción no aparece en el menú contextual.
- Aplicar **Mirror** modifier después de **Bevel** y **Subdivision Surface** causa pinching; la solución es usar **Pin to Last** en los modificadores para que el mirror ocurra antes en la pila.
- No ajustar el origen del objeto al fondo antes de snap; sin **Set Origin to 3D Cursor** tras posicionar el cursor en el loop inferior, el snap no alinea correctamente la pieza.
- Usar **Data Transfer** sin restringir con **Vertex Group** provoca que las normales se transfieran a toda la pieza, creando sombras no deseadas en áreas que no tocan la superficie objetivo.
- No copiar el modificador **Data Transfer** a los duplicados con **Copy to Selected**; cada duplicado necesita su propio Data Transfer para que la unión sea consistente.

===== MzJ-w6Zmpco.md =====
# Cycles optimization - render like a pro
**Fuente:** Robin Squares | https://youtu.be/MzJ-w6Zmpco

## Qué enseña
Estrategias para optimizar renders en Cycles reduciendo el uso de VRAM y tiempo de renderizado, desde la gestión de texturas y materiales hasta el uso de view layers y ajustes de ruido. Explica cómo diagnosticar cuellos de botella (crash por VRAM, ruido excesivo, tiempos de carga) y solucionarlos sin degradar la calidad visual donde importa.

## Técnicas accionables
- **Liberar VRAM:** Abre el Administrador de tareas con `Control + Shift + Escape` y monitorea el gráfico de VRAM. Si se llena y crash, reduce texturas: en el outliner activa "Data API" view para ver imágenes, luego redimensiona las más pesadas a 1K (usa el add-on "Optimize Tools" para seleccionar y presionar "Resize").
- **Renderizar por view layers:** Crea view layers separados (pestaña "View Layer") para dividir la escena en profundidades (fondo, primer plano) y renderiza una capa a la vez, así el límite de VRAM deja de ser problema.
- **Ajustar noise threshold:** En las propiedades de render (pestaña "Render"), baja el valor de "Noise Threshold" (ej. 0.1, 0.05, 0.01) según el compromiso calidad/velocidad. Alternativa: activa "Scrambling Distance" en automático y baja el slider para reducir aleatoriedad entre muestras (no recomendado para animaciones por parpadeo).
- **Reducir ray bounces:** En "Render Properties > Light Paths > Max Bounces", baja el número (ej. de 12 a 4) y experimenta hasta encontrar el punto justo donde la calidad aún es aceptable.
- **Usar temporal denoising:** En "Render Properties > Denoising", selecciona "Temporal" en vez de "OpenImageDenoise" para reducir el "boiling" (hervido) en animaciones.
- **Aplicar upscaling e interpolación:** Reduce la resolución a la mitad (ej. 1920x1080 → 960x540) para reducir el tiempo de render por factor de 4. Para animaciones, renderiza solo fotogramas pares e interpola los impares.
- **Activar "Persistent Data":** En "Render Properties > Performance > Memory", marca "Persistent Data" para mantener archivos en RAM entre fotogramas (desactivar si hay bugs o necesitas liberar RAM).
- **Diagnosticar ruido excesivo:** Usa la herramienta de anotación (Annotation tool) para rodear áreas ruidosas. Crea un nuevo view layer con "Material Override" (un material blanco simple) en "View Layer Properties > Override". Si el ruido desaparece, el problema son materiales; si persiste, son luces.
- **Aislar luces con Light Groups:** En "View Layer Properties > Light Groups", crea grupos. Luego, en el panel de objeto de cada luz (pestaña "Object Data" > "Light Groups"), asigna la luz a un grupo. Así puedes ver qué luz genera ruido.
- **Obtener log de tiempos de carga:** Usa el gestor de renders "Flamenco" (gratuito, de Blender para estudios). Al renderizar desde Flamenco, se genera un archivo de texto con los tiempos de cada carga. Conviértelo a hoja de cálculo (ej. con Python) y ordena por duración para identificar archivos pesados o lentos.

## Reglas para el erudito
- Usa "Optimize Tools" (add-on) para redimensionar texturas masivamente y eliminar duplicados con un clic.
- Cuando un material sea pesado, revisa si tiene nodos de "Noise Texture", "Bevel" o "Ambient Occlusion" de alta resolución; reduce su detalle o suéltalos.
- Para interiores, abre una pared o elimina el techo completo para acelerar el render (menos geometría que tracer).
- Si usas niebla volumétrica (fog), renderiza en Cycles solo los pases "Direct" y "Indirect" de volumen, luego mezcla con un "Mist Pass" (pase de niebla) y desenfoca la imagen; alternativa: renderiza el volumen en Eevee y combínalo en postproducción.
- Para stills, usa "Scrambling Distance" automático y baja el slider; para animaciones, evítalo y prefiere "Temporal Denoising".
- Si un render crashea por VRAM, presiona `Windows + Control + Shift + B` para reiniciar el GPU y liberar memoria.
- Revisa que todas las normales estén azules (en "Viewport Overlays > Face Orientation"); normales mal orientadas arruinan el render.

## Errores comunes / gotchas
- **Crash por VRAM sin saberlo:** No monitorear el Administrador de tareas (`Control + Shift + Escape`) lleva a pensar que el problema es otro. La VRAM llena es la causa más común.
- **Texturas 4K/8K innecesarias:** Usar imágenes de alta resolución y bit depth (16bit/32bit) en objetos de fondo o pequeños; redimensiona a 1K o menos.
- **Noise threshold demasiado bajo:** Valores como 0.01 pueden alargar el render sin mejora visible; usa la cheat sheet del video para decidir.
- **Scrambling Distance en animaciones:** Causa parpadeo entre fotogramas; solo usarlo en stills.
- **Ray bounces muy altos:** Aumentan el tiempo sin beneficio notable; bajar a 4-6 suele ser suficiente.
- **Persistent Data activado con bugs:** Si hay errores o necesitas liberar RAM, desactívalo.
- **Fog volumétrico en Cycles:** Es extremadamente lento; mejor usar el truco de mezclar pases direct/indirect con Mist Pass o renderizar el volumen en Eevee.
- **Fireflies por luces pequeñas y fuertes:** Luces pequeñas, potentes y cerca de superficies generan puntos brillantes; hazlas más grandes, más débiles o aléjalas (no alteres los valores de luz si daña la estética).
- **Ignorar el log de carga:** No revisar qué archivos tardan en cargarse (texturas comprimidas, disco lento, archivos enormes) alarga innecesariamente el render.

===== SVl_tlbGrh4.md =====
# Beginner Modelling Tutorial Blender
**Fuente:** CBaileyFilm | https://youtu.be/SVl_tlbGrh4

## Qué enseña (2-3 líneas)
Tutorial introductorio de modelado 3D en Blender para principiantes absolutos, partiendo desde un cubo vacío hasta construir un caza TIE (Star Wars). Cubre herramientas esenciales de modelado, selección de loops, extrusión, biselado, inserciones, modificadores (Bevel, Mirror, Subdivision Surface) y corrección de normales.

## Técnicas accionables
- **Limpiar escena:** `A` para seleccionar todo, `X` para eliminar.
- **Agregar UV Sphere:** `Shift+A` → Mesh → UV Sphere. En el popup (triángulo desplegable), ajustar **Segments: 16**, **Rings: 8**.
- **Entrar/salir de Edit Mode:** `Tab`.
- **Seleccionar todo en Edit Mode:** `A`.
- **Rotar precisión:** `R` → `Y` → `90` (rota 90° en eje Y).
- **Cambiar modos de selección:** `1` (vértices), `2` (aristas), `3` (caras).
- **Seleccionar loop de aristas/caras:** `Alt` + clic izquierdo sobre una arista/cara.
- **Deseleccionar todo:** `Alt` + `A`.
- **Extruir:** `E`. Para cancelar movimiento sin deshacer extrusión: `Escape` (deja aristas duplicadas en su lugar).
- **Escalar:** `S`. Escalar en eje específico: `S` → `X`/`Y`/`Z`.
- **Mover:** `G`. Mover en eje específico: `G` → `X`/`Y`/`Z`.
- **Biselar aristas:** `Ctrl` + `B`, arrastrar para ajustar ancho.
- **Inset (insertar caras):** `I`. Para inserciones individuales por cara: en el popup, marcar **Individual**.
- **Loop Cut (corte de bucle):** `Ctrl` + `R`. En modo amarillo, rueda del mouse para múltiples cortes. Clic para confirmar posición, luego deslizar y clic de nuevo.
- **Grid Fill:** `F3` → escribir "Grid Fill". Ajustar **Offset** y probar **Simple Blending** on/off.
- **Duplicar:** `Shift` + `D` → `Escape` (deja duplicado en su lugar).
- **Escalar con valor exacto:** `S` → `Z` → `-1` (voltea en Z).
- **Snapping (magnetismo):** Activar icono de imán → desplegable → **Vertex**. Mover con `G` para que el vértice seleccionado se adhiera a otro vértice.
- **Merge por distancia:** `M` → **By Distance**. Verificar en popup cuántos vértices se eliminaron.
- **Recalcular normales:** En Edit Mode, `A` para seleccionar todo → Mesh → Normals → **Recalculate Outside**.
- **Face Orientation (depuración):** Menú desplegable de overlays (esfera con círculos) → **Face Orientation** (caras azules = correctas, rojas = invertidas).
- **Shade Auto Smooth:** Clic derecho sobre el objeto → **Shade Auto Smooth**.
- **MatCap + Cavity (vista de modelado):** Desplegable de shading (esfera) → **MatCap** → en el mismo menú, activar **Cavity** → tipo **Both** → subir **Valley** al máximo.
- **Modificador Bevel:** Pestaña de llave inglesa → Add Modifier → **Bevel**. Parámetros: **Segments: 2**. Si da resultados extraños, cambiar **Offset** a **Percent**.
- **Modificador Mirror:** Add Modifier → **Mirror**. Activar solo eje deseado (ej. Y). Activar **Clipping** y **Merge**.
- **Modificador Subdivision Surface:** Add Modifier → **Subdivision Surface**. Ajustar **Viewport Levels** y **Render Levels** (ej. 3).

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa `Alt` + clic para seleccionar loops completos de aristas o caras solo cuando todas las caras del loop tengan 4 lados; si hay triángulos, la selección se detiene.
- Usa `E` + `Escape` cuando quieras extruir pero mantener las nuevas aristas/caras exactamente en la posición original (para luego escalarlas o moverlas por separado).
- Usa `I` con **Individual** activado cuando quieras inserciones independientes en cada cara seleccionada; desactívalo para una inserción grupal uniforme.
- Usa `Ctrl` + `R` con rueda del mouse para crear múltiples cortes paralelos de una sola vez.
- Usa `M` → **By Distance** siempre que tengas vértices duplicados (ej. tras duplicar y mover con snapping) para fusionarlos.
- Usa **Recalculate Outside** (Mesh → Normals) cuando notes sombreado extraño o modificadores (Bevel, Subdivision Surface) se comporten de forma errática.
- Usa **Face Orientation** para diagnosticar caras con normales invertidas (rojas) antes de aplicar modificadores.
- Usa **MatCap** + **Cavity** (tipo Both, Valley alto) para visualizar claramente aristas y cavidades durante el modelado.
- Usa **Shade Auto Smooth** después de aplicar modificadores para obtener un sombreado suave en superficies curvas y aristas marcadas automáticamente.
- Usa el modificador **Mirror** con **Clipping** activado para asegurar que los vértices en el eje de simetría se fusionen al acercarlos.
- Usa el modificador **Bevel** con **Percent** en lugar de **Offset** cuando el biselado produzca resultados deformes en geometría compleja.

## Errores comunes / gotchas
- **Olvidar atajos:** Si no recuerdas un hotkey, usa `F3` en el viewport y escribe el nombre de la herramienta (ej. "Extrude", "Merge").
- **Extrusión sin movimiento:** Si presionas `E` y luego `Escape`, las nuevas aristas quedan exactamente sobre las originales (duplicadas). Esto es útil, pero puede confundir si no se escala o mueve después.
- **Selección de loop rota:** `Alt` + clic no funciona en loops que contengan caras triangulares o de 5+ lados; en esos casos, selecciona manualmente con `Shift` + clic.
- **Normales invertidas tras duplicar y escalar negativo:** Al duplicar y escalar `-1` en un eje, las caras se voltean (normales hacia adentro). Solución: seleccionar todo en Edit Mode y usar **Recalculate Outside**.
- **Modificador Bevel deforma el mesh:** Generalmente indica normales invertidas. Activa **Face Orientation** para verificar (caras rojas) y corrige con **Recalculate Outside**.
- **Merge por distancia no funciona:** Asegúrate de que la distancia de merge (popup tras seleccionar **By Distance**) sea suficiente para alcanzar los vértices duplicados (default 0.1 suele bastar).
- **Grid Fill no genera resultado limpio:** Ajusta el **Offset** y prueba activar/desactivar **Simple Blending** para mejorar la interpolación.
- **Snapping no responde:** Verifica que el icono de imán esté activado y que el tipo de snapping (Vertex, Edge, Face) sea el correcto.
- **Olvidar activar Clipping en Mirror:** Sin Clipping, los vértices pueden cruzarse en el eje de simetría y no fusionarse, dejando un hueco.

===== W337AL7n3dc.md =====
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

===== Wg244y2f9Fw.md =====
# Learn the BASICS of Material Shading in BLENDER (Part 1)
**Fuente:** Brandon 3D | https://youtu.be/Wg244y2f9Fw

## Qué enseña
Introducción completa al sistema de materiales y sombreado en Blender usando Cycles. Cubre el panel de propiedades de material, el editor de sombreadores, el nodo Principled BSDF, nodos de textura procedural (Musgrave, Voronoi, Wave, Noise, Brick), nodos de conversión (ColorRamp, Mix RGB, Math), nodos de mapeo (Mapping, Texture Coordinate), shaders de volumen (Volume Absorption, Volume Scatter, Principled Volume) y el addon Node Wrangler con sus atajos esenciales.

## Técnicas accionables
- Para crear un material: selecciona el objeto, ve al panel **Material Properties** (icono de esfera roja), presiona **New**.
- Para asignar múltiples materiales a un mismo objeto: en **Material Properties**, presiona **+** para añadir un slot, crea o selecciona el material, entra en **Edit Mode** (Tab), selecciona las caras deseadas, elige el material en el slot y presiona **Assign**.
- Para renombrar un material: haz doble clic sobre su nombre en el slot de materiales.
- Para abrir el **Shader Editor**: cambia al workspace **Shading** en la barra superior.
- Para activar **Node Wrangler**: ve a **Edit > Preferences > Add-ons**, busca "node wrangler" y marca la casilla.
- Para añadir un nodo en el Shader Editor: presiona **Shift+A** y busca por nombre o navega en las categorías.
- Para duplicar un nodo: selecciónalo y presiona **Shift+D**.
- Para eliminar un nodo: selecciónalo y presiona **X**.
- Para mover un nodo: selecciónalo y presiona **G**, o arrástralo con el ratón.
- Para conectar sockets: arrastra desde un socket de salida (derecha del nodo) hasta un socket de entrada (izquierda).
- Para desconectar una conexión: con **Node Wrangler** activado, presiona **Ctrl + clic derecho** y arrastra cortando las líneas.
- Para insertar un nodo entre dos conectados: arrastra el nodo sobre la línea de conexión existente.
- Para ver la contribución de un solo nodo: con **Node Wrangler** activado, presiona **Ctrl+Shift** y haz clic sobre el nodo. Para restaurar, **Ctrl+Shift** clic sobre el nodo shader final.
- Para añadir automáticamente nodos **Mapping** y **Texture Coordinate**: selecciona un nodo de textura y presiona **Ctrl+T** (requiere Node Wrangler).
- Para agrupar nodos: selecciona varios nodos y presiona **Ctrl+J**. Para editar el grupo, selecciona el grupo y presiona **Tab**. Para exponer un parámetro, conecta un socket vacío del **Group Input** al valor deseado dentro del grupo.
- Para abrir el panel lateral del Shader Editor: presiona **N**.
- Para añadir un nodo a **Quick Favorites**: haz clic derecho sobre el nodo en el menú **Shift+A** y elige **Add to Quick Favorites**. Luego presiona **Q** en el Shader Editor para acceder.
- Para usar **ColorRamp** después de una textura: añade el nodo **ColorRamp** (Shift+A > Converter > ColorRamp), conecta la salida de la textura a su entrada **Factor**, y la salida **Color** al socket deseado. Ajusta los puntos de color arrastrándolos o seleccionándolos y cambiando su color.
- Para mezclar dos shaders: añade un nodo **Mix Shader** (Shift+A > Shader > Mix Shader). Conecta los dos shaders a los sockets **Shader** verde superior e inferior. El **Factor** (gris, 0-1) controla la mezcla: 0 = 100% shader superior, 1 = 100% shader inferior.
- Para mezclar dos colores/texturas: añade un nodo **Mix RGB** (Shift+A > Color > Mix RGB). Conecta las entradas de color **A** y **B**, ajusta el **Factor** y elige el **Blend Mode** (Mix, Add, Multiply, etc.).
- Para mapear una textura procedural: añade **Mapping** (Shift+A > Vector > Mapping) y **Texture Coordinate** (Shift+A > Input > Texture Coordinate). Conecta la salida **Object** o **Generated** de Texture Coordinate al socket **Vector** de Mapping, y la salida **Vector** de Mapping al socket **Vector** de la textura.
- Para usar volumen en un objeto: en el Shader Editor, elimina el nodo Principled BSDF, añade un shader de volumen (ej. **Principled Volume** en Shift+A > Shader) y conéctalo al socket **Volume** del **Material Output**.
- Para animar una textura procedural: cambia el tipo de dimensión a **4D** en el nodo de textura (ej. Noise Texture, Musgrave Texture), y keyframe el valor **W**.
- Para cambiar el **IOR** (Índice de Refracción) en el shader **Glass BSDF**: ajústalo en el parámetro **IOR** (valor por defecto 1.45 para vidrio).

## Reglas para el erudito
- Usa el nodo **Principled BSDF** como base para casi todos los materiales de superficie; es el más versátil.
- Usa **Cycles** como motor de render para resultados más precisos con materiales; los ajustes pueden diferir ligeramente en **Eevee**.
- Usa **Node Wrangler** siempre activado; actívalo en **Edit > Preferences > Add-ons**.
- Usa **ColorRamp** después de texturas procedurales para controlar la transición entre valores y asignar colores personalizados.
- Usa sockets de color amarillo para información de color, sockets verdes para shaders completos, sockets grises para valores numéricos (0-1) o escala de grises, y sockets púrpura para información vectorial (mapeo, normales).
- Conecta siempre sockets del mismo color cuando sea posible (verde con verde, púrpura con púrpura); amarillo y gris pueden intercambiarse si el contenido es escala de grises.
- Usa el nodo **Mapping** junto con **Texture Coordinate** (salida **Object** o **Generated**) para controlar posición, rotación y escala de texturas procedurales.
- Usa el nodo **Math** entre nodos para operaciones aritméticas (multiplicar, sumar, etc.) sobre valores de grises.
- Usa **Volume Scatter** o **Principled Volume** para niebla o efectos volumétricos; ten en cuenta que son muy demandantes para el render.
- Usa **Ctrl+J** para agrupar nodos y **Tab** para entrar/salir del grupo; nombra y colorea los grupos en el panel lateral (**N**) para organizar árboles complejos.
- Usa **Ctrl+Shift + clic** sobre un nodo para aislar visualmente su contribución; restaura con **Ctrl+Shift + clic** sobre el shader final.

## Errores comunes / gotchas
- Olvidar activar **Node Wrangler**: sin él, atajos como **Ctrl+T** (auto-mapping) y **Ctrl + clic derecho** (cortar conexiones) no funcionan.
- Conectar un shader (socket verde) a un socket de color (amarillo) o viceversa: no funcionará; los sockets verdes solo conectan con otros verdes.
- Intentar conectar dos salidas a un mismo socket de entrada: un input solo acepta una conexión; usa nodos **Mix** o **Math** para combinar.
- Asignar un material a todo el objeto cuando se quería solo una parte: recuerda entrar en **Edit Mode**, seleccionar caras y presionar **Assign** en el slot correcto.
- Usar valores mayores a 1 en sockets grises: aunque es posible escribir valores >1, muchos parámetros (como Roughness) están diseñados para el rango 0-1; valores extremos pueden dar resultados no deseados.
- No conectar **Texture Coordinate** al nodo **Mapping**: sin Texture Coordinate, el Mapping no tiene referencia y la textura puede desaparecer o mapearse incorrectamente.
- Usar volumen en objetos sin suficiente geometría o con muestras bajas: el render de volumen es muy lento; ajusta los samples de render y usa con moderación.
- Confundir **Transmission** (transmisión de luz a través del material) con **Alpha** (transparencia): Transmission permite que la luz pase (como en vidrio), Alpha controla la opacidad (1 = opaco, 0 = transparente).
- No renombrar los materiales: cuando el proyecto crece, es fácil perderse entre "Material.001", "Material.002", etc.

===== WreZ_VKDn4M.md =====
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

===== a5KOdVft93E.md =====
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

===== aDA-BCOaqFY.md =====
# Toon shading and line art for characters/Blender tutorial
**Fuente:** Arrietty 3D | https://youtu.be/aDA-BCOaqFY

## Qué enseña
Cómo crear un sombreado tipo toon 2D en Blender usando nodos (Diffuse BSDF + Shader to RGB + Color Ramp) y cómo añadir line art con Grease Pencil para personajes animados. También cubre trucos para sombras duras, transiciones de color en animación y control del color del mundo sin afectar la iluminación del modelo.

## Técnicas accionables
- En **Render Properties**, cambia **Color Management** a **Standard** (no Filmic) para control total del look toon.
- En **Shading tab**, agrega un nuevo material: borra **Principled BSDF**, añade **Diffuse BSDF** → **Shader to RGB** → **Color Ramp**. Conecta en ese orden.
- En la **Color Ramp**, cambia el tipo de interpolación a **Constant** para obtener colores planos sin degradado.
- Para duplicar materiales sin afectar el original: selecciona objetos, pulsa **Ctrl+L** → **Link Materials**, luego pulsa el icono de duplicar (dos cuadrados superpuestos) junto al nombre del material.
- Para asignar múltiples materiales a un objeto: pulsa **+** en el panel de materiales, entra en **Edit Mode** (Tab), selecciona caras con **A** (todo) o clic derecho, elige el segundo material y pulsa **Assign**.
- Para animar transición de color: añade dos cadenas **Diffuse BSDF → Shader to RGB → Color Ramp**, conéctalas a un **Mix Shader**. En **Material Properties**, sitúa el cursor sobre **Factor** del Mix Shader, pulsa **I** para keyframe, avanza fotogramas, cambia el valor y pulsa **I** de nuevo.
- Para controlar el color del mundo sin afectar el sombreado del modelo: en **World** shader, añade **Light Path**, duplica el nodo **Background**, conéctalos con un **Mix Shader** usando el output **Is Camera Ray** del Light Path como factor.
- Para sombras duras tipo 2D: selecciona la luz, en **Light Properties** fija **Radius**, **Filter** y **Resolution Limit** a **0**.
- Para line art: pulsa **Shift+A** → **Grease Pencil** → **Collection Line Art**. En **Modifiers** selecciona la colección deseada.
- Para evitar líneas en objetos fuera de la colección: en el modificador Line Art, activa **Intersection with Contour** bajo **Chaining**, luego en **Intersections** marca la primera casilla para añadir un **Collection Mask**.
- Para duplicar line art: selecciona el objeto Grease Pencil y pulsa **Shift+D**.
- Para añadir líneas manuales: entra en **Edit Mode**, selecciona una arista, ve al menú superior y pulsa **Mark Sharp**.
- Para line art de silueta en cabello: en el modificador Line Art, cambia de **Contour** a **Silhouette** (requiere que el objeto tenga sombreado **Smooth**). Desactiva **Intersections**.

## Reglas para el erudito
- Usa **Color Management = Standard** cuando busques un look toon 2D plano; reserva Filmic para renders realistas.
- Usa **Constant** en la Color Ramp cuando quieras bandas de color nítidas sin transiciones suaves.
- Usa **Ctrl+L** para enlazar materiales entre objetos y luego duplica el material si necesitas variantes de color sin perder el original.
- Usa **Radius, Filter y Resolution Limit = 0** en las luces cuando necesites sombras perfectamente duras y nítidas.
- Usa **Light Path + Mix Shader** en el World cuando quieras cambiar el color de fondo sin alterar la iluminación del modelo.
- Usa **Silhouette** en el line art del cabello cuando solo quieras líneas en el contorno exterior, no en pliegues internos.
- Usa **Mark Sharp** en aristas cuando necesites líneas adicionales que el line art automático no genera.

## Errores comunes / gotchas
- Si el line art afecta objetos fuera de la colección deseada, activa **Intersection with Contour** y añade un **Collection Mask** en las intersecciones.
- El sombreado con **Diffuse BSDF + Shader to RGB** puede mezclar sombras y luces en cabello curvo; solución: separa manualmente las geometrías en dos materiales (luz/sombra) o usa transición animada con Mix Shader.
- La transición animada de color (keyframes en Factor del Mix Shader) es estática por ángulo de cámara; no se actualiza dinámicamente con el movimiento del personaje, solo con keyframes manuales.
- El line art en modo **Silhouette** solo funciona correctamente si el objeto tiene sombreado **Smooth**; de lo contrario, aparecen líneas no deseadas.
- Al cambiar el color del mundo directamente, afecta el sombreado del modelo; usa siempre **Light Path** para aislar el fondo.

===== aO0eUnu0hO0.md =====
# Blender Tutorial: Geometry Nodes for Beginners - Part 1
**Fuente:** Blender Guru | https://youtu.be/aO0eUnu0hO0

## Qué enseña (2-3 líneas)
Introducción a Geometry Nodes como sistema de post-procesamiento de mallas basado en nodos. Se explica cómo crear un sistema de dispersión de objetos (cristales de azúcar) sobre un cubo usando nodos de distribución de puntos, instancias y valores aleatorios, sentando las bases para entender el flujo de trabajo de nodos en Blender.

## Técnicas accionables
- Activa la pestaña **Geometry Nodes** en la barra superior para abrir el editor de nodos y la hoja de cálculo (spreadsheet).
- Haz clic en **New** para crear un sistema Geometry Nodes aplicado al objeto seleccionado; se añade automáticamente el modificador **Geometry Nodes** en el stack de modificadores.
- Para añadir nodos, usa **Shift+A** y busca por nombre o navega por los menús (ej. **Points > Distribute Points on Faces**).
- Conecta nodos arrastrando desde las salidas (círculos de color) a las entradas del mismo color (verde a verde, púrpura a púrpura).
- Usa el nodo **Join Geometry** (Shift+A > Search > "Join Geometry") para combinar múltiples entradas de geometría en una sola salida; su entrada es extensible (puedes añadir más conexiones).
- Para que los puntos dispersos sean visibles en render, añade el nodo **Instance on Points** después de **Distribute Points on Faces** y conecta un objeto en su entrada **Instance**.
- Crea un objeto separado (ej. un cubo escalado a 0.1 con **S** > **0.1** > **Enter**) y renómbralo (ej. "sugar crystal"). Arrástralo desde el Outliner al editor de nodos para generar automáticamente un nodo **Object Info** con ese objeto referenciado.
- Aplica la escala del objeto instanciado con **Ctrl+A** > **Scale** para que las transformaciones se reflejen correctamente en Geometry Nodes.
- Para rotación aleatoria por punto, usa el nodo **Random Value** (Shift+A > Utilities > Random Value) en modo **Vector** y conéctalo a **Rotation** del nodo **Instance on Points**.
- Para escala aleatoria manteniendo la forma cúbica, usa **Random Value** en modo **Float** y conéctalo a **Scale** del nodo **Instance on Points**; evita que el mínimo sea 0 para que no aparezcan instancias invisibles.
- Para valores de rotación en radianes: usa **2*pi** o **tau** (τ) para una rotación completa de 360 grados; pi (π) equivale a 180 grados.
- Para fijar el editor de nodos a un objeto específico, activa el icono de **pin** (alfiler) en la cabecera del editor de nodos; así no desaparece al seleccionar otro objeto.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Join Geometry** cuando necesites combinar la geometría original con los puntos instanciados en una sola salida.
- Usa **Random Value** en modo **Vector** para rotaciones cuando quieras valores independientes en cada eje (X, Y, Z).
- Usa **Random Value** en modo **Float** para escala cuando quieras mantener la proporción del objeto (que siga siendo un cubo, no un prisma rectangular).
- Usa **Ctrl+A** > **Scale** en el objeto instanciado antes de referenciarlo en Geometry Nodes para evitar escalas incorrectas.
- Usa el pin en el editor de nodos cuando trabajes con múltiples objetos y no quieras perder la vista del setup actual.

## Errores comunes / gotchas
- Si conectas un **Random Value** en modo **Float** a la entrada **Rotation**, obtienes el mismo valor aleatorio para los tres ejes, generando un patrón repetitivo en lugar de rotaciones verdaderamente aleatorias.
- Si no aplicas la escala (**Ctrl+A** > **Scale**) en el objeto instanciado, las instancias aparecen con el tamaño original sin escalar (ej. un cubo de tamaño 1 en lugar de 0.1).
- Si el mínimo del **Random Value** para escala es 0, algunas instancias tendrán escala 0 y serán invisibles pero seguirán renderizando, desperdiciando recursos.
- Los valores de rotación en Geometry Nodes están en radianes, no en grados: 1 radián ≈ 57.29 grados; para 360° usa **tau** (τ = 2π ≈ 6.283).
- Al seleccionar otro objeto (cámara, luz, etc.), el editor de nodos se vacía a menos que actives el pin en la cabecera.