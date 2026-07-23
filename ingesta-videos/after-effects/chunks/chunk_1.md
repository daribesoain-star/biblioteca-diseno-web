

===== DESTILADO: 1n7LyrTdvwM.md =====
# Element 3d Introduction Tutorial in After Effects
**Fuente:** RobikFX | https://youtu.be/1n7LyrTdvwM

## Qué enseña
Este tutorial cubre todas las funciones principales del plugin Element 3D: importación de modelos 3D, extrusión de texto y logos, texturizado con mapas difusos y normales, uso de canales auxiliares para animar piezas individuales, el motor de animación para transiciones entre grupos, y los ajustes de renderizado como sombras, iluminación, profundidad de campo y passes de salida.

## Técnicas accionables
- Crear una capa Element 3D: aplicar el efecto a un sólido negro, fondo negro, y crear una cámara en la composición.
- En Scene Setup, usar atajos de teclado: **R** para escala, **E** para rotación, **W** para transformación/posición.
- Importar modelos 3D: Archivo > Importar > Objeto 3D, seleccionar archivo .obj. Si el modelo viene en .fbx o .glb, convertirlo a .obj usando Blender (importar a Blender, exportar como .obj).
- Activar **Normalized Size** en el modelo importado si es demasiado pequeño o grande para la escena.
- Para texto 3D: crear capa de texto 2D en AE, en Element 3D ir a Custom Layers > Custom Text and Mask, seleccionar la capa de texto en Path Layer, hacer clic en **Extrude**.
- Para logos 3D con textura: precomponer el logo (con Move All Attributes), aplicar Auto Trace (Capa > Auto Trace, modo Alpha), luego en Element 3D seleccionar la capa precompuesta en Path Layer, hacer clic en Extrude, y en Custom Texture Maps seleccionar la misma capa. En el material del modelo, en Diffuse elegir Custom Layer 1 y activar **Use Layer as UV**.
- Para bordes dorados en texto/logo: en el modelo extruido, en Bevel Copies poner **2**, expandir Edge, ajustar Extrude y Z Offset. Luego arrastrar un preset de Physical (ej. dorado) al material del borde.
- Particle Replicator: en Particle Replicator, elegir forma (Sphere, Ring, Grid), ajustar Count, Scale Shape, Particle Size, Rotation Random, Random Size, Scatter.
- Multi-Object: en Particle Look, activar **Multi-Object**. Funciona con modelos que contienen múltiples piezas (ej. Floor Fracture del starter pack). Ajustar Random Rotation, Displace, Scatter.
- Deformaciones: en Particle Look, activar **Deform**. Opciones: Twist (ajustar dirección Y), Bend, Noise. Para que sea suave, aumentar Subdivision Level en Surface Options del modelo (ej. a 4 o 5).
- Para animar deformación: poner keyframes en Y Twist (u otro parámetro), ajustar velocidad con el gráfico.
- Texturizado con mapas de Poly Haven: descargar textura, en el material del modelo hacer clic derecho > Reset, luego en Texture tab > Diffuse importar el mapa diffuse. Para más detalle, importar el mapa Normal o Bump en el slot correspondiente y aumentar Bump.
- Para texturas con partes brillantes: en Illumination importar una imagen en blanco y negro, cambiar Color a verde (u otro), aumentar Intensity.
- UV Mapping: si la textura se ve mal, cambiar a **Box** en UV Mapping del modelo. Ajustar Duplicates (ej. 5x5) para repetir la textura.
- Canales Auxiliares (OX Channels): en el material del modelo, cambiar a vista Mesh (icono de malla), seleccionar la pieza a animar (ej. un ventilador), clic derecho > Auxiliary Animation > Channel 1. Luego en Group > OX Channels > Channel 1, animar Rotation (ej. Y rotation, 2 evoluciones en 2 segundos).
- Animation Engine: duplicar el grupo del modelo (Group Folder > duplicar, asignar a Group 2), cambiar textura del Group 2. En Group Utilities, copiar Group 1 y pegar en Group 2. Activar Animation Engine, poner keyframe de 0 a 100 en el primer frame. Ajustar Directional Options (Y Angle a 180) para controlar dirección.
- Para transiciones de texto con Animation Engine: duplicar el texto en Group 2, animar posición/rotación del Group 2, luego activar Animation Engine con Start Group 2 y Finish Group 1.
- Animation Type: cambiar a Radial, luego ajustar de Outward a Inward para invertir la dirección de la animación.
- Utilities para posicionar objetos 3D: en Utilities, hacer clic en un punto 2D de la escena 3D, seleccionar Generate Null. Copiar la posición del null 3D generado al objeto que se quiere posicionar.
- Render Settings > Physical Environment: activar Environment, rotarlo con keyframes para que se refleje dinámicamente.
- Iluminación: usar tanto la luz predefinida de Element 3D (Lighting) como luces de AE. Crear luz en AE (Layer > New > Light, tipo Parallel o Spot, Intensity 50, Cast Shadows On). Ajustar posición y Anchor Point.
- Sombras: en Render Settings > Shadows, activar. Ajustar Shadow Darkness, Shadow Size, Blur Radius.
- Ambient Occlusion: activar siempre. Aumentar Intensity para contacto entre objetos.
- Depth of Field: activar en Render Settings, modo Focus Indicator (rojo = en foco). Cambiar a Pixel Blur. Ajustar Aperture y Blur Level en la cámara de AE.
- Glow: activar en Render Settings si el modelo tiene datos de Illumination Channel.
- Ray Tracer: para objetos transparentes, activar Ray Tracer y poner Translucent para que las sombras se vean dentro del objeto.
- Mat Shadow / Mat Reflection: en el material del suelo, cambiar Reflection Mode a Mirror Surface o Spherical. Luego en Render Settings, activar Mat Shadow y Mat Reflection para que solo se vean sombras y reflejos sin el suelo visible.
- Output passes: cambiar Composite a Ambient Occlusion, Illumination, Z Depth, Specular, etc. Usar capas duplicadas de Element 3D con diferentes passes para compositing.
- Para glow más realista: duplicar capa Element 3D, poner Composite en Illumination, aplicar Deep Glow (plugin externo) en modo Screen.
- Para depth of field alternativo: duplicar capa Element 3D, Composite en Z Depth. Crear Adjustment Layer, aplicar Camera Lens Blur, seleccionar la capa Z Depth como Blur Layer.
- Anti-aliasing: si hay flickering, en Render Settings poner Multi-Sampling a **16** y Super Sampling a **2** o **4**.
- Render Mode: cambiar a Draft o Preview para vista previa más rápida.

## Reglas para el erudito
- Usa **Normalized Size** siempre que importes modelos de terceros para evitar escalas incorrectas.
- Activa **Ambient Occlusion** en todos los renders, incluso en texto simple, para dar profundidad entre objetos.
- Usa **Subdivision Level** (4 o 5) antes de aplicar deformaciones como Twist para evitar bordes dentados.
- Cuando uses Animation Engine, asegúrate de que ambos grupos tengan el **mismo modelo 3D** con la misma cantidad de piezas para transiciones suaves.
- Para texturas planas (suelos, cajas), cambia UV Mapping a **Box** y ajusta Duplicates para mejor visualización.
- Activa **Multi-Sampling 16** y **Super Sampling 2** como valores por defecto para evitar flickering en reflejos.
- Usa **Mat Shadow** y **Mat Reflection** cuando quieras sombras/reflejos sin un suelo visible en la escena final.
- Para animar piezas individuales de un modelo, asigna siempre **Auxiliary Channel** a cada pieza antes de animar.
- Renderiza en modo **Draft** durante la animación y cambia a calidad completa solo para el render final.

## Errores comunes que evita o menciona
- No usar Element 3D para modelado 3D avanzado; solo tiene formas básicas (cubo, esfera, plano) y está diseñado para importar modelos ya hechos.
- No importar modelos .fbx o .glb directamente; Element 3D solo lee .obj y .c4d. Hay que convertirlos con Blender.
- Olvidar activar **Use Layer as UV** al proyectar textura 2D sobre un logo 3D extruido; sin esto la textura se ve distorsionada.
- No aumentar **Subdivision Level** antes de aplicar deformaciones, resultando en bordes poco suaves.
- Intentar usar Animation Engine con dos modelos diferentes (ej. dos textos distintos) produce transiciones poco suaves; solo funciona bien con el mismo modelo con diferentes texturas o posiciones.
- No activar **Ambient Occlusion** hace que los objetos parezcan flotar sin sombras de contacto.
- Usar el Glow interno de Element 3D cuando se puede obtener un resultado más realista duplicando la capa con el pass de Illumination y aplicando Deep Glow u otro efecto de glow externo.

===== DESTILADO: 4vLwhXY0ZRw.md =====
# Typography Motion Graphics Animation in After Effects - After Effects Tutorial Kinetic Typography #4
**Fuente:** Motion Nations | https://youtu.be/4vLwhXY0ZRw

## Qué enseña
Cómo crear animaciones tipográficas cinéticas en After Effects usando las propiedades de animación de texto nativas (Animation Properties), sin necesidad de plugins externos. El método se basa en animar una sola palabra y luego duplicarla para construir una escena completa con múltiples textos, aplicando variaciones de dirección y secundarias con un objeto nulo.

## Técnicas accionables
- Crear composición: `Composition > New Composition` (o Ctrl+N), dimensiones 1920×1080, frame rate 30 fps, duración 20 segundos.
- Añadir fondo: `Layer > New > Solid` (o Ctrl+Y), color oscuro (ej. negro). Bloquear capa para evitar selección accidental.
- Crear texto: seleccionar `Text Tool` (Ctrl+T), escribir palabra (ej. "animating"), fuente "Montserrat" (o similar), estilo bold. Alinear al centro con `Window > Align` (Ctrl+Shift+F7). Activar `Title/Action Safe` para referencia visual.
- Aplicar animación de texto: seleccionar capa de texto, ir a `Animate > Position` y `Animate > Opacity`. En el `Animator 1`:
  - Opacity: establecer a 0.
  - Position: establecer Y a 100 (para que aparezca desde abajo).
  - En `Range Selector 1 > Advanced`: cambiar `Shape` de "Square" a "Ramp Up". Aumentar `Ease Low` a 100.
  - En `Range Selector 1`: agregar keyframe a `Offset` con valor -100 al inicio; avanzar unos fotogramas y cambiar Offset a 100.
  - Para animar palabra completa (no carácter por carácter): en `Advanced > Based On` cambiar de "Characters" a "Words".
- Duplicar texto animado: seleccionar capa de texto, presionar Ctrl+D. Editar texto y color según se desee.
- Añadir objeto nulo para movimiento secundario: `Layer > New > Null Object`. Seleccionar capa de texto, arrastrar el `Pick Whip` al null para parentearlo.
- Animación del null: seleccionar null, presionar S (escala) y P (posición). Agregar keyframes:
  - Escala: al inicio valor mayor a 100 (ej. 120), luego volver a 100.
  - Posición: ajustar según movimiento deseado.
  - Seleccionar keyframes, presionar F9 para aplicar Easy Ease. Abrir `Graph Editor`, asegurarse de usar `Speed Graph` (no Value Graph). Ajustar curvas para suavizar entrada/salida.
- Variar dirección de aparición de textos duplicados:
  - Para que aparezca desde arriba: en el `Animator 1 > Position`, cambiar Y a -100.
  - Para que aparezca desde la derecha: en `Position`, cambiar X a 100 (o valor positivo) y Y a 0.
  - Para que aparezca desde la izquierda: en `Position`, cambiar X a -100.
- Cambiar `Based On` entre "Words" y "Characters" en `Advanced` para variar el estilo de animación por texto.
- Añadir fondo estilizado:
  - `Layer > New > Adjustment Layer` (opcional) o directamente `Effect > Generate > 4-Color Gradient`. Ajustar colores: dos oscuros, uno claro. Mover puntos de color para crear degradado.
  - Duplicar capa de fondo, aplicar `Effect > Generate > Grid`. Desactivar `Fill`, reducir `Border` (ej. 2), cambiar `Corner` a `Width & Slider`, aumentar `Width` (ej. 100), reducir `Slider` para líneas sutiles.
- Activar Motion Blur: en cada capa de texto y null, activar el interruptor de `Motion Blur` (el icono de obturador). También activar el `Motion Blur` general de la composición (junto al nombre de la comp).

## Reglas para el erudito
- Usa `Shape: Ramp Up` y `Ease Low: 100` para una animación suave de entrada de texto.
- Usa `Based On: Words` cuando quieras que la palabra completa aparezca de una vez; usa `Based On: Characters` para animación carácter por carácter.
- Nunca uses el Value Graph en el Graph Editor para ajustar curvas de null; usa siempre el Speed Graph.
- Siempre presiona F9 (Easy Ease) en los keyframes de null antes de ajustar curvas en el Graph Editor.
- Para animar un texto desde abajo, usa Position Y = 100; desde arriba, Y = -100; desde derecha, X = 100; desde izquierda, X = -100.
- Al duplicar textos (Ctrl+D), el animator se copia automáticamente; solo cambia el texto y ajusta Offset o dirección si deseas variación.
- Activa Motion Blur en cada capa y en la composición para darle aspecto profesional.

## Errores comunes que evita o menciona
- No olvidar activar el Motion Blur tanto en las capas como en el interruptor general de la composición; de lo contrario, la animación se verá estática.
- No usar el Value Graph en lugar del Speed Graph al ajustar curvas de null; el Value Graph controla valores, no velocidad.
- No animar cada texto por separado desde cero; el método correcto es duplicar el texto ya animado y solo ajustar dirección o timing.
- No dejar el `Based On` en "Characters" si se desea que la palabra completa aparezca de golpe; cambiarlo a "Words" evita animación fragmentada.
- No olvidar ajustar el `Ease Low` a 100 para evitar transiciones bruscas en la animación de texto.

===== DESTILADO: 9Sa103aiOSA.md =====
# Take your After Effects to the Next Level
**Fuente:** Ben Marriott | https://youtu.be/9Sa103aiOSA

## Qué enseña
Tres niveles de animación de lluvia en After Effects, desde técnicas básicas hasta avanzadas, usando efectos nativos, expresiones y composición inteligente. Cubre CC Rainfall, CC Drizzle, displacement maps, y construcción manual de gotas y ondas con capas de forma y máscaras.

## Técnicas accionables

- **Nivel 1 (Ape):** Crear un sólido negro, aplicar efecto **CC Rainfall** desde el panel Efectos y Presets. Ajustar: **Opacity** (subir), **Size** (subir), **Influence** (bajar a 0 para desactivar reflejo de fondo). Cambiar blending mode de la capa a **Screen**. Reducir **Drops**. Animar **Speed** con keyframes: valor inicial 15000, valor final 150 (2 segundos después), aplicar easing. Poner **Spread** a 0. Ajustar **Scene Depth** y **Ground Level Percentage** en Extras para profundidad. Crear splash: usar **Ellipse Tool**, animar tamaño (no escala) y opacidad, trim layer, precomponer y duplicar donde desaparecen gotas.

- **Nivel 2 (Elevated Ape):** Crear sólido gris con **Ctrl+Y**, altura 3 veces la del comp. Aplicar **CC Drizzle**. Aumentar **Drip Rate** a 8. En Shading: **Diffuse Lighting** al máximo, **Ambient Light** a ~15. Desvincular escala de la capa (icono de cadena), bajar escala vertical para aplanar perspectiva. Crear **Adjustment Layer** llamado "Effects", aplicar **Threshold**. En capa drizzle: cambiar luz de **Distant Light** a **Point Light**, mover posición al centro del comp, bajar **Light Height** y **Ripple Height**. Ajustar **Light Intensity**, Ambient, Diffuse. Agregar **Tint** (negro a gris oscuro, blanco a azul puro), **Gaussian Blur** (suave), **Deep Glow** (sutil). Agregar **Transform** con **Wiggle** en Position. **Posterize Time** a 12 fps. **Noise HLS Auto** para grano. Para gotas: **Pen Tool**, dibujar línea vertical, animar **Shape Path** con 3 keyframes en **Hold**. Blending mode **Difference**. Mover **Anchor Point** al fondo de la capa, presionar **R** para rotación. Duplicar gota, pick whip rotation a la original para sincronizar.

- **Nivel 3 (Consciousness):** Para texto con displacement: capa de texto, aplicar **Displacement Map**. Source Layer: capa drizzle, Source: **Effects & Masks**. Ocultar capa drizzle. Fondo: sólido negro. Aumentar **Horizontal Displacement**. Cambiar luz en drizzle de Point a Distant. Precomponer capa drizzle (mover todos los atributos). Para centrar: dentro del precomp, crear shape layer con color **50% gris** (RGB 128,128,128), ajustar ambient shading para igualar, luego eliminar shape layer.

- **Construcción manual de onda (ripple):** Capa de forma: elipse, animar tamaño (keyframes) y stroke width. Efectos: **Gaussian Blur** + **Directional Blur** (horizontal). Duplicar capa, bajar, más blur. Highlight: duplicar, color blanco, stroke width reducido, dos **máscaras** (top-left y bottom-right) con **feather**. Shading: capa oscura, mismas áreas con máscaras, **Preserve Underlying Transparency** activado. Duplicar shading moviendo ligeramente abajo y más suave. Adjustment layer sobre todo: animar **Directional Blur** + **Gaussian Blur** para suavizar al expandirse. Capa de fondo con gradiente sobre el ripple, fade in, Preserve Underlying Transparency. Duplicados extra con grises más oscuros para sombras.

- **Animación de gota + ondas:** Gota: círculo con gradiente. Máscara: shape layer con blur como **matte** de la gota. Animar posición de la gota (saltos arriba/abajo 3 veces), escala reduciéndose en cada salto bajo el agua. Parentear a **Null**, animar escala del Null para squash & stretch. Ripples duplicados alineados con entradas/salidas del agua. Para superposición: crear máscara que corta ripple por la mitad, feather, duplicar capa, invertir máscara, ordenar en stack. Sombra de gota: elipse con blurs.

- **Efectos finales:** **Gaussian Blur** para unificar, **Noise HLS Auto**, **CC Toner** para color. Strobing: adjustment layer con **Curves**, opacidad animada 100→0→100 con expresión de loop. Curves muy sutil.

## Reglas para el erudito (imperativas y verificables)

- Usa **Screen** como blending mode para CC Rainfall cuando tengas fondo oscuro.
- Usa **Difference** como blending mode para gotas dibujadas sobre fondo con Tint.
- Nunca uses **Scale** para animar el tamaño de un splash; usa **Size** (propiedad de forma) para mantener stroke width consistente.
- Cuando uses **Displacement Map**, asegúrate de que la capa fuente tenga fondo **50% gris** (RGB 128,128,128) para evitar desplazamiento no deseado.
- Si precompones una capa con escala no uniforme para usarla como displacement map, mueve **todos los atributos** al nuevo comp.
- Para que las gotas tengan dirección consistente, vincula la rotación de todas con **pick whip** a una capa maestra.
- En CC Drizzle, usa **Point Light** en lugar de Distant Light cuando quieras iluminación localizada.
- Mantén **Deep Glow** muy sutil; si no lo tienes, usa varios **Glow** regulares.
- Para el strobing de cámara lenta, la opacidad del adjustment layer con Curves debe ir de 100 a 0 y volver a 100 con un loop; el efecto debe ser casi imperceptible.

## Errores comunes que evita o menciona

- No dejar **Influence** alto en CC Rainfall porque refleja el fondo y dificulta ver las gotas.
- No usar **Spread** alto en CC Rainfall (valor 6 por defecto) si quieres que todas las gotas caigan rectas; poner a 0.
- No alinear splashes manualmente uno por uno en toda la pantalla (solo hizo media pantalla porque tomaba mucho tiempo).
- No usar **Point Light** en CC Drizzle cuando aplicas Displacement Map a texto, porque la iluminación central distorsiona el centro; cambiar a **Distant Light**.
- No olvidar que el Displacement Map no toma en cuenta escalas no uniformes de la capa fuente; hay que precomponer con "mover todos los atributos".
- No dejar el fondo del precomp de drizzle más oscuro que 50% gris, porque desplazará todo el texto hacia un lado.
- No usar blending mode **Difference** en texto sobre ripples si quieres un efecto natural de agua; mejor usa **Displacement Map**.
- No animar la escala de una elipse si quieres mantener el grosor del trazo constante; anima el **tamaño** (propiedad de forma).

===== DESTILADO: CVliDoNgoCg.md =====
# sourceRectAtTime(); 
**Fuente:** Jake In Motion | https://youtu.be/CVliDoNgoCg

## Qué enseña (2-3 líneas)
Explica a fondo la expresión `sourceRectAtTime()` en After Effects, que devuelve el ancho, alto, borde superior y borde izquierdo de cualquier capa. Muestra cómo usarla para crear cajas que se ajusten dinámicamente al tamaño de capas de texto, manejar justificación, animaciones, márgenes, y escalar correctamente.

## Técnicas accionables
- **Crear una caja que se ajuste al texto:**
  - En el shape layer, Alt+clic en el stopwatch de **Size** para añadir expresión.
  - Definir variables: `var s = thisComp.layer("Texto");` (usar pick whip para seleccionar la capa de texto).
  - `var w = s.sourceRectAtTime().width;`
  - `var h = s.sourceRectAtTime().height;`
  - Array final: `[w, h];`
- **Alinear la caja con texto justificado a la izquierda:**
  - En **Position** del shape layer, Alt+clic y expresión: `s.sourceRectAtTime().width / 2` (usando pick whip al Size).
  - Luego parentear la caja a la capa de texto.
- **Corregir el escalado al cambiar tamaño de fuente:**
  - En **Position**, añadir variables: `var l = s.sourceRectAtTime().left;` y `var t = s.sourceRectAtTime().top;`
  - Expresión: `[w + l, h + t];` (donde w y h son las variables de Size).
  - Luego con Cmd+clic arrastrar la caja para alinear al anchor point del texto.
- **Añadir margen con Offset Paths:**
  - En el shape layer: **Add > Offset Paths**. Ajustar el **Amount** para el margen deseado (ej. 10 píxeles).
- **Congelar el tamaño en un momento específico:**
  - En `sourceRectAtTime(1)` para fijar el tamaño a 1 segundo.
  - Usar `s.outPoint` en lugar de un número fijo: `sourceRectAtTime(s.outPoint)`.
- **Usar el punto medio de la capa para animaciones de entrada/salida:**
  - Variables: `var start = s.inPoint; var end = s.outPoint; var mid = (end - start) / 2;`
  - Reemplazar `s.outPoint` por `mid` en todas las expresiones de `sourceRectAtTime`.
- **Ajustar anchor point del shape layer para escalar desde la esquina:**
  - En **Anchor Point**, expresión: `[l - offset, t - offset]` donde `offset` es el Amount de Offset Paths (pick whip).
  - En **Position**, expresión: pick whip al Anchor Point.
- **Leer valores de sourceRectAtTime en un texto:**
  - En **Source Text** de una capa de texto vacía, expresión:
    ```
    var s = thisComp.layer("CapaOrigen");
    var w = s.sourceRectAtTime().width;
    var h = s.sourceRectAtTime().height;
    "width = " + Math.round(w) + "\nheight = " + Math.round(h);
    ```
- **Incluir extents (stroke) en shape layers:**
  - `sourceRectAtTime(time, true)` para que incluya el stroke en el cálculo del bounding box.
- **Ajustar por escala de la capa origen:**
  - Variable: `var xScale = s.transform.scale[0];`
  - En width/height: `s.sourceRectAtTime().width * xScale / 100`

## Reglas para el erudito (imperativas y verificables)
- Usa camelCase en expresiones: primera palabra en minúscula, siguientes en mayúscula (ej. `sourceRectAtTime`, no `sourcerectattime`).
- Para arrays, usa corchetes y coma: `[w, h];`
- Cuando uses `sourceRectAtTime()` sin parámetros, por defecto usa `time` y `false` (extents ignorados).
- Para que el shape layer siga al texto, **parentéalo** a la capa de texto después de ajustar posición y anchor point.
- En operaciones matemáticas con paréntesis, recuerda el orden: multiplicación/división antes que suma/resta. Usa paréntesis extra si es necesario: `(end - start) / 2`.
- Para redondear valores, usa `Math.round()` envolviendo la variable: `Math.round(w)`.
- `sourceRectAtTime()` **no** considera la escala de la capa; debes multiplicar por `scale/100` manualmente.

## Errores comunes que evita o menciona
- **Texto justificado a la izquierda:** La caja escala desde el centro si no se ajusta el anchor point con `left` y `top`.
- **Cambiar tamaño de fuente:** La caja se desalinea porque el anchor point del texto está en la línea base, no en la esquina superior izquierda. Solución: usar `left` y `top` en la expresión de posición.
- **Hardcodear números en `sourceRectAtTime()`:** Si la animación cambia de duración, el valor fijo queda obsoleto. Mejor usar `s.outPoint` o calcular un punto medio.
- **Animación de salida del texto:** Si el texto desaparece, `outPoint` devuelve 0 y la caja colapsa. Solución: usar el punto medio (`mid`) basado en `inPoint` y `outPoint`.
- **Stroke en shape layers:** Por defecto `sourceRectAtTime()` ignora el stroke. Usar `sourceRectAtTime(time, true)` para incluirlo.
- **Stroke en capas de texto:** El bounding box se expande de forma impredecible; no confiar en `extents=true` para texto.
- **Escalar la capa origen:** La expresión no se actualiza automáticamente. Multiplicar width/height por `scale/100`.

===== DESTILADO: DTBtfFiyjNU.md =====
# After Effects Scripting For Beginners [2022]
**Fuente:** NT Productions | https://youtu.be/DTBtfFiyjNU

## Qué enseña (2-3 líneas)
Tutorial completo para principiantes sobre scripting en After Effects 2022. Cubre desde la configuración del entorno de desarrollo (Visual Studio Code con extensiones) hasta la creación de interfaces de usuario funcionales con botones, menús desplegables, sliders y checkboxes, incluyendo automatización de tareas como importar archivos, modificar propiedades de capas, añadir efectos y expresiones, y usar bucles para operaciones repetitivas.

## Técnicas accionables
- **Configurar entorno de desarrollo:**
  - Instalar **Visual Studio Code** y dos extensiones: **ExtendScript Debugger** (Adobe) y **Adobe Script Runner** (Render Tom).
  - Crear archivo con extensión `.jsx` (ej: `tutorial.jsx`).
  - Para ejecutar script: presionar `F1` → seleccionar "Adobe After Effects" (con Adobe Script Runner instalado).
- **Crear ventana flotante (palette):**
  ```javascript
  var window = new Window("palette", "my window", undefined);
  window.orientation = "column";
  window.center();
  window.show();
  ```
- **Añadir elementos de interfaz:**
  - **Texto estático:** `window.add("statictext", undefined, "this is my text");`
  - **Grupo con orientación:** `var group = window.add("group"); group.orientation = "row";`
  - **Botón:** `group.add("button", undefined, "button one");`
  - **Menú desplegable:** `window.add("dropdownlist", undefined, ["test one", "test two", "test three"]);` → seleccionar primer elemento: `dropdownlist.selection = 0;`
  - **Panel con nombre:** `var panel = window.add("panel", undefined, "my panel"); panel.orientation = "row";`
  - **Radio button:** `panel.add("radiobutton", undefined, "radio");`
  - **Checkbox:** `panel.add("checkbox", undefined, "checkbox");`
  - **Campo de texto editable:** `window.add("edittext", undefined, "my entry");`
  - **Slider:** `window.add("slider", undefined);`
  - **Redimensionar elemento:** `dropdownlist.size = [180, 25];` (ancho x alto en píxeles)
  - **Añadir item a dropdown existente:** `dropdownlist.add("item", "my extra element");`
- **Detectar clics en botones:**
  ```javascript
  button1.onClick = function() {
      // código a ejecutar
  };
  ```
- **Verificar composición activa:**
  ```javascript
  if (app.project.activeItem === null || !(app.project.activeItem instanceof CompItem)) {
      alert("No composition selected");
      return false;
  }
  var comp = app.project.activeItem;
  ```
- **Obtener y modificar propiedades de capa:**
  - Obtener capa por índice: `var layer = comp.layer(1);`
  - Leer nombre: `alert(layer.name);`
  - **Posición:** `layer.property("ADBE Transform Group").property("ADBE Position").setValue([1000, 1000]);`
  - **Escala:** `layer.property("ADBE Transform Group").property("ADBE Scale").setValue([200, 200]);`
  - **Opacidad con expresión:** `layer.property("ADBE Transform Group").property("ADBE Opacity").expression = "wiggle(2, 30)";`
- **Modificar composición:**
  - Ancho: `comp.width = 500;`
  - Alto: `comp.height = 1000;`
  - Nombre: `comp.name = "my renamed composition";`
- **Añadir efecto a capa:**
  ```javascript
  var myEffect = layer.effect.addProperty("ADBE Exposure2");
  ```
- **Cambiar valor de propiedad de efecto:**
  ```javascript
  myEffect.property(3).setValue(2); // propiedad 3 = "Exposure"
  ```
- **Agrupar operaciones para deshacer con un solo Ctrl+Z:**
  ```javascript
  app.beginUndoGroup("my process");
  // ... todas las operaciones ...
  app.endUndoGroup();
  ```
- **Importar archivo y añadirlo a composición:**
  ```javascript
  var myVideoFile = File("~/Videos/test.mp4"); // o "~/Downloads/test.mp4"
  if (myVideoFile.exists) {
      var videoItem = app.project.importFile(new ImportOptions(myVideoFile));
      comp.layers.add(videoItem);
  }
  ```
- **Bucle para repetir operaciones:**
  ```javascript
  for (var i = 0; i < 100; i++) {
      comp.layers.add(videoItem);
  }
  ```

## Reglas para el erudito (imperativas y verificables)
- **Usa match names (ADBE) en lugar de nombres traducidos** para propiedades como `"ADBE Transform Group"`, `"ADBE Position"`, `"ADBE Scale"`, `"ADBE Opacity"`, `"ADBE Exposure2"` — así el script funciona en cualquier idioma de After Effects.
- **Usa `app.beginUndoGroup("nombre")` y `app.endUndoGroup()`** siempre que realices múltiples cambios para que el usuario pueda deshacer todo con un solo Ctrl+Z.
- **Usa `app.project.activeItem`** para obtener la composición seleccionada; verifica siempre que no sea `null` y que sea `instanceof CompItem`.
- **Usa `File("~/Videos/archivo.mp4")** para rutas de archivos; verifica existencia con `.exists` antes de importar.
- **Usa `selection = 0`** en dropdownlists para seleccionar el primer elemento (índice 0 en arrays).
- **Usa `orientation = "column"`** para apilar elementos verticalmente y `"row"` para alinearlos horizontalmente.
- **Usa `size = [ancho, alto]`** para redimensionar elementos de interfaz (valores en píxeles).
- **Usa `onClick`** para asignar funciones a botones; usa funciones anónimas o nombradas.
- **Usa `for (var i = 0; i < N; i++)`** para bucles; `i++` incrementa de 1 en 1.
- **Usa `===` para comparaciones estrictas** y `!==` para negación; `=` es solo para asignación.

## Errores comunes que evita o menciona
- **No usar ExtendScript Toolkit en Mac** porque es una aplicación de 32 bits y ha sido eliminada en sistemas operativos Mac recientes; usar Visual Studio Code en su lugar.
- **No olvidar instalar ambas extensiones** (ExtendScript Debugger + Adobe Script Runner) para que funcione la ejecución rápida con F1.
- **No usar nombres traducidos de propiedades** (ej: "Transform" en inglés) porque falla en otras configuraciones de idioma; usar siempre match names como `"ADBE Transform Group"`.
- **No asumir que el usuario tiene una composición seleccionada** — siempre verificar con `if (app.project.activeItem === null || !(app.project.activeItem instanceof CompItem))`.
- **No olvidar los puntos y comas (`;`)** al final de cada línea en JavaScript.
- **No usar un solo `=` para comparar** (ej: `if (x = 5)`) porque asigna el valor en lugar de comparar; usar `===`.
- **No intentar deshacer operaciones individuales** si no se agrupan con `beginUndoGroup` / `endUndoGroup` — cada cambio sería un paso de deshacer separado.
- **No asumir que el archivo existe** al importar — verificar con `.exists` antes de `importFile`.
- **No usar índices incorrectos en arrays** — el primer elemento es índice 0, no 1.

===== DESTILADO: Gdx_otoqUnw.md =====
# How to use 3D Models with Element 3D; After Effects Tutorial
**Fuente:** Specter | https://youtu.be/Gdx_otoqUnw

## Qué enseña
Cómo importar modelos 3D gratuitos desde Sketchfab a After Effects usando el plugin Element 3D, aplicar texturas básicas y crear animaciones simples con iluminación opcional.

## Técnicas accionables
- **Descarga de modelos 3D:** Abre Sketchfab, usa los filtros de búsqueda para obtener solo contenido gratuito y descarga en formato `.obj` para compatibilidad con Element 3D.
- **Conversión de formato:** Si no aparece la opción `.obj`, usa Blender para convertir el modelo a ese formato.
- **Configuración en After Effects:**
  1. Crea una capa sólida (Layer > New > Solid).
  2. Aplica el efecto Element 3D a la capa sólida (Effect > Video Copilot > Element 3D).
  3. En el panel de Element 3D, haz clic en "Import" y selecciona el modelo `.obj` descargado.
- **Aplicación de textura:** En el panel de Element 3D, localiza la textura "Base Color" del modelo y asígnala al canal "Diffuse" del material. Las demás texturas (normal, roughness, etc.) pueden omitirse.
- **Animación:** Usa los controles de transformación de Element 3D (posición, rotación, escala) para animar el modelo. Aplica keyframes manualmente en la línea de tiempo.
- **Iluminación opcional:** Agrega luces en After Effects (Layer > New > Light) para mejorar el aspecto visual del modelo 3D.

## Reglas para el erudito
- Usa formato `.obj` para todos los modelos 3D que importes a Element 3D; otros formatos no son compatibles directamente.
- Asigna siempre la textura "Base Color" al canal "Diffuse" del material; las texturas restantes (normal, roughness, metallic) son opcionales y pueden omitirse sin afectar la visualización básica.
- Crea una capa sólida antes de aplicar Element 3D; el efecto no funciona sobre capas de imagen o video directamente.
- Si no ves la opción de descarga `.obj` en Sketchfab, convierte el modelo en Blender antes de importarlo a After Effects.

## Errores comunes que evita o menciona
- Descargar modelos en formatos que no sean `.obj` (como `.fbx` o `.glb`) sin convertirlos previamente, lo que impide su uso en Element 3D.
- Olvidar aplicar la textura "Base Color" al canal "Diffuse", dejando el modelo sin color visible.
- Intentar aplicar Element 3D directamente sobre una capa de video o imagen sin crear primero una capa sólida.

===== DESTILADO: GgIbELgZLLI.md =====
# The ONLY Particle Tutorial you'll EVER need
**Fuente:** Son Astral | https://youtu.be/GgIbELgZLLI

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear partículas ambientales básicas y partículas personalizadas únicas en After Effects usando el plugin Trapcode Particular. Cubre configuración de emisor, movimiento, forma, color, física, y cómo adaptar las partículas a escenas concretas de videojuegos y anime.

## Técnicas accionables
- **Añadir Particular:** Ve a `Efectos > Trapcode > Particular` y arrastra sobre tu capa.
- **Abrir diseñador:** Haz clic en la pestaña `Designer` dentro del panel de efectos de Particular.
- **Rendering a GPU:** Dentro del panel de efectos, baja a la pestaña `Rendering` y cambia `Acceleration` de `CPU` a `GPU`.
- **Pre-run de partículas:** En el panel de efectos, ve a `Emitter > Emission Extras` y activa `Pre-run` al 100%.
- **Motion Blur interno:** En el diseñador, activa `Motion Blur` en la pestaña `Size and Rotation`. Luego, fuera del diseñador, en el panel de efectos, ve a `Rendering` y activa `Motion Blur` ahí para poder manipular `Shutter Angle` (valor recomendado: 120-190).
- **Partículas ambientales básicas:**
    1. En el diseñador, `Emitter Type`: `Box`.
    2. `Emitter Type` (modo): `Continuous`.
    3. `Emitter Size`: cambiar de `Length` a `Individual`.
    4. Ajustar `Z Depth` entre 3000 y 5000.
    5. Ajustar `X` y `Z` (ancho y profundidad) entre 2000 y 3000.
    6. Pestaña `Motion`: `Direction` en `Uniform` o `Disc`.
    7. Aumentar `Velocity` entre 300 y 400.
    8. `Velocity Random` al 100%.
    9. Pestaña `Size and Rotation`: `Size` entre 3 y 4.
    10. `Size Random` entre 20 y 40 (ej. 28).
    11. Pestaña `Physics and Gravity`: aumentar `Spin Amplitude` y `Spin Frequency` ligeramente.
    12. Reducir `Particles per second` para evitar que se vea "clumpy".
- **Color Over Life (gradiente):** En el panel de efectos, bajo `Particles`, cambiar `Color` de `At Start` a `Over Life`. Arrastra los marcadores del gradiente para añadir/quitar colores. Arrastra un marcador hacia abajo para eliminarlo.
- **Partículas personalizadas con Sprites:**
    1. En el diseñador, `Particle Type`: `Texture Polygon Colorized`.
    2. Elegir un `Sprite` (ej. Pentagon).
    3. Pestaña `Size and Rotation`: aumentar `Size` hasta ver la forma.
    4. Volver a `Emitter` y reducir `Particles per second`.
    5. En `Size and Rotation`, aumentar `Random Rotation` (ej. 40) para rotación 3D.
    6. Aumentar `Speed Rotate` (ej. 0.7) para que giren.
    7. Color: usar `Over Life` con gradiente.
- **Movimiento bidireccional:** En el diseñador, pestaña `Motion`, cambiar `Direction` a `Bi-Directional`.
- **Gravedad:** En `Physics and Gravity`, ajustar `Gravity` (positivo hacia abajo, negativo hacia arriba).
- **Posición del emisor:** En el panel de efectos, `Emitter > Position XY` y `Position Z` para acercar/alejar partículas.
- **Sistemas múltiples (layering):** Dentro del diseñador, en la esquina inferior izquierda, haz clic en `Systems > Add a System`. Duplica el sistema maestro, cambia `Random Seed` en `Motion`, ajusta valores de posición y sprite.
- **Presets:** En el diseñador, esquina superior izquierda: `Presets` (nature, smoke, fire, fluid, leaves). Esquina superior derecha: presets de sistemas, movimientos y partículas.

## Reglas para el erudito (imperativas y verificables)
- Usa `GPU` en `Rendering > Acceleration` siempre para evitar sobrecargar After Effects.
- Usa `Pre-run` al 100% en `Emitter > Emission Extras` para que todas las partículas aparezcan desde el inicio.
- Cuando uses Sprites, ajusta el tamaño de las partículas **dentro de Particular** (en el diseñador), no con escalado externo, para mantener calidad y evitar rangos de impacto incorrectos.
- Para motion blur, usa el `Motion Blur` interno de Particular (en `Rendering`) en lugar del de la composición, para poder controlar `Shutter Angle` manualmente.
- Reduce `Particles per second` cuando uses partículas grandes para evitar que se vean "clumpy" o abrumadoras.
- En `Size and Rotation`, usa `Random Rotation` alrededor de 40 y `Speed Rotate` por debajo de 1 (ej. 0.7) para un giro natural.
- Para partículas ambientales, usa `Velocity` entre 300-400 y `Velocity Random` al 100%.
- Para partículas únicas, usa `Over Life` en lugar de `At Start` para que cambien de color dinámicamente.

## Errores comunes que evita o menciona
- No usar `Pre-run` al 100%: las partículas no aparecen todas desde el primer fotograma.
- Escalar partículas externamente en lugar de ajustar el tamaño dentro de Particular: reduce calidad y altera el rango de impacto.
- Usar demasiadas partículas ("clumpy"): se ve antinatural y satura la escena.
- No ajustar la velocidad (`Velocity`) según el contexto de la escena: escenas con movimiento rápido (ej. cargas, poderes) requieren partículas más rápidas.
- Hacer 3D tracking en clips de anime cuando la cámara está estática: es innecesario; mejor usar Twixtor y añadir partículas encima.
- No oscurecer la escena (bajar gamma, highlights, midtones) antes de añadir partículas con glow: el brillo no resalta adecuadamente.

===== DESTILADO: IdewyrvKlhI.md =====
# Tutorial: Compositing 3D Renders in After Effects
**Fuente:** Amort Media | https://youtu.be/IdewyrvKlhI

## Qué enseña (2-3 líneas)
Cómo componer capas de render 3D (provenientes de Blender) en After Effects usando modos de fusión, máscaras, ajustes de color y efectos para integrar personajes, fondos, niebla y luces. También cubre técnicas para corregir problemas de contacto con el suelo y añadir elementos externos como texturas.

## Técnicas accionables
- Importar secuencias de imágenes: doble clic en el panel Proyecto, navegar al archivo, marcar "Image Sequence". Verificar que la velocidad de fotogramas sea correcta en el panel Proyecto; si no, clic derecho > Interpret Footage > Main > ajustar Frame Rate. También se puede configurar en Preferences > Import > Default Frame Rate.
- Renombrar cada secuencia de imágenes inmediatamente después de importarla para facilitar la organización.
- Crear una nueva composición arrastrando la capa de fondo al botón "New Composition".
- Colocar las capas de primer plano sobre el fondo; las que aparecen más tarde deben moverse en la línea de tiempo para alinearse con la escena.
- Capa de niebla (fog pass): colocar sobre las capas de primer plano y cambiar el modo de fusión a Screen. Duplicar la capa varias veces para aumentar la densidad.
- Añadir efecto Hue/Saturation a las capas de niebla: Efecto > Color Correction > Hue/Saturation. Ajustar el parámetro Master Saturation para controlar la saturación.
- Si las capas se renderizaron en 16 bits, cambiar la profundidad de bits del proyecto: clic en el botón de profundidad de bits en la parte inferior del panel de composición y seleccionar "16 bits per channel".
- Añadir capa de ajuste (Layer > New > Adjustment Layer) y aplicar efecto Curves (Effect > Color Correction > Curves). Ajustar la curva: subir el punto de altas luces y bajar el punto de sombras para aumentar el contraste.
- Capa de luz de borde del personaje (character edge light pass): colocar sobre los elementos de primer plano, modo Screen. Ajustar opacidad (tecla T) o duplicar para intensificar.
- Para simular bloom: duplicar la capa de luz de borde, aplicar Effect > Blur & Sharpen > Gaussian Blur. Ajustar opacidad con tecla T.
- Usar máscara del personaje (character mask): arrastrar la capa de máscara sobre la capa del personaje. Crear una nueva capa de ajuste debajo de la máscara. En la capa de ajuste, en el menú desplegable Track Matte, seleccionar "Luma Matte". Aplicar Curves a la capa de ajuste para modificar solo el personaje.
- Para oscurecer los pies: misma técnica de máscara + Curves, para desviar la atención del contacto imperfecto con el suelo.
- Pre-componer todo: seleccionar todas las capas, Layer > Pre-compose. Esto permite aplicar efectos globales que no son posibles con capas de ajuste.
- Efecto "pictórico" o HDR: duplicar el pre-comp, aumentar saturación (Hue/Saturation), aplicar Effect > Blur & Sharpen > Fast Blur, cambiar modo de fusión a Color.
- Añadir nitidez: en la composición original, aplicar Effect > Blur & Sharpen > Sharpen a la capa de ajuste.
- Efecto glow/bloom: en la composición que contiene los pre-comps duplicados, hacer otra duplicación. Aplicar Curves (para que solo brillen las partes claras), Fast Blur, modo Screen.
- Oscurecer fondo con máscara: importar máscara del fondo, colocar capa de ajuste debajo, en Track Matte seleccionar "Alpha Matte". Para suavizar el borde de la máscara, seleccionar la máscara y aplicar Effect > Blur & Sharpen > Fast Blur, marcar "Repeat Edge Pixels".
- Añadir humo: colocar la capa de humo debajo de las capas de niebla, modo Screen. Ajustar opacidad con tecla T. Para suavizar el borde inferior: seleccionar herramienta Rectangle Mask, dibujar máscara en la parte inferior, presionar F para ajustar Mask Feather, cambiar Mask Mode de Add a Subtract. Ajustar Mask Expansion si es necesario.
- Añadir edificio desde textura: arrastrar imagen a la composición, recortar si es necesario, escalar. Colocar debajo de las capas de niebla, modo Screen. Aplicar Curves para oscurecer los negros y Fast Blur para igualar la suavidad del fondo.
- Para que el edificio siga el movimiento de la cámara: crear un Null Object (Layer > New > Null Object). Presionar P para mostrar Position, hacer clic en el cronómetro para crear un keyframe al inicio. Mover el playhead al inicio de la animación, reposicionar el Null Object sobre un elemento de fondo prominente. Arrastrar el Pick Whip desde la capa del edificio al Null Object para parentearlo.
- Para evitar que el edificio se superponga a edificios del primer plano: colocar la capa de máscara sobre la capa del edificio, en Track Matte seleccionar "Alpha Matte".
- Para corregir el glow problemático alrededor del personaje: seleccionar la máscara del personaje, aplicar Fast Blur, luego Curves para oscurecer y "choke" (contraer) la máscara.
- Para arreglar pies que no tocan el suelo: crear un Solid (Layer > New > Solid) del color de la sombra. Enmascarar y animar con keyframes para que siga el movimiento del pie. Ajustar Mask Feather para que coincida con la suavidad de la sombra.

## Reglas para el erudito (imperativas y verificables)
- Usa Screen como modo de fusión para capas de niebla, luces de borde, humo y texturas de fondo.
- Cuando añadas una máscara para aislar un elemento, coloca la capa de ajuste debajo de la máscara y configura el Track Matte como Luma Matte o Alpha Matte según el tipo de máscara.
- Para suavizar bordes de máscaras, usa Fast Blur con "Repeat Edge Pixels" activado.
- Para que un elemento siga el movimiento de la cámara, parentéalo a un Null Object con keyframes de posición manuales o motion tracking.
- Si el proyecto usa capas de 16 bits, cambia la profundidad de bits del proyecto a 16 bits per channel antes de aplicar efectos.
- Para simular bloom, duplica la capa de luz, aplica Gaussian Blur y ajusta opacidad; no uses el efecto Glow nativo de AE.
- Nunca dejes el Frame Rate por defecto al importar secuencias de imágenes; verifícalo y ajústalo en Interpret Footage o Preferences.
- Para el efecto HDR/pictórico, pre-compón todo, duplica el pre-comp, aumenta saturación, aplica Fast Blur y usa modo Color.

## Errores comunes que evita o menciona
- No verificar la velocidad de fotogramas al importar secuencias de imágenes; puede causar desincronización.
- Olvidar renombrar las capas al importar, lo que dificulta encontrarlas después.
- Aplicar demasiada saturación a las capas de niebla, dejando la escena lavada; el video menciona que redujo la saturación después.
- No ajustar la opacidad de las capas de luz de borde o humo; usar la tecla T para revelar el control rápidamente.
- Tener bordes duros en las máscaras; aplicar Fast Blur con "Repeat Edge Pixels" para suavizar.
- Que el edificio añadido se superponga a edificios del primer plano; usar una máscara con Alpha Matte para recortarlo.
- Glow no deseado alrededor del personaje causado por la capa de ajuste de brillo; aplicar blur y Curves a la máscara para "chokearla" (contraerla).
- Pies que no contactan con el suelo; el video sugiere que hacer el sólido de la suela más grueso en 3D es más fácil que intentar igualar la suavidad de la sombra con keyframes.

===== DESTILADO: MsOqPp4KkTE.md =====
# DUIK ANGELA: Character Walk Cycle Animation in After Effects Tutorials
**Fuente:** Nijat Ibrahimli | https://youtu.be/MsOqPp4KkTE

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un ciclo de caminata (walk cycle) para un personaje 2D usando el plugin DUIK Angela en After Effects. Cubre la creación manual de huesos con la herramienta Pluma, el rigging mediante el panel HumanIK de DUIK, y la animación cíclica con keyframes y expresiones de loop.

## Técnicas accionables
- **Creación de huesos para rigging:** Seleccionar las capas de pie (foot one, two, three), presionar `T` para abrir opacidad y cambiarla a 50% para ver a través. Usar la **herramienta Pluma (Pen Tool)** para dibujar líneas que representan huesos sobre la pierna. No presionar `S` (Scale) al terminar.
- **Vinculación con DUIK Angela:** Ir a `Window > Duik Angela` para abrir el panel. Seleccionar los huesos dibujados, ir a la pestaña **HumanIK**, hacer clic en **Leg** para asignar la configuración de pierna. Renombrar los huesos como "one", "two", "three". Seleccionar cada capa de pie y usar el menú desplegable **Link to** para vincularla al hueso correspondiente (foot one → Bone one, etc.).
- **Auto-rigging con DUIK:** Seleccionar todos los huesos (bone one, two, three) y el controlador B (Bone controller). En el panel DUIK, hacer clic en **Auto** para generar automáticamente los controladores IK.
- **Ajuste de escala del controlador:** Si el controlador aparece en posición incorrecta, seleccionarlo, ir a la propiedad `Scale` (S) y cambiar a `-100%` para invertir la dirección. Luego usar el ícono de **Icon** en DUIK para mover el controlador a la posición deseada (izquierda o derecha).
- **Organización de capas:** Activar **Toggle Switches/Modes** (icono de interruptor en la línea de tiempo). Usar el ícono de **Hide for all layers** (ocultar) en los huesos y controladores para mantener solo los controladores visibles. Renombrar los controladores como "foot left" y "foot right".
- **Vinculación del cuerpo:** Seleccionar la capa "body down", ir a `Solo`, usar la herramienta **Pen Behind** (Y) para mover el punto de anclaje hacia abajo. Desvincular el solo. Seleccionar "body", ir a `Solo`, mover su punto de anclaje hacia abajo con Pen Behind. Desvincular solo. Vincular "body" a "body down" (menú Link to). Seleccionar "body down" y presionar `R` para verificar rotación.
- **Vinculación de manos y cabeza:** Vincular "hand left" y "hand right" a "body". Vincular "head" a "body". Vincular "eyes" a "head". Vincular "head" a "body down". Presionar `R` para verificar rotación.
- **Vinculación de huesos al cuerpo:** Mostrar capas ocultas (icono de ojo). Seleccionar "bone one" de cada pierna y vincularlos a "body down". Ocultar nuevamente.
- **Animación del ciclo de caminata (body down):** Seleccionar "body down", presionar `P` para abrir Posición. Crear un keyframe en el frame 0. Ir al frame 6 usando `+6` en el cuadro de tiempo. Mover "body down" hacia abajo ligeramente. Copiar el primer keyframe y pegarlo en el frame 12. Seleccionar todos los keyframes, presionar `F9` para suavizar (Easy Ease). Para loop infinito: mantener `Alt` y hacer clic en el cronómetro de Posición, luego arrastrar al `play button property` y seleccionar `loopOutDuration("cycle")`.
- **Animación de pies (controladores):** Seleccionar los controladores "foot left" y "foot right", presionar `P`. Crear keyframe en frame 0. Mover "foot left" a la izquierda y "foot right" a la derecha. Ir 10 frames adelante (usar `Shift + Page Down` para 10 frames). Crear nuevos keyframes. Copiar los keyframes del frame 0 y pegarlos en el frame 20. Ir al frame 10 (mitad). Seleccionar "foot right", copiar su posición (`Ctrl+C`), seleccionar el controlador y pegar (`Ctrl+V`, `Enter`). Repetir para "foot left" en el frame 10. En el frame 10, mover "foot left" hacia arriba para el paso. En el frame 0, mover "foot left" hacia arriba también. Presionar `B` para inicio del work area y `N` para final. Presionar `F9` en keyframes seleccionados.
- **Rotación de pies:** Seleccionar controlador de pie, mantener `Shift` y presionar `R` para abrir Rotación. Crear keyframe en frame 0. Ir al frame 10, cambiar rotación (ej. inclinar). Volver al frame 0, rotación a 0. Seleccionar keyframes, `F9`. Mover el keyframe del medio hacia arriba en la línea de tiempo. Copiar keyframes de rotación y pegarlos en frames siguientes para loop.
- **Animación de manos:** Seleccionar "hand left", ir a `Solo`, mover punto de anclaje hacia arriba con Pen Behind. Desvincular solo. Repetir para "hand right". Presionar `R` para abrir Rotación. Crear keyframes en frame 0. Rotar "hand left" hacia adelante, "hand right" hacia atrás. Mover "hand right" detrás de las capas de pie. Ir 10 frames adelante, cambiar rotaciones. Copiar primeros keyframes, pegar en frame 20. Seleccionar keyframes, `F9`. Añadir expresión: `Alt + clic` en cronómetro de rotación, arrastrar a `play button property`, seleccionar `loopOut("cycle")`.
- **Animación de cabeza:** Seleccionar "head", ir a `Solo`, mover punto de anclaje hacia abajo con Pen Behind. Desvincular solo. Presionar `R`, crear keyframe de rotación. Rotar ligeramente. Ir a frame 10, rotar al otro lado. Copiar primer keyframe, pegar en frame 20. `F9`. Añadir expresión `loopOut("cycle")`.
- **Parpadeo de ojos:** Seleccionar "eyes", presionar `S` para Escala. Crear keyframe. Ir 3 frames adelante (`Page Down` tres veces), cambiar escala Y a 5%. Ir 3 frames adelante, escala Y a 100%. `F9`. Copiar estos keyframes y pegarlos más adelante para parpadeo aleatorio.
- **Rotación de cuerpo:** Seleccionar "body", presionar `R`. Crear keyframe de rotación (ej. 2 grados). Ir 10 frames adelante, rotación -2 grados. Ir 10 frames más, copiar primer keyframe. `F9`. Añadir expresión `loopOut("cycle")`. Para más realismo, seleccionar dos keyframes y moverlos hacia la izquierda manteniendo `Alt` para aleatorizar.

## Reglas para el erudito (imperativas y verificables)
- Usa **Pen Tool** para dibujar huesos, no la herramienta Shape Layer; los huesos deben ser líneas simples.
- Cuando uses **Auto-rigging** en DUIK, selecciona **siempre** todos los huesos y el controlador B antes de hacer clic en Auto.
- Si el controlador IK aparece invertido, cambia su **Scale a -100%** en el eje correspondiente antes de reposicionarlo con el ícono Icon.
- Para moverte 10 frames exactos en la línea de tiempo, usa **Shift + Page Down** (no solo Page Down).
- Para copiar valores de posición de un controlador a otro, usa **Ctrl+C** en el keyframe origen y **Ctrl+V** en el keyframe destino, luego presiona **Enter** para confirmar.
- Aplica **Easy Ease (F9)** a todos los keyframes de posición y rotación antes de añadir expresiones de loop.
- Para loop infinito, usa la expresión **`loopOutDuration("cycle")`** en posición y **`loopOut("cycle")`** en rotación y escala.
- Para el parpadeo de ojos, usa keyframes de **Escala (S)** en el eje Y: 100% → 5% → 100% en intervalos de 3 frames.

## Errores comunes que evita o menciona
- **No presionar S (Scale) después de dibujar huesos con la Pluma**, ya que esto escalaría la línea en lugar de mantenerla como hueso.
- **No olvidar ocultar las capas de hueso** después del rigging usando el ícono de Hide; solo deben quedar visibles los controladores.
- **No mover el controlador IK antes de ajustar su escala** si aparece en posición incorrecta; primero cambia Scale a -100% y luego reposiciona con Icon.
- **No omitir la vinculación de "bone one" de cada pierna a "body down"** después del rigging, o el cuerpo no seguirá el movimiento de las piernas.
- **No usar Page Down solo para avanzar 10 frames**; usa Shift + Page Down para saltos exactos de 10 frames.

===== DESTILADO: MuXiRF3BMlw.md =====
# Expressions Basics - After Effects Tutorial
**Fuente:** Holmes Motion | https://youtu.be/MuXiRF3BMlw

## Qué enseña
Este tutorial enseña cinco expresiones fundamentales de After Effects para animación procedural: `time`, `loopOut`, `wiggle`, `linear` y `valueAtTime`. Muestra cómo reducir el uso de fotogramas clave, crear bucles perfectos, movimientos aleatorios controlados y desplazamientos temporales, todo explicado desde cero para personas sin experiencia en programación.

## Técnicas accionables

- **Rotación continua con `time`:** Seleccionar capa → presionar `R` para rotación → Alt+clic en cronómetro de rotación → escribir `time * 30;` para velocidad constante. Para hacerlo legible: crear variable `turnSpeed = 30;` en línea superior, luego escribir `time * turnSpeed;`.
- **Bucle oscilante con `loopOut`:** Crear dos fotogramas clave en rotación (ej. -35° y +35°) → Alt+clic en cronómetro → escribir `loopOut("pingpong");`. Alternativas: `"cycle"` (salta al inicio), `"offset"` (continúa el valor). `loopIn` buclea antes del primer fotograma clave.
- **Movimiento aleatorio con `wiggle`:** Alt+clic en cronómetro de posición → escribir `wiggle(1, 15);` (frecuencia=1, amplitud=15). Para bucle perfecto: crear capa nula (Layer > New > Null Object) → renombrar "wiggle control" → Effect > Expression Controls > Slider Control → presionar `E` para ver slider → fotograma clave 0 en inicio, 15 a 1 segundo, copiar (`Ctrl+C`) a 29 segundos, pegar (`Ctrl+V`), clic derecho > Keyframe Assistant > Time Reverse Keyframes → en expresión de la capa, reemplazar amplitud con `thisComp.layer("wiggle control").effect("Slider Control")("Slider");`.
- **Desplazamiento lineal con `linear`:** Separar dimensiones de posición (clic derecho en posición > Separate Dimensions) → Alt+clic en cronómetro de Posición X → escribir `linear(time, 0, 30, -1920, 0);` (tiempo inicio, tiempo fin, posición inicio, posición fin). Duplicar capa (`Ctrl+D`) y cambiar parámetros a `linear(time, 0, 30, 0, 1920);` para bucle perfecto.
- **Retardo de animación con `valueAtTime`:** Alt+clic en cronómetro de opacidad → escribir `valueAtTime(time - 0.15);` (retraso de 0.15 segundos). Mantiene todos los fotogramas clave en una sola capa maestra.
- **Vincular propiedades con pick whip:** Arrastrar el ícono de espiral desde la expresión de una capa hasta la propiedad de otra (ej. rotación de sombra = rotación de sol). Luego agregar `;` al final. Equivalente manual: `thisComp.layer("sun").transform.rotation;`.
- **Expression Language Menu:** Botón de flecha junto al campo de expresión → contiene presets de `linear`, `ease`, `time`, `wiggle`, etc.
- **Efecto Set Mat:** Para máscara de capa: seleccionar capa → Effect > Channel > Set Matte → en "Take Matte From Layer" elegir la capa de referencia (ej. "ground").

## Reglas para el erudito

- Usa `time * valor` para rotación continua; multiplica por 30 para velocidad rápida, por 1 para lenta.
- Usa `loopOut("pingpong")` cuando quieras oscilación suave entre dos fotogramas clave; evita `"cycle"` si necesitas transición sin salto.
- Usa `wiggle(frecuencia, amplitud)` con frecuencia 1 y amplitud 15 para movimiento sutil; para bucle perfecto, controla la amplitud con un slider keyframeado que vaya de 0 a valor máximo y vuelva a 0.
- Usa `linear(time, inicioTiempo, finTiempo, inicioPos, finPos)` para movimiento horizontal continuo; los valores de posición deben coincidir con el ancho del comp (1920 px para HD).
- Usa `valueAtTime(time - retraso)` para retrasar animaciones sin mover fotogramas clave; el retraso debe ser en segundos (ej. 0.15, 0.30, 0.60).
- Siempre termina cada línea de expresión con punto y coma (`;`).
- Crea variables al inicio de la expresión para valores repetidos (ej. `freq = 1;`, `amp = 15;`) y referéncialas en la expresión para mayor legibilidad.
- Usa el pick whip para vincular propiedades rápidamente, pero verifica que agregue el `;` final.

## Errores comunes que evita o menciona

- **Olvidar parámetros requeridos en `wiggle`:** El error "wiggle needs between two and five arguments" aparece si solo escribes `wiggle();` sin frecuencia y amplitud.
- **Usar `loopOut` sin tipo:** Por defecto usa `"cycle"`, que salta abruptamente al primer fotograma clave en lugar de oscilar suavemente.
- **Bucle no perfecto con `wiggle`:** El movimiento aleatorio no coincide al inicio y final del comp; la solución es keyframear la amplitud a cero en ambos extremos usando un slider.
- **No separar dimensiones de posición:** Para mover solo en X con `linear`, debes separar las dimensiones de posición antes de añadir la expresión.
- **Olvidar el punto y coma final:** El pick whip no lo agrega automáticamente; la expresión falla si falta.
- **Mover fotogramas clave manualmente para retrasos:** Es más limpio usar `valueAtTime(time - X)` que arrastrar fotogramas clave en múltiples capas.

===== DESTILADO: Oiiq4wmbuPo.md =====
# Math.sin - Adobe After Effects Expression
**Fuente:** ECAbrams | https://youtu.be/Oiiq4wmbuPo

## Qué enseña
Explica cómo usar la expresión `Math.sin()` en After Effects para hacer que propiedades oscilen en una onda sinusoidal regular. Cubre los conceptos de amplitud, frecuencia, período, y cómo aplicar la expresión a posición, escala, opacidad y rotación, incluyendo el uso de `Math.cos()` para desfasar ondas.

## Técnicas accionables
- **Abrir ventana de expresión:** Mantener presionada la tecla **Alt** y hacer clic en el cronómetro de la propiedad (ej. Position, Scale, Opacity, Rotation).
- **Expresión básica para posición vertical oscilante:**
  - Crear variables: `a = 240;` (amplitud), `f = 0.5;` (frecuencia en veces por segundo).
  - Escribir: `y = Math.sin(time * 2 * Math.PI * f) * a;`
  - Cerrar con: `[value[0], y]` (mantiene X fijo, Y oscila).
- **Expresión para escala oscilante:**
  - Usar: `y = Math.sin(time * 2 * Math.PI * f) * a;` y luego `[y, y]` para escalar uniformemente.
  - Ajustar amplitud para evitar valores negativos: ej. `a = 50;` y sumar offset: `y + 50` para oscilar entre 0 y 100%.
- **Expresión para opacidad oscilante:**
  - Usar: `y = Math.sin(time * 2 * Math.PI * f) * a;` con `a = 50;` y luego `y + 50` para oscilar entre 0 y 100.
- **Expresión para rotación con dirección:**
  - Usar `Math.cos()` en lugar de `Math.sin()` para que la rotación comience apuntando en la dirección correcta: `y = Math.cos(time * 2 * Math.PI * f) * a;` y luego `y + value` para mantener la rotación base.
- **Hacer que la oscilación sea relativa al inicio del layer:**
  - Crear variable: `t = time - inPoint;`
  - Reemplazar `time` por `t` dentro de `Math.sin()`.
- **Ver gráfico de valores:** Hacer clic en el botón **Graph Editor** en la línea de tiempo para ver la onda sinusoidal en el gráfico de valores.

## Reglas para el erudito
- Usa `Math.sin()` cuando quieras que la oscilación comience en 0 (subiendo primero).
- Usa `Math.cos()` cuando quieras que la oscilación comience en 1 (bajando primero), útil para rotación que debe apuntar en la dirección del movimiento.
- Para controlar la frecuencia, multiplica `time` por `2 * Math.PI * frecuencia` (ej. `f = 0.5` para 0.5 oscilaciones por segundo).
- Para controlar el período, multiplica `time` por `1 / período` dentro de `Math.sin()` (ej. `1/3` para un período de 3 segundos).
- En propiedades como Opacity y Scale, suma un offset (ej. `y + 50`) para evitar valores negativos que se recortan.
- Nunca uses `Math.sin()` directamente en Scale sin ajustar la amplitud y el offset, porque los valores negativos invierten la escala.
- Por defecto, la expresión usa el tiempo de la composición; si necesitas que el layer sea independiente al moverlo en el tiempo, usa `time - inPoint`.

## Errores comunes que evita o menciona
- **Valores negativos en Opacity o Scale:** Si la amplitud es mayor que el offset, la oscilación genera valores negativos que After Effects recorta (Opacity no acepta <0%, Scale invierte). Solución: reducir amplitud y sumar offset.
- **Rotación no alineada con el movimiento:** Usar `Math.sin()` para rotación hace que el objeto apunte en dirección incorrecta al inicio. Solución: usar `Math.cos()` para que la rotación esté sincronizada con la posición.
- **Oscilación relativa al tiempo de composición:** Si mueves el layer en la línea de tiempo, la oscilación no se desplaza con él. Solución: usar `time - inPoint` en lugar de `time`.

===== DESTILADO: PF3_babBRFY.md =====
# Advanced Animation Breakdown + Grid Animation
**Fuente:** Motion Circles | https://youtu.be/PF3_babBRFY

## Qué enseña
Desglose completo de una animación en Adobe After Effects, desde el storyboard y selección de paleta de colores hasta la construcción de una animación de cuadrícula (grid) usando repetidores y transformaciones. Muestra cómo animar posición, escala, rotación y usar el efecto Echo para estelas de movimiento, además de crear transiciones con Alpha Matte.

## Técnicas accionables
- **Storyboard:** Crear frames en Illustrator antes de animar; usar como guía visual.
- **Paleta de colores:** Visitar coolors.co → explorar paletas de diseñadores → seleccionar y personalizar.
- **Selección de música:** Elegir una pista musical antes de animar para sincronizar movimientos al ritmo.
- **Importar desde Illustrator:** Usar el plugin **Overlord** para empujar vectores (grids) directamente a After Effects.
- **Animación de cuadrícula (grid) con repetidores:**
  1. Crear una composición nueva (ej. "Grid Animation").
  2. Activar **Title/Action Safe**.
  3. Dibujar una línea recta con la herramienta de forma; ancho = **3 puntos**.
  4. En el panel de contenido de la forma: **Add → Repeater** (Repeater 1).
     - Copies: **15**
     - Offset: **Y position = 100 px**
  5. Agregar un segundo repeater: **Add → Repeater** (Repeater 2).
     - Copies: **4**
     - Transform: **X position = 0**, **Rotation = 90°**
  6. Alargar la línea original (stroke) para que los repetidores se extiendan fuera del encuadre verticalmente.
  7. Ajustar la posición del segundo repeater para alinear las líneas.
- **Animación de la cuadrícula:**
  - En la línea original: animar **Scale** de **0%** a **100%** → aplicar **Easy Ease** (F9).
  - En el primer repeater → Transform: animar **Scale** de **0%** a **100%** → Easy Ease.
  - Modificar curvas (Graph Editor) para dar energía.
  - En el primer repeater → Transform: animar **Position** (controla distancia entre líneas): keyframe inicial **200**, keyframe final **100** → Easy Ease → desplazar keyframes.
  - En el transform de la capa: animar **Rotation**: keyframe inicial **90°**, keyframe final **0°** en 2 segundos → Easy Ease → curvar.
  - Para zoom out más evidente: cambiar Position inicial a **250** y final a **200**.
- **Efecto Echo (smear):** Aplicar a la capa del círculo para crear estela de movimiento.
- **Alpha Matte como transición:** Duplicar la capa de cuadrícula, ocultar la segunda, en la primera aumentar **Stroke Width** a **200** → animar a 0 con Easy Ease → usar como Alpha Matte en la escena principal.
- **Animación del ojo (pupila):** Solo animar **Position** de la pupila (moverse a un lado, luego al otro, volver al centro). El zoom out general se controla con un **Null Object** padre.
- **Animación de la escena 2:** Círculo que cae desde arriba: animar **Position** (caída), **Scale** y **Rotation**; usar Echo para smear. El círculo gradiente (Layer 2) rota junto con el principal para dar complejidad.

## Reglas para el erudito
- Usa **Overlord** para transferir vectores de Illustrator a After Effects sin pérdida de calidad.
- Siempre selecciona una pista musical **antes** de empezar a animar para inspirar el ritmo de los movimientos.
- Cuando uses repetidores para grids, ajusta la longitud de la línea original para que los repetidores se extiendan fuera del encuadre.
- Para animar la distancia entre líneas, anima la **Position** del primer repeater (no la de la línea original).
- Aplica **Easy Ease** (F9) a todos los keyframes de escala, posición y rotación, luego modifica las curvas en el Graph Editor para dar energía.
- Para transiciones con Alpha Matte, duplica la capa de cuadrícula, aumenta el **Stroke Width** a un valor grande (ej. 200) y anima a 0.

## Errores comunes que evita o menciona
- No alargar la línea original lo suficiente hace que los repetidores no cubran toda el área deseada.
- Olvidar ajustar la posición del segundo repeater para alinear correctamente las líneas de la cuadrícula.
- No animar la posición del primer repeater (solo la escala) da como resultado una animación estática sin cambio en la distancia entre líneas.
- No usar Easy Ease ni modificar curvas produce movimientos lineales y sin energía.