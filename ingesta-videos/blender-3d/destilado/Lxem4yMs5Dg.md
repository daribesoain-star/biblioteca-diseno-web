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