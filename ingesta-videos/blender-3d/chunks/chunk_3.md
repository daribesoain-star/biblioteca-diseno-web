

===== aTeLyeVO0Dc.md =====
# The ONLY Geometry Nodes Tutorial You'll Ever Need!
**Fuente:** SharpWind | https://youtu.be/aTeLyeVO0Dc

## Qué enseña (2-3 líneas)
Tutorial completo para crear un generador procedural de partituras musicales en Blender usando Geometry Nodes. Cubre desde la lógica básica de nodos hasta técnicas avanzadas como captura de atributos, manipulación vectorial y exposición de parámetros para animación. El resultado es un sistema paramétrico que adapta líneas y notas a una curva Bézier con control total sobre espaciado, grosor, trims y aleatoriedad.

## Técnicas accionables
- Crear un nuevo árbol de Geometry Nodes: seleccionar cualquier malla, curva o texto → abrir ventana Geometry Nodes → botón **New**
- Añadir nodo **Transform Geometry** para mover/rotar/escalar geometría
- Usar **Join Geometry** para combinar múltiples salidas de geometría
- Añadir nodo **Value** para crear un valor numérico controlable
- Usar **Combine XYZ** para convertir valores X, Y, Z separados en un solo vector
- Añadir nodo **Math** → operación **Multiply** para escalar valores
- Exponer parámetros: arrastrar el conector de un valor hacia el socket abierto del nodo **Group Input**
- Renombrar sockets del Group Input: seleccionar nodo Group Input → **N** para abrir panel lateral → pestaña **Group** → doble clic en el nombre
- Configurar límites de parámetros expuestos: en el panel Group, ajustar **Min** y **Max**
- Añadir nodo **Curve Circle** como perfil para dar grosor a curvas
- Usar **Curve to Mesh** para convertir curvas en malla (conectando perfil y curva principal)
- Añadir **Merge by Distance** para colapsar vértices duplicados (umbral de distancia)
- Convertir malla de vuelta a curva con **Mesh to Curve**
- Agrupar nodos: seleccionar nodos → **Ctrl+J** → asignar color personalizado
- Añadir **Resample Curve** → cambiar modo a **Length** para puntos equidistantes
- Usar **Trim Curve** → modo **Factor** (rango 0-1, funciona con cualquier escala)
- Añadir **Set Curve Radius** antes de convertir a malla para controlar grosor variable
- Usar **Spline Parameter** → salida **Factor** para obtener valor progresivo a lo largo de la curva (0=inicio, 1=final)
- Añadir **RGB Curves** para remapear visualmente el factor (crear punto medio en 1, extremos en 0 para efecto de taper)
- Activar **Node Wrangler**: Editar → Preferencias → Complementos → buscar "Node Wrangler" → activar
- Previsualizar nodo: **Ctrl+Shift+clic** en el nodo (requiere Node Wrangler)
- Añadir **Instance on Points** para colocar instancias en cada punto de una curva
- Usar **Collection Info** → activar **Separate Children**, **Pick Instance**, **Reset Children**
- Añadir **Set Position** antes de Instance on Points para desplazar puntos antes de instanciar
- Usar **Random Value** → modo **Vector** para aleatorizar posición en X, Y, Z
- Añadir **Capture Attribute** para almacenar atributos (como tilt y tangent) antes de modificarlos
- Conectar **Curve Tilt** y **Curve Tangent** al Capture Attribute
- Usar **Vector Rotate** para alinear vectores: conectar random value como vector, tangent como axis, tilt como angle
- Añadir **Align Rotation to Vector** → axis **X**, pivot **Auto** para orientar instancias a la tangente
- Duplicar Align Rotation to Vector → axis **Z**, pivot **Y** para incorporar tilt
- Usar **Store Named Attribute** para guardar un atributo (ej. factor) con nombre personalizado
- Recuperar atributo con **Named Attribute** → mismo nombre
- Añadir **Vector Math** → **Distance** para calcular distancia entre dos valores
- Usar **Map Range** para remapear valores (From Min/Max a To Min/Max)
- Añadir **Set Material** al final de cada cadena de geometría para asignar materiales
- Crear paneles en parámetros expuestos: icono de carpetas en el panel Group → **Add Panel** → arrastrar parámetros dentro
- Cambiar tipo de socket a **Single Value** para que no espere atributos (seleccionar en lista → marcar Single Value)

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Resample Curve** → modo **Length** cuando necesites puntos equidistantes en una curva, independientemente de la posición de los manejadores Bézier
- Usa **Trim Curve** → modo **Factor** cuando quieras recortar curvas de forma que funcione con cualquier escala (porcentaje 0-1)
- Usa **Merge by Distance** después de convertir círculos de perfil a malla cuando los vértices estén colapsados en el mismo punto (triángulos de radio 0)
- Usa **Capture Attribute** antes de modificar geometría cuando necesites valores originales (como tangent o tilt) después de transformaciones
- Usa **Store Named Attribute** cuando quieras acceder a un valor desde cualquier parte de Blender (Shader Editor, otros nodos), no solo dentro del árbol actual
- Usa **Set Curve Radius** antes de **Curve to Mesh** cuando quieras grosor variable a lo largo de la curva (no funciona en malla)
- Usa **Map Range** con valores invertidos (From Min 0→1, To Min 1→0) cuando necesites invertir una relación lineal
- Usa **Clamp** en nodos Math cuando multipliques valores que no deben exceder 1 (para evitar que notas se agranden en zonas de superposición)
- Usa **Separate Children** + **Pick Instance** + **Reset Children** en **Collection Info** cuando instancies objetos individuales de una colección
- Usa **Align Rotation to Vector** con axis **X** primero para orientar a tangent, luego axis **Z** con pivot **Y** para incorporar tilt
- Usa **Node Wrangler** (Ctrl+Shift+clic) para previsualizar nodos específicos sin desconectar el árbol completo

## Errores comunes / gotchas
- **No confundir Group Input con la geometría original**: el nodo Group Input puede recibir cualquier geometría, no necesariamente la del objeto que tiene el modificador
- **Transform Geometry mueve en XYZ global**: si solo quieres mover en un eje, usa Combine XYZ con los otros ejes en 0
- **Curve Circle con radio 0 crea triángulos invisibles**: aunque no se vean, existen 3 vértices en el mismo punto; usar Merge by Distance para colapsarlos
- **No se puede trimar una malla**: las mallas no tienen dirección inicio/fin; convertir a curva con Mesh to Curve antes de aplicar Trim Curve
- **Set Curve Radius no funciona en mallas**: aplicar siempre antes de Curva a Malla
- **Factor de Spline Parameter es global por spline**: si hay múltiples splines, cada uno tiene su propio factor 0-1
- **Instance on Points sin orientación**: por defecto las instancias no siguen la curva; usar Align Rotation to Vector con tangent y tilt
- **Random Value en Z se aplica en global**: si la curva tiene tilt, el desplazamiento Z no sigue la orientación local; usar Vector Rotate con tangent y tilt capturados
- **Multiplicar valores de Map Range sin clamp**: si ambos mapas tienen valores >1, la multiplicación los agranda en lugar de mantenerlos; usar clamp para limitar a 1
- **Materiales no se asignan automáticamente**: usar Set Material al final de cada cadena de geometría (líneas y notas por separado)
- **Parámetros expuestos como atributos por defecto**: si no necesitas que acepten atributos, marcar **Single Value** en el panel Group para simplificar la interfaz

===== dQWHU8yDpAo.md =====
# Export 3D models to Unity
**Fuente:** Octodemy | https://youtu.be/dQWHU8yDpAo

## Qué enseña (2-3 líneas)
Cómo exportar modelos 3D desde Blender a Unity con rotaciones y escalas correctas, incluyendo objetos con múltiples materiales, texturas, y personajes con armaduras y animaciones. Cubre la configuración de exportación FBX, manejo de texturas (incrustadas o copiadas), y verificación de orientación en Unity.

## Técnicas accionables
- **Aplicar transformaciones:** selecciona el objeto, presiona **Ctrl+A** y elige **Rotation & Scale**.
- **Exportar FBX:** ve a **File > Export > FBX (.fbx)**.
- **Configurar exportación:**
  - Activa **Selected Objects** para exportar solo los objetos seleccionados.
  - En la sección **Transform**, activa **Apply Transform** (corrige escala/rotación en Unity).
  - En **Geometry**, activa **Apply Modifiers**.
  - Si el objeto mira hacia la cámara frontal de Blender, no cambies la dirección Z (Forward).
  - Desactiva **Bake Animations** si no exportas animaciones.
  - Guarda la configuración: presiona **+** bajo **Operator Presets** y asígnale un nombre.
- **Exportar con texturas:**
  - En **Path Mode**, selecciona **Copy** para copiar texturas a una carpeta con el nombre del archivo.
  - O presiona el icono de clip para **Embed Textures** dentro del FBX.
  - En Unity, si usaste texturas incrustadas, selecciona el modelo y haz clic en **Unpack Texture** (extrae las texturas a una carpeta).
  - Si aparece advertencia de texturas normales, presiona **Fix Now** (cambia el tipo de imagen a Normal).
- **Exportar múltiples objetos:** selecciona todos, ve a **Transform Tool** y pon la opción en **Local** para ver los ejes locales. Al exportar juntos, se mantienen como objetos individuales con sus rotaciones locales.
- **Exportar personajes con armadura y animaciones:**
  - Selecciona la armadura y la malla (usa **Shift+clic** o clic derecho > **Select Hierarchy**).
  - Activa **Bake Animations**.
  - Desactiva **NLA Strips** (evita que las NLA se horneen como capas de animación).
  - Desactiva **Add Leaf Bones** (los huesos hoja no son necesarios en motores de juego).
  - Activa **Only Deform Bones** para exportar solo los huesos que deforman la malla (útil para control rigs, pero cuidado con rigs que dependen de huesos no deformantes, como los de tipo "Rigify").

## Reglas para el erudito
- Usa **Ctrl+A > Rotation & Scale** siempre antes de exportar para evitar rotaciones/escalas extrañas en Unity.
- Activa **Apply Transform** en la exportación FBX para que Unity herede las transformaciones correctas.
- Desactiva **Add Leaf Bones** al exportar armaduras; los motores de juego no los necesitan y solo añaden game objects vacíos.
- Activa **Only Deform Bones** si tu rig tiene huesos de control que no deforman la malla, pero verifica que los huesos deformantes no dependan de ellos.
- Usa **Path Mode: Copy** o **Embed Textures** cuando exportes con texturas; luego en Unity usa **Unpack Texture** si elegiste incrustar.
- Configura la orientación Forward en **-Z** si tu modelo mira hacia la cámara frontal de Blender; de lo contrario, déjalo por defecto.

## Errores comunes / gotchas
- **Olvidar aplicar transformaciones:** el modelo llega a Unity con rotaciones o escalas incorrectas (ej. rotado 90° en X).
- **No activar Selected Objects:** se exportan todos los objetos de la escena, incluso los ocultos.
- **Dejar NLA Strips activado:** las animaciones de NLA se hornean como capas adicionales, causando comportamientos inesperados.
- **Activar Add Leaf Bones:** se crean game objects vacíos por cada hueso terminal, afectando el rendimiento.
- **Usar Only Deform Bones en rigs como Rigify:** puede romper la deformación si los huesos deformantes dependen de huesos no deformantes (ej. huesos de control).
- **No extraer texturas incrustadas en Unity:** el modelo aparece sin texturas hasta que se ejecuta **Unpack Texture**.
- **Ignorar la advertencia de texturas normales:** si no presionas **Fix Now**, el tipo de imagen queda incorrecto y las normales no se renderizan bien.

===== jBT6MD7IzHU.md =====
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

===== jQXG9IbwHwI.md =====
# Blender to Unity with Materials: AP GameTools!
**Fuente:** Alex Pearce | https://youtu.be/jQXG9IbwHwI

## Qué enseña (2-3 líneas)
Este tutorial explica cómo usar el add-on AP GameTools para exportar objetos desde Blender a Unity con materiales y shaders configurados automáticamente. Cubre la instalación del importador UniGLTF, el flujo de exportación no destructiva con modificadores, y la transferencia de texturas. También advierte sobre limitaciones con objetos con padres y materiales complejos.

## Técnicas accionables
- Instala UniGLTF en Unity: descarga el paquete .unitypackage, ve a **Assets > Import Package > Custom Package**, selecciona el archivo y presiona **Import**.
- Guarda el archivo de Blender (.blend) en la misma carpeta que el proyecto de Unity para que la exportación actualice automáticamente mallas y materiales.
- Selecciona los objetos a exportar y presiona **Export for Game Engine** (o **Export for Game Engine (Reset Location)** para centrar en 0,0,0).
- Para exportación no destructiva, añade modificadores como **Subdivision Surface** o **Decimate**; el add-on los aplica automáticamente al exportar.
- Para evitar que un material se sobrescriba al reexportar, duplica el material en Unity, renómbralo y reasínalo al objeto.
- Si un material complejo (ej. de Polygon) no exporta correctamente, simplifícalo o usa el add-on **Simple Bake** para hornear texturas: difuso, rugosidad y normal.
- Para ver el progreso de la exportación, abre la consola en Blender con **Window > Toggle System Console** (en Windows).
- Para cancelar una exportación en curso, haz clic en la ventana de la consola y presiona **Ctrl + C**.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Export for Game Engine (Reset Location)** cuando necesites que el objeto se centre en el origen (0,0,0) en Unity.
- Usa **Export for Game Engine** (sin reset) cuando quieras preservar la posición original del objeto en el espacio 3D.
- Usa **Simple Bake** (u otro add-on de horneado) cuando el material de origen tenga nodos complejos que no se traduzcan correctamente a Unity.
- Duplica el material en Unity antes de reexportar si quieres mantener una versión personalizada sin que se sobrescriba.
- Guarda el archivo .blend dentro de la carpeta del proyecto de Unity para que la reexportación actualice automáticamente mallas y materiales.

## Errores comunes / gotchas
- **Objetos con padres:** No se exportan correctamente; debes limpiar las relaciones de padre antes de exportar.
- **Materiales complejos:** Materiales con nodos avanzados (ej. de Polygon) pueden no exportarse bien; requieren simplificación u horneado de texturas.
- **Archivo .blend fuera del proyecto Unity:** Si arrastras el modelo manualmente, la reexportación no actualizará automáticamente mallas ni materiales; tendrás que reimportar manualmente.
- **Exportar toda la escena:** Seleccionar todos los modelos puede causar tiempos largos de exportación e importación según la complejidad.
- **Consola cerrada:** Si no ves el progreso, abre la consola con **Window > Toggle System Console** (Windows) para monitorear y poder cancelar con **Ctrl + C**.

===== kIW648Cfo18.md =====
# 10 Easy Ways to Render Faster in Blender
**Fuente:** Blender Guru | https://youtu.be/kIW648Cfo18

## Qué enseña (2-3 líneas)
Diez técnicas prácticas para acelerar renders en Cycles, desde ajustes de escena y materiales hasta configuración del motor de render. Cubre instanciación, culling, simplificación de geometría y texturas, y optimización de samples y luz.

## Técnicas accionables
- **Instancing con Alt+D:** En lugar de Shift+D (duplicar), presiona **Alt+D** para crear instancias que comparten datos de malla. En renders con miles de copias, Blender solo carga el objeto original una vez, reduciendo el tiempo hasta 95%.
- **Camera Culling:** En *Render Properties > Simplify*, activa **Camera Culling**. Luego selecciona todos los objetos, ve a *Object Properties > Ray Visibility*, mantén presionado **Alt** y activa **Use Camera Culling** para aplicar a todos. Oculta todo lo fuera del encuadre, reduciendo el tiempo hasta 30%.
- **Indirect Light Clamping:** En *Render Properties > Light Paths > Clamping*, reduce **Indirect Light Clamping** a un valor bajo (ej. 1-3). Limita el brillo máximo de los rebotes, eliminando fireflies en vidrios/líquidos. Menos preciso pero acelera significativamente.
- **Simplificar vidrio:** Para ventanas o vidrios finos, selecciona el objeto, ve a *Object Properties > Ray Visibility* y desmarca **Shadow**. Elimina el cálculo de cáusticas innecesarias; en escenas con vidrio plano reduce el tiempo hasta 66%.
- **Persistent Data:** En *Render Properties > Performance > Final Render*, activa **Persistent Data**. Almacena BVH, shaders y geometría en memoria para reutilizar entre fotogramas de animaciones. Evita recargar todo en cada frame.
- **Noise Threshold:** En *Render Properties > Sampling > Noise Threshold*, cambia el valor predeterminado de **0.01** a **0.03**. Detiene el render por áreas cuando alcanzan el umbral, ahorrando hasta 64% de tiempo con diferencia imperceptible.
- **Texturas 4K en lugar de 8K:** Usa el add-on **Polygon** y en sus preferencias fija **Default Texture Size** a **4K**. Si ya tienes texturas grandes, en *Render Properties > Simplify* activa **Texture Limit** (ej. 4096x4096) para reducirlas automáticamente al renderizar.
- **Fast GI Approximation:** En *Render Properties > Light Paths > Fast GI Approximation*, actívalo y ajusta el número de bounces (ej. **2**). Después de esos bounces, Cycles cambia a una aproximación basada en ambient occlusion. Con 2 bounces es 23% más rápido; con 1 bounce es 77% más rápido pero más notorio.
- **GPU rendering:** En *Edit > Preferences > System*, selecciona **OptiX** (Nvidia), **HIP** (AMD) o **Metal** (Mac). No combines CPU+GPU si la CPU es más lenta; puede ser hasta 6% más lento. También activa GPU para **Denoising** y **Compositor** en la misma sección.
- **Decimate Modifier:** Agrega el modificador **Decimate** a objetos con geometría densa. Ajusta **Ratio** a **0.1** (reduce 90% de polígonos). Renderiza 60% más rápido sin pérdida de calidad visible. En objetos curvos brillantes, aplica **Auto Smooth** después (en *Object Data Properties > Normals > Auto Smooth*) para evitar artefactos.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Alt+D** en lugar de Shift+D cuando necesites múltiples copias de un objeto en la escena, especialmente si son cientos o miles.
- Activa **Camera Culling** en escenas grandes con muchos objetos fuera del encuadre; no lo uses si necesitas reflejos precisos de objetos fuera de cámara.
- Reduce **Indirect Light Clamping** solo cuando tengas fireflies en vidrios o líquidos; no lo uses en escenas sin estos elementos.
- Desmarca **Shadow** en *Ray Visibility* únicamente para vidrios planos (ventanas); no lo hagas en vidrios gruesos o lentes donde las cáusticas son importantes.
- Activa **Persistent Data** exclusivamente para animaciones o renders por lotes; en renders de un solo frame no aporta beneficio.
- Ajusta **Noise Threshold** a **0.03** como valor general; no subas más de 0.05 en animaciones para evitar sombras irregulares.
- Descarga texturas en **4K** por defecto; reserva 8K solo para primeros planos extremos donde la cámara esté a centímetros de la superficie.
- Activa **Fast GI Approximation** con **2 bounces** para escenas interiores con iluminación indirecta; usa 1 bounce solo si la calidad no es crítica.
- Selecciona **GPU** como dispositivo de render si tu GPU es más moderna que tu CPU; no actives ambos a menos que hayas verificado que no ralentiza.
- Aplica **Decimate** con ratio **0.1** a modelos descargados de internet con geometría excesiva; complementa con **Auto Smooth** si el objeto tiene superficies curvas reflectantes.

## Errores comunes / gotchas
- Usar **Shift+D** para duplicar objetos en masa: cada copia se carga individualmente en memoria, multiplicando el tiempo de render. Siempre prefiere **Alt+D** para instancias.
- Activar **Camera Culling** sin seleccionar todos los objetos primero: solo se aplica al objeto activo. Mantén **Alt** al activar la opción para aplicar a toda la selección.
- Dejar **Indirect Light Clamping** en 0: no elimina fireflies. Un valor muy bajo (ej. 0.1) puede oscurecer la escena; ajusta progresivamente.
- Desmarcar **Shadow** en vidrios gruesos: elimina sombras realistas y cáusticas necesarias para el realismo. Solo aplica a vidrios planos de ventanas.
- Olvidar activar **Persistent Data** en animaciones: Blender reconstruye BVH y compila shaders en cada frame, duplicando el tiempo total.
- Mantener **Noise Threshold** en 0.01: es tan bajo que rara vez se alcanza antes del máximo de samples, anulando su efecto. Subirlo a 0.03 es seguro y efectivo.
- Descargar texturas en 8K por defecto: duplica el tiempo de carga en VRAM sin mejora visible en la mayoría de planos. Usa 4K como estándar.
- Activar **Fast GI Approximation** con 0 bounces: elimina toda la iluminación indirecta, resultando en renders planos y poco realistas.
- Activar CPU+GPU sin verificar: si la CPU es más lenta, el render se ralentiza porque espera al dispositivo más lento. Haz una prueba comparativa.
- Aplicar **Decimate** con ratio muy bajo (ej. 0.01) en objetos curvos: genera artefactos visibles en reflejos. Usa **Auto Smooth** después para mitigar, o mejor, retopología manual.

===== kYOsR9Kb8Ek.md =====
# Render 2995x faster in Cycles // Blender Tutorial
**Fuente:** CGMatter | https://youtu.be/kYOsR9Kb8Ek

## Qué enseña
Optimización radical de tiempos de render en Cycles para animaciones, combinando cambios en hardware, configuración de samples, simplificación de geometría, reducción de resolución y post-procesado con interpolación de frames.

## Técnicas accionables
- **GPU y OptiX:** En Preferencias > Sistema > Ciclos de Render, activa "CUDA" (GPU antigua) o "OptiX" (RTX). Marca "Usar GPU" y "OptiX" si está disponible.
- **Samples:** En Propiedades de Render > Muestreo, reduce "Muestras de render" a 500 (desde 4096 por defecto). Activa "Denoising" pasivo (ya activo por defecto).
- **Persistent Data:** En Propiedades de Render > Rendimiento, activa "Datos persistentes". Renderiza un solo frame primero, luego el resto.
- **Simplify:** En Propiedades de Render > Simplificar, activa "Simplificar". Pon "Subdivisión máxima" en 1 (desde 6). Pon "Límite de texturas" en 2048x2048.
- **Culling:** En Propiedades de Render > Capas de vista > "Recortar", activa "Recorte de distancia" y "Recorte de cámara" para descartar geometría fuera del campo de visión.
- **Light Paths:** En Propiedades de Render > Trayectorias de luz, activa "Aproximación rápida de iluminación global". En Avanzado, activa "Temporizador" (cambia patrón de ruido por frame). Activa "Distancia de mezcla" si hay artefactos.
- **Max Bounces:** En Trayectorias de luz, reduce "Máx. rebotes" a 5 (desde 12). Ajusta "Transparente" a 4 o 5 para vidrio.
- **Formato de salida:** En Propiedades de Salida > Formato, elige "OpenEXR". Precisión: "Half". Compresión: "DWAA". Desmarca "Alpha" (canal alfa) si no se necesita.
- **Decimate modifier:** Selecciona un objeto con mucha geometría. Agrega modificador "Decimate" (Colapso). Ajusta "Relación" a 0.45 (45%). Con Shift+clic selecciona otros objetos, presiona Ctrl+L > "Vincular modificadores" para copiarlo. Luego aplica (Ctrl+A > "Aplicar modificador visual" o botón "Aplicar" en el modificador).
- **Hair particles:** En Propiedades de Partículas > Curvas, reduce "Subdivisiones de curva" a 2 o 3 (desde 5). En vista "Wireframe" (Z > Wireframe) para menor uso de memoria.
- **Clean up:** Archivo > Limpiar > "Datos no utilizados" y "Recursivo" para eliminar datos huérfanos.
- **Render resolution:** En Propiedades de Salida > Dimensiones, reduce "Porcentaje de resolución" a 50% (reduce área a 1/4).
- **Skip frames:** Renderiza desde línea de comandos: `blender "Untitled.blend" -a` (animación). En el editor de video (DaVinci Resolve), importa la secuencia como 1080p 24 FPS. En la línea de tiempo, haz clic derecho > "Cambiar velocidad de clip" > Velocidad: 50% (para duplicar duración). Activa "Flujo óptico" > "Velocidad" para interpolación y aumento de resolución 2x.

## Reglas para el erudito
- Usa GPU (CUDA/OptiX) cuando tengas una tarjeta compatible; el CPU es 10-20x más lento.
- Activa "Datos persistentes" solo después de renderizar un frame inicial para evitar recálculos.
- Reduce "Subdivisión máxima" a 1 en Simplify cuando no necesites detalles finos en render final.
- Usa OpenEXR con compresión DWAA y precisión Half para archivos sin pérdida y rápidos.
- Aplica Decimate con relación 0.45 cuando tengas mallas densas innecesarias; revisa artefactos visuales.
- Renderiza al 50% de resolución si planeas superescalar con flujo óptico en postproducción.
- Salta frames (step=2) y usa interpolación temporal en DaVinci Resolve para animaciones con cámara lenta.

## Errores comunes / gotchas
- Olvidar activar "Usar GPU" en Preferencias > Sistema; Cycles usa CPU por defecto.
- No renderizar un frame antes de activar "Datos persistentes"; causa errores de caché.
- Reducir "Máx. rebotes" a 0 hace que el vidrio se vea negro; mínimo 4-5 para transparencia.
- Usar PNG con compresión alta (15% o más) ralentiza la escritura; mejor OpenEXR sin compresión o DWAA.
- Aplicar Decimate a objetos con subdivisiones activas sin aplicar primero; causa geometría corrupta.
- No desmarcar "Alpha" en OpenEXR si no se necesita; añade datos innecesarios.
- Saltar frames sin ajustar velocidad en el editor de video; la animación se reproduce al doble de velocidad.

===== nsTjnQ067sw.md =====
# Blender Hard-Surface Modeling Fundamentals #b3d #tutorial
**Fuente:** CG Boost | https://youtu.be/nsTjnQ067sw

## Qué enseña (2-3 líneas)
Tutorial práctico de modelado hard-surface en Blender vanilla (sin addons de pago) usando modificadores, subdivisiones y técnicas no destructivas. Construye un robot-copa desde un concept sketch, aplicando flujo de trabajo low-poly con resultados high-poly mediante Subdivision Surface, Bevel y Shrinkwrap.

## Técnicas accionables
- Activar addon: **Edit → Preferences → Add-ons → buscar "Extra" → activar "Add Mesh: Extra Objects"**
- Activar addon Bool Tool: **Edit → Preferences → Add-ons → buscar "bool" → activar "Bool Tool"**
- Crear Quad Sphere: **Shift+A → Mesh → Round Cube → en operator preset elegir "Quad Sphere" → Subdivisions: 4**
- Seleccionar caras superiores: **3** (poly select) + **Alt+clic izquierdo** en bucle de caras → **X → Delete Faces**
- Extruir borde: **2** (edge select) + **Alt+clic izquierdo** en bucle → **E → Z** para mover vertical
- Añadir Subdivision Surface: **Ctrl+2** (atajo directo) o desde panel Modifiers → **Add Modifier → Subdivision Surface** → Viewport Level: **2**, Render Level: **2**
- Shade Smooth Auto: **clic derecho → Shade Auto Smooth**
- Añadir Solidify: **Add Modifier → Solidify** → ajustar grosor (inset)
- Añadir Bevel: **Add Modifier → Bevel** → ajustar Amount, Segments: **2** → desplegar Shading → marcar **Harden Normals**
- Duplicar objeto: **Alt+D** (linked duplicate) → **clic derecho** para soltar
- Escalar selección desde centro: **Alt+S**
- Loop Cut: **Ctrl+R** → clic para posicionar
- Separar selección: seleccionar bucle de caras con **Alt+clic izquierdo** → **Y**
- Aplicar rotación/escala: **Ctrl+A → Rotation & Scale**
- Inset: **I**
- Bridge Faces: seleccionar dos caras → **clic derecho → Bridge Faces**
- Escalar a 0 en eje: seleccionar bordes → **S → X → 0**
- Crear crease: seleccionar edge loops → **Shift+E** y arrastrar
- Añadir Bevel a bordes: seleccionar bordes → **Ctrl+B**
- Rellenar agujero: seleccionar bordes superior e inferior → **F**
- Shrinkwrap: **Add Modifier → Shrinkwrap** → Target: objeto cup → Method: **Project** → activar eje (X o Y) → Vertex Group: grupo creado previamente
- Crear Vertex Group: en Edit Mode, seleccionar caras → panel **Vertex Groups** → **+** → **Assign**
- Colocar cursor 3D: **Shift+S → Cursor to Selected** o **Shift+clic derecho** para posicionar libremente
- Añadir cilindro: **Shift+A → Mesh → Cylinder** → Vertices: **16** (o **8** para más pequeño)
- Rotar con snapping: **R → X → Ctrl** (snap 5°) → **-90**
- Grid Fill: seleccionar borde → **Ctrl+F → Grid Fill**
- Seleccionar bucle lateral: **Ctrl+Alt+clic izquierdo** → luego **Select → Select Loops → Edge Loops**
- Desmarcar Clamp Overlap en Bevel: desmarcar **Clamp Overlap** y reducir Amount
- Aislar objeto: **/** (forward slash)
- Extruir caras por normales: seleccionar caras → **Alt+E → Extrude Faces Along Normals**
- Add Primitive Tool: seleccionar **Add Cube** en toolbar → arrastrar para forma, soltar, extruir, clic para confirmar
- Deslizar borde: seleccionar cara → **G** dos veces
- Bool Tool: seleccionar cutter → **Ctrl+Shift+B** → elegir **Brush Boolean → Slice**
- Reordenar modificadores: arrastrar Bevel debajo del Boolean en el stack
- Duplicar linked con simetría: **Alt+D** → **Ctrl+M → X** (espejar en X)
- Subdividir plano: **clic derecho → Subdivide** → en operator panel: **Number of Cuts: 10**
- Bevel vértices: seleccionar vértices → **clic derecho → Bevel Vertices**
- Subdivision Surface simple: **Add Modifier → Subdivision Surface → Simple**
- HDRI: **Shader Editor → World → Add → Texture → Environment Texture** → cargar archivo .hdr (ej. "large_corridor" de Polyhaven)
- Configurar HDRI sin fondo visible: **Add → Shader → Mix Shader** → Background1 (HDRI) → Background2 (color gris oscuro) → Factor: **Light Path → Is Camera Ray**
- Activar AO: **Render Properties → marcar Ambient Occlusion → Distance: 1**
- Bloom: **Render Properties → marcar Bloom**
- Alinear cámara: seleccionar cámara → **View → Align View → Align Active Camera to View**
- Renderizar: **F12**

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Quad Sphere** (Round Cube con preset Quad Sphere) cuando necesites una esfera con topología de quads para subdivisiones limpias.
- Usa **Ctrl+2** para añadir Subdivision Surface rápidamente sin navegar menús.
- Usa **Harden Normals** en el Bevel modifier cuando quieras bordes nítidos sin degradado suave.
- Usa **Alt+D** (linked duplicate) cuando dupliques elementos que compartirán el mismo mesh y materiales (ej. patas simétricas).
- Usa **Ctrl+A → Rotation & Scale** antes de añadir modificadores como Bevel o Shrinkwrap para evitar deformaciones por escala no uniforme.
- Usa **Shrinkwrap con Project** y un solo eje cuando quieras que solo ciertos vértices se adhieran a una superficie (ej. extremos del asa).
- Usa **Vertex Groups** para limitar el efecto del Shrinkwrap solo a las caras seleccionadas.
- Usa **Bool Tool → Brush Boolean → Slice** para cortes no destructivos con geometría separada.
- Usa **Shift+E** (crease) en bordes cuando quieras bordes duros sin añadir más geometría con loop cuts.
- Usa **Subdivision Surface en modo Simple** cuando solo necesites más geometría para otro modificador (ej. Shrinkwrap) sin suavizar.
- Usa **Mix Shader con Light Path → Is Camera Ray** para que el HDRI ilumine pero no aparezca en el fondo del render.

## Errores comunes / gotchas
- Olvidar **aplicar rotación y escala (Ctrl+A)** antes de añadir modificadores → el Bevel se aplica desproporcionadamente y el Shrinkwrap no proyecta correctamente.
- El Shrinkwrap con método **Nearest Surface Point** aplana toda la geometría contra el target; usar **Project** con un solo eje para control.
- El Bevel modifier puede no afectar bordes internos si **Clamp Overlap** está activo y la geometría es pequeña → desmarcarlo y reducir Amount manualmente.
- Al usar **Bool Tool**, el Bevel debe estar **debajo** del Boolean en el stack de modificadores para que el biselado recorra todo el borde del corte.
- La selección de edge loops laterales con **Ctrl+Alt+clic izquierdo** selecciona en dirección perpendicular; combinarlo con **Select → Select Loops → Edge Loops** para obtener el bucle completo.
- Al separar geometría con **Y**, asegurarse de que la selección de caras sea correcta (usar **Alt+clic** en poly mode).
- El Shrinkwrap no funciona si el objeto cutter tiene rotación/escala sin aplicar → aplicar **Ctrl+A** antes de usarlo.

===== oOCmYxEakjs.md =====
# The COMPLETE Guide to Creating CG Product Renders
**Fuente:** Interactiv | https://youtu.be/oOCmYxEakjs

## Qué enseña (2-3 líneas)
Tutorial completo de modelado, texturizado e iluminación de un envase tipo room spray en Blender. Cubre desde la creación de la botella, líquido, tapa, resorte y etiqueta hasta la configuración de luces y materiales para un render profesional.

## Técnicas accionables
- **Configurar imagen de referencia:** Shift+A → Image → Reference; en Object Data Properties bajar Opacity a 0.5; activar restricción de seleccionable (icono de cursor tachado) y renombrar colección "RF".
- **Modelado base de botella:** Shift+A → Mesh → Circle; Tab → 1 (vertex select); seleccionar todo → Shift+N (recalcular normales); activar Face Orientation en Overlays.
- **Añadir subdivisiones:** En Object Mode, Ctrl+2 para 2 niveles de Subdivision Surface; clic derecho → Shade Smooth.
- **Añadir loop cuts de soporte:** Ctrl+R y deslizar con clic.
- **Bevel de bordes:** Seleccionar aristas → Ctrl+B; arrastrar para ajustar; rueda del mouse para cambiar número de segmentos; P para cambiar perfil (shape).
- **Solidify modifier:** Añadir desde el panel de modifiers; marcar Even Thickness; arrastrar arriba de Subdivision Surface.
- **Auto merge y snapping:** Activar Auto Merge en el header; cambiar snapping a Vertex (icono de imán); G+G para edge slide y Ctrl para forzar snap.
- **Grid Fill:** Seleccionar bucle de aristas → clic derecho → Grid Fill (o desde Face → Grid Fill); ajustar Span y Offset.
- **Proportional Editing:** O key; cambiar falloff a Sphere; seleccionar vértice/face y arrastrar.
- **Separar selección:** En Edit Mode, P → Selection.
- **Mover 3D Cursor a selección:** Shift+S → Cursor to Selected.
- **Añadir UV Sphere:** Shift+A → Mesh → UV Sphere; reducir segments a 16 o 24.
- **Loop Tools - Circle:** Seleccionar bucle de aristas → clic derecho → LoopTools → Circle.
- **Aplanar en eje:** S → Y → 0 → Enter (para aplanar en Y).
- **Join objects:** Seleccionar múltiples objetos → Ctrl+J.
- **Spring (resorte):** Activar add-on "Add Curve: Extra Objects" en Edit → Preferences → Add-ons; Shift+A → Curve → Curve Spirals → Archimedean; ajustar Turns, Height, Radius; en Geometry de la curva, ajustar Depth (0.2).
- **Curve modifier para etiqueta:** Seleccionar plano subdividido → Modifiers → Add Modifier → Curve; seleccionar la curva objetivo con el eyedropper; luego seleccionar plano y curva → Ctrl+P → Curve Deform.
- **Material de vidrio:** Principled BSDF: Transmission ~1.0, Roughness ~0.05; o usar Glass BSDF directo.
- **Material metálico:** Principled BSDF: Metallic 1.0, Roughness 0.0.
- **Área light con plano translúcido:** Shift+A → Light → Area; Shift+A → Mesh → Plane; asignar material con Translucent BSDF conectado a Surface; seleccionar luz y plano → Ctrl+P → Keep Transformation.
- **Reset transform de hijo:** Alt+R, Alt+G.
- **Ray Visibility:** En Object Properties → Visibility → Ray Visibility, desmarcar canales (Camera, Glossy, etc.).
- **Ajustar escala de líquido dentro de botella:** Seleccionar líquido → Alt+S para escalar por normales y evitar overlapping.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa Ctrl+2 para Subdivision Surface cuando necesites suavizado rápido sin aplicar el modificador.
- Usa Ctrl+B para Bevel cuando quieras bordes definidos en lugar de añadir loop cuts manualmente.
- Usa Grid Fill cuando tengas un bucle de aristas cerrado y necesites rellenar con geometría uniforme.
- Usa Proportional Editing (O) con falloff Sphere cuando deformes superficies curvas como el fondo de la botella.
- Usa Auto Merge + Vertex Snapping cuando necesites soldar vértices de loops duplicados tras aplicar Solidify.
- Usa LoopTools → Circle cuando hayas insetado un agujero y necesites que sea perfectamente circular.
- Usa Curve modifier + Curve Deform parent cuando quieras que una etiqueta plana siga la curvatura de un cilindro.
- Usa Translucent BSDF en un plano padre de un Area Light para crear luces suaves con forma controlada.
- Usa Ray Visibility para ocultar luces/planos del render sin eliminarlos de la escena.
- Usa Alt+S (Shrink/Fatten) en el líquido para escalarlo por normales y evitar que sobresalga del envase.

## Errores comunes / gotchas
- **Normales invertidas:** Tras extruir o usar Solidify, las normales pueden quedar al revés; usar Shift+N para recalcular.
- **Overlapping tras Solidify:** Al aplicar Solidify, los loops internos pueden solaparse; usar Auto Merge + Vertex Snapping para alinear y fusionar.
- **Grid Fill con geometría irregular:** Si el bucle no es uniforme, Grid Fill puede generar deformaciones; ajustar Span y Offset manualmente.
- **Curve modifier sin origins alineados:** La curva y el objeto deformado deben tener sus orígenes en el mismo punto; usar Shift+S para sincronizarlos.
- **Spring demasiado grande:** Al añadir Curve Spirals, reducir Turns (15) y Height, y ajustar Radius antes de modificar Depth.
- **Líquido visible fuera de la botella:** Si el líquido se ve fuera del envase, seleccionarlo y usar Alt+S para escalarlo por normales hacia adentro.
- **Material de vidrio sin efecto:** Asegurarse de que Transmission esté al máximo y Roughness bajo; usar Cycles para mejor resultado.
- **Luces no visibles en render:** Verificar que el plano translúcido tenga el material correcto y que el Area Light tenga potencia suficiente (1000+).

===== peSv5IT5Ve4.md =====
# ABSOLUTE Beginner Basics.. Blender For Noobs 2025
**Fuente:** RoBuilder | https://youtu.be/peSv5IT5Ve4

## Qué enseña (2-3 líneas)
Tutorial para principiantes absolutos que nunca abrieron Blender, cubriendo navegación 3D, modos Object y Edit, selección de vértices/aristas/caras, y los atajos esenciales para modelar un primer objeto (un árbol de pino) usando extrusión, escala, rotación, loop cuts y bevel.

## Técnicas accionables
- **Navegación:** Rueda del mouse (scroll) para zoom in/out. Click + arrastrar rueda para orbitar alrededor del objeto. **Shift + click rueda** para paneo (desplazar escena).
- **Vistas con teclado numérico:** **1** para frente ortográfico, **3** para derecha ortográfico, **7** para superior, **9** para inferior.
- **Vistas sin teclado numérico:** **Alt + click rueda** y arrastrar en la dirección deseada para snap a vistas ortográficas.
- **Modos:** En el menú superior de modos, usar **Object Mode** para mover el mesh completo y **Edit Mode** (o presionar **Tab** para alternar) para editar geometría internamente.
- **Selección en Edit Mode:** Tres modos de selección: vértices (puntos), aristas (líneas), caras (polígonos). Hacer clic en el ícono correspondiente o usar atajos: **1** para vértices, **2** para aristas, **3** para caras.
- **Seleccionar todo:** **A** para seleccionar todos los elementos del mesh activo.
- **Mover (Grab):** **G** para mover (grab) la selección. Combinar con eje: **G + X**, **G + Y**, **G + Z** para restringir a un eje.
- **Escalar:** **S** para escalar. Combinar con eje: **S + X**, **S + Y**, **S + Z**.
- **Rotar:** **R** para rotar. Combinar con eje: **R + X**, **R + Y**, **R + Z**.
- **Extruir:** **E** para extruir caras (funciona mejor en caras que en vértices/aristas). Combinar con eje: **E + Z** para extruir verticalmente.
- **Loop Cut:** **Ctrl + R** para añadir loop cuts. Usar scroll del mouse para aumentar el número de cortes antes de hacer clic para confirmar.
- **Bevel:** Seleccionar aristas (modo aristas, **2**), luego **Ctrl + B** para biselar. Usar scroll del mouse para añadir más segmentos y suavizar.
- **Shade Smooth:** Click derecho sobre el objeto y seleccionar **Shade Smooth** para suavizar visualmente. Luego activar **Auto Smooth** en el panel de propiedades del objeto (pestaña verde triángulo) para controlar el ángulo de suavizado.
- **Añadir objetos:** **Shift + A** para abrir el menú Add. Navegar a **Mesh** para añadir: Plane, Cube, Circle, UV Sphere, Icosphere, Cylinder, Cone, Torus.
- **Ajustar número de vértices al añadir:** Antes de hacer clic para colocar el objeto, usar el panel desplegable en la esquina inferior izquierda (o presionar **F9**) para modificar parámetros como **Vertices** (ej. 8 para cilindro bajo poligonal).
- **Duplicar:** **Shift + D** para duplicar la selección. Luego mover con el mouse o restringir eje (ej. **Shift + D**, luego **G + Z**).
- **Seleccionar arista completa (edge loop):** **Alt + clic** en una arista para seleccionar todo el loop de aristas alrededor del mesh.
- **Seleccionar pieza conectada:** **L** para seleccionar todo el elemento conectado bajo el cursor (útil para aislar partes del mesh).

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Tab** para alternar rápidamente entre Object Mode y Edit Mode.
- Usa **E** principalmente en caras, no en vértices o aristas, para extruir limpiamente.
- Usa **Ctrl + R** cuando necesites más geometría para deformar o detallar una zona específica.
- Usa **Ctrl + B** en aristas seleccionadas para suavizar bordes duros, pero prefiere **Shade Smooth + Auto Smooth** para bordes que no requieren geometría extra (micro bevels).
- Usa **Shift + A > Mesh** para añadir primitivas base (cilindro, círculo, etc.) al escenario.
- Usa **Shift + D** para duplicar partes del modelo y ahorrar tiempo en repeticiones.
- Usa **L** para seleccionar rápidamente una pieza completa del mesh sin seleccionar manualmente cada cara/arista.
- Usa **R + Z** (o cualquier eje) para rotar exclusivamente en ese eje y evitar rotaciones descontroladas.
- Usa **E + Z** cuando extruyas un círculo o forma plana para que la extrusión vaya hacia arriba y no en todas direcciones.

## Errores comunes / gotchas
- **Extruir todo el mesh a la vez:** Presionar **E** con todo seleccionado (A) no funciona bien; solo extruye caras individuales o grupos seleccionados.
- **Olvidar restringir eje al extruir/rotar/escalar:** Sin especificar eje (X, Y, Z), la transformación sigue la orientación de la cámara, lo que puede dar resultados inesperados.
- **Bevel excesivo:** Añadir demasiados segmentos con bevel (scroll) puede saturar la geometría innecesariamente; usar **Shade Smooth + Auto Smooth** como alternativa ligera.
- **No ajustar vértices al añadir objetos:** Si añades un cilindro o círculo sin reducir el número de vértices (ej. 32 por defecto), obtienes geometría densa para modelos low-poly.
- **Confundir modos de selección:** Estar en modo vértices cuando quieres seleccionar caras, o viceversa, impide seleccionar correctamente.
- **Shade Smooth sin Auto Smooth:** Activar solo Shade Smooth suaviza todo el mesh, incluyendo bordes que deberían ser duros; activar Auto Smooth con un ángulo adecuado (ej. 30°) corrige esto.

===== pkICXEWc1kM.md =====
# 20X Faster Rendering in Cycles (Blender Render Guide)
**Fuente:** Kaizen | https://youtu.be/pkICXEWc1kM

## Qué enseña (2-3 líneas)
Este tutorial enseña a optimizar escenas y ajustar configuraciones de Cycles para acelerar drásticamente los renders, desde la reducción de geometría innecesaria hasta el uso de denoising avanzado. Cubre técnicas como instancias, simplificación, culling, ajuste de samples, noise threshold, light paths y denoising con OpenImageDenoise en el compositor.

## Técnicas accionables
- **Instancias de colección:** Reemplaza objetos duplicados idénticos con instancias usando **Shift+A → Collection Instance** para evitar que Blender cargue datos duplicados.
- **Simplify (Render Settings):** Actívalo en **Render Properties → Simplify**. Reduce **Max Subdivision** a **2 o 3** (viewport y render) y ajusta **Texture Limit** (ej. 1024) para bajar resolución de texturas globalmente.
- **Camera Culling:** En **Object Properties → Visibility**, mantén presionado **Alt** y haz clic en **Use Camera Cull** en cada objeto fuera de cámara. Solo funciona en **Rendered View**.
- **Noise Threshold:** En **Render Properties → Sampling**, usa **0.03** como valor por defecto; sube a **0.1** en escenas simples. Valores más altos = renders más rápidos y ruidosos.
- **Max Samples:** Baja a **1000** o **2000** en lugar de 4096; el denoising compensa la calidad.
- **Min Samples:** Sube a **20** para que todas las partes de la imagen reciban muestras mínimas.
- **Light Tree:** En **Render Properties → Light Paths**, desactívalo si la escena tiene **menos de 10 luces**; actívalo para docenas/cientos de luces.
- **Animated Noise Seed:** En **Render Properties → Advanced**, actívalo para que el patrón de ruido varíe por frame y mejore el denoising en animaciones.
- **Light Paths (Max Bounces):** En **Render Properties → Light Paths**, pon todos los bounces (Diffuse, Glossy, Transmission, Volume) a **1** en vista render con denoising de viewport activado. Aumenta cada uno individualmente hasta que no veas cambios. Luego suma los valores para **Total**.
- **Persistent Data:** En **Render Properties → Performance**, actívalo para que Blender almacene datos de frame en RAM (BVH, importance map). Solo funciona tras renderizar la escena al menos una vez.
- **Denoising en Compositor:** En **View Layer Properties → Passes**, activa **Denoising Data**. En el Compositor, añade nodo **Denoise** (OpenImageDenoise), pon **Quality: High** y **Accurate**. Conecta los sockets **Image**, **Albedo** y **Normal**. Activa **HDR** si trabajas con imágenes HDR.
- **Compositor GPU:** En **Render Properties → Performance → Compositor**, selecciona **GPU** si tienes una GPU rápida.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **instancias de colección** cuando tengas objetos idénticos duplicados en la escena.
- Usa **Simplify** con **Max Subdivision bajo** cuando tengas objetos con Subdivision Surface modifier que no necesitan alta densidad.
- Usa **Camera Culling** en objetos fuera del encuadre que no aparecen en reflejos ni sombras visibles.
- Usa **Noise Threshold 0.03** como punto de partida; súbelo a **0.1** en escenas con poca translucencia/transparencia.
- Usa **Min Samples 20** cuando bajes Max Samples y Noise Threshold para evitar píxeles sin muestras.
- Usa **Light Tree desactivado** cuando tengas menos de 10 luces; actívalo para escenas con muchas luces (ej. árbol de navidad).
- Usa **Animated Noise Seed** en animaciones para que el ruido sea natural y el denoising sea más consistente.
- Usa **Persistent Data** solo para animaciones (no para frames individuales), y solo tras haber renderizado la escena una vez.
- Usa **Denoising en Compositor** en lugar del checkbox simple para tener control sobre albedo, normal y HDR.
- Usa **resolución 1080p** para proyectos web/redes; **1440p** para calidad media; **4K** solo si el destino final lo requiere (TV, cine).

## Errores comunes / gotchas
- **No verificar GPU habilitada:** Asegúrate de que en **Edit → Preferences → System** tengas seleccionada tu GPU y en **Render Properties → Device** esté en **GPU Compute**.
- **Usar Simplify sin verificar calidad:** Si tienes objetos reflectantes o el HDRI es visible en el fondo, bajar Texture Limit puede perder detalle visible. Siempre rerenderiza para comprobar.
- **Camera Culling no funciona en Solid View:** Solo se activa en **Rendered View**; en Solid View los objetos culled siguen visibles.
- **Persistent Data no acelera el primer frame:** Necesita renderizar la escena una vez para almacenar datos en RAM; en frames siguientes sí acelera.
- **Denoising con samples muy bajos o noise threshold muy alto:** El denoiser puede generar artefactos (manchas) si tiene demasiado ruido que adivinar. Ajusta samples y threshold para darle suficiente información.
- **Light Paths con todos los bounces a 1:** Puede dejar la imagen muy oscura o plana; aumenta cada bounce individualmente hasta que el viewport deje de mostrar cambios.
- **Tiles (Performance):** Cambiar el tamaño de tiles (ej. 128) puede ralentizar renders drásticamente; es mejor dejarlo en **2048** por defecto.
- **Noise Threshold en escenas con transparencia/translucencia:** Necesita valores más bajos (ej. 0.03) porque estos materiales generan más ruido.

===== si7UAgvBd4Y.md =====
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

===== uCplB3zvQks.md =====
# New Anime Cel/Toon Shader for Blender 4.2 and Beyond [EEVEE] - PART 1 Comfee Tutorial
**Fuente:** Comfee Mug | https://youtu.be/uCplB3zvQks

## Qué enseña
Crear un shader cel/toon en EEVEE que reaccione a luces de colores, usando nodos de Shader to RGB, ColorRamp y Mix Color. Incluye un truco para suavizar el sombreado esférico con Texture Coordinate y Mapping, y un método para corregir solapamiento de bordes en áreas de luz coloreada.

## Técnicas accionables
- Agrega un sol (Sun) con **Strength = 3** y **Angle = 20** en las propiedades de luz.
- Crea el shader base: **Shift+A > Shader > Diffuse BSDF**, luego **Shift+A > Converter > Shader to RGB**, luego **Shift+A > Converter > ColorRamp** (modo **Constant**). Conecta: Diffuse BSDF > Shader to RGB > ColorRamp > Material Output Surface.
- Duplica el ColorRamp (**Shift+D**). Agrega **Shift+A > Color > Mix Color** (modo **Hue**). Conecta: el segundo ColorRamp (con stops negro y blanco) al segundo input del Mix Color, y el primer ColorRamp al primer input. El output del Mix Color va al Material Output.
- Para que el shader adopte el color de una luz puntual: coloca una **Point Light** con color distinto al blanco. Ajusta el stop blanco del segundo ColorRamp para controlar el área de influencia de la luz coloreada.
- Para corregir solapamiento en bordes de luz coloreada: copia la posición del stop de color original y súmale **0.3 a 0.35** en el primer ColorRamp.
- Para reducir el efecto de la luz coloreada: baja el valor (Value) del stop blanco del segundo ColorRamp.
- Para suavizar el sombreado en un objeto: selecciona el objeto, ve a **Object Properties > Visibility** y desactiva **Shadows**. Luego en el shader: **Shift+A > Vector > Mapping**, **Shift+A > Vector > Mix** (modo **Vector**), **Shift+A > Input > Texture Coordinate**. Conecta: Texture Coordinate **Object** output al input **B** del Mix Vector. Mapping output al input **A** del Mix Vector. Mix Vector output al **Normal** input del Diffuse BSDF. Ajusta el **Factor** del Mix Vector (0 = sombreado normal, 1 = sombreado esférico completo).
- Para suavizar aún más: agrega un **Shift+A > Converter > ColorRamp** con un gradiente suave, luego **Shift+A > Color > Mix Color** (modo **Overlay**). Conecta el gradiente al segundo input y el Mix Color (Hue) al primer input.

## Reglas para el erudito
- Usa **ColorRamp en modo Constant** para el sombreado cel básico, no Linear ni otros modos.
- Usa **Mix Color en modo Hue** cuando quieras que el shader herede el tono de luces de colores.
- Usa **Texture Coordinate > Object** conectado a un **Mix Vector** cuando necesites que un objeto ignore su propia forma y se comporte como esférico para el sombreado.
- Usa **desactivar Shadows** en Object Properties > Visibility cuando apliques el truco de sombreado esférico para evitar artefactos.
- Usa **Overlay** en Mix Color para añadir un gradiente suave sin destruir el color base.

## Errores comunes / gotchas
- Olvidar desactivar **Shadows** en el objeto que usa el truco de sombreado esférico; causa sombras incorrectas.
- No ajustar el **Factor** del Mix Vector gradualmente; un factor de 1 hace que todo el objeto se vea completamente plano.
- Usar el mismo ColorRamp para ambos inputs del Mix Color; se pierde el efecto de luz coloreada.
- No sumar **0.3–0.35** a la posición del stop de color original; aparecen líneas de solapamiento visibles en los bordes de la luz coloreada.
- Conectar el **Texture Coordinate > Object** al input equivocado del Mix Vector; debe ir a **B**, no a A.