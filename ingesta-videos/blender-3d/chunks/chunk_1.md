

===== 1khSuB6sER0.md =====
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

===== 2Kzo68liq78.md =====
# How to make Game Models (For Beginners) from Start to Finish (blender)
**Fuente:** Jens | https://youtu.be/2Kzo68liq78

## Qué enseña (2-3 líneas)
Tutorial para crear modelos 3D low poly para videojuegos desde cero en Blender, cubriendo modelado modular, UV unwrapping, texturizado con atlas de colores y texturas seamless, y exportación a motores de juego. Enfocado en flujo de trabajo eficiente para creadores solitarios o equipos pequeños.

## Técnicas accionables
- **Navegación básica:** Mantén el botón central del mouse para orbitar, scroll para zoom, clic derecho para seleccionar objetos (o clic izquierdo si usas configuración antigua).
- **Selección múltiple:** Presiona **B** y arrastra con clic izquierdo para selección cuadrada, o **C** para selección circular.
- **Eliminar objetos:** Selecciona y presiona **X**.
- **Añadir objetos:** Presiona **Shift+A** y elige el tipo de malla.
- **Modos:** Usa **Tab** para alternar entre Object Mode y Edit Mode.
- **Transformaciones en Edit Mode:** **G** para mover (grab), **R** para rotar, **S** para escalar.
- **Herramientas clave:** **E** para extruir, **I** para inset, **Ctrl+R** para loop cut, **D** para duplicar.
- **Snapping para modular:** Activa snapping magnético para alinear piezas al grid; coloca el origen del objeto en la base (pie del modelo) alineado al grid.
- **Modelado de pared modular:** Crea un cubo, escala en eje Y, añade detalles con loop cuts y extrusión. Para esquinas: duplica, corta a la mitad, rota y fusiona vértices.
- **Ventanas:** Usa loop cuts para definir el hueco, elimina caras, selecciona bordes y presiona **F** para bridge edge loops. Duplica el borde interior (**Shift+D**), extruye (**E**), escala en X y Z (**S**), luego escala en Y para el marco.
- **Puertas:** Mismo método que ventanas, pero deja el hueco abierto y modela la puerta como objeto separado.
- **Subdivision Surface:** Añade el modificador Subdivision Surface a objetos como refrigeradores, luego añade edge loops con **Ctrl+R** para controlar la curvatura.
- **Array Modifier:** Añade el modificador Array para crear copias en línea (ej. perillas de horno).
- **Mirror Modifier:** Coloca el origen en el centro del objeto, elimina la mitad de la malla en Edit Mode, añade el modificador Mirror para modelar simétricamente.
- **Proportional Editing:** Actívalo con **O** en Edit Mode; afecta vértices circundantes al transformar. Útil para deformar esferas UV al hacer árboles.
- **Suavizado de caras curvas:** Selecciona el anillo de caras curvas (ej. cilindro), ve a Mesh > Faces > Shade Smooth; las caras planas déjalas como Shade Flat.
- **Árbol low poly (hojas):** Crea un Ico Sphere, elimina la mitad inferior en Edit Mode, ajusta la punta con Proportional Editing.
- **Exportación FBX:** Mueve el origen al centro de la escena (Object > Set Origin > Origin to 3D Cursor), exporta como FBX marcando "Selected Objects" y "Apply Scalings".
- **Corrección de normales:** En Edit Mode, selecciona todo (**A**) y ve a Mesh > Normals > Calculate Outside.
- **UV unwrapping básico (atlas):** En el UV Editing tab, selecciona caras, presiona **U** > Project from View (para gradientes) o ajusta manualmente el UV a un cuadro del atlas.
- **UV para texturas seamless:** Selecciona caras frontales, vista frontal (**1** en numpad), presiona **U** > Project from View. Para lados y techo, unwrap individualmente y escala en un solo eje para alinear.
- **Materiales múltiples:** Crea dos materiales en el Shading tab, selecciona caras en Edit Mode, asígnalas al material deseado en el panel Material.
- **Creación de atlas de colores:** En GIMP/Photoshop: crea imagen cuadrada, añade patrón de tablero de ajedrez, pinta columnas alternas con colores, aplica degradados verticales seleccionando con la varita mágica.
- **Material Maker (texturas seamless):** Usa nodos: Pattern (ladrillos), Step (separar ladrillo de mortero), Colorize (randomizar color ladrillo), Uniform (color mortero), Blend (mezclar).

## Reglas para el erudito
- Usa **Shift+A** para añadir cualquier objeto, no solo cubos.
- Usa **Ctrl+R** para loop cuts precisos antes de extruir o insets.
- Usa **E** para extruir caras, **I** para insets, **D** para duplicar elementos.
- Usa el modificador Mirror cuando el objeto sea simétrico; coloca el origen en el centro exacto antes de aplicarlo.
- Usa el modificador Array para elementos repetitivos lineales (perillas, rejillas).
- Usa Subdivision Surface + edge loops para curvas suaves en modelos low poly.
- Usa Proportional Editing (**O**) para deformaciones orgánicas (árboles, rocas).
- Usa Shade Smooth solo en caras curvas; mantén Shade Flat en caras planas para el estilo low poly.
- Usa snapping al grid para piezas modulares; alinea el origen en la base del objeto.
- Usa atlas de colores con degradados para texturizado rápido de múltiples objetos con una sola textura.
- Usa texturas seamless para patrones repetitivos (ladrillos, pisos) en assets modulares.
- Asigna dos materiales diferentes al mismo objeto si combinas atlas y seamless.
- Exporta como FBX con "Selected Objects" y "Apply Scalings" marcados.
- Calcula normales hacia afuera (Calculate Outside) si ves caras internas en el motor de juego.

## Errores comunes / gotchas
- **Olvidar eliminar el cubo por defecto:** Siempre elimínalo al empezar (seleccionar + **X**).
- **No alinear orígenes al grid:** Las piezas modulares no encajarán en el motor de juego; coloca el origen en la base del objeto.
- **Z-fighting por solapamiento exacto:** Si dos caras ocupan el mismo espacio, parpadean en el motor. Solución: desplaza ligeramente una pieza (ej. pared interior más baja que exterior) o tapa con otro objeto.
- **Normales invertidas:** Si ves el interior del modelo en el motor, selecciona todo y usa Calculate Outside.
- **Caras de un solo lado:** En motores como Unity, las caras solo se renderizan por un lado. Para árboles vistos desde abajo: duplica las caras y voltea normales (aumenta el conteo de triángulos) o usa la opción "Two Sided" en el material (disponible en Unreal, no en Unity por defecto).
- **UV mal alineado en texturas seamless:** Asegúrate de que los bordes del UV coincidan perfectamente con los bordes de la textura; escala en un solo eje para ajustar.
- **No usar canal UV separado para lightmaps:** Si el motor necesita lightmaps, crea un segundo canal UV y genera la textura de luz para ese canal.
- **Subdivision Surface sin edge loops de control:** El modelo se deformará de forma no deseada; añade loop cuts con **Ctrl+R** cerca de los bordes que quieras mantener afilados.
- **Escalar en Object Mode vs Edit Mode:** Para modelado modular, escala en Edit Mode para mantener las dimensiones exactas del grid.

===== 2nlMZx0vp6E.md =====
# Character Rigging in Blender : Easy Setup for Beginners
**Fuente:** Grant Abbitt (Gabbitt) | https://youtu.be/2nlMZx0vp6E

## Qué enseña (2-3 líneas)
A crear un rig básico para personajes en Blender desde cero, usando Armatures y pesos automáticos. Explica cómo posicionar huesos, usar simetría X, nombrar correctamente los huesos y parentar la malla al Armature para animar.

## Técnicas accionables
- **Ajustar origen del objeto:** en Object Mode, selecciona el personaje, presiona `N` para abrir el panel Item, escala con `S` hasta ~1.9 m de altura. Asegura que el origen esté en la base del personaje.
- **Centrar el cursor 3D:** presiona `Shift + S` → "Cursor to World Origin" antes de añadir el Armature.
- **Añadir Armature:** en Object Mode, vista frontal (`1` en numpad), presiona `Shift + A` → Armature → Single Bone.
- **Ver huesos siempre:** selecciona el Armature, ve a Object Data Properties (icono de hueso) → Viewport Display → activa "In Front".
- **Editar huesos:** selecciona el Armature, presiona `Tab` para Edit Mode. El hueso tiene cabeza (círculo), cuerpo (selecciona el centro) y cola (punta).
- **Crear torso:** selecciona el cuerpo del hueso, presiona `G` y luego `Z` para moverlo en Z. Selecciona la cola, presiona `E` y `Z` para extruir hacia arriba (cuello, cabeza).
- **Añadir brazos:** desde la cola del hueso del cuello, presiona `E` y extruye hacia un lado (clavícula), luego `E` para codo, `E` para muñeca, `E` para mano.
- **Activar simetría X:** en Edit Mode, activa el botón "X-Axis Mirror" en la barra superior (junto a "Options").
- **Nombrar huesos correctamente:** selecciona un hueso, presiona `F2` para renombrar. Usa sufijos `.L` para izquierda (ej. `hip.L`, `upper_arm.L`, `forearm.L`, `hand.L`).
- **Simetrizar Armature:** selecciona todo el Armature con clic derecho, luego ve a Armature → Symmetrize (o presiona `Ctrl + Shift + S` y elige "Symmetrize").
- **Extruir piernas con simetría:** con X-Axis Mirror activo, selecciona la cola del hueso de cadera, presiona `E` y extruye hacia abajo (muslo, rodilla, pie).
- **Parentar malla al Armature:** en Object Mode, selecciona primero el cuerpo, luego el Armature (activo en amarillo), presiona `Ctrl + P` → Armature Deform → With Automatic Weights.
- **Ver pesos en Edit Mode:** selecciona el cuerpo, ve a Modifiers, activa "Display modifier in edit mode" y "On Cage" para ver la deformación.
- **Activar Pose Mode:** selecciona el Armature, presiona `Ctrl + Tab` para entrar en Pose Mode. Rota huesos con `R`, mueve con `G`.
- **Vincular hueso raíz:** en Edit Mode del Armature, selecciona los huesos a vincular, luego el hueso raíz (activo), presiona `Ctrl + P` → Keep Offset.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa "In Front" en Viewport Display del Armature cuando los huesos queden ocultos dentro de la malla.
- Usa sufijos `.L` y `.R` en los nombres de huesos cuando trabajes con simetría X para que la función Symmetrize funcione correctamente.
- Usa `Ctrl + P` → "With Automatic Weights" cuando la malla tenga suficiente topología en las articulaciones; si hay poca, considera añadir más bucles de vértices.
- Usa "Preserve Volume" en el modificador Armature cuando tengas suficiente topología y aún así haya pinzamiento en las deformaciones.
- Usa un hueso raíz adicional (extruido desde la base) y vincúlalo con "Keep Offset" cuando quieras mover todo el personaje con un solo hueso.

## Errores comunes / gotchas
- **Huesos no visibles dentro del personaje:** olvidar activar "In Front" en Viewport Display del Armature.
- **Simetría no funciona al extruir:** los huesos no están nombrados con `.L`/`.R` o no se ha activado "X-Axis Mirror" en Edit Mode.
- **Deformaciones distorsionadas en articulaciones:** la malla tiene muy poca topología (pocos vértices) en la zona de la articulación; añade más bucles con `Ctrl + R`.
- **El hueso raíz no mueve todo el personaje:** falta vincular los huesos del torso al hueso raíz con `Ctrl + P` → "Keep Offset".
- **Pesos automáticos fallan si el origen del objeto no está centrado:** asegura que el cursor 3D esté en el origen mundial antes de añadir el Armature.

===== 5UCc3Z_-ibs.md =====
# How to Make Studio Lighting in Blender
**Fuente:** Blender Guru | https://youtu.be/5UCc3Z_-ibs

## Qué enseña (2-3 líneas)
Configuración de iluminación de estudio profesional en Blender para objetos 3D, usando luces puntuales, fondo infinito y técnicas de render. Cubre desde la colocación de cámara y luces hasta la composición final con denoising y ambient occlusion.

## Técnicas accionables
- **Cámara:** En vista frontal, presiona **Ctrl+Alt+Numpad 0** para alinear la cámara a la vista. Ajusta la distancia focal a **100 mm** para evitar distorsión de perspectiva en objetos como muebles.
- **Rotación de objeto:** Selecciona el objeto, presiona **R**, luego **Z** y rota **20 grados** para un ángulo lateral.
- **Ajuste de cámara sin distorsión:** Usa **Shift+Y** y **Shift+X** para simular un recorte de imagen grande sin barrel distortion.
- **Luz principal:** Agrega una lámpara puntual con **Shift+A > Light > Point**. Colócala para crear sombras que revelen la forma 3D del objeto (ej. sombra en la curva del respaldo).
- **Fondo infinito:** Añade un plano (**Shift+A > Mesh > Plane**). Selecciona un borde, presiona **E** y luego **Z** para extruir hacia arriba. Aplica el modificador **Bevel** (parámetros: **Segments** alto, ajusta **Offset** para suavizar la línea de unión). Haz clic derecho y selecciona **Shade Smooth**.
- **Iluminación uniforme del fondo:** Aleja la luz principal del objeto y aumenta su potencia (Energy) para reducir el falloff por la ley del inverso del cuadrado.
- **Color Management:** En propiedades de render, bajo **Color Management**, cambia **View Transform** a **Filmic** y **Look** a **High Contrast** para mejorar el contraste inmediatamente.
- **False Color:** Cambia **View Transform** a **False Color** para visualizar la exposición como un mapa de calor (gris = exposición correcta, verde = 1 stop sobreexpuesto, cian = 1 stop subexpuesto).
- **Luz de relleno:** Agrega una segunda lámpara puntual para iluminar áreas específicas (ej. lado de una pata). Oculta otras luces con **H** para aislar su efecto. Colócala detrás del fondo para evitar que ilumine el backdrop.
- **Suavidad de sombras:** Aumenta el parámetro **Size** de la lámpara puntual para sombras más suaves; disminúyelo para sombras más nítidas.
- **Color de luz:** Para un tono sutil, ajusta el color de la luz a un azul ligeramente frío (temperatura de color baja) en lugar de colores saturados.
- **Render:** Configura **Samples** a **200**. Activa **Denoising Data** en **Render Passes**. Renderiza con **F12**.
- **Denoising en Compositor:** Ve al editor de nodos de composición. Agrega nodo **Filter > Denoise**. Conecta: Image → Image, Denoising Normal → Normal, Denoising Albedo → Albedo.
- **Ambient Occlusion:** En propiedades del mundo, deja **Ambient Occlusion** desmarcado. Ajusta **Distance** a **0.2 m**. Activa **Ambient Occlusion** en **Render Passes**. Vuelve a renderizar.
- **Composición AO:** En el compositor, agrega nodo **Color > MixRGB**. Conecta la salida Render Layers (Image) al input superior, y el pase AO al input inferior. Cambia el modo a **Multiply**. Ajusta el **Factor** (ej. **0.3-0.4**) para controlar la intensidad de la sombra adicional.
- **Turntable animation:** Coloca el cursor 3D en el centro del objeto. Agrega un **Empty** con **Shift+A > Empty > Plain Axes**. Selecciona la cámara, luego el empty, presiona **Ctrl+P > Keep Transform**. Rota el empty con **R** y **Z**. En el timeline, en frame 1, presiona **I > Rotation**. En frame 100, rota el empty 360° y presiona **I > Rotation**. Selecciona ambos keyframes, haz clic derecho y elige **Interpolation Mode > Linear** para movimiento constante.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Filmic** como View Transform siempre para renders finales; nunca lo cambies para la salida definitiva.
- Usa **High Contrast** en Look para mejorar la imagen de forma inmediata en casi cualquier escena.
- Usa **False Color** para evaluar exposición de forma precisa: busca valores grises en el modelo como indicador de exposición correcta.
- Usa una luz puntual con **Size** grande cuando quieras sombras suaves (ej. iluminación favorecedora para formas orgánicas).
- Usa una luz puntual con **Size** pequeño cuando quieras sombras nítidas que enfaticen detalles (ej. mandíbula en modelos masculinos).
- Usa **Multiply** en el nodo MixRGB para combinar AO solo con valores oscuros, ignorando los blancos.
- Usa **Linear** en la interpolación de keyframes de rotación para turntable animation, evitando el easing por defecto de Bezier.

## Errores comunes / gotchas
- No temas a las sombras: son igual de importantes que la luz para revelar la forma tridimensional.
- No uses un plano enorme con sol para fondo infinito; es más simple extruir un borde y aplicar Bevel.
- No marques la casilla de Ambient Occlusion en el mundo; actívalo solo como render pass y combínalo manualmente en el compositor.
- No dejes el Distance de AO en 10 m por defecto; es excesivo para escenas de estudio, usa 0.2 m.
- No uses colores de luz saturados (rosas, azules intensos) a menos que busques un efecto estilizado muy específico; prefiere tonos cálidos o fríos naturales.
- No olvides que el denoising en el compositor requiere los pases Denoising Normal y Denoising Albedo activados en Render Passes.
- No uses el viewport denoising si no tienes una tarjeta RTX; solo funciona con esas GPUs.

===== 5ajQHT6SIqM.md =====
# Turning Photo Realistic Textures into Anime Style Shaders in Blender [EEVEE] - Comfee Tutorial
**Fuente:** Comfee Mug | https://youtu.be/5ajQHT6SIqM

## Qué enseña (2-3 líneas)
Transforma cualquier textura fotorrealista (PBR) en un shader estilo anime usando nodos en EEVEE. Cubre materiales lisos y rugosos, más un truco final de ruido para integrar objetos 3D en escenas 2D.

## Técnicas accionables
- **Preparación inicial:** Activa Node Wrangler (preferencias > Add-ons > Node Wrangler) para navegar el Shader Editor más rápido.
- **Para material liso (madera):**
  - Elimina todas las salidas del Principled BSDF excepto Base Color. Borra el Principled BSDF.
  - Conserva solo el grupo de textura o el nodo Image Texture conectado a Base Color.
  - Añade: **Diffuse BSDF** → **Shader to RGB** → **Brightness/Contrast** → **ColorRamp** → **Mix Color** (x2).
  - Conecta: Color de la textura original al input **Color** del Diffuse BSDF.
  - Ajusta Brightness a **0.3** y Contrast a **0.6**.
  - En el ColorRamp, mueve los stops de color para reducir detalles (arrastra los controles deslizantes).
  - Conecta la salida **Color** del ColorRamp al **Factor** del primer Mix Color.
  - En el primer Mix Color: cambia **A** a un marrón oscuro, **B** a un marrón claro. Conecta el resultado al input **A** del segundo Mix Color.
  - En el segundo Mix Color: cambia el modo a **Color Dodge**. Pon un naranja brillante en **B**. Ajusta **Factor** a **0.3**.
  - Para reacción a luces de colores: selecciona el Diffuse BSDF y el Shader to RGB, pulsa **Shift+D** para duplicarlos. Coloca los duplicados al inicio del árbol, conectando la salida del Color Dodge al input **Color** del nuevo Diffuse.
  - Opcional: aplica el método "inverted hull" para contornos (más oscuros y saturados) – ver tutorial de outlines.
- **Para material rugoso (roca):**
  - Copia todos los nodos del material liso (**Ctrl+C** sobre los nodos seleccionados). Haz visible el objeto de roca, pégalos (**Ctrl+V**).
  - Conecta la salida **Color** de la textura original al input del Diffuse BSDF del setup pegado.
  - Cambia el primer Mix Color por un **ColorRamp** en modo **Constant**.
  - Ajusta el stop blanco del nuevo ColorRamp a un gris claro.
  - Conecta la salida **Color** de este ColorRamp al input **A** del Mix Color en modo Color Dodge.
  - Cambia el color naranja del Color Dodge a azul cielo (o el que prefieras).
  - En el ColorRamp original (el de la cadena principal), añade stops: haz clic en la barra del ColorRamp y pulsa **Ctrl+clic** para agregar. Usa **8 stops** totales: 4 valores principales y 4 sutiles entre ellos para transiciones suaves. Estira el borde del nodo si es necesario para ver todos los stops.
  - Ajusta los stops gradualmente más oscuros hacia el extremo negro.
  - Aplica outline igual que en el material liso.
- **Truco final (ruido 2D):**
  - Añade un **Mix Color** justo antes del Diffuse BSDF. Ponlo en modo **Overlay**.
  - Añade: **White Noise Texture** → **ColorRamp** → conecta la salida **Color** del ColorRamp al input **B** del Mix Color.
  - Sobre el White Noise Texture, pulsa **Ctrl+T** (requiere Node Wrangler) para añadir automáticamente un nodo **Mapping** y **Texture Coordinate**.
  - En el Mapping, cambia **Vector** a **Object**.
  - Ajusta el ColorRamp para controlar la intensidad del ruido.
  - Aplica este setup a **cada shader** de la escena.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Node Wrangler** (Ctrl+T para añadir Mapping + Texture Coordinate automáticamente) cuando trabajes con texturas procedurales o ruido.
- Usa **Diffuse BSDF + Shader to RGB** en lugar de Principled BSDF cuando quieras eliminar reflejos realistas y obtener colores planos.
- Usa **ColorRamp en modo Constant** para materiales rugosos cuando necesites reducir detalles caóticos y crear bandas de color definidas.
- Usa **Color Dodge** en un Mix Color cuando quieras inyectar un color saturado que haga "pop" al material sin perder la base.
- Usa **Overlay + White Noise Texture** con Vector en **Object** cuando necesites que el ruido escale uniformemente con el objeto (sin importar la distancia de cámara) para simular grano de animación 2D.
- Usa **8 stops en el ColorRamp** (4 principales + 4 de transición) para materiales rugosos cuando quieras un degradado suave tipo anime sin cortes bruscos.

## Errores comunes / gotchas
- No olvides eliminar el Principled BSDF y todas las conexiones de roughness/normal/displacement; solo debe quedar la salida de color de la textura original.
- Si el material rugoso se ve demasiado detallado o "nublado" después de aplicar el setup liso, cambia el Mix Color por un ColorRamp en Constant y reduce el contraste.
- Al duplicar nodos con **Shift+D**, asegúrate de reconectar manualmente las entradas/salidas; la duplicación no mantiene conexiones automáticas.
- El ruido con White Noise Texture puede verse demasiado fuerte; ajusta el ColorRamp (mueve el stop blanco hacia la izquierda) para atenuarlo.
- Si el ruido se mueve con la cámara o cambia de tamaño al alejarte, verifica que el nodo Mapping tenga **Vector** en **Object** (no en UV o Camera).
- No uses este método en Cycles; está diseñado para **EEVEE** (Shader to RGB no funciona igual en Cycles).

===== 7Pi5AUwyIJU.md =====
# Stop Using Color Ramps For Toon Shaders
**Fuente:** TheSicklyWizard | https://youtu.be/7Pi5AUwyIJU

## Qué enseña (2-3 líneas)
Reemplaza el clásico nodo Color Ramp en toon shaders por nodos Color Curve o Separate/Combine Color en HSV para conservar la reacción a luces de colores. Muestra cómo el método tradicional (Diffuse → Shader to RGB → Color Ramp) pierde información cromática al convertir color a un valor flotante, y ofrece alternativas que mantienen la respuesta a iluminación coloreada.

## Técnicas accionables
- **Método con Color Curve (alternativa simple):** En el Editor de Shaders, añade un nodo **Shader to RGB** (Shift+A > Converter > Shader to RGB), conéctalo a un nodo **Color Curve** (Shift+A > Color > Color Curve), y luego a un nodo **Multiply** (Shift+A > Color > MixRGB, modo Multiply) con tu textura. Ajusta la curva en el panel del nodo Color Curve: haz clic para añadir puntos y arrastra para crear escalones que generen bandas discretas de sombra.
- **Método con HSV (recomendado):** Conecta el **Shader to RGB** a un nodo **Separate Color** (Shift+A > Converter > Separate Color). En sus propiedades, cambia **Mode** a **HSV**. Toma la salida **Value** (gris) y conéctala a un nodo **Color Ramp** o **Color Curve** para controlar las bandas de sombra. Luego conecta esa salida al canal **Value** de un nodo **Combine Color** (Shift+A > Converter > Combine Color, Mode: HSV). Conecta las salidas **Hue** y **Saturation** del Separate Color directamente a las entradas correspondientes del Combine Color. Finalmente, conecta el Combine Color a un nodo **Multiply** con tu textura.
- **Extensión con Principled BSDF:** Reemplaza el nodo **Diffuse BSDF** por un **Principled BSDF** (Shift+A > Shader > Principled BSDF). Conéctalo al **Shader to RGB** para que el toon shader herede roughness, metallic, specular y normal maps. Ajusta los parámetros del Principled BSDF (Roughness, Metallic, etc.) como desees; el efecto toon se aplicará sobre esas propiedades.
- **Ajuste de bandas de sombra:** En el nodo **Color Ramp** o **Color Curve** conectado al Value, mueve los puntos/controles para definir cuántas bandas de luz/sombra aparecen. Para un efecto de 2 tonos (sombra/luz), coloca un punto en el extremo izquierdo (negro) y otro en el derecho (blanco), ajustando la posición del punto de transición.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Color Curve** en lugar de **Color Ramp** cuando necesites que el toon shader reaccione a luces de colores sin artefactos de bandeo RGB.
- Usa **Separate Color en modo HSV** y manipula solo el canal **Value** cuando quieras sombras limpias sin que el color de la luz se distorsione en bandas cromáticas.
- Usa **Principled BSDF** como entrada del **Shader to RGB** cuando quieras que el toon shader respete roughness, metálicos, especulares y normales.
- Usa **Combine Color en modo HSV** para reconstruir el color después de modificar el Value, manteniendo el tono y saturación originales de la iluminación.

## Errores comunes / gotchas
- **Error común:** Usar **Color Ramp** directamente tras **Shader to RGB** — esto convierte el color en un valor flotante unidimensional, perdiendo la respuesta a luces de colores y forzando a gestionar la iluminación manualmente.
- **Error común:** Conectar el **Shader to RGB** a un **Color Ramp** y luego a un **Multiply** con la textura — funciona para luces blancas, pero falla con luces de colores (produce bandeo cromático no deseado).
- **Gotcha:** Al usar **Color Curve**, el efecto de bandas se logra creando escalones abruptos en la curva; curvas suaves generan degradados, no toon shading.
- **Gotcha:** En el método HSV, si conectas el **Separate Color** directamente al **Combine Color** sin modificar el Value, no obtendrás efecto toon; debes intercalar un nodo de control (Color Ramp o Color Curve) en el canal Value.

===== 9N87-yRR5aE.md =====
# Sculpting in Blender: A Complete Beginner's Guide
**Fuente:** Grant Abbitt (Gabbitt) | https://youtu.be/9N87-yRR5aE

## Qué enseña (2-3 líneas)
Guía paso a paso para esculpir una cara caricaturesca desde cero en Blender, usando el espacio de trabajo Sculpting. Cubre configuración inicial, selección de pinceles, simetría, remallado, y técnicas de detalle con pinceles como Grab, Draw, Crease y Smooth.

## Técnicas accionables
- **Configurar tableta:** Asigna el botón 1 del lápiz a Middle Mouse button (rueda) para orbitar; el botón 2 a right click.
- **Añadir malla base:** En Layout, selecciona el cubo por defecto y elimínalo con X. Presiona **Shift+A** → Mesh → Icosphere. En el panel inferior izquierdo (disclosure arrow), ajusta Subdivisions a **5**.
- **Ir a Sculpting Workspace:** En la barra superior, selecciona "Sculpting". Activa **Symmetry** en el eje X (botón X en la barra superior).
- **Pincel Grab (G):** Para estirar la forma. Usa **F** para redimensionar el pincel (mueve el cursor horizontalmente). Haz clic y arrastra para deformar.
- **Pincel Draw (D):** Para añadir volumen. Mantén **Ctrl** para invertir (hundir en lugar de levantar).
- **Pincel Crease (C):** Para crear pliegues y líneas de detalle. Mantén **Ctrl** para invertir (levantar aristas).
- **Smooth:** Mantén **Shift** mientras usas cualquier pincel para suavizar la superficie.
- **Remesh (remallado):** Presiona **R** para previsualizar el tamaño de vóxel (aparece un recuadro). Ajusta el valor (ej. 0.08, 0.03, 0.006). Luego presiona **Ctrl+R** para aplicar el remallado.
- **Ver estadísticas de polígonos:** En el menú Overlays (icono de dos círculos superpuestos), activa **Statistics** para ver el número de caras.
- **Añadir ojos:** Cambia a Layout workspace. Mueve el cursor 3D con **Shift+Right Click** sobre la zona del ojo. Presiona **Shift+A** → Mesh → UV Sphere. Escala con **S**. Rota con **R**, luego **X**, luego escribe **90** y Enter para orientar el polo hacia el frente.
- **Duplicar ojo con Mirror:** Selecciona el ojo, ve a Modifiers (icono de llave inglesa) → Add Modifier → Generate → **Mirror**. En Mirror Object, usa el picker y selecciona la cabeza (Head). Asegúrate de que el eje X esté activo.
- **Seleccionar objeto en Sculpting:** Si seleccionas el objeto equivocado, mueve el ratón sobre el objeto deseado y presiona **Alt+Q** (parpadea en rojo para confirmar).
- **Reorientar cámara:** **Alt+Middle Mouse** sobre una zona para centrar la vista en ese punto.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- **Usa la Icosphere** en lugar del cubo o UV Sphere como malla base para esculpir caras, porque su distribución uniforme de polígonos evita deformaciones tempranas.
- **Usa subdivisiones altas (5)** al añadir la Icosphere para tener suficientes polígonos desde el inicio, pero no más para no saturar la máquina.
- **Usa el pincel Grab** en las etapas tempranas para definir la forma general (cráneo, cuello, mandíbula) antes de pasar a detalles finos.
- **Usa el pincel Draw** para añadir volumen en zonas específicas (orejas, cejas, pómulos) y **Ctrl+Draw** para hundir (ojos, fosas nasales).
- **Usa el pincel Crease** para definir pliegues (labios, párpados, líneas de expresión) y **Ctrl+Crease** para levantar bordes (párpados superiores, aristas de orejas).
- **Usa Smooth (Shift)** constantemente entre pasos para eliminar irregularidades y suavizar transiciones.
- **Usa Remesh (Ctrl+R)** cada vez que notes estiramientos visibles de polígonos o después de cambios grandes en la forma.
- **Usa un tamaño de vóxel grande (ej. 0.08)** al inicio para mantener pocos polígonos y que el Smooth tenga efecto global; **reduce progresivamente (0.03, 0.006)** al añadir detalle fino.
- **Usa la simetría en X** activada durante todo el proceso, y desactívala solo al final para añadir asimetrías realistas.
- **Usa estadísticas (Overlays → Statistics)** para monitorear el conteo de caras y evitar que el rendimiento se degrade (mantén por debajo de 3 millones en máquinas potentes, ~500k en máquinas lentas).

## Errores comunes / gotchas
- **No empezar con una Icosphere de suficientes subdivisiones:** Si usas una esfera con pocos polígonos, el estiramiento será severo al usar Grab y el remallado no lo corregirá del todo.
- **Olvidar activar Symmetry en X antes de esculpir:** Si empiezas a deformar sin simetría, el modelo quedará asimétrico desde el principio y será difícil corregirlo después.
- **Usar un tamaño de vóxel demasiado pequeño desde el inicio:** Si remallas con vóxel muy fino (ej. 0.006) al principio, el Smooth tendrá poco efecto global y la máquina se ralentizará innecesariamente.
- **No remallar (Ctrl+R) después de estiramientos:** Si continúas esculpiendo sin remallar, los polígonos se estirarán cada vez más, generando artefactos y pérdida de detalle.
- **Confundir el objeto activo en Sculpting:** Si al volver a Sculpting no puedes esculpir, probablemente tienes seleccionado el ojo u otro objeto. Usa **Alt+Q** sobre la cabeza para re-seleccionarla.
- **No ajustar el Mirror Object al duplicar ojos:** Si al añadir el modificador Mirror el ojo no se refleja en la posición correcta, cambia Mirror Object a la cabeza (Head) para que el eje de simetría sea el centro de la cabeza.
- **Usar el pincel Crease sin suavizar después:** El Crease deja aristas muy marcadas; siempre complementa con Smooth (Shift) para integrar los pliegues en la superficie.
- **No usar la previsualización de vóxel (R) antes de remallar:** Si remallas sin ver el tamaño, puedes terminar con polígonos demasiado grandes o pequeños para la etapa actual.

===== AtetvOEcZt8.md =====
# 2d style materials in 3d animation
**Fuente:** Joey Carlino | https://youtu.be/AtetvOEcZt8

## Qué enseña (2-3 líneas)
Tutorial sobre cómo lograr estilos 2D (cel shading, outlines, medios tonos, efectos pictóricos) en animación 3D usando Blender con Eevee. Cubre técnicas con nodos (Shader to RGB, map range, math), modificadores (Solidify), Grease Pencil y Freestyle, además de métodos manuales como texture painting.

## Técnicas accionables

- **Cel shading automático (compositor):** Activa "Use Nodes" en el compositor, añade un nodo "Posterize" (ajusta el valor de pasos). Opcional: pon un nodo "Brightness/Contrast" antes. Para vista previa sin render, activa el viewport setting correspondiente.
- **Cel shading por objeto (Eevee obligatorio):** En el Shader Editor, crea un material. Añade "Shader to RGB", luego un "Color Ramp" (modo "Constant"). Mueve los stops, cambia colores, añade más stops. Deja el color del Principled BSDF en blanco para mejor control. Ajusta Roughness/Metallic para variantes.
- **Luz para cel shading plano:** Selecciona la luz → Properties → Object Data → Shadow: desactiva "Shadow". Reduce el tamaño de la luz al mínimo.
- **Cel shading con Map Range (para node groups):** Usa "Map Range" en vez de Color Ramp. Ajusta los valores "From Min"/"From Max" para controlar la transición (acércalos para bordes duros). Conecta a "Mix Color" (Factor controla la mezcla). Para 3 colores: repite con otro Map Range y Mix Color.
- **Cel shading con Math node:** "Math" → "Greater Than" (solo bordes duros, sin gradientes).
- **Cel shading con imagen de paleta:** Crea un material con 3 colores usando Map Range. Pon la imagen en el slot de color medio. Añade "Mix Color" (Multiply) con la imagen en el primer slot y un color oscuro en el segundo; el Factor controla oscuridad. Repite con "Add" y un color claro para highlights.
- **Cel shading stepped linear:** Map Range → "Stepped Linear". Ajusta "Steps" para número de bandas (espaciado uniforme).
- **Cel shading vector stepped linear:** Map Range → "Vector" + "Stepped Linear". Divide colores del shader en sólidos.
- **Cel shading por canales RGB:** Usa "Separate Color" para dividir en R, G, B. Crea luces roja, verde y azul. Mezcla canales con "Mix Color" (Add/Multiply). Usa el canal rojo como color principal.
- **Cel shading sin luces (fake light direction):** Añade "Texture Coordinate" (Normal) → "Vector Math" (Dot Product). Cambia los valores Z (ej. Z=1 para luz desde arriba). Alternativa: usa un nodo "Normal" para control individual por objeto.
- **Outlines con Fresnel/Layer Weight:** Conecta "Fresnel" o "Layer Weight" a "Math" → "Less Than". Esto da un outline negro que varía con el ángulo. Multiplica para mantenerlo negro o usa "Mix" para elegir colores.
- **Outlines con método Inverted Hull (Solidify):** Añade un segundo slot de material (nómbralo "outline"). En ese material: "Emission" (color negro). Activa "Backface Culling" en Settings. Pon "Shadow Mode" en "None". Añade modificador "Solidify": ajusta "Thickness", activa "Flip Normals", "Material Offset" = 1.
- **Outlines con Geometry Nodes (inverted hull):** Mismo principio que Solidify, pero permite efectos extra (ej. hacer el outline ondulante).
- **Outlines con Grease Pencil Line Art:** Selecciona el objeto → Shift+A → Grease Pencil → "Object Line Art". Añade una cámara y apúntala al objeto. Para vista previa: N → "Lock Camera to View". Selecciona el outline → Properties → modifica "Thickness", material, "Edge Types" (ej. "Silhouette" para solo contorno exterior). Añade modificador "Noise" para jitter.
- **Outlines con Freestyle:** Render Properties → activa "Freestyle". View Layer Properties → ajusta opciones de línea. Requiere renderizar para ver resultado.
- **Outlines con Line Art Curve Modifier (Alan Wyatt):** Descarga el add-on de Geometry Nodes (link en descripción). Emula outlines de tinta y lápiz.
- **Grease Pencil 2D animado en escena 3D:** Shift+A → Grease Pencil → "Blank". Entra en Draw Mode. En el frame deseado, dibuja líneas (ej. arrugas faciales). Duplica frames con Shift+D en el timeline. Escala en Edit Mode. Usa "Inbetween" tool para interpolación. Para keyframes en blanco: I en Draw Mode. Activa Auto Keying para dibujar frame a frame.
- **Rigging de Grease Pencil:** Pesa y riggea como una malla. Para elementos 2D permanentes: parentea los strokes a huesos (ej. strokes de cabeza al bone "Head").
- **Medios tonos / Screen tones (Shader to RGB + Math Greater Than):** Conecta "Shader to RGB" → "Math" (Greater Than). En la entrada del Math, pon "Voronoi Texture" (Distance) → "Texture Coordinate" (Camera). Ajusta "Randomness" a 0, "Dimension" a 2D, escala alta. Para invertir dots (negros sobre blanco): usa "Mix Color" (valores 1 y 0). Ajusta valores para tamaño de dots.
- **Medios tonos planos (sin perspectiva):** Usa "Camera Data" (View Vector) en vez de Texture Coordinate. Los dots mantienen tamaño constante. "Window" Vector es similar pero se deforma al redimensionar la ventana.
- **Variaciones de medios tonos:** Rota con "Mapping Node". Cambia Voronoi por "Wave Texture" para líneas. Para dots que cambian de tamaño en bandas: pon "Color Ramp" (Constant) antes del Math; la posición controla tamaño, el color controla la banda.
- **Efecto pictórico (painterly) manual (Texture Paint):** Entra en Texture Paint Mode. Clica "Add New Image" para base color (en Blender 4.0 está en otra ubicación). Asegúrate de que el objeto tenga UV unwrap. Pinta directamente. Cambia color, tamaño, fuerza en el panel de brushes. Para reducir lag: maximiza la ventana con Ctrl+Spacebar sobre ella. Usa texturas de pincel (ej. de Craft Reaper en Gumroad) en las opciones de textura.
- **Efecto pictórico automático con nodos (normal manipulation):** Asegura sombreado suave. Añade "Geometry" (Normal) → conecta a "Normal" del shader. Pon "Voronoi Texture" (Position) → conecta a la entrada Normal. Esto pixeliza las normales. Para pinceladas: "Noise Texture" (Object) → "Vector Math" (Add) a las normales. Resta 0.5 con otro Vector Math, luego "Scale" para fuerza. Ajusta "Scale" y "Detail" del Noise. Cambia Voronoi a "Smooth" para transiciones suaves.
- **Baking de efectos pictóricos:** Para animación, hornea los efectos en una imagen para que no se muevan de forma antinatural. Usa el add-on "Bake Lab" (gratuito).
- **Postprocesado pictórico:** Usa el "Live Paint Filter" de Alan Wyatt para resultados más realistas.

## Reglas para el erudito (imperativas, "usa X cuando Y")

- Usa **Eevee** como render engine cuando trabajes con el nodo **Shader to RGB**; no funciona en Cycles.
- Usa **Shader to RGB + Color Ramp (Constant)** para cel shading plano y controlable por objeto.
- Usa **Map Range** en vez de Color Ramp cuando necesites crear **node groups reutilizables** (el Color Ramp no expone inputs para stops/colores).
- Usa **Math (Greater Than)** cuando solo quieras bordes duros sin gradientes.
- Usa **Backface Culling + Solidify (Flip Normals)** para el método Inverted Hull de outlines; desactiva Shadow Mode en el material outline.
- Usa **Grease Pencil Line Art** cuando necesites outlines que funcionen por cámara y con control de tipos de borde (silueta, contorno, etc.).
- Usa **Freestyle** solo si puedes permitirte renderizar para ver el resultado; no es interactivo en viewport.
- Usa **Texture Coordinate (Camera)** para medios tonos con perspectiva; usa **Camera Data (View Vector)** para medios tonos planos sin perspectiva.
- Usa **Geometry (Normal) + Voronoi/Noise** para efectos pictóricos automáticos; hornea si el personaje se anima para evitar artefactos de movimiento.
- Usa **Separate Color (RGB)** cuando quieras controlar luces de color por canal para rim lights estilizados.
- Usa **Color Management = Standard** solo para cel shading; para otros usos mantén el perfil por defecto.
- Usa **Bake Lab** (add-on gratuito) para hornear iluminación sobre el modelo antes de pintar manualmente.

## Errores comunes / gotchas

- Olvidar cambiar a **Eevee** al usar **Shader to RGB**; Cycles no lo soporta y el material se verá negro o incorrecto.
- Dejar el **Principled BSDF** con color distinto a blanco en cel shading; el resultado será demasiado oscuro y perderás control sobre los colores del Color Ramp.
- No activar **Backface Culling** en el material outline del método Inverted Hull; se verán las caras internas incorrectamente.
- Usar **Grease Pencil Line Art** sin una cámara en la escena; el outline no se generará o se verá roto.
- Esperar que **Freestyle** se vea en el viewport; solo aparece al renderizar (F12).
- Usar **Texture Coordinate (Camera)** para medios tonos y luego alejar la cámara; los dots cambiarán de tamaño por la perspectiva. Si quieres tamaño constante, usa **Camera Data (View Vector)**.
- No hacer **UV unwrap** antes de texture paint; el pincel no funcionará o pintará en UVs incorrectas.
- Aplicar efectos pictóricos con nodos (normal manipulation) a un personaje animado sin hornear; las texturas de ruido/voronoi se moverán de forma antinatural con el objeto.
- Usar **Window Vector** para medios tonos planos y luego redimensionar la ventana de Blender; la textura se deformará. Usa **View Vector** en su lugar.
- No ajustar **Shadow Mode** a "None" en el material outline del Inverted Hull; puede causar sombras extrañas o rendimiento lento.

===== CwOHqH60X-0.md =====
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

===== DDeB4tDVCGY.md =====
# Rigging for impatient people - Blender Tutorial
**Fuente:** Joey Carlino | https://youtu.be/DDeB4tDVCGY

## Qué enseña (2-3 líneas)
Tutorial acelerado de rigging en Blender que cubre dos estilos: deformación por pesos (armature + automatic weights) y rigging rígido (parenting directo a huesos o pesos binarios). Explica creación de armaduras, weight painting, IK básico y animación por keyframes.

## Técnicas accionables
- **Añadir armadura:** `Shift+A` → Armature → Single Bone. Para ver huesos a través del modelo: Object Data Properties (icono de persona corriendo) → Viewport Display → In Front.
- **Editar huesos:** Tab para Edit Mode. Seleccionar cabeza (círculo grueso) o cola (círculo fino). Mover con `G`, extruir con `E`. La cabeza es el punto de pivote en Pose Mode.
- **Snapping a superficie:** Activar magnetismo (icono imán) → Snap To: Face Project + Center. Mover huesos con `Ctrl` para snap.
- **Duplicar y parentar:** `Shift+D` para duplicar huesos. `Ctrl+P` para parentar: elige Connected (cadena) o Keep Offset (independiente). `Alt+P` para desconectar/desparentar.
- **Renombrar lote simétrico:** Seleccionar huesos del lado izquierdo (no los centrales) → `Ctrl+F2` → Batch Rename: Find: "Bones", Replace with: "Bones", Suffix: ".L" → OK. Luego clic derecho → Symmetrize para copiar al lado derecho.
- **Auto-naming:** En Edit Mode, seleccionar huesos → clic derecho → Auto Name (Left/Right) como alternativa.
- **Parentar malla a armadura (automatic weights):** Object Mode → seleccionar malla → `Shift+clic` armadura → `Ctrl+P` → Armature Deform → With Automatic Weights. Para múltiples objetos: seleccionar todos los objetos, luego armadura al final, mismo método.
- **Re-aplicar automatic weights selectivo:** Pose Mode → seleccionar huesos a recalcular → Object Mode → seleccionar malla → Weight Paint Mode → Weights → Assign Automatic From Bones.
- **Weight paint - configuración esencial:**
  - Viewport Overlays → Wireframe (activado). Muestra la malla base, no la subdividida.
  - Tool Settings → Options → Auto Normalize (activado). Evita pesos conflictivos.
  - Tool Settings → Falloff → Projected (para pintar a través del modelo).
  - Advanced Brush Settings → Front Faces Only (desactivado si usas Projected).
- **Pintar pesos:** `F` para cambiar tamaño de pincel. Weight=1 (rojo/influencia total), Weight=0 (azul/sin influencia). Strength bajo para ajustes finos.
- **Suavizar pesos:** Weights → Smooth → elige Smooth (todos) o Smooth (selected bones).
- **Parenting directo a hueso (objetos separados):** Object Mode → seleccionar objeto → `Shift+clic` armadura → Pose Mode → seleccionar hueso → `Ctrl+P` → Bone.
- **Parenting con empty groups (un solo objeto):** Object Mode → seleccionar malla → `Shift+clic` armadura → `Ctrl+P` → With Empty Groups. Luego Edit Mode → seleccionar vértices con `L` (hover sobre la pieza) → en lista de Vertex Groups (buscar por nombre con flecha) → Weight=1 → Assign.
- **Truco pesos rígidos automáticos:** Edit Mode → cambiar Pivot Point a Individual Origins (tecla `.`) → `S` → `0.1` → Enter. Object Mode → parentar con Automatic Weights. Edit Mode → `S` → `10` → Enter. Limpiar con Weight Paint → Weights → Quantize → valor 1 (fuerza pesos a 0 o 1).
- **Keyframes:** Pose Mode → seleccionar huesos → `I` → Location/Rotation/Scale. Cambiar pose → `I` de nuevo. Copiar pose: `Ctrl+C`. Pegar espejado: `Ctrl+Shift+V`.
- **Auto IK rápido:** Pose Options → Auto IK (activado). Mover hueso y usar rueda del ratón para cambiar longitud de cadena.
- **IK constraint (inverse kinematics):**
  - Edit Mode: extruir (`E`) desde el tobillo un hueso IK (o usar hueso del pie). Desactivar Deform en ese hueso (Bone Properties → Deform).
  - `Alt+P` → Clear Parent para desconectarlo.
  - Pose Mode: seleccionar hueso IK → `Shift+clic` hueso de la pierna → `Shift+I` → Add IK to Active Bone.
  - Ajustar Chain Length (2 o 3 para piernas) en Bone Constraint (icono de hueso, no el de constraint normal).
  - Para Pole Target: Edit Mode → extruir desde la rodilla → `Alt+P` → Clear Parent → nombrar con "Target". En el constraint, seleccionar Armature y luego ese hueso como Pole Target. Ajustar Pole Angle si la pierna apunta mal.
- **Simetrizar IK:** Si los huesos tienen sufijo `.L` o `.R`, al Symmetrize se copian constraints.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Auto Normalize** en weight paint siempre que pintes para evitar que un vértice tenga influencia de múltiples huesos.
- Usa **Wireframe** en viewport overlays cuando pintes pesos si tu malla tiene Subdivision Surface modifier, porque los pesos solo afectan la malla base.
- Usa **Quantize (valor 1)** en weight paint para forzar pesos binarios (0 o 1) en rigs rígidos.
- Usa **sufijos .L / .R** desde el principio si planeas simetrizar poses o constraints IK.
- Usa **Deform desactivado** en huesos que solo sirven como controladores IK (no deben influir en la malla).
- Usa **Pole Target** en IK cuando necesites controlar la dirección del codo/rodilla.
- Usa **Connected** al parentar huesos si quieres una cadena continua; usa **Keep Offset** si quieres huesos independientes.

## Errores comunes / gotchas
- **"Bone heat weighting failed"**: ocurre cuando la malla tiene partes superpuestas (overlapping geometry). Soluciones: remallar, retopologizar, separar en objetos múltiples y re-aplicar automatic weights.
- **Deformación pobre por falta de geometría**: un cubo con 8 vértices no se dobla. Añade Loop cuts (`Ctrl+R`) antes de aplicar automatic weights.
- **Pesos que no se pintan a través del modelo**: olvidaste activar Projected en Falloff y desactivar Front Faces Only.
- **IK no dobla la pierna**: los joints (articulaciones) están alineados rectos. En Edit Mode, mueve ligeramente las cabezas/colas de los huesos en la dirección deseada de doblado.
- **Mover el modelo y no la armadura**: selecciona siempre la armadura en Object Mode para animar/posar, no la malla.

===== ETOXG3qdMKg.md =====
# How to Understand Geometry Nodes
**Fuente:** Yesway™ | https://youtu.be/ETOXG3qdMKg

## Qué enseña
Explica la base conceptual de Geometry Nodes: el flujo entre Group Input y Group Output, la función del Spreadsheet y los dominios (vertex, edge, face, face corner). Muestra cómo los nodos modifican atributos (posición, etc.) y cómo se relacionan con los índices. Incluye un ejemplo práctico para crear una cuadrícula con instancias y nodos básicos.

## Técnicas accionables
- Para añadir cualquier nodo: presiona **Shift+A** y escribe el nombre (ej. "Set Position").
- Conecta **Group Input** (tamaño X, tamaño Y, vértices X, vértices Y) a un nodo **Grid** y luego a **Group Output** para controlar la cuadrícula desde el panel de modifiers.
- Usa **Mesh to Points** (modo "Faces") para convertir caras en puntos.
- Conecta un nodo **Instance on Points**: arrastra el objeto original (ej. el mismo Grid) al socket "Instance".
- Para cortar cables sin perder conexión: mantén **Shift + Botón derecho del ratón** y arrastra para crear un **Reroute**.
- Selecciona varios nodos y presiona **Ctrl+J** para agruparlos en un marco; presiona **F2** para renombrar el marco.
- Añade **Rotate Instances** (ángulo 45°) y **Scale Instances** (escala 2) para transformar las instancias.
- Duplica un nodo (ej. Scale Instances) con **Shift+D** y colócalo en otra posición.
- Conecta un nodo **Position** al socket de un nodo de operación (ej. un nodo matemático "Distance").
- Para crear un atributo personalizado: mantén el conector de salida de un nodo, suéltalo y escribe el nombre del atributo (ej. "distance"), presiona **Enter**.
- Para previsualizar datos: selecciona nodos con **Shift+Ctrl+clic izquierdo**, cambia el dominio a "Instance" en el **Spreadsheet**.
- Usa **Realize Instances** para convertir instancias en geometría real.
- Añade **Distribute Points on Faces** y luego **Instance on Points** con un objeto (ej. Suzanne) y un nodo **Random Value** para distribuir instancias aleatoriamente.

## Reglas para el erudito
- Usa **Group Input** para exponer parámetros editables desde el panel de modifiers (tamaño, subdivisiones, etc.).
- Usa **Group Output** como salida final del nodo tree; todo lo que conectes ahí es lo que se renderiza.
- Usa el **Spreadsheet** para inspeccionar atributos por dominio (vertex, edge, face, face corner) y entender qué datos tiene cada elemento.
- Usa **Set Position** con un nodo **Position** conectado al offset para desplazar cada vértice según su propia posición original (efecto de duplicación de desplazamiento).
- Usa **Reroute** (Shift+Botón derecho) para organizar cables y evitar enredos en el node tree.
- Usa **Ctrl+J** y **F2** para agrupar nodos lógicos en marcos con nombre.
- Usa **Shift+Ctrl+clic izquierdo** en nodos para previsualizar atributos específicos en el Spreadsheet.
- Cambia el dominio del Spreadsheet a "Instance" cuando trabajes con instancias para ver sus atributos.
- Usa **Realize Instances** antes de aplicar nodos que requieran geometría real (ej. distribuir puntos en caras).

## Errores comunes / gotchas
- Conectar **Instance on Points** sin proporcionar un objeto en el socket "Instance" hace que desaparezca todo (no hay nada que instanciar).
- Olvidar que los nodos trabajan en orden inverso: un segundo **Set Position** con el mismo nodo **Position** suma el desplazamiento sobre el ya transformado, no sobre el original.
- No cambiar el dominio en el Spreadsheet (ej. dejar "Vertex" cuando trabajas con instancias) da información incorrecta o vacía.
- No usar **Realize Instances** cuando necesitas geometría editable (ej. para distribuir puntos sobre las instancias).
- No organizar el node tree con marcos y reroutes lleva a confusión y errores difíciles de depurar.

===== F9y1rD3bhJg.md =====
# The Perfect Hard Surface Modeling tutorial for Beginners
**Fuente:** Aryan | https://youtu.be/F9y1rD3bhJg

## Qué enseña
Modelado de una bujía (spark plug) desde cero en Blender, enfocado en topología limpia y técnicas profesionales para superficies duras. Cubre desde referencias, modelado con subdivision surface, creación de roscas con el modificador Screw, hasta UV mapping básico y materiales.

## Técnicas accionables
- **Referencias:** Buscar imágenes en Google Images, guardar como fondo con **Shift+A > Image > Reference**, mover con **G+Y** hacia atrás, ajustar opacidad en Object Data Properties > Opacity. Usar PureRef para referencias secundarias (Ctrl+V para pegar, modo "Always on top").
- **Modelado base:** Eliminar cubo por defecto. **Shift+A > Mesh > Circle** (32 vértices por defecto). Extruir con **E**, escalar con **S**, mover en Z. Bevel con **Ctrl+B**, scroll para más segmentos.
- **Esfera con topología perfecta:** Añadir cubo (**Shift+A > Mesh > Cube**). Agregar modificador **Subdivision Surface** (Generate), aumentar **Levels Viewport** a 3. Agregar modificador **Cast** (Deform), **Factor** = 1, **Target Shape** = Sphere. Aplicar ambos modificadores.
- **Unir objetos:** Seleccionar ambos, **Ctrl+J** para unir. En Edge Select mode (2), seleccionar dos edge loops, **W > Bridge Edge Loops**.
- **Subdivision Surface:** **Ctrl+2** para añadir 2 niveles. Bevel aristas para afilar: **Ctrl+B**, ajustar segmentos (2) y **Profile** (1 para bordes duros, 0.5 para suaves).
- **Separar geometría:** Seleccionar cara/círculo, **P > Selection** para separar a nuevo objeto.
- **Bevel con clamping:** **Ctrl+B**, si las aristas se cruzan presionar **C** para activar clamping.
- **Limpiar vértices dobles:** Seleccionar todo con **A**, **M > Merge by Distance**.
- **Duplicar y reflejar:** Colocar 3D cursor con **Shift+S > Cursor to Selected**. **Shift+D** para duplicar, **S > Z > -1** para reflejar en Z. Corregir normales con **Shift+N**.
- **Extruir caras por normales:** Seleccionar caras, **Alt+E > Extrude Faces Along Normals**.
- **Inflar caras:** Seleccionar caras, **Alt+S** para inflar/desinflar.
- **Shade Smooth:** En Object Mode, botón derecho > **Shade Smooth**.
- **UV Mapping básico:** En Shading tab, **New** material. **Shift+A > Image Texture**, cargar imagen. Conectar **Color** a **Base Color** del Principled BSDF. En Edit Mode, seleccionar caras, **U > Unwrap**. En UV Editor, mover/rotar/escalar el UV.
- **Material metálico:** Subir **Metallic** a 1, bajar **Roughness** (~0.2).
- **Knife Tool:** **K** para activar. **C** para Cut Through. Hacer clic en vértices para cortar.
- **Screw Modifier:** Partir de un solo vértice (eliminar todos menos uno). Agregar **Screw** (Generate). Ajustar **Screw** (ej. -0.1 m), **Steps Viewport** (ej. 256), **Iterations** para largo. Aplicar.
- **Inset/Outset:** **I** para inset, **O** para outset (durante la operación).
- **Seleccionar borde de loop:** **Alt+clic derecho** en edge loop. **Ctrl+E > Mark Seam** para marcar costura.
- **Loop Tools:** Activar en Edit > Preferences > Add-ons > Loop Tools. Usar **W > Loop Tools > Relax** (Linear, iteraciones 3) para suavizar. **W > Loop Tools > G-stretch** para enderezar.
- **Grid Fill:** Seleccionar borde de agujero, **Face > Grid Fill**. Ajustar **Span**.
- **MatCap:** En Viewport Shading, cambiar de Studio a **MatCap**, elegir bola roja para detectar imperfecciones.

## Reglas para el erudito
- Usa una UV sphere con segmentos divisibles por 6 (ej. 72) y Rings = mitad de segmentos (36) cuando necesites topología limpia para formas hexagonales.
- Usa un cubo subdividido + Cast modifier en vez de UV sphere cuando necesites una esfera sin E-poles en los polos.
- Usa **Merge by Distance** después de cualquier operación que pueda crear vértices duplicados (bevel, bridge, mirror).
- Usa **Recalculate Normals (Shift+N)** después de reflejar o duplicar geometría.
- Usa **Edge Select mode** (2) en vez de Vertex Select mode cuando selecciones loops para bevel, para evitar seleccionar aristas conectoras.
- Usa **Ctrl+** para expandir selección y **Ctrl+I** para invertir selección.
- Usa **Alt+S** para inflar caras seleccionadas en lugar de escalar manualmente cuando quieras mantener la forma curva.
- Usa **MatCap** (bola roja) para inspeccionar shading artifacts en superficies curvas.

## Errores comunes / gotchas
- No confundir "Delete Vertices" con "Delete Faces": al eliminar vértices se eliminan también las aristas y caras conectadas.
- Una UV sphere tiene mala topología en los polos (E-poles) que causa artefactos con Subdivision Surface.
- Al usar el modificador Screw, la distancia de extrusión del vértice original debe coincidir exactamente con el valor **Screw** para que el hilo sea continuo.
- Al reflejar geometría con **S > Z > -1**, las normales se invierten; siempre corregir con **Shift+N**.
- Los bevels con **Profile = 1** crean bordes duros; con **Profile = 0.5** crean bordes redondeados.
- Al usar **Bridge Edge Loops**, los loops deben tener el mismo número de vértices.
- Las caras largas y delgadas (bad topology) causan artefactos con Subdivision Surface; usar loop cuts para mantener cuadrados.
- Blender puede crashear sin razón aparente; guardar el archivo frecuentemente.