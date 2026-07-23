

===== DESTILADO: mT2Fv5bF6Ik.md =====
# Animation in After Effects
**Fuente:** School of Motion | https://youtu.be/mT2Fv5bF6Ik

## Qué enseña (2-3 líneas)
Este tutorial ofrece una introducción completa a la interfaz de Adobe After Effects, explicando los paneles principales, cómo crear composiciones, importar medios, trabajar con capas y realizar fotogramas clave básicos. También repasa los 12 principios de la animación tradicional y el concepto fundamental de *spacing* (espaciado entre fotogramas) como base para animar en After Effects.

## Técnicas accionables
- **Crear una nueva composición:** Haz clic en el ícono de composición en el panel Project o ve a `Composition > New Composition`. Configura: nombre ("test"), preset personalizado, resolución `1920 x 1080`, píxeles cuadrados (`Square Pixels`), framerate `24` fps, duración (ej. 16 segundos), color de fondo negro.
- **Importar archivos:** Doble clic en el panel Project, o `File > Import > File` (atajo `Cmd+I` en Mac / `Ctrl+I` en Windows). Arrastra el archivo desde el panel Project directamente a la línea de tiempo (layer stack) o a la composición.
- **Herramientas esenciales:** `V` = Selection Tool, `H` = Hand Tool (mover canvas), `Z` = Zoom Tool, `Y` = Pan Behind Tool (mover Anchor Point), `Q` = Shape Tools (rectángulo, elipse, polígono, estrella), `G` = Pen Tool, `Cmd+T` / `Ctrl+T` = Type Tool.
- **Crear una forma (elipse):** Selecciona la elipse con `Q`, mantén `Shift` para círculo perfecto, `Shift+Option+Cmd` (Mac) / `Shift+Alt+Ctrl` (Windows) + arrastrar para escalar desde el centro exacto.
- **Atajos de propiedades de capa:** Selecciona una o varias capas y presiona: `P` = Position, `S` = Scale, `R` = Rotation, `T` = Opacity.
- **Fotogramas clave:** Activa el cronómetro (stopwatch) junto a la propiedad deseada (ej. Scale) para establecer un keyframe inicial. Mueve el playhead a otro punto en el tiempo y cambia el valor de la propiedad; After Effects añade automáticamente un nuevo keyframe.
- **Previsualización (RAM Preview):** Define el inicio del área de previsualización con `B` (Begin) y el final con `N` (End). Presiona `0` (cero) en el teclado numérico para iniciar la previsualización RAM.
- **Duplicar capa:** Selecciona la capa y presiona `Cmd+D` (Mac) / `Ctrl+D` (Windows).
- **Alinear y distribuir:** Selecciona múltiples capas en la línea de tiempo, ve al panel Align (en la ventana de paneles a la derecha). Usa "Align Bottom" para alinear bordes inferiores, "Distribute Horizontally" para espaciar uniformemente entre elementos.
- **Zoom en el panel Composition:** `Cmd++` (Mac) / `Ctrl++` (Windows) para acercar, `Cmd+-` para alejar. Usa el menú desplegable de magnificación (ej. "Fit") para ajustar la vista al panel.
- **Guías y cuadrículas:** En el panel Composition, haz clic en el menú "Choose grids and guides" y selecciona "Proportional Grid" para encontrar el centro de la composición.

## Reglas para el erudito (imperativas y verificables)
- **Usa píxeles cuadrados (Square Pixels)** para contenido web estándar; solo usa píxeles no cuadrados si tu formato de salida lo requiere (ej. anamórfico).
- **Usa capas de forma (Shape Layers)** para gráficos vectoriales que escalan sin pérdida de calidad; evita escalar imágenes de píxeles (PNG, JPG) más allá de su tamaño original para prevenir pixelización.
- **Usa `B` y `N`** para definir el área de previsualización antes de hacer RAM Preview; nunca uses la reproducción sin definir el rango si solo quieres ver una sección específica.
- **Nunca asumas que una propiedad tiene keyframes activos** solo porque otra propiedad de la misma capa los tiene; cada propiedad (Position, Scale, Rotation) requiere activar su cronómetro por separado.
- **Usa `Shift+Option+Cmd` + arrastrar** (Mac) o `Shift+Alt+Ctrl` + arrastrar (Windows) para escalar una forma desde su centro exacto manteniendo proporciones.
- **Valor por defecto recomendado:** Resolución de composición en "Full" para trabajo final; usa "Quarter" solo para previsualizaciones rápidas si el rendimiento es bajo.

## Errores comunes que evita o menciona
- **No confundir el Anchor Point con el centro de la composición:** Al crear una forma con la elipse, el Anchor Point de la capa está en el centro de la composición, no en el centro de la forma creada. Usa la guía de cuadrícula proporcional y los modificadores de teclado para centrar correctamente.
- **No escalar imágenes de píxeles sin control:** Al escalar un PNG más allá de su tamaño original, la imagen se pixeliza y pierde calidad. Las capas de forma vectoriales no tienen este problema.
- **No olvidar definir el área de previsualización:** Si no usas `B` y `N`, la RAM Preview puede reproducir toda la composición o un área no deseada. Ajusta siempre los marcadores de inicio y fin.
- **No asumir que el tipo de medio es intercambiable:** Los elementos de píxeles (PNG, video) y los vectoriales (Shape Layers, Illustrator) tienen casos de uso diferentes; úsalos según la necesidad de escalabilidad y calidad.

===== DESTILADO: nE9l37cs8Fs.md =====
# Advanced 3D After Effects Motion Graphics Tutorial
**Fuente:** Stephan Zammit | https://youtu.be/nE9l37cs8Fs

## Qué enseña
Cómo lograr que objetos 3D en After Effects reaccionen dinámicamente a la posición de un objeto controlador (affector), simulando comportamientos típicos de software 3D como Cinema 4D. Incluye atracción/repulsión, cambio de escala, color y activación de animaciones mediante expresiones y un preset personalizado.

## Técnicas accionables
- Crear una cuadrícula de capas de forma: dibujar un rectángulo con la herramienta Rectángulo, tamaño 160x160, redondez (roundness) 20. Duplicar 9 veces (10 cuadrados total), alinear con "Distribute Horizontally" (distribuir horizontalmente). Seleccionar todas las capas, presionar **Command + D** para duplicar filas y apilarlas formando una cuadrícula.
- Convertir todas las capas a 3D: seleccionar todas, activar el interruptor 3D. Crear una cámara: **Layer > New > Camera**, longitud focal (focal length) 230. Usar la herramienta Orbit (C) para rotar la vista.
- Crear un objeto nulo 3D: **Layer > New > Null Object**, activar 3D, renombrar exactamente a **"fector"** (nombre crítico para las expresiones).
- Configurar geometría 3D avanzada: seleccionar todas las capas de forma, ir a **Geometry Options**, cambiar **Bevel Style** a **Convex**, ajustar **Bevel Depth** y **Extrusion Depth** al gusto. Asegurarse de que el renderizador esté en **Advanced 3D** (no Classic 3D).
- Iluminación: crear una **Point Light** (Layer > New > Light), reducir su radio (Radius), aumentar intensidad a ~200%. Parentearla al "fector". Duplicar la luz (**Command + D**), quitar el parentesco (None), colocar otra luz en otra posición. Agregar una tercera luz. Reducir la intensidad de las luces no parentadas a ~1%.
- Añadir controles al "fector": aplicar **Effect > Expression Controls > Slider Control**, renombrar a **"radius"**. Duplicar (**Command + D**), renombrar a **"radius strength"**. Duplicar, renombrar a **"scale two"**. Agregar **3D Point Control**, renombrar a **"position XYZ"**. Agregar **Color Control**, renombrar a **"color from"**. Duplicar, renombrar a **"color to"**.
- Aplicar expresiones a un cuadrado base:
  - **Posición (P)**: Alt+clic en stopwatch, pegar expresión de posición (proporcionada en el sitio web del autor).
  - **Escala (S)**: Alt+clic en stopwatch, pegar expresión de escala.
  - **Color de relleno**: abrir **Contents > Rectangle > Fill > Color**, Alt+clic en stopwatch, pegar expresión de color.
- Propagar expresiones a todas las capas: cerrar propiedades, seleccionar la propiedad con expresión, usar **Edit > Copy Expression Only**, seleccionar todas las demás capas, pegar. Para color, repetir manualmente en cada capa (abrir Contents > Rectangle > Fill > Color, pegar).
- Configurar el "fector": ajustar **radius** a ~500, **radius strength** a 0 (gradual) o 400 (fuerte), **scale two** a 50 o 111, **position XYZ** (Z) para atraer/repeler (valores negativos atraen, positivos repelen). Cambiar **color from** y **color to** para definir colores.
- Vincular un orbe 3D al "fector": arrastrar un objeto 3D (esfera) a la composición, mantenerlo como capa 2D. En su propiedad **Position**, Alt+clic en stopwatch, pegar expresión que convierte coordenadas 3D del "fector" a 2D. Añadir **Effect > Stylize > Glow**, aumentar radio.
- Usar el preset Mograph: en **Effects & Presets**, buscar bajo **User Presets > Mograph Presets > Mograph Fector**, aplicar al "fector". En las capas de forma, aplicar **Mograph 3D Layer** (o 2D Layer según corresponda) para activar automáticamente las reacciones.
- Activar animación condicional con plugin Mega Motion: seleccionar capas, aplicar **Mega Motion** (plugin externo), elegir animación (ej. "3D Loop Bounce XR"), ajustar **Loop Duration** a 2 segundos. En **Animation Intensity**, aplicar **Mograph Special Property** desde el panel de efectos. Ajustar **Property 1** a 15 para que la animación se active solo cuando el "fector" pasa cerca.
- Invertir animación en filas específicas: en los controles de Mega Motion, activar **Flip Y Axis** para invertir la dirección.

## Reglas para el erudito (imperativas y verificables)
- Usa **Advanced 3D** renderer, nunca Classic 3D, para que funcionen las opciones de geometría (Bevel, Extrusion).
- Nombra el null object exactamente **"fector"** (sin mayúsculas, sin errores ortográficos) para que las expresiones lo referencien correctamente.
- Nombra los controles del "fector" exactamente como se indica: **radius**, **radius strength**, **scale two**, **position XYZ**, **color from**, **color to**.
- Aplica las expresiones de color ANTES de duplicar las capas para ahorrar tiempo; si ya están duplicadas, debes pegarlas manualmente en cada capa.
- Para que el orbe 2D siga al "fector" 3D, usa la expresión de conversión de coordenadas 3D a 2D en su posición; no lo conviertas a capa 3D.
- Ajusta **radius strength** a 0 para un efecto gradual, a valores altos (400+) para un efecto abrupto en todo el radio.
- Para activar animaciones solo al paso del "fector", usa **Mograph Special Property** sobre el parámetro **Animation Intensity** del plugin Mega Motion.

## Errores comunes que evita o menciona
- No olvidar cambiar el renderizador a Advanced 3D antes de ajustar Geometry Options; de lo contrario, las opciones de bisel y extrusión no estarán disponibles.
- No aplicar la expresión de color después de duplicar muchas capas; hacerlo antes ahorra trabajo manual.
- No usar el nombre incorrecto para el null object ("fector" debe ser exacto) o los controles, pues las expresiones dejarán de funcionar.
- No confundir la intensidad de las luces: las luces no parentadas al "fector" deben tener intensidad muy baja (~1%) para no arruinar la iluminación dinámica.
- Al usar el preset Mograph, el color no se aplica automáticamente; debe aplicarse manualmente con **Mograph Color Property** sobre la propiedad de color de cada capa.

===== DESTILADO: pESJ6G35WGc.md =====
# Mastering Expressions In After Effects: The Ultimate Introduction #aftereffects
**Fuente:** Luisa Winters | https://youtu.be/pESJ6G35WGc

## Qué enseña
Este tutorial enseña los fundamentos de las expresiones en After Effects, desde la sintaxis básica basada en JavaScript hasta técnicas de automatización como wiggle, variables, arrays, interpolación sin keyframes, y conexión dinámica entre propiedades. También cubre el uso de controles de expresión (sliders), loops, clamping, y la integración con ChatGPT para generar código.

## Técnicas accionables
- **Agregar una expresión:** Mantén presionada la tecla **Alt** (Windows) u **Option** (Mac) y haz clic en el cronómetro de la propiedad deseada (ej. P para posición, R para rotación, S para escala). Los números se vuelven rojos indicando que la expresión controla el valor.
- **Expresión Wiggle básica:** Selecciona el texto `transform.position` en el campo de expresión y escribe `wiggle(2, 200)`. El primer parámetro es la frecuencia (veces por segundo), el segundo es la magnitud (píxeles para posición, porcentaje para escala, grados para rotación). Para confirmar, haz clic fuera del campo.
- **Separar dimensiones de posición con variables:** Para wiggle solo en el eje Y, usa variables:
  ```
  a = transform.position[0];
  b = wiggle(2, 250);
  [a, b]
  ```
  Usa el **pick whip** (icono de espiral) para arrastrar desde `a` al valor X y desde `b` al valor Y. Termina cada línea con punto y coma `;`.
- **Separar dimensiones de escala con variables:** Similar a posición, pero escala usa dos valores (ancho y alto):
  ```
  a = transform.scale[0];
  b = transform.scale[1];
  [a, b]
  ```
  Luego reemplaza `a` con `wiggle(2, 50)` para animar solo el ancho.
- **Conectar propiedades con pick whip:** Con posición keyframeada y rotación visible (Shift+R), Alt+clic en cronómetro de rotación, arrastra el pick whip al valor X de posición. La expresión resultante será `thisComp.layer("nombre").transform.position[0]`. Para ajustar la velocidad, divide: `thisComp.layer("nombre").transform.position[0] / 2`.
- **Interpolación sin keyframes (ease):** Desde el **Expression Language Menu** (icono de play), ve a **Interpolation** > **ease**. La sintaxis es:
  ```
  ease(t, tMin, tMax, value1, value2)
  ```
  Ejemplo: `ease(time, 2, 5, [230, 438], [430, 438])` mueve la capa de (230,438) a (430,438) entre los segundos 2 y 5.
- **Convertir expresión a keyframes:** Selecciona la propiedad con expresión, ve a **Animation** > **Keyframe Assistant** > **Convert Expression to Keyframes**. La expresión se deshabilita y se generan keyframes.
- **Redondear valores con Math.round:** En el Expression Language Menu, ve a **JavaScript Math** > **math.round()**. Encierra la expresión existente: `Math.round(wiggle(2, 60))`.
- **Controlar wiggle con un Slider Control:** Crea un **Null Object** (Layer > New > Null Object), renómbralo a "Control Layer". Selecciona el null, ve a **Effect** > **Expression Controls** > **Slider Control**. En la capa objetivo, en la expresión de wiggle, reemplaza la magnitud con un pick whip al slider: `wiggle(2, thisComp.layer("Control Layer").effect("Slider Control")("Slider"))`. Keyframea el slider para animar la magnitud.
- **Loop de animación (ping-pong):** Con dos keyframes de posición, Alt+clic en cronómetro de posición, ve a **Expression Language Menu** > **Property** > **loopOut("pingpong")**. Para suavizar, selecciona los keyframes y aplica **Animation** > **Keyframe Assistant** > **Easy Ease**.
- **Clampear valores:** Usa la función `clamp(valor, min, max)`. Ejemplo: `clamp(wiggle(2, 60), -45, 45)` limita la rotación entre -45 y 45 grados.
- **Hacer que una capa siga a otra con Layer Control:** En la capa seguidora, agrega **Effect** > **Expression Controls** > **Layer Control**. En el panel de efectos, selecciona la capa a seguir (ej. "Green Solid"). En la posición de la seguidora, usa pick whip al control: `thisComp.layer("Green Solid").transform.position`. Para offset, resta: `thisComp.layer("Green Solid").transform.position - [300, 0]`.
- **Controlar escala con el tiempo:** Usa `time * valor`. Ejemplo: `time * 50` aumenta la escala 50% por segundo. Para ralentizar, divide: `time * 50 / 2`.
- **Expresión con texto y animador de escala:** Crea un texto, agrega un **Animator** (desde el panel de texto) para **Scale**. En el campo de expresión del animador, usa:
  ```
  freq = 3; // frecuencia en veces por segundo
  amp = 75; // cambio en porcentaje
  a = transform.scale[0] + amp * Math.sin(freq * time);
  b = transform.scale[1] + amp * Math.cos(freq * time);
  [a, b]
  ```
  Esto anima cada carácter individualmente.

## Reglas para el erudito
- **Usa Alt+clic en el cronómetro** para agregar o eliminar una expresión (no uses el menú Animation > Add Expression).
- **Nunca nombres una variable** con palabras clave del lenguaje (ej. "wiggle", "position", "time"). Usa nombres como "freq", "amp", "a", "b".
- **Termina cada línea de código con punto y coma `;`** para evitar errores de sintaxis.
- **Usa el pick whip** para escribir rutas de propiedades automáticamente; evita escribir manualmente `thisComp.layer("...").transform.position`.
- **Para separar dimensiones en escala**, usa variables; no hay opción "Separate Dimensions" para escala como en posición.
- **Para keyframe una expresión**, usa un Slider Control en un Null Object y keyframea el slider, o usa ChatGPT para generar código condicional con `time`.
- **Para loopOut**, usa `"pingpong"` en lugar de `"cycle"` si quieres un rebote suave de ida y vuelta.
- **Usa `clamp()`** cuando necesites limitar valores extremos generados por wiggle u otras funciones.
- **Para redondear valores**, usa `Math.round()`, `Math.floor()` (redondea hacia abajo) o `Math.ceil()` (redondea hacia arriba).

## Errores comunes que evita o menciona
- **No escribir correctamente las mayúsculas y minúsculas:** Las expresiones distinguen entre mayúsculas y minúsculas (case-sensitive). "wiggle" funciona, "Wiggle" no.
- **No cerrar paréntesis o corchetes:** After Effects cierra automáticamente paréntesis y corchetes al abrirlos, pero si borras uno manualmente, la expresión falla.
- **Hacer clic fuera del campo de expresión antes de terminar:** Aparece un error de expresión (squiggly line roja). Siempre completa la sintaxis antes de hacer clic fuera.
- **Usar parenting en lugar de Layer Control para seguimiento:** Parenting no permite condicionales ni offsets dinámicos; Layer Control es más flexible.
- **Olvidar que el slider control comienza en 0:** Si usas un slider para magnitud de wiggle y no lo keyframeas, el wiggle no se activa porque el slider está en 0.
- **No usar el Expression Language Menu:** Este menú (icono de play) contiene funciones predefinidas como `wiggle`, `loopOut`, `ease`, `Math.round`, que evitan errores de escritura.

===== DESTILADO: qJbV27ic1Wk.md =====
# Broadcast Graphics Kinetic Type
**Fuente:** The Video Shop | https://youtu.be/qJbV27ic1Wk

## Qué enseña
Cómo crear gráficos animados para canales de televisión usando principalmente Text Animators de After Effects. El tutorial cubre animación de números y texto con múltiples propiedades (escala, opacidad, tracking, rotación, posición) y técnicas para resolver problemas comunes como la falta de una función de repetición nativa.

## Técnicas accionables
- **Crear animación de números con 23 copias:** Escribir el número "1" 23 veces (sin usar expresión de repetición). Fuente: Helvetica Neue LT Com, tamaño 400, Kerning 200.
- **Animator de escala:** Añadir propiedad Scale al text layer. Renombrar el animator a "scale". En Advanced → Shape: Ramp Down. Escalar a 0. Ease High: 50.
- **Animator de opacidad (type on):** Añadir nuevo animator → Opacity. Renombrar a "type on". Ease High: 50. Keyframe End de 100 a 0. Smoothness: 0. Usar Graph Editor para suavizar keyframes.
- **Animator de tracking:** Añadir nuevo animator → Tracking. Renombrar a "tracking". Tracking Amount: -150. Keyframe End de 100 a 0. En Advanced → Based On: Words. Arrastrar último keyframe a ~8.5 segundos.
- **Animator de rotación:** Añadir animator → Rotate. Shape: Ramp Up. Ease High: -100, Ease Low: 40. Keyframe Offset de 100 a -100.
- **Duplicar animator de rotación (slide off right):** Duplicar el animator de rotación, renombrar a "slide off right". Eliminar rotación. Añadir Position → X: 3000. En Advanced: Ease High: -20, Ease Low: 100.
- **Segunda parte (números rosas):** Copiar text layer, eliminar animators. Tamaño: 750, Kerning: -250. Añadir animator Position → X: 800. Shape: Ramp Up. Ease High: 100, Ease Low: 100. Keyframe Offset de -100 a 100 (~1 segundo).
- **Añadir escala y tracking al mismo animator:** En el mismo animator "main animation", añadir Scale → 6. Añadir Tracking → 50.
- **Slide off right (segunda parte):** Nuevo animator Position → X: 3650. Shape: Ramp Up. Offset de 100. Ease High: -100, Ease Low: 100. Mover keyframes al inicio y a 3 segundos.
- **Time Remapping para acelerar:** Añadir Time Remapping al pre-comp. Mover keyframe de 220 a 2 segundos para acelerar ~30%.
- **Animación del número 4 con 8 copias:** Escribir "4", tamaño 130, Kerning -600. Copiar y pegar 8 veces (alternando blanco y negro, empezando y terminando con blanco). Añadir animator Scale → keyframe de 100 a 7500 en 3 segundos. Shape: Ramp Down. En More Options → Grouping Alignment: -3, -31. Ajustar posición para eliminar líneas verticales.
- **Cubrir líneas no deseadas con shape layer:** Usar Pen Tool para crear shape layer con Fill: Black, sin Stroke. Keyframe posición para cubrir líneas.
- **Typewriter para aislar caracteres:** Duplicar text layer, añadir efecto Typewriter. Cambiar modo de Add a Subtract. Ajustar para que solo queden los últimos 2 caracteres.
- **Ease con Flow:** Presionar Q para revelar todos los keyframes. Usar Flow para suavizar.
- **Animación "Back Soon":** Escribir "BACK SOON", título caps. Fuente: 85 Heavy (no Extended), tamaño 50, leading y kerning -14. Añadir expresión de repetición para repetir la línea 7 veces (1 repetición del texto).
- **Position animator (back soon):** Position: 270 en X, 5 en Y. Añadir animator Position → Y: 1050. Advanced → Based On: Words. Shape: Ramp Down. Ease High: 100, Ease Low: 100. Keyframe Offset de 100 a -100 en 1 segundo. More Options → Grouping Alignment: -93, Anchor Point Grouping: Word.
- **Line spacing animator:** Nuevo animator con Position y Line Spacing. Renombrar "position/line spacing". Line Spacing: 11. Keyframe a 1.5 segundos: Position Y: -186, Line Spacing: 13.
- **Scale + line spacing animator:** Nuevo animator con Scale y Line Spacing. Renombrar "scale lines facing shock". Scale: 2700, Line Spacing: 2015. Based On: Words. Shape: Ramp Up. Ease High: -100, Ease Low: 100. Offset de 100 a -100 en 1.5 segundos.
- **Time Remapping final (back soon):** Pre-componer, añadir Time Remapping para ralentizar. Añadir white layers para interés visual (wipe de abajo a arriba y de izquierda a derecha).
- **Animación "WEIRDBACK" con smear:** Escribir "WEIRDBACK" repetido. Tamaño 750, leading 650, kerning -15. Escala del layer: 32. Animator Position → X: 1900. Shape: Ramp Up. Offset de -100 a 100 en 2 segundos. Ease High: 100, Ease Low: 100. Añadir Scale → 0 y Tracking → -100.
- **Lines Moving animator:** Nuevo animator Position → X: 1500. Shape: Ramp Up. Ease High: 10, Ease Low: 16. Offset de -80 a 0 en 3 segundos.
- **Smear con Minimax:** Keyframe Position en ~20 frames. Añadir Expression Control → Slider, renombrar "speed". Expresión en speed: `Math.floor(position.speed)`. Añadir efecto Minimax: Channel: Alpha and Color, Direction: Horizontal. Expresión en Radius: `pick whip to speed / 20`.
- **Transform para dirección del smear:** Añadir efecto Transform. Expresión en Position (Shift+Position): `x = [valor] - thisComp.layer("NOMBRE").effect("Minimax")("Radius"); y = [valor]; [x, y]`. Ajustar valor para que el smear se extienda a la izquierda.
- **Recortar capa para evitar jank:** Ctrl+Shift+D para dividir la capa donde termina la animación. Recortar out point.
- **Corregir cutout del 4 con shape layer:** Con Pen Tool, trazar el gap del 4 (sin seleccionar text layer). Crear shape layer, sin stroke. Usar Alpha Matte invertido con el text layer como fuente. Parentear shape layer al text layer.
- **Solución alternativa (2 capas):** Duplicar text layer. Capa superior: quitar Fill y Minimax. Capa inferior: mantener Minimax. Expression Link Source Text de la capa superior a la inferior. Usar Fill y CC Composite en capa inferior para color.
- **Animación tipo bounce con texto 3D:** Text layer con 3D activado, cámara con keyframes de posición. Dot animado con keyframes de posición y parenteado a Null con bounce.
- **Scale animator (spring effect):** Añadir animator Scale → 0. Renombrar "scale up". Shape: Ramp Up. Keyframe Offset de -100 a 100. Ease Low: 100.
- **Scale down animator:** Duplicar "scale up", renombrar "scale down". Scale: 85. Shape: Ramp Down. Ease Low: 0, Ease High: -100. Desfasar keyframes arrastrándolos.
- **Trim de caracteres con Opacity:** Añadir animator Opacity → 0. Renombrar "trim". Smoothness: 0. Ajustar Start/End para eliminar carácter específico (ej. "I").
- **Aislar carácter con modo Subtract:** Duplicar text layer. En animator "trim", cambiar modo de Add a Subtract para aislar el carácter eliminado.
- **Fill Color animator:** Añadir animator → Fill Color. Cambiar color a Black. Smoothness: 0. Keyframe Start con Hold keyframes para cambiar color cuando el dot golpea cada letra.
- **Invertir keyframes de color:** Presionar U para revelar keyframes. Seleccionar y Time Reverse Keyframes.
- **Modo Subtract para color:** Cambiar Start a 100, modo a Subtract. Keyframe End para que los caracteres vuelvan al color original.

## Reglas para el erudito
- Usa Shape: Ramp Down para efectos de escala que disminuyan gradualmente; Ramp Up para aumentos.
- Cuando uses múltiples animators en un mismo text layer, renómbralos para mantener organización (ej. "scale", "type on", "tracking").
- Para efectos type-on, usa Smoothness: 0 y ajusta keyframes en el Graph Editor para control preciso.
- Cuando animes Offset, keyframe de 100 a -100 (o viceversa) para controlar dirección del efecto.
- Para efectos de slide off, usa valores grandes de Position X (ej. 3000, 3650) para que los caracteres salgan completamente del cuadro.
- En animators con múltiples propiedades, agrupa en un solo animator para mantener keyframes sincronizados.
- Usa Based On: Words cuando quieras que el efecto se aplique palabra por palabra en lugar de carácter por carácter.
- Para efectos de repetición de texto, usa la expresión de repetición (repeat expression) como workaround ya que After Effects no tiene función nativa.
- Cuando uses Minimax para smear, ajusta el valor de división (ej. /20) según preferencia personal para controlar la intensidad.
- Para corregir cutouts en caracteres con Minimax, usa shape layers con Alpha Matte invertido en lugar de máscaras directas.
- Usa Hold keyframes para cambios de color sincronizados con eventos (ej. impacto de un objeto).
- Time Remapping es útil para ajustar timing sin re-animar; pre-componer y aplicar Time Remapping para ralentizar o acelerar.
- Cuando trabajes con 3D layers y cámara, parentea objetos a Nulls para animaciones de bounce más controladas.

## Errores comunes que evita o menciona
- No usar la expresión de repetición (repeat expression) cuando se necesitan colores alternados en el texto, porque hace que todo el texto sea del mismo color (blanco en el ejemplo). En su lugar, copiar y pegar manualmente el texto.
- El Minimax effect extiende el smear en ambas direcciones (izquierda y derecha); para controlar la dirección, usar efecto Transform con expresión que vincule la posición al radio del Minimax.
- El Minimax puede hacer que se pierdan partes recortadas de caracteres (ej. el agujero del "4"); solucionar con shape layer y Alpha Matte invertido.
- Al usar la solución de dos capas para smear, hay que cambiar el texto en ambas capas; se puede solucionar con Expression Link del Source Text.
- Al animar color con Fill Color animator, es fácil invertir el orden de los keyframes; usar Time Reverse Keyframes para corregir rápidamente.
- Si se cambia la tipografía o el tipo de letra, las máscaras directas quedan inservibles; usar animators de Opacity con modo Subtract es más flexible.
- El tutorial menciona que After Effects no tiene una función de repetición nativa para Text Animators (a diferencia de Shape Layers), y sugiere usar la expresión de repetición como workaround.

===== DESTILADO: qNvlDZeVStQ.md =====
# How to Use Text Animators in After Effects!
**Fuente:** School of Motion | https://youtu.be/qNvlDZeVStQ

## Qué enseña
Este tutorial enseña a crear animaciones cinéticas procedurales de texto usando Text Animators en After Effects, combinándolos con capas de forma, footage y audio para generar un collage animado en bucle. Cubre desde los fundamentos de los animadores de texto hasta técnicas avanzadas como animación en 3D, distorsión con efectos, y diseño de sonido.

## Técnicas accionables
- **Agregar un Text Animator:** Desplegar la capa de texto, hacer clic en el ícono de "Animate" (icono de reproducción junto al nombre de la capa) y seleccionar "Position". Esto crea un grupo de animador con un "Range Selector".
- **Configurar Range Selector:** Dentro del animador, ajustar "Position" (ej. Y = 400 para bajar letras). En "Advanced", cambiar "Shape" de "Square" a "Ramp Up" o "Ramp Down". Animar "Offset" con keyframes (ej. de -100 a 100 en 20 frames).
- **Ajustar suavizado:** En "Advanced", modificar "Ease High" y "Ease Low" a 100% para transiciones suaves de entrada/salida.
- **Duplicar animadores:** Para animar letras en dirección opuesta, duplicar el grupo del animador (Ctrl+D), renombrarlo (ej. "on" y "off"), cambiar valores de "Position" (ej. de -2000 a 2000) y ajustar "Shape" según corresponda.
- **Keyframes de Tracking:** Agregar un animador de "Tracking" (desde "Animate" > "Tracking") y keyframear de 0 a 30 en la misma duración que la animación principal para movimiento continuo sutil.
- **Time Reverse Keyframes:** Seleccionar keyframes, hacer clic derecho > "Keyframe Assistant" > "Time-Reverse Keyframes" para invertir la dirección de la animación.
- **Texto en trayectoria (Path):** Dibujar un path con la herramienta Pluma (Pen Tool). En la capa de texto, desplegar "Path Options" y seleccionar el path en "Path". Ajustar "First Margin" o "Last Margin" para posicionar el texto.
- **Convertir a 3D y cámara:** Activar el interruptor 3D en las capas de texto. Crear una cámara (Layer > New > Camera) con lente de 15mm (ultra gran angular) para distorsión.
- **Efectos de distorsión:** Aplicar efectos como "CC Split", "Twin", "Liquify" o "Corner Pin" a capas de texto precompuestas para amplificar la distorsión.
- **Añadir acentos gráficos:** Duplicar una capa de texto, cambiar la tipografía a una que soporte símbolos (ej. triángulo con Alt+31 en teclado numérico). Usar "Baseline Shift" (130) y "Kerning" para ajustar espaciado. Agregar animadores de "Rotation" (-90°) y "Scale" sin animar para modificar apariencia.
- **Typewriter preset:** Aplicar "Animate In" > "Typewriter" desde el menú de efectos y presets (usa Text Animators internamente). Ajustar duración a 15 frames para que las letras aparezcan una por una.
- **Wiggly Selector:** Agregar un animador, luego hacer clic en "Add" > "Selector" > "Wiggly". Eliminar el "Range Selector" por defecto. Afectar propiedades como "Scale" (200%) y "Rotation" (70°). Ajustar "Wiggles Per Second" y keyframear "Min/Max Amount" para variar intensidad.
- **Guardar preset de animación:** Seleccionar el grupo del animador, ir a "Animation" > "Save Animation Preset". Guardar en la carpeta de presets de AE. Reiniciar After Effects para que aparezca en el panel de efectos.
- **Time Remapping:** Seleccionar la capa, presionar Ctrl+Alt+T para activar "Time Remap". Ajustar la curva en el Graph Editor para ralentizar o acelerar secciones específicas.
- **Motion Sketch:** Ir a "Window" > "Motion Sketch". Dibujar un null aleatoriamente. Copiar el path de posición del null a un path de máscara de un sólido, luego agregar el efecto "Stroke". Alternativa: usar efecto "Scribble".
- **Expresión para wiggle en path:** En el path de máscara, aplicar expresión: `wiggle(freq, amp)` (ej. `wiggle(5, 20)`). La instructora menciona que no quedó satisfecha con esto y optó por "Scribble".
- **Transición de clips de footage:** Precomponer un clip a tamaño HD. Crear 10 instancias del precomp, enmascararlas y apilarlas en el tiempo. Animar "Position" para que entren desde la derecha y salgan por la izquierda. Llevar a una nueva composición con "Continuous Rasterization" activado.
- **Audio collage:** Usar clips de audio de películas y efectos de sonido (ej. de Motion Array). Sincronizar con la animación. Sitio recomendado: Play Phrase Me para encontrar clips específicos.

## Reglas para el erudito
- **Usa "Ramp Up" o "Ramp Down"** en "Shape" del Range Selector cuando quieras que las letras aparezcan secuencialmente de un extremo a otro.
- **Usa "Ease High" y "Ease Low" al 100%** para suavizar la entrada y salida de las letras en animaciones de offset.
- **Nunca uses keyframes de posición normales (P)** si planeas mover o escalar la capa de texto después; usa un Text Animator de posición para mantener la animación procedural.
- **Mantén los keyframes alineados** en los mismos frames cuando sea posible para facilitar el ajuste de timing.
- **Activa "Continuous Rasterization"** (estrella en la capa) cuando uses precomposiciones con máscaras animadas para evitar artefactos de renderizado.
- **Usa 24 fps** cuando trabajes con clips de película para mantener consistencia.
- **Aplica "Multiply" al 50% de opacidad** para overlays de papel o textura sobre la composición final.
- **Agrega grano** tanto al fondo sólido como a una capa superior al 50% de opacidad para unificar el look.

## Errores comunes que evita o menciona
- **No ver los paneles de capa:** Si no ves el ícono "Animate", asegúrate de que al menos un panel esté activo en la parte inferior izquierda de la línea de tiempo.
- **Confundir el Graph Editor:** Si ves una línea de forma diferente, cambiar el tipo de gráfico de "Speed Graph" a "Value Graph" para ver la curva correcta de posición.
- **Olvidar renombrar animadores:** Al duplicar grupos de animadores, renombrarlos (ej. "on", "off", "push out") para mantener el orden y evitar confusiones.
- **No verificar "Continuous Rasterization":** Si los clips de footage no se animan correctamente al entrar/salir, revisar que esta opción esté activada en el precomp.
- **Aplicar animadores al grupo incorrecto:** Al agregar un nuevo animador, asegurarse de que no esté seleccionado otro grupo existente, o se añadirá dentro de ese grupo en lugar de crear uno nuevo.
- **Usar footage comercial sin permiso:** Para proyectos comerciales, usar solo material de dominio público o con licencia adecuada. La instructora menciona la Biblioteca del Congreso como fuente de clips libres de derechos.

===== DESTILADO: sGjODH6e2BM.md =====
# Learn VFX Workflows - After Effects and 3D Tutorial!
**Fuente:** ProductionCrate | https://youtu.be/sGjODH6e2BM

## Qué enseña
Este tutorial enseña el flujo de trabajo completo para crear un efecto de explosión de coche en una toma de acción real, combinando elementos 3D renderizados (Cinema 4D) con assets pre-renderizados de ProductionCrate y técnicas de composición en After Effects. Cubre desde la planificación de la toma hasta la corrección de color final, incluyendo tracking, rotoscopia y matching de color.

## Técnicas accionables
- **Planificación de toma:** Usar un animatic en Cinema 4D para determinar timing y detectar problemas de ángulo de cámara e iluminación antes de filmar.
- **Point tracking con Mocha AE:** Seleccionar la toma, añadir efecto Mocha AE, lanzar el panel, dibujar forma con la herramienta X spline alrededor de un punto de contraste en la carretera, analizar hacia adelante. Al recibir error "tracking terminated prematurely", hacer clic en OK. Salir y presionar Save. Crear un Null Object (Layer > New > Null Object). En Effects Controls del clip, ir a Tracking Data dropdown, hacer clic en Create Track Data, cambiar Export Option de Corner Pin a Transform, Layer Export de None al null creado, hacer clic en Apply. Ir al último frame trackeado, seleccionar el null, presionar U en el teclado para mostrar keyframes, eliminar todos los keyframes posteriores. Usar Page Up y Page Down para avanzar frame a frame y ajustar manualmente la posición del null.
- **Exportar frame como placa de fondo:** Composition > Save Frame As > File. Cambiar output de Photoshop Sequence a PNG. Asignar destino y nombre (ej. "back plate"), hacer clic en Render.
- **Configuración en Cinema 4D:** Presionar Shift + C para abrir búsqueda, escribir "background" y añadir Background object. Crear Classic Material (Create > Classic Materials > New Standard Material), renombrarlo a "BG", en pestaña Color asignar la textura con la placa renderizada. Asignar material al Background object. Crear nueva cámara y activarla. Posicionar la cuadrícula para alinear con la carretera usando Alt + clic izquierdo y clic medio.
- **Importar modelo 3D:** Arrastrar FBX del modelo a la escena. Si se suelta sin Shift, se abre en nuevo proyecto; mantener Shift presionado antes de soltar para añadirlo al proyecto existente.
- **Ajustar escala y posición del coche:** Usar herramienta Scale para escalar el coche. Añadir un plano (Plane primitive), escalarlo y extenderlo en eje Z. Ajustar posición del coche en Y para que las ruedas no atraviesen el suelo. En la vista de cámara, empujar el coche en Z hacia atrás.
- **Sincronizar frame rate:** En After Effects, Composition > Composition Settings, verificar frame rate (23.976). En Cinema 4D, Ctrl + D para Project Settings, cambiar FPS de 30 a 24.
- **Animar el coche en Cinema 4D:** Ir al frame inicial, seleccionar el coche, crear keyframe (clic en diamante junto a X, Y, Z). Ir al frame donde explota (ej. frame 63), mover el coche hacia adelante en la carretera, crear otro keyframe. En el mismo frame 63, crear keyframes para rotación H, P, B. Ir al final del timeline, mover el coche hacia arriba y rotarlo para que salga del cuadro, crear keyframes.
- **Ajustar curvas de animación (F-Curves):** Seleccionar el cuerpo del coche, clic derecho > Show F-Curves. Para la curva de posición Z, seleccionar el keyframe final y arrastrar el handle bezier hacia abajo para que la velocidad sea constante. Para posición Y, seleccionar el keyframe final, mantener Ctrl y arrastrar el handle hacia adentro para que el ascenso sea un golpe rápido.
- **Renderizar desde Cinema 4D:** Activar la cámara. En Render Settings, cambiar Output width/height al mismo tamaño que la composición de AE, Frame Rate a 24, Current Frame a All Frames. En pestaña Save, asignar destino, activar Alpha Channel, elegir formato Open EXR.
- **Importar render en After Effects:** Arrastrar el render a la composición sobre el footage. Presionar Ctrl + Alt + F para ajustar al tamaño del fotograma automáticamente. Usar el pick whip para parentearlo al null del tracking inicial.
- **Corrección de color con Levels:** Añadir efecto Levels. Cambiar visualización a canal Red (clic en botón de canal), ajustar niveles para que coincida con el color de referencia (ej. la sudadera del actor). Repetir para Green y Blue. Volver a RGB.
- **Matching de desenfoque de fondo:** Añadir efecto Camera Lens Blur, ajustar Blur Radius a aproximadamente 3.
- **Corrección de saturación:** Añadir efecto Hue/Saturation, reducir Saturation si el reflejo del cielo no coincide.
- **Rotoscopia con Rotobrush 3:** Duplicar el footage original (Ctrl + D), eliminar Mocha AE del panel de efectos. Solo la capa duplicada. Seleccionar Rotobrush tool en la barra de herramientas, asegurar resolución en Full. Hacer doble clic en el footage para abrirlo. Dibujar formas sobre el actor para seleccionarlo. Para restar selección, mantener Alt (cambia a menos). Avanzar frame a frame corrigiendo la selección. Cuando esté correcto, hacer clic en Freeze (se vuelve color púrpura/azul). Colapsar la capa (clic en flecha), renombrarla a "roto", arrastrarla sobre los renders del coche. Activar "Use Motion Blur" en la capa roto.
- **Añadir explosión:** Importar asset de explosión (ej. Ultimate Explosion 14). Arrastrarlo sobre el render del coche. Ajustar timing para que coincida con el impacto. Activar Motion Blur en el asset. Añadir Levels y ajustar canal por canal referenciando las partes oscuras de la sudadera y las partes brillantes del cielo.
- **Añadir fogonazo (muzzle flash):** Importar Energy Magic Burst. Ajustar timing. Clic derecho > Time > Time Stretch, cambiar a 10%. Cambiar Transfer Mode a Screen. Añadir Hue/Saturation, ajustar Master Hue Rotation a naranja. Añadir CC Radial Fast Blur, Amount a 85. Importar Aerial Smoke Burst, colocarlo debajo del Energy Burst, ajustar timing, parentearlo al null.
- **Crear granada (proyectil):** Ctrl + Y para crear un solid. Usar pick whip para seleccionar un color de sombra del actor. Con la herramienta Circular Mask, dibujar forma oblonga. Cambiar a Rectangular Mask tool y recortar la parte trasera. Parentear al null. Escalar y posicionar cerca del arma en el momento del disparo. Presionar P, luego Shift + R, luego Shift + S para mostrar Position, Rotation y Scale. Crear keyframes. Ir al frame de la explosión, mover el solid a la base del coche, escalar a casi invisible, rotar hacia abajo. Para dar arco a la trayectoria, Ctrl + Alt + clic y arrastrar en el primer keyframe de Position. Activar Motion Blur.
- **Precomponer y añadir cámara shake:** Ctrl + A para seleccionar todo, Ctrl + Shift + C para precomponer. Ir a Window > Production Crate Camera Shake (si está instalado el script). Seleccionar "Jolt". Ir al frame de la explosión, hacer clic en Jolt. Ajustar Amplitude a 1.8, Frequency a 0.6, volver a hacer clic en Jolt.
- **Corrección de color final:** Ctrl + Alt + Y para Adjustment Layer. Añadir efecto Lumetri Color. En Basic Corrections, ajustar Contraste, Temperatura (calentar), Blacks (aplastar), Whites (subir). En Creative, seleccionar LUT (ej. Kodak), Intensity a 50%.
- **Añadir glow a la explosión:** Duplicar la capa precompuesta (Ctrl + D). Añadir efecto Keylight a la copia superior. Ocultar Adjustment Layer. Con el color picker, seleccionar el naranja de la explosión. Cambiar Keylight de Final Result a Combined Matte. En Screen Matte settings, ajustar Clip White y Clip Black hasta que solo se vea el naranja. Añadir efecto Invert. Añadir Production Crate Easy Glow, cambiar preset a Sunset. Cambiar Blend Mode de la capa a Screen. Reactivar Adjustment Layer.

## Reglas para el erudito
- **Usa Mocha AE para point tracking** cuando la cámara no tiene movimiento 3D complejo (solo whip pan), evitando solves de cámara 3D innecesarios.
- **Nunca** uses los keyframes de tracking de Mocha directamente sin eliminar los que fallan después del error "tracking terminated prematurely"; ajústalos manualmente frame a frame con Page Up/Page Down.
- **Usa Ctrl + Alt + F** para escalar un layer al tamaño del fotograma automáticamente en lugar de escalar manualmente.
- **Usa el canal de color de Levels** (Red, Green, Blue por separado) para matching de color, referenciando siempre un elemento de la toma real (ej. la sudadera del actor para sombras, el cielo para altas luces).
- **Usa Camera Lens Blur** con Blur Radius alrededor de 3 para simular desenfoque de fondo cuando la cámara está enfocada en el primer plano.
- **Usa Rotobrush 3** con resolución Full y Freeze al terminar; activa "Use Motion Blur" en la capa roto para suavizar bordes.
- **Usa Time Stretch al 10%** para acelerar assets de energía/explosión que deben ser muy rápidos (muzzle flash).
- **Usa Transfer Mode Screen** para assets de fuego/energía/explosión que deben mezclarse con la toma base.
- **Usa CC Radial Fast Blur con Amount 85** para desenfocar radialmente el fogonazo.
- **Usa el script Production Crate Camera Shake** con modo Jolt (no Shake) para impactos puntuales; valores recomendados: Amplitude 1.8, Frequency 0.6.
- **Usa Keylight + Invert + Easy Glow** para aislar el color naranja de la explosión y añadir glow solo a esa área; blend mode Screen.
- **Usa Ctrl + Alt + clic y arrastrar** en un keyframe de Position para crear un arco en la trayectoria de una capa.

## Errores comunes que evita o menciona
- **No planificar la toma con el asset en mente:** El tutorial enfatiza elegir el asset (ángulo bajo, iluminación soleada) antes de filmar, no después, para que coincida naturalmente.
- **No verificar el ángulo de cámara del asset:** Si el asset está filmado desde un ángulo bajo, no funcionará compuesto en una toma desde un tejado (vista superior).
- **No verificar la iluminación del asset:** El asset debe estar en un entorno brillante y soleado si la toma real también lo está.
- **Usar keyframes de tracking sin eliminar los fallidos:** Mocha da error cuando pierde el track; hay que eliminar los keyframes posteriores y ajustar manualmente.
- **No ajustar las curvas de animación (F-Curves) en 3D:** El movimiento por defecto tiene demasiado ease; hay que aplanar las curvas para que la explosión sea un golpe seco, no flotante.
- **No escalar el asset correctamente:** Tanto el coche 3D como el asset pre-renderizado pueden parecer "coche de payaso" si no se escalan adecuadamente.
- **No hacer matching de color canal por canal:** Ajustar solo RGB global no es suficiente; hay que ajustar Red, Green y Blue individualmente en Levels.
- **No añadir desenfoque de fondo:** Si la cámara real está enfocada en el actor, el asset debe tener desenfoque (Camera Lens Blur) para integrarse.
- **No corregir la saturación del reflejo del cielo:** El asset puede reflejar un cielo de color diferente al de la toma real; hay que reducir la saturación con Hue/Saturation.
- **No usar Freeze en Rotobrush:** Si no se congela, el rotobrush sigue actualizándose en segundo plano y ralentiza el rendimiento.
- **No activar Motion Blur en la capa roto:** Sin él, los bordes del rotoscopio pueden verse duros al moverse.
- **No precomponer antes de añadir camera shake:** El shake debe aplicarse a todo el composite, no a capas individuales.
- **No usar el modo Jolt en lugar de Shake:** Shake afecta toda la línea de tiempo; Jolt solo el momento del impacto.

===== DESTILADO: sfkaCESPE5c.md =====
# Start Compositing in After Effects - Full Tutorial!
**Fuente:** ProductionCrate | https://youtu.be/sfkaCESPE5c

## Qué enseña (2-3 líneas)
Este tutorial enseña cómo combinar múltiples elementos de stock (explosiones, ondas de choque, polvo, escombros) con técnicas de composición en After Effects para crear una toma de explosión realista. Cubre tracking de cámara, rotoscopia básica, corrección de color, creación de ondas de choque con sólidos y máscaras, y la integración de capas para lograr un efecto orgánico.

## Técnicas accionables

- **Trackeo de movimiento:** Seleccionar footage → Ventana Tracker → Track Motion → Elegir punto de alto contraste (punta de un árbol) → Analyze Forward → Layer > New > Null Object → Edit Target (seleccionar null) → Apply (X e Y) → El null ahora contiene los datos de movimiento.
- **Parenting con Pick Whip:** Arrastrar el Pick Whip (espiral) desde la capa del asset hasta el null object para fijarlo al fondo trackeado.
- **Aplicar efectos con FX Console (Video Copilot, gratuito):** Presionar `Control + Espacio` → escribir nombre del efecto (ej. "Curves") → Enter.
- **Curves para igualar color:** Efecto Curves → Arrastrar punto inferior hacia arriba para reducir contraste → Canal Red: subir para tonos cálidos → Canal Blue: bajar para quitar azul.
- **Rotobrush para separar actor:** Duplicar footage (`Ctrl + D`) → Colocar copia encima de explosiones → Herramienta Rotobrush → Dibujar líneas verdes para seleccionar actor → `Alt` para restar selección → Espacio para previsualizar → Botón Freeze para bloquear selección (se vuelve color azul-púrpura).
- **Intercambiar clips manteniendo propiedades:** Duplicar capa (`Ctrl + D`) → Arrastrar nuevo clip desde Project Panel sobre la capa duplicada mientras se presiona `Alt` → Se reemplaza el clip conservando parenting y efectos.
- **Máscara rectangular para ocultar bordes:** Herramienta Rectangular Mask → Dibujar máscara → Cambiar Mask de Add a Subtract → Presionar `F` para Feather → Ajustar suavizado.
- **Tritone para igualar color de suelo:** Efecto Tritone → Eyedropper en Mid-tone Color → Seleccionar color oscuro del suelo → Ajustar manualmente.
- **Time Remapping para extender duración:** Seleccionar capas → Click derecho > Time > Enable Time Remapping → Arrastrar keyframes finales más allá del final del timeline → Arrastrar borde de clips hacia afuera.
- **Time Stretch para cámara lenta:** Click derecho > Time > Time Stretch → Setear a 200 (duplica duración) → Activar Frame Interpolation (clic dos veces en checkbox vacío hasta que aparezca flecha).
- **Fast Box Blur:** Efecto Fast Box Blur → Blur Radius: 25.
- **Crear onda de choque con sólido:** `Ctrl + Y` → Color blanco → Escalar más grande que composición → Herramienta Ellipse Mask → `Ctrl + Shift` para círculo perfecto desde el centro → Presionar `MM` para propiedades de máscara → Mask Expansion: keyframe en 0 al inicio → keyframe en valor grande 10-15 frames después → Duplicar máscara (`Ctrl + D`) → Segunda máscara en Subtract → Desplazar keyframes para crear anillo → Máscara rectangular en Subtract para recortar horizonte → Feather ~100 píxeles → Opacidad ~20%.
- **Script Camera Shake (ProductionCrate):** File > Scripts > Run Script File → Seleccionar script → Elegir "Jolt" en lugar de Shake → Jolt number 2 → Amplitude ~3.5 → Frequency ~0.7 → Skip Keys: 2 → Desactivar Auto Scale → Jolt.
- **Motion Tile para bordes negros:** Efecto Motion Tile → Activar Mirror Edges → Output Width: 150 → Output Height: 150.
- **Glow aislado con Keylight:** Duplicar pre-comp → Aplicar Keylight → Screen Color: seleccionar naranja de explosión → Abrir Screen Matte → Ajustar settings para aislar naranja → Fast Box Blur (Blur Radius: 100) → Tint → White Color: naranja/rojo → Modo de transferencia: Screen.
- **Ajuste de color final:** Adjustment Layer → Curves → Bajar midtones, subir highlights → Canal Blue: subir en sombras, bajar en altos y medios → Canal Red: bajar en sombras, subir en medios → Efecto Vignette (Amount reducido) → Levels para contraste fino → Hue/Saturation: Channel Control > Reds → Hue Angle: +5°, Saturación: reducir.

## Reglas para el erudito (imperativas y verificables)

- **Usa FX Console (Control + Espacio)** para buscar y aplicar efectos rápidamente; si no lo tienes, busca manualmente en Effects & Presets.
- **Parentea todos los assets al null del trackeo** para que sigan el movimiento de cámara.
- **Usa Curves en cada asset** para igualar contraste y temperatura de color con el fondo.
- **Aplica Time Remapping a capas de polvo/dirt** que se acortan para que duren hasta el final de la composición.
- **Usa Frame Interpolation (flecha en checkbox)** en clips con Time Stretch para evitar stuttering.
- **Aplica Motion Tile con Mirror Edges** cuando el camera shake deje bordes negros; ajusta Output Width/Height a ~150.
- **Aísla el glow con Keylight + Screen mode** para no afectar cielo ni suelo.
- **Nunca uses un solo asset de explosión**; combina múltiples capas (explosión base, dirt, shockwave, polvo, humo residual) para realismo.
- **Valor por defecto recomendado:** Feather en máscaras ~100 píxeles; Opacidad de onda de choque ~20%; Blur Radius en Fast Box Blur ~25 para after-shock.

## Errores comunes que evita o menciona

- **No olvidar parentear los assets al null** después de trackear, o no seguirán el movimiento de cámara.
- **No dejar bordes duros en explosiones de suelo**; usar múltiples capas de dirt y polvo con máscaras subtractivas y feather para bordes orgánicos.
- **No aplicar glow directamente a toda la imagen** porque afecta cielo y suelo; aislar el naranja de la explosión con Keylight y usar modo Screen.
- **No escalar la imagen para cubrir bordes negros** del camera shake (pierdes footage trabajado); usar Motion Tile con Mirror Edges.
- **No olvidar congelar (Freeze) el Rotobrush** después de la selección para que no siga actualizando.
- **No dejar que los clips de polvo se acorten**; usar Time Remapping para extenderlos hasta el final.

===== DESTILADO: u4Y84MBFM-Q.md =====
# Kinetic Typography Motion Posters
**Fuente:** Nawaz Alamgir | https://youtu.be/u4Y84MBFM-Q

## Qué enseña
Desglose de 30 proyectos de kinetic typography en After Effects, mostrando cómo se construyen efectos de texto animado populares. Explica el uso de text animators, time displacement, CC effects, expressions y técnicas de 3D para crear motion posters tipográficos.

## Técnicas accionables
- **Text Animator con offset:** Seleccionar capa de texto → Añadir "Text" > "Animator" → Agregar "Position" → Cambiar "Shape" a "Ramp" → Animar el parámetro "Offset" para que el texto aparezca y desaparezca en cascada.
- **Silueta sin máscara:** Usar una capa shape con modo "Silhouette Alpha" sobre el texto para ocultar superposiciones sin emplear máscaras tradicionales.
- **Time Displacement con ramp:** Crear un adjustment layer con efecto "Time Displacement" → Configurar "Time Displacement (sec)" en -0.4 → Usar como mapa de desplazamiento una capa con "Gradient Ramp" + "Posterize" (valor 10) + "Colorama" con "Cycle Repetitions" en 11.
- **CC Mercury para gotas:** Aplicar efecto "CC Mercury" a una capa de texto → Ajustar settings: tamaño de gotas, cantidad, etc. → Añadir "Levels" para controlar contraste → Fondo con black solid.
- **Echo effect en texto duplicado:** Duplicar capa de texto → En la copia aplicar "Echo" → Configurar "Echo Time (seconds)" y "Number Of Echoes" → "Composite Echo" en "In Front" o "Composite On Original" según se desee.
- **CC RepeTile + CC Cylinder:** Aplicar "CC RepeTile" a la capa de texto para repetirla → Luego aplicar "CC Cylinder" → Ajustar "Radius" y "Rotation" → Añadir expresión a "Rotation Y": `time * X` (donde X es velocidad deseada).
- **Expresión de delay entre capas:** En la propiedad "Rotation" de una capa, usar: `thisComp.layer(index - 1).transform.rotation.valueAtTime(time - delay)` donde `delay = framesToTime(X)` (X = número de frames de retardo).
- **Fractal Noise para fondos abstractos:** Aplicar "Fractal Noise" → Configurar settings → Añadir "Levels" para binarizar a dos colores → "Set Matte" usando la misma capa para eliminar negro → "Fill" con color → "Bevel Alpha" + "Drop Shadow".
- **CC Glass para distorsión:** Aplicar "CC Glass" sobre capa de texto → Usar como mapa de desplazamiento una capa de ruido o blobs → Duplicar y aplicar otro "CC Glass" para distorsión adicional.
- **Per-Character 3D:** Activar "Per-Character 3D" en la capa de texto → Rotar y posicionar cada carácter individualmente → Animar "Y Rotation" del texto para efecto 3D.
- **Offset para efecto espejo:** Usar "Offset" en capa con animación de posición sinusoidal → Combinar con "Composite Echo" en "In Front" para crear ondas repetitivas.

## Reglas para el erudito
- Usa "Shape" en "Ramp" dentro del Text Animator cuando quieras que el texto aparezca/desaparezca de forma progresiva y suave.
- Cuando uses "Time Displacement", el mapa debe ser una capa con "Gradient Ramp" + "Posterize" para obtener el efecto escalonado (slit scan).
- Para "Echo", configura siempre "Composite Echo" en "In Front" (no el default "On Original") para que los ecos se superpongan correctamente.
- En "CC Mercury", copia exactamente los settings modificados del tutorial (no usar defaults) para lograr el efecto de gotas.
- En "CC Cylinder", mantén el valor de "Radius" en 100 como base y ajusta desde ahí.
- Para el efecto de delay entre capas, usa siempre `valueAtTime(time - delay)` con `delay = framesToTime(X)` donde X es el número de frames de retardo.
- Cuando uses "Collapse Transformations" en pre-comps 3D, actívalo para que las transformaciones 3D de los comps anidados se hereden correctamente.
- Para el efecto de "pushing text" (escala con anchor point), el anchor point debe estar en el lado izquierdo para la capa que escala de 100 a 0, y en el derecho para la que escala de 0 a 100.

## Errores comunes que evita o menciona
- No usar máscaras cuando se puede lograr el mismo resultado con una capa shape en modo "Silhouette Alpha", que es más eficiente y fácil de editar.
- Olvidar que al cambiar texto en proyectos con múltiples capas duplicadas, After Effects no actualiza automáticamente el tamaño, kerning ni estilo del texto; hay que ajustarlo manualmente en cada capa.
- No ajustar los puntos de inicio y fin (in/out points) para crear loops perfectos: el primer frame debe comenzar ligeramente antes del inicio real de la animación para que el loop sea continuo.
- Usar "Echo" con valores por defecto sin cambiar "Composite Echo" a "In Front", lo que produce un resultado visual incorrecto.
- No considerar el rendimiento al duplicar efectos "Echo" sobre capas que ya tienen "Echo" (echo del echo), lo que puede ralentizar máquinas lentas.
- No usar "Collapse Transformations" en pre-comps 3D apiladas, perdiendo así la profundidad 3D del diseño.

===== DESTILADO: vJ8X58uknsk.md =====
# 5 Essential Techniques for Compositing in After Effects
**Fuente:** Adobe Video | https://youtu.be/vJ8X58uknsk

## Qué enseña
Cinco técnicas prácticas para mejorar la integración de elementos visuales en una composición en After Effects, enfocadas en corrección de color, iluminación, niveles de negro, máscaras con pluma variable y supresión de derrame de color. El tutorial cubre desde la planificación previa al rodaje hasta ajustes finales como la adición de grano.

## Técnicas accionables
- **Corrección de color por canales:** Haz clic en el icono rojo-verde-azul debajo de la ventana de previsualización para ver el metraje en canales separados (rojo, verde, azul). Aplica el efecto **Curves** (Efecto > Ajuste de color > Curvas). Cambia el canal del efecto Curves al canal de color correspondiente al que estás visualizando en la ventana de composición. Ajusta la curva de ese canal para que coincida con el fondo. Repite para cada canal. Al volver a modo RGB, el elemento del frente coincidirá mejor con el entorno.
- **Ajuste de niveles de negro con Lumetri Scopes:** Ve a **Window > Lumetri Scopes** para visualizar los niveles de negro de tu composición. Usa el efecto **Curves** para ajustar los niveles de negro del elemento de primer plano hasta que coincidan con los del fondo, guiándote por los scopes.
- **Pluma variable en máscaras:** Después de crear una máscara con la herramienta Pluma (Pen Tool, atajo **G**), mantén presionado el icono de la herramienta Pluma en la barra de herramientas y selecciona **Mask Feather Tool** (herramienta de pluma de máscara). Haz clic y arrastra sobre diferentes puntos del borde de la máscara para añadir gradientes de pluma (feathering) variables en áreas específicas, ajustando la suavidad del borde de forma no uniforme.
- **Supresión de derrame de color:** Ve a **Effect > Keying > Advanced Spill Suppressor**. Mantén el método en **Standard** si funciona, o cámbialo a **Ultra**. Selecciona el color de fondo original (key color) en el selector de color del efecto para eliminar el derrame de ese color sobre el elemento de primer plano.
- **Adición de grano final:** Aplica un efecto de grano (por ejemplo, **Effect > Noise & Grain > Add Grain**) para unificar visualmente todos los elementos de la composición.

## Reglas para el erudito (imperativas y verificables)
- Usa la visualización por canales de color (icono RGB debajo de la previsualización) solo cuando el canal de Curves coincida exactamente con el canal que estás viendo en la ventana de composición.
- Planifica la dirección de la luz del fondo antes de rodar el elemento de primer plano; si el fondo tiene luces cenitales, el sujeto no debe estar iluminado desde abajo.
- Ajusta los niveles de negro con Curves usando Lumetri Scopes como guía visual; niveles de negro inconsistentes son una señal reveladora de que los elementos pertenecen a mundos diferentes.
- Usa la Mask Feather Tool para bordes con pluma variable solo después de tener la máscara creada con la herramienta Pluma; no es aplicable a máscaras creadas con formas geométricas.
- En Advanced Spill Suppressor, prueba primero el método **Standard**; si no funciona, cambia a **Ultra** y selecciona el key color exacto del fondo.

## Errores comunes que evita o menciona
- **Iluminación incompatible:** Si el fondo tiene luces desde arriba pero el sujeto está iluminado desde abajo, la composición se sentirá desconectada sin importar los ajustes. El video enfatiza que esto debe planificarse antes de rodar.
- **Niveles de negro inconsistentes:** Pueden hacer que la composición se sienta "apagada" o extraña sin que se pueda identificar la causa a simple vista. El uso de Lumetri Scopes ayuda a diagnosticar y corregir este problema.
- **Pluma uniforme en bordes mixtos:** Usar la herramienta Pluma normal para máscaras con bordes duros y suaves produce un difuminado inconsistente. La Mask Feather Tool permite aplicar pluma variable para igualar bordes de diferente naturaleza.

===== DESTILADO: whFa347JtDE.md =====
# 10 Ways to Get Faster in After Effects
**Fuente:** Ben Marriott | https://youtu.be/whFa347JtDE

## Qué enseña
El video presenta diez consejos prácticos para optimizar el flujo de trabajo en After Effects, abarcando desde mejoras de hardware y plugins hasta organización de proyectos, atajos de teclado y configuración de auto-guardado. El objetivo es reducir tiempos de renderizado, navegación y edición repetitiva.

## Técnicas accionables
- **Hardware:** Priorizar un buen CPU (múltiples núcleos no ayudan tanto); más RAM permite más RAM previews pero no acelera el render final; usar SSD para todos los archivos.
- **Plugins recomendados:**
  - **FX Console** (gratuito): permite buscar efectos con un atajo de teclado, guardar favoritos, guardar imágenes y copiar la composición al portapapeles para pegarla en otro software.
  - **Ease Copy** (gratuito): copia la influencia de easing de múltiples keyframes y la pega en otros keyframes.
  - **K Bar**: guarda tareas frecuentes en una barra de herramientas personalizada.
  - **Labels**: cambia el color de cualquier capa con un solo clic.
  - **Overlord**: copia y pega elementos vectoriales de Illustrator a After Effects rápidamente.
- **Eliminar pantalla de inicio:** Ir a *Edit > Preferences > General* y desmarcar *Enable Home screen*.
- **Pre-renderizar:** Renderizar un elemento complejo (ej. fondo con Wave Warp) como archivo de video, reimportarlo y usarlo en lugar de mantener todas las capas y efectos activos. Para el render final, se puede desactivar la capa pre-renderizada y renderizar de nuevo para máxima calidad.
- **Organización del proyecto:** Crear carpetas como "Assets" y "Comps" con subcarpetas específicas. Usar una plantilla de proyecto en blanco que se cargue automáticamente al abrir After Effects: *Edit > Preferences > New Project*, marcar *New project loads template*, elegir el archivo .aep de plantilla.
- **Mini Flowchart:** Atajo de teclado: **` (tecla de acento grave)**. Muestra un diagrama con la composición actual, las composiciones donde aparece (a la izquierda) y las composiciones internas (a la derecha). Hacer clic en una comp para abrirla; la línea azul indica la comp de origen.
- **Configurar espacios de trabajo:** Usar espacios de trabajo predeterminados (Motion Tracking, Color) o crear uno propio: *Window > Workspace > Save as New Workspace*. Ejemplo: "Marriott one screen" para uso diario, "Marriott record" para tutoriales.
- **Plantillas de render:** Ir a *Composition > Add to Render Queue*, personalizar ajustes, hacer clic en la flecha desplegable junto a *Render Settings* o *Output Module*, seleccionar *Make Template*. Ejemplos de plantillas: PNG sequence, ProRes 422, H.264 al 70% de calidad.
- **Atajos de teclado:** Ir a *Edit > Keyboard Shortcuts*. Aprender al menos uno nuevo por semana. Ejemplo: **Command + Shift + D** para dividir capas.
- **Auto-guardado:** Ir a *Edit > Preferences > Auto-Save*. Cambiar el intervalo de 20 minutos (predeterminado) a 5-10 minutos. Aumentar *Maximum Project Versions* de 5 a 15.

## Reglas para el erudito (imperativas y verificables)
- **Usa FX Console** cuando necesites buscar efectos rápidamente o guardar imágenes de composiciones.
- **Usa Ease Copy** cuando quieras copiar el easing de varios keyframes y aplicarlo a otros.
- **Usa Overlord** cuando transfieras vectores desde Illustrator a After Effects.
- **Usa el Mini Flowchart** (tecla **`**) para navegar entre composiciones anidadas sin buscarlas en el panel de proyecto.
- **Configura el auto-guardado** entre 5 y 10 minutos, con máximo de 15 versiones, para evitar pérdidas de trabajo.
- **Nunca diseñes y animes al mismo tiempo en After Effects**: diseña primero en Illustrator o Photoshop, luego anima en AE.
- **Pre-renderiza** elementos complejos que no cambiarán (ej. fondos con Wave Warp) para acelerar RAM previews.
- **Crea plantillas de render** para formatos que uses más de dos veces (PNG sequence, ProRes 422, H.264 al 70%).
- **Elimina la pantalla de inicio** desmarcando *Enable Home screen* en Preferencias Generales.

## Errores comunes que evita o menciona
- **No gastar en GPU de gama alta** si no es necesario, pues no mejora tanto el rendimiento como un buen CPU.
- **No mantener la pantalla de inicio activa**, ya que casi nadie la usa y retrasa la apertura del programa.
- **No diseñar y animar simultáneamente en After Effects**, porque ralentiza ambos procesos y da resultados comprometidos.
- **No dejar el auto-guardado en 20 minutos** (valor por defecto), ya que es mucho tiempo para perder trabajo; reducirlo a 5-10 minutos.
- **No usar múltiples capas con efectos pesados** sin pre-renderizar, ya que consumen recursos innecesariamente durante la edición.

===== DESTILADO: xMUn0LZp21o.md =====
# 5 Techniques for High-End Motion Design (After Effects)
**Fuente:** Stephan Zammit | https://youtu.be/xMUn0LZp21o

## Qué enseña (2-3 líneas)
El tutorial desglosa cinco flujos de trabajo profesionales para motion design de alto nivel en After Effects, enfocados en transiciones invisibles, uso estratégico de 3D, interacción entre elementos y tipografía táctil. Cada técnica está diseñada para integrarse como capas de un sistema profesional que eleva la calidad final del proyecto.

## Técnicas accionables

- **Continuous Flow (Flujo Continuo):**
  - Seleccionar todas las capas de fotos, cambiar a 3D (activar casilla de cubo 3D en cada capa).
  - Ir a `Layer > Transform > Auto-Orient` y seleccionar `Orient Towards Camera`.
  - Animar la rotación del null padre (tecla `R` para abrir rotación) en cualquier eje (Y, X, Z); las fotos se mantienen siempre rectas hacia la cámara.

- **Kinetic Cut (Corte Cinético):**
  - Crear un nuevo null (`Layer > New > Null Object`).
  - Parentar ambas capas (fotos o textos) al null.
  - Animar una propiedad de transformación del null (ej: Scale de 100% a 200%, o Position, Rotation).
  - Seleccionar ambos keyframes en el `Graph Editor`, presionar `F9` para aplicar Easy Ease.
  - Ajustar los manejadores de la curva de velocidad: arrastrar el manejador inicial hacia arriba (aceleración lenta → rápida) y el manejador final hacia abajo (desaceleración rápida → lenta). El pico de velocidad debe coincidir con el punto de transición entre capas.
  - Aplicar la misma curva a múltiples propiedades (posición, rotación) en diferentes elementos para transiciones compuestas.

- **Strategic 3D (3D Estratégico):**
  - Convertir una imagen 2D a 3D usando Meshify (web app): arrastrar imagen, generar modelo 3D, texturizar con la misma foto, descargar en formato GLB.
  - En After Effects, arrastrar el archivo GLB a la composición, escalar y rotar para que coincida con la foto original.
  - Agregar luces: `Layer > New > Light` → Environment Light (intensidad 200), luego Spot Light (ajustar posición, intensidad y `Falloff Distance` para controlar el haz).
  - Para aplicar efectos (ej: Curves) al modelo 3D: `Layer > Create > Create 3D Layer Instance`, luego arrastrar el efecto sobre esa capa instancia.
  - Animar rotación del modelo 3D con keyframes, aplicar `F9` y curva de velocidad (inicio rápido, final lento) en el Graph Editor.

- **Reactive Environments (Entornos Reactivos):**
  - Convertir una capa (ej: puntero) en capa de ajuste: hacer clic en el botón de ajuste (switch de Adjustment Layer) en la línea de tiempo.
  - Aplicar efecto `Invert` a la capa de ajuste para que el puntero cambie de color según el fondo.
  - Para interacción múltiple: aplicar efecto `Tint` a cada foto. En `Amount to Tint`, usar el preset MoGraph Pro Effector (disponible en descripción del video).
  - Nombrar la capa del puntero como "effector" (exactamente así). Seleccionar la capa effector, ir a `Effects & Presets`, buscar `MoGraph Pro effector`, hacer doble clic.
  - Presionar `U` + `U` para abrir atributos. En `Amount to Tint`, agregar `MoGraph Special Property 1` (desde el effector). Copiar y pegar el efecto Tint en todas las fotos.
  - Ajustar en el effector: `Affected Properties > Special Properties > Property 1` a 0 (valor inicial). Aumentar `Radius Strength` para controlar el área de influencia.

- **Tactile Typography (Tipografía Táctil):**
  - Usar una fuente variable (ej: Drummond Variable desde Adobe Typekit).
  - Seleccionar la capa de texto, ir a `Animate > Variable Font Axis > Weight`.
  - En el nuevo animador `Font Axis Weight`, ajustar el valor de peso (ej: 700 para grosor máximo).
  - Usar el `Range Selector`: animar `Offset` de 0 a 100 para revelar el texto progresivamente.
  - En `Advanced` del Range Selector: reducir `Smoothness` para un cambio más abrupto, activar `Randomize Order` para que los caracteres cambien aleatoriamente.

## Reglas para el erudito (imperativas y verificables)

- Usa `Auto-Orient > Orient Towards Camera` solo cuando las capas estén en 3D y parentadas a un null rotatorio; no aplicar a capas 2D.
- En el Kinetic Cut, el pico de velocidad en el Graph Editor debe coincidir exactamente con el frame de la transición entre capas; usa `F9` antes de ajustar manejadores.
- Para Strategic 3D, nunca arrastres efectos directamente sobre un modelo 3D nativo; siempre crea primero una `3D Layer Instance`.
- En Reactive Environments, la capa effector debe llamarse exactamente "effector" (minúsculas) para que el preset funcione.
- Para Tactile Typography, la fuente debe ser variable obligatoriamente; si no lo es, el animador `Variable Font Axis` no aparecerá.
- Valores por defecto recomendados: Environment Light intensity = 200; MoGraph Special Property 1 inicial = 0; Font Axis Weight = 700 para grosor máximo.

## Errores comunes que evita o menciona

- No parentar fotos a un null sin activar 3D y Auto-Orient: las imágenes rotarán torcidas en lugar de mantenerse rectas hacia la cámara.
- No colocar la transición en el pico de velocidad del Kinetic Cut: el corte se notará visualmente; la velocidad alta oculta el cambio.
- No ajustar el `Falloff Distance` en Spot Lights: la luz no se proyectará correctamente sobre el modelo 3D.
- No nombrar la capa effector como "effector": el preset MoGraph no reconocerá la capa y no aplicará la interacción.
- Usar fuentes no variables para Tactile Typography: el animador `Variable Font Axis` no estará disponible en el menú.

===== DESTILADO: yxncS9gVDYI.md =====
# Advanced Electric FX Tutorial! 100% After Effects!
**Fuente:** Video Copilot | https://youtu.be/yxncS9gVDYI

## Qué enseña
Creación de efectos de electricidad avanzados en After Effects 100% nativos, incluyendo rayos que interactúan con superficies, reflejos especulares y difusos procedurales, efecto de dispersión subsuperficial en nubes, y electricidad direccional controlada. Todo el flujo de trabajo usa efectos nativos de AE sin plugins externos (excepto Element 3D para una demostración opcional).

## Técnicas accionables
- **Configuración inicial:** Mantén presionado **Alt** y haz clic en el indicador de profundidad de bits en la parte inferior del panel de composición para ciclar entre 8, 16 y 32 bits por canal. Usa **32 bpc** para trabajar con efectos brillantes y glowing.
- **Aplicar efecto Advanced Lightning:** Crea un sólido, nómbralo "lightning hit". Aplica **Advanced Lightning** desde Effects & Presets. Alternativamente, usa **Effects Console** (herramienta gratuita de Video Copilot) presionando **Ctrl+Space**, escribe "lightning" y presiona Enter.
- **Ajustes del rayo:** En el efecto Advanced Lightning, ve a **Glow Settings** y baja **Opacity** a 0 (se creará un glow propio después). Aumenta **Core Radius** a aproximadamente 3. Usa la herramienta **Rectangle Mask** para dibujar una forma en la parte inferior del sólido. Activa **Alpha Obstacle** y súbelo para que el rayo toque el borde de la máscara.
- **Ocultar controles de máscara:** Presiona **Ctrl+Shift+H** para ocultar los controles de máscara.
- **Ajuste de terminación:** En **Expert Settings**, baja **Termination Threshold** a 5% para cortar puntos que se estiran fuera del borde de la capa.
- **Variación de grosor:** Activa **Decay** > **Decay Main Core** para variar el grosor del rayo.
- **Forking y Turbulence:** Ajusta **Forking** y **Turbulence** (bajarlo hace el rayo más recto, subirlo lo vuelve más complejo). Activa **Branching** para ramificaciones.
- **Animación del Core Radius con expresión:** Alt+clic en el cronómetro de **Core Radius**. Escribe la expresión: `wiggle(7, 3)` (7 veces por segundo, variación de 3 unidades).
- **Animación de Conductivity con expresión:** Alt+clic en el cronómetro de **Conductivity**. Escribe: `time*4*2` (multiplica tiempo por 4 y luego por 2 para animación continua).
- **Precomponer el rayo:** Selecciona la capa, ve a **Layer > Pre-compose**, elige **Move all attributes**, nómbralo "lightning comp".
- **Cambiar color del rayo:** Dentro de la precomposición, cambia **Core Color** a azul o el color deseado. Presiona **Tab** y luego flecha izquierda para volver a la comp principal.
- **Crear reflejo especular:** Duplica la capa del rayo (**Ctrl+D** o **Edit > Duplicate**). Solo esa capa. Aplica **Linear Wipe**. Pon **Wipe Angle** a 180. Mantén **Ctrl** mientras ajustas **Transition Completion** para mover lentamente y aislar solo la parte inferior del rayo (el punto de contacto).
- **Desenfoque del reflejo:** Aplica **Fast Box Blur** (horizontal). Aumenta **Blur Radius**. Aplica un segundo **Fast Box Blur** (vertical). Aumenta su radio.
- **Mantener visibilidad del blur:** Aplica **Solid Composite** (efecto), configúralo en color **Black** para que el blur no desaparezca sobre fondo transparente.
- **Aumentar brillo del reflejo:** Aplica **Exposure**. Sube **Exposure** para hacerlo muy brillante (aprovechando 32 bpc).
- **Recortar parte superior del blur:** Aplica otro **Linear Wipe**, ángulo 180, baja **Transition Completion** y sube **Feather** para dar dimensión.
- **Texturizar el reflejo:** Importa una textura grunge. Hazla capa 3D, gírala y escálala para alinearla con la superficie. Precompón la textura (Layer > Pre-compose, Move all attributes, nómbrala "ground texture"). En la capa del reflejo especular, cambia el modo de transferencia a **Luma Matte** (usando el menú desplegable de modos de fusión, con los switches de modos visibles).
- **Crear reflejo difuso:** Duplica el par (reflejo especular + textura). En la copia inferior, aumenta los blurs (horizontal y vertical) y baja **Exposure** para crear un área de luz más suave y difusa alrededor del contacto.
- **Crear punto caliente de contacto:** Duplica el reflejo especular nuevamente (**Ctrl+D**). Nómbralo "point". Mantén los blurs muy pequeños, baja **Exposure** para controlar intensidad. Ajusta opacidad de las capas para mezclar.
- **Añadir glow al rayo principal:** Selecciona la capa "lightning comp", cámbiala a modo **Additive**. Aplica **Solid Composite** (color black). Aplica **Glow**: baja **Threshold** a 0, **Intensity** muy baja, **Radius** a 25-30. Duplica el Glow (**Ctrl+D**), aumenta **Radius** a ~100. Duplica una tercera vez. Apila los tres glows.
- **Potenciar el glow:** Aplica **Exposure** después de los glows. Aumenta **Exposure** para intensificar.
- **Control de saturación:** Aplica **Hue/Saturation** antes del Exposure. Baja **Saturation** ligeramente.
- **Desplazamiento turbulento en el rayo:** Aplica **Turbulent Displace** antes del glow. Pon **Displacement** a **Horizontal Displacement**. Baja **Size** a 2, sube **Complexity** a 2-3, aumenta **Amount** ligeramente para crear irregularidad.
- **Vector Blur en el rayo:** Aplica **Vector Blur** después del Turbulent Displace. Pon **Amount** a 3-4, sube **Ridge** un poco. Experimenta con el orden de los efectos (antes/después de Exposure).
- **Flicker aleatorio con expresión:** En el efecto **Exposure**, Alt+clic en el cronómetro de **Exposure**. Escribe: `wiggle(9, 3)` (9 veces por segundo, variación de 3).
- **Reflejo interactivo con material de origen:** Dentro de la precomposición "ground texture", pega una copia del footage de calle original (**Ctrl+V**). Cambia su modo de transferencia a **Soft Light**. Aplica **Exposure** para controlar la intensidad de la interacción.
- **Electricidad direccional (reverse gravity):** Crea un nuevo sólido más alto de lo normal (ej. 2048 píxeles de altura). Aplica **Advanced Lightning**, Glow Opacity a 0. Ajusta posición (**P**), origen y dirección del rayo. Crea una máscara en la misma posición que el corte del reflejo. Activa **Alpha Obstacle**. Anima: keyframe para **Position**, **Origin**, **Direction** y **Mask Path**. Mueve la capa hacia abajo y reajusta los valores para que el rayo viaje verticalmente.
- **Invertir dirección de la electricidad:** Selecciona los keyframes, ve a **Animation > Keyframe Assistant > Reverse Keyframes**.
- **Efecto de dispersión subsuperficial en nubes:** Crea un sólido "light", aplica **Advanced Lightning**, elige tipo **Omni Lightning**. Anima **Conductivity State** con keyframes. Añade expresión `wiggle(8, 6)` a **Core Radius** para parpadeo. Baja **Turbulence** y **Decay**. Aplica **Solid Composite** (black). Precompón como "light comp".
- **Desenfocar y recomponer la luz:** Sobre "light comp", aplica **Fast Box Blur** con radio grande. Aplica **Exposure** para recuperar brillo. Aplica **CC Composite** en modo **Additive** para recomponer detalle. Repite: otro Box Blur suave, otro Exposure, otro CC Composite Additive.
- **Máscara de nubes:** Duplica el footage de humo varias veces, ponlos en modo **Lighten**. Rota (**W**), escala, distribuye para llenar la pantalla dejando áreas oscuras. Precompón todos como "smoke mask". Dentro, crea una capa de ajuste con **Curves**.
- **Ocluir luz con textura:** En "light comp", aplica **Set Matte**. Selecciona "smoke mask" como fuente. Cambia **Matte** de Alpha a **Luminance**. Activa **Invert Matte**. Pon la capa en modo **Additive**.
- **Ajuste de canal alfa:** Aplica **Curves** y cambia el canal a **Alpha**. Aplica **Solid Composite** (black). Ajusta con **Exposure** o **Curves** para color correction.
- **Animación de nubes:** Selecciona todas las capas de humo, ve al inicio, keyframe de **Rotation**. Ve al final, cambia rotación ligeramente.
- **Electricidad interactiva con texto 3D (Element 3D opcional):** Crea un sólido "lightning". Aplica **Advanced Lightning**. Aplica **Set Matte**, selecciona la capa del texto 3D como fuente (toma su canal Alpha). Sube **Alpha Obstacle** en Advanced Lightning. Aplica **Channel Blur** antes del rayo para difuminar el borde y suavizar la interacción.
- **Multi-object en Element 3D:** En el panel de Element, activa **Multi Object** para cada grupo. Esto permite animar piezas individuales del texto 3D (rotación Y, etc.).

## Reglas para el erudito
- **Usa 32 bits por canal** cuando trabajes con efectos brillantes, glowing o exposiciones extremas para tener más flexibilidad y precisión de color.
- **Nunca uses el glow integrado de Advanced Lightning** (pon Opacity a 0). Crea tu propio glow apilando múltiples efectos Glow con Exposure para un resultado más suave y controlable.
- **Usa Solid Composite (color black)** después de blurs sobre fondos transparentes para que el blur no desaparezca al desenfocar.
- **Usa Luma Matte** para texturizar reflejos especulares con la textura del suelo, en lugar de mezclar manualmente.
- **Usa Set Matte con Luminance** para ocluir luces con texturas de humo/nubes, invirtiendo el matte para crear efecto de dispersión subsuperficial.
- **Usa la expresión `wiggle(frecuencia, amplitud)`** para animar Core Radius y Exposure (flicker). Usa `time*valor` para animar Conductivity continuamente.
- **Precompón capas renderizadas** (como texto 3D de Element) antes de añadir efectos de electricidad para que After Effects gestione el renderizado y no tenga que recalcular cada fotograma.
- **Usa Channel Blur antes de Advanced Lightning** cuando quieras que el rayo interactúe suavemente con bordes difuminados de un logo o texto.

## Errores comunes que evita o menciona
- **No olvides activar Alpha Obstacle** en Advanced Lightning para que el rayo interactúe con los bordes de la máscara o el canal alfa de otra capa.
- **No uses un solo blur grande** para el glow; apila múltiples glows con diferentes radios para un resultado más suave y realista.
- **No dejes el blur sobre fondo transparente** sin Solid Composite, porque el blur se desvanece al no tener píxeles de fondo.
- **No uses el glow por defecto de Advanced Lightning** si buscas un glow personalizado y controlable.
- **No olvides ajustar Termination Threshold** cuando el rayo se estira fuera de la capa al mover la posición.
- **No subas demasiado Turbulence** si quieres un rayo más estable y direccional.
- **No uses el efecto Turbulent Displace** si el tiempo de renderizado es crítico; es opcional para texturizar.
- **No olvides precomponer el texto 3D** antes de añadirle efectos de electricidad para evitar re-renderizados constantes.