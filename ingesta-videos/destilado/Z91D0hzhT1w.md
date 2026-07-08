# Google Flow Omni Tutorial: Stop-Motion Collage Animation

**Fuente:** AI Mind Revolution | URL https://youtu.be/Z91D0hzhT1w | 8:56 | animación collage stop-motion con Google Flow Omni + Nano Banana Pro

---

## Qué enseña (2-3 líneas)

Cómo producir animaciones de transición tipo stop-motion con estética de recorte de revista (zine, cinta adhesiva, tinta risógrafo) usando Google Flow Omni como generador de video. El flujo es en dos fases: primero se crean las imágenes de referencia con Nano Banana Pro (imagen estática collage), y después se animan con Omni Flash usando esas imágenes como ingrediente. Gemini actúa como redactor de prompts cuando el usuario no quiere escribirlos a mano.

---

## Lecciones accionables

### Fase 1 — Crear las imágenes collage (Nano Banana Pro)

- **El prompt de estilo que funciona** (copia literal del video, verbatim de f14):
  ```
  Magazine cut-and-paste collage style, tape, marker scribbles, matte paper,
  off-white zine paper background, xerox grain, torn paper, hard white scissor-cut
  borders, risograph ink.
  ```
  Este bloque va siempre primero, antes de las instrucciones de composición.

- **Para generar las 3 imágenes en un solo batch** con el agente de Google Flow (prompt literal de f19):
  ```
  Create three images with the following instructions.

  Global style: Magazine cut-and-paste collage style, tape, marker scribbles, matte paper,
  off-white zine paper background, xerox grain, torn paper, hard white scissor-cut borders,
  risograph ink.

  First image instructions:
  The image is for a podcast called "The rock show". The design should include instruments
  and Man on green background.

  Second image instructions:
  The design should include Woman on green background and the A cat, plain green background.
  Add a scribble tag pointing to each subject indicating their name. Her name is "Mia" and
  the "cat" name is "Michifuzz". The design should include musical elements.

  Third image instructions:
  The image shows a central scribble tag saying "the rock show podcast". Include musical
  elements on the design. Do not include subjects, just the name of the show.

  Format: 16:9
  ```

- **Consistencia de sujeto**: el modelo (Niji Journey / Nano Banana Pro) mantiene consistencia del personaje entre imágenes sin necesidad de bloquear la referencia, porque está entrenado para ello. Si aun así no hay consistencia, bloquear la referencia (lock ingredient) y añadir el keyword del sujeto ("man", "woman") antes de hacer lock.

- **Para pedir al agente que proponga diseños y luego elegir**: usar el prompt:
  ```
  Create a text prompt to use on an image generator like Nano Banana.
  The style: [estilo completo arriba].
  Instructions: [descripción del contenido].
  Provide a text response only.
  ```
  El agente propone 3 variantes con nombre (ej. "The Frontman Collage", "Abstract Rock Zine", "Punk Rock Layout") con descripción detallada. Se elige la que guste y se pega en el generador.

- **Añadir "Provide a text response only"** al final de cualquier prompt a Gemini. Sin esa instrucción Gemini genera imágenes directamente en lugar de devolver el prompt de texto.

### Fase 2 — Animar las imágenes (Google Flow Omni Flash)

- **Agregar la imagen como ingrediente, NO bloquearla**. Bloquear (lock) la fuerza demasiado y el video pierde movimiento. Usar solo como referencia visual.

- **Estructura del prompt de video** (tres bloques obligatorios):
  1. **Estilo global**: `A stop-motion collage animation on a creased paper background.`
  2. **Transition in**: describir cada elemento por nombre con su verbo de acción específico.
  3. **Transition out**: describir qué hace cada elemento al salir del encuadre.

- **Prompt de transición completo, verbatim (Collage 1, de f04/f05)**:
  ```
  A stop-motion collage animation on a creased paper background.

  Transition in: Ransom-note letters spelling "THE ROCK SHOW" snap into place at the top,
  secured by tape. Halftone guitar cutouts slide in from the left, while a drum kit pops up
  on the right. Scattered microphones fly into frame. The central cutout of a man on a stool
  drops into the middle. Black marker scribbles rapidly draw themselves around the edges.

  Transition out: The elements on the left peel off to the right side, while the elements on
  the right peel off to the left side. Simultaneously, the name of the show and the cutout of
  the man crumple into a ball and fly off-screen.
  ```

- **Prompt de transición del collage tipo "papel arrugado" (Collage 3, de f12)**:
  ```
  A stop-motion collage animation on a creased paper background.

  Transition in: Fly in the elements on the left side, followed by flying in the elements on
  the right side. To finish, animate the central "The Rock Show Podcast" sign straightening
  out from a crumpled paper ball.

  Transition out: The "The Rock Show Podcast" sign crumples back into a paper ball and swipes
  up off the screen. Then, the remaining elements swipe off the screen to the left and right.
  ```

- **Parámetros óptimos en Google Flow** (de f06):
  - Modelo: **Omni Flash**
  - Duración: **6 segundos** (no usar 10s — el resultado queda demasiado lento)
  - Multiplicidad: **1x** (una sola generación por crédito)
  - Costo: **15 créditos** por generación de video

- **Para generar el prompt de video con Gemini** (de f08): adjuntar la imagen de referencia, luego:
  ```
  Create a text prompt to use on Google Flow omni video generator.
  I want to create an animation collage. The prompt should include instructions to transition
  the different parts in and out of the collage.
  Transition OUT instructions: [describir la salida específica].
  Provide a text response only.
  ```
  Si la respuesta es corta, pedirle: `Be more creative and detailed` — Gemini entonces lee la imagen elemento por elemento y describe cada uno con mayor especificidad (de f09).

- **Si el resultado no es 100% fiel a la imagen**: es normal. El modelo usa la imagen como referencia, no la replica exactamente. Para collages muy complejos, correr la generación varias veces o simplificar el collage de origen.

---

## Lo visual observado (qué muestran los frames que el audio no dice)

- **f01**: El resultado final — imagen estática collage "The Rock Show Podcast": letras ransom-note sobre cartón texturizado, guitarras eléctricas en halftone B/N, batería azul-gris, micrófono de pie, trazos de marcador negro tipo doodle. Fondo papel crema arrugado. Sin personajes humanos, solo instrumentos y tipografía zine.

- **f02**: La interfaz de Google Flow muestra en la grilla superior las 3 imágenes collage numeradas (3 = podcast sin sujeto, 2 = mujer+gato "Michifuzz", 1 = hombre con instrumentos). En la fila inferior, las fotos fuente en verde liso (modelo humano sentado, mujer de pie, gato). El selector de modelo en el bar inferior muestra "Nano Banana Pro · 1x".

- **f04/f05**: El prompt de video tiene **color-coding por zonas** — cada elemento del collage está resaltado en un color diferente (azul = título/texto, verde = guitarra, magenta = batería, cyan = micrófonos, verde oscuro = sujeto central). Esto evidencia que el prompt opera elemento por elemento, no en bloque.

- **f06**: El panel de configuración de Google Flow muestra claramente que 10s está seleccionado (lo que el tutorial señala como demasiado lento). El instructor cambia a 6s. El toggle Image/Video está visible, con "Ingredients" como pestaña alternativa a "Frames".

- **f09**: Gemini en modo detallado describe la textura del papel ("slightly wrinkled, off-white, faint creases"), el movimiento de peeling ("as if being swept by an invisible hand") e incluso describe el sonido visual ("paper-tearing sound effect aesthetic"). Este nivel de detalle mejora notablemente el resultado del generador.

- **f10**: Frame mid-video generado: el collage se ha "destruido" — los elementos aparecen como bolas de papel arrugado dispersas sobre una superficie de papel blanco. El efecto stop-motion es visible en la textura de la imagen.

- **f17**: El agente de Google Flow propone 3 líneas de diseño con nombres propios: "The Frontman Collage", "Abstract Rock Zine", "Punk Rock Layout". Cada variante describe tipografía, color, composición y materiales texturales en forma de brief visual.

- **f19**: El prompt batch para 3 imágenes tiene las instrucciones de cada imagen como bloques separados con encabezado explícito ("First image instructions:", "Second image instructions:"). El `Format: 16:9` va al final como instrucción global.

- **f20**: La UI del agente en Google Flow muestra el panel lateral de Gemini con las miniaturas de los 3 collages generados. El agente ignoró la instrucción "Provide a text response only" y generó imágenes directamente — el instructor lo acepta porque el resultado fue bueno, pero señala que no es lo ideal.

---

## Reglas para agentes

1. **Siempre separar la creación de imagen de la animación.** Generar el collage estático primero (Nano Banana Pro), luego animar (Omni Flash). No intentar generar un collage animado de cero sin imagen de referencia.

2. **El prompt de video DEBE tener los tres bloques**: (1) estilo global, (2) transition in con verbo por elemento, (3) transition out con verbo por elemento. Si falta el bloque de transición, el modelo improvisa — los resultados son impredecibles.

3. **Ser específico por elemento, no por zona**: NO escribir "los elementos del lado izquierdo aparecen". SÍ escribir "las guitarras en halftone se deslizan desde la izquierda" y "el micrófono de pie vuela hacia el encuadre". Cada objeto nombrado = mayor control sobre el resultado.

4. **Usar Gemini solo para texto**: añadir siempre `Provide a text response only` cuando se quiera un prompt de texto. Sin esa instrucción, Gemini genera imágenes o hace ambas cosas.

5. **Pedir "Be more creative and detailed"** como segundo turno en Gemini cuando la primera respuesta sea corta. La segunda respuesta incluye descripción de textura, movimiento y materiales a nivel de dirección de arte.

6. **Duración óptima de video: 6 segundos con Omni Flash.** 10 segundos produce animaciones demasiado lentas. 4 segundos puede quedarse corto para collages con muchos elementos.

7. **No bloquear el ingrediente de imagen en el video.** Bloquear la referencia sobrecondiciona el modelo y limita la animación. Usar como ingredient sin lock.

8. **Para consistencia de personaje entre imágenes**: el modelo Niji Journey/Nano Banana mantiene consistencia por defecto. Solo añadir lock si hay desviación notable. Incluir el descriptor del sujeto ("man", "woman") en el prompt siempre.

9. **Repetir la generación si el resultado no satisface**, especialmente en collages complejos. No ajustar el prompt en la primera iteración fallida — correr el mismo prompt varias veces primero.

10. **Generar las 3 imágenes en un solo batch** cuando son parte del mismo proyecto (mismo estilo global). Ahorra tiempo y garantiza coherencia de estilo entre las imágenes.

---

## Errores comunes que evita o menciona

- **Usar 10 segundos de duración**: el video queda a cámara lenta y pierde el ritmo stop-motion. Preferir 6s.
- **No describir la transición de salida**: si se omite el bloque "transition out", el modelo no sabe qué hacer con los elementos al final y el video termina abruptamente o con movimientos genéricos.
- **Bloquear la imagen de referencia para el video**: limita la libertad del modelo para animar. Solo bloquear para imágenes (cuando se necesita consistencia de personaje).
- **Esperar que Gemini dé prompts cortos sin pedirle más**: el primer draft suele ser breve; un segundo turno con "Be more creative and detailed" da el nivel de detalle necesario para buenas generaciones.
- **Pedir a Gemini que genere texto sin la cláusula "Provide a text response only"**: el modelo genera imágenes en lugar de texto — o hace ambas cosas sin pedir permiso.
- **Collages muy complejos**: cuantos más elementos tiene el collage, menos fiel será el resultado a la referencia. La solución es simplificar el collage o correr la generación múltiples veces.

---

## Aplicabilidad a nuestras skills

### chiwilandia-video-pipeline
- Aplicar directamente para crear los fondos de escenario con estética de libro infantil/recorte. El estilo "magazine cut-and-paste" + "tape" se adapta a ilustración infantil añadiendo colores primarios y texturas de acuarela.
- El flujo imagen → video con ingrediente sirve para crear "transiciones de cuento" entre escenas del episodio (entrar/salir de plano con elementos del set).

### hyperframes
- El workflow de generación batch de imágenes (3 en 1 prompt con instrucciones individuales por bloque) es un patrón directo para producción de storyboard con HyperFrames. Cada "image instructions" equivale a un plano.
- El estilo visual stop-motion collage es una estética no cubierta en HyperFrames — incorporar como preset de estilo.

### estudio-sintetico
- El combo "estilo global + instrucciones por imagen" es un patrón que el Estudio Sintético puede adoptar como "receta de producción en batch". Permite crear sets completos de 3-6 imágenes con coherencia de marca en un solo turno de agente.
- El uso de Gemini como "redactor de prompts" desde una imagen de referencia es un paso que el Estudio puede sistematizar: usuario sube referencia → agente pide prompt a Gemini → se ejecuta en el generador seleccionado.

### commercial-os / agro-video-pipeline
- Para piezas de presentación de productos o thumbnails de canales B2B: el estilo puede adaptarse a collage "editorial corporativo" (fondos kraft, sellos, etiquetas de precio) manteniendo el mismo flujo técnico.
- La técnica de transición in/out elemento por elemento es directamente útil para bumpers de marca y aperturas de video de producto.

### agente-catalogo (mostrario de Weblia)
- Los 3 estilos de propuesta que genera el agente ("The Frontman Collage", "Abstract Rock Zine", "Punk Rock Layout") son el mismo patrón del mostrario: un solo brief genera 3 líneas visuales distintas con nombre propio. Adoptar este patrón para las propuestas de estilo de los catálogos de clientes.
