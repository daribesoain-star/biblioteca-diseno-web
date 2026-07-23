# Blender Tutorial - Procedural Chainlink Fence (Geometry Nodes)
**Fuente:** Blender Made Easy | https://youtu.be/CwOHqH60X-0

## Qué enseña
Creación de una valla de eslabones de cadena (chainlink fence) completamente procedural usando Geometry Nodes. La valla permite controlar altura, número de postes verticales/horizontales, grosor de eslabones y forma mediante una curva Bezier.

## Técnicas accionables
- **Preparar el eslabón base:** Elimina el cubo por defecto (X). Añade una **Bezier Curve** (Shift+A → Curve → Bezier). Entra en Edit Mode (Tab), selecciona todos los puntos, presiona **V** y elige **Vector** para eliminar suavizado. Rota 90° en vista frontal (R, 90, Enter). Extruye (E) el punto superior 1 unidad a la izquierda y el inferior 1 unidad a la derecha. Rota 45° (R, 45, Enter).
- **Suavizar esquinas del eslabón:** En Edit Mode, selecciona un punto de esquina, presiona **V** → **Automatic**. Escala (S) para ajustar el redondeo. Repite en la otra esquina.
- **Duplicar y reflejar eslabón:** Selecciona todo (A), **Shift+D** para duplicar, luego **Ctrl+M** → **X** para reflejar en eje X. Ajusta la posición.
- **Rotar eslabones entrelazados:** Cambia el punto de pivote a **Individual Origins** (en el menú superior de la ventana 3D). Selecciona los puntos del lado derecho, presiona **R** → **X** → **45**. Repite en el lado izquierdo con **R** → **X** → **-45**.
- **Escalar al tamaño real:** Añade un cubo (Shift+A → Mesh → Cube). En la barra lateral (N), establece dimensiones a **5.08 cm** (escribe "5.08 cm" y Enter). Escala el eslabón hasta que encaje dentro del cubo. Aplica escala y rotación: **Ctrl+A** → **Scale**, luego **Ctrl+A** → **Rotation**.
- **Configurar Geometry Nodes:** Crea un nuevo objeto (cubo), ve al workspace **Geometry Nodes**. Añade un **Group Input** y arrastra los objetos **Fence Line** (curva Bezier) y **Chain** (eslabón) desde el Outliner al editor de nodos.
- **Crear la línea de valla:** Añade **Mesh Line** (Shift+A → Mesh Primitives → Mesh Line). Conéctalo a **Group Output** → Geometry. Añade **Instance on Points** (Shift+A → Instances → Instance on Points). Conecta **Fence Line** a Instance. Ajusta el **Offset** Z de Mesh Line copiando la altura Z del eslabón (selecciona el eslabón, en la barra lateral N copia Z con Ctrl+C, pégalo en Offset Z).
- **Instanciar eslabones:** Añade otro **Instance on Points** (Shift+D). Conecta **Chain** a Instance. Añade **Resample Curve** (Shift+A → Curve → Resample Curve) entre Mesh Line y el segundo Instance on Points. Cambia el modo a **Length** e introduce el ancho X del eslabón (copia con Ctrl+C desde dimensiones del eslabón, p.ej. 0.078 m). Ajusta el Offset Z de Mesh Line a **0.067** para que los eslabones se superpongan ligeramente.
- **Dar grosor a los eslabones:** Añade **Curve to Mesh** (Shift+A → Curve → Curve to Mesh) después del segundo Instance on Points. Añade **Curve Circle** (Shift+A → Curve Primitives → Curve Circle) y conéctalo a **Profile Curve**. Ajusta **Radius** a **0.009**.
- **Corregir rotación de eslabones:** Añade **Align Euler to Vector** (Shift+A → Utilities → Align Euler to Vector). Conéctalo a **Rotation** del segundo Instance on Points. Añade **Curve Tangent** (Shift+A → Curve → Curve Tangent) y conéctalo a **Vector** de Align Euler to Vector.
- **Añadir postes verticales:** Duplica (Shift+D) el grupo Mesh Line + Instance on Points. Conecta la salida Geometry de este nuevo Instance on Points a los Points del Instance original. Conecta **Fence Line** a Instance. Añade **Mesh to Curve** (Shift+A → Mesh → Mesh to Curve) y luego **Curve to Mesh** con otro **Curve Circle** (Radius **0.05**, activa **Fill Caps**). Une con **Join Geometry** (Shift+A → Geometry → Join Geometry).
- **Ajustar altura de postes:** Conecta el valor **Count** del Group Input al Count de Mesh Line de postes. Añade un nodo **Math** (Shift+A → Utilities → Math) en modo **Add**, suma **2** al Count para que los postes sobresalgan.
- **Añadir postes horizontales superiores:** Duplica (Ctrl+Shift+D para mantener conexiones) el Mesh Line de altura. Añade **Mesh to Curve** y **Reverse Curve** (Shift+A → Curve → Reverse Curve). Añade **Resample Curve** y **Instance on Points**. Conecta **Fence Line** a Instance. Añade **Curve to Mesh** con **Curve Circle** (Radius **0.025**). Añade **Transform** (Shift+A → Geometry → Transform) antes de Curve to Mesh, con **Translate X = 0.025** para desplazar los postes al exterior.
- **Añadir postes verticales traseros:** Duplica (Shift+D) el grupo de postes horizontales. Conecta la salida de Resample Curve a un nuevo **Instance on Points**. Usa **Mesh Line** como instancia. Añade **Mesh to Curve** → **Curve to Mesh** con **Curve Circle** (Radius **0.025**, Fill Caps). Para desplazar hacia atrás, usa otro **Transform** con **Translate X = -0.025** antes de Instance on Points.
- **Organizar parámetros:** En el panel de modifiers (N → Item), renombra los valores de entrada: **Height** para el Count de altura, **Horizontal Poles** para el Count/Length de postes horizontales.
- **Añadir material:** Añade **Set Material** (Shift+A → Material → Set Material) antes de Join Geometry. Crea un material metálico (en Material tab, nombre "Metal", Base Color negro, Metallic 1, Roughness bajo). Selecciona el material en Set Material.

## Reglas para el erudito
- Usa **Vector** (V → Vector) en los puntos de la curva base para evitar suavizado no deseado en los eslabones.
- Usa **Individual Origins** como punto de pivote al rotar eslabones para que giren sobre sí mismos, no alrededor del centro del objeto.
- Aplica **Ctrl+A → Scale** y **Ctrl+A → Rotation** después de escalar el eslabón para que Geometry Nodes use las dimensiones correctas.
- Usa **Length** en Resample Curve cuando quieras que la distancia entre eslabones sea constante independientemente de la longitud de la valla.
- Coloca el nodo **Transform** antes de **Curve to Mesh** (no después) para desplazar postes sin afectar la geometría final.
- Usa **Ctrl+Shift+D** para duplicar nodos manteniendo las conexiones existentes.
- Conecta el **Count** del Group Input a los parámetros que quieras controlar desde el modifier panel.

## Errores comunes / gotchas
- **Eslabones rotados incorrectamente:** Si los eslabones no se entrelazan, verifica que aplicaste **Ctrl+A → Rotation** y que usaste **Individual Origins** al rotar.
- **Postes dentro de la malla:** Si los postes horizontales aparecen dentro de los eslabones, usa un nodo **Transform** con Translate X positivo (0.025) antes de Curve to Mesh.
- **Postes traseros mal posicionados:** Para postes en la parte trasera, usa Translate X negativo (-0.025) en el Transform antes de Instance on Points.
- **Error de tipo mesh vs curve:** Si obtienes un error al conectar un mesh a un socket de curve, añade **Mesh to Curve** para convertir.
- **Postes no siguen la altura:** Si al cambiar Height los postes no se estiran, asegúrate de que el Count de Mesh Line esté conectado al Group Input y que el nodo Math sume 2.
- **Eslabones no se conectan:** Ajusta el Offset Z de Mesh Line a un valor ligeramente menor que la altura del eslabón (p.ej. 0.067 en lugar de 0.078).
- **Puntos finales mal distribuidos:** Si los postes horizontales se acercan demasiado a los bordes al cambiar la longitud, no hay solución automática; deberás ajustar manualmente el Resample.