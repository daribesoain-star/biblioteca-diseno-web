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