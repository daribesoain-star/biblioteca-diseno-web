# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 9 - Las transiciones de video.
**Fuente:** mundoaudiovisual | https://youtu.be/h51kXCjsRRQ

## Qué enseña (2-3 líneas)
Este capítulo explica qué son las transiciones de video en Adobe Premiere Pro 2020, cómo aplicarlas entre clips y cómo ajustar sus parámetros. Se enfoca en la transición por defecto (Cross Dissolve), muestra otras categorías (barridos, iris, zoom, fundidos a negro/blanco) y enseña atajos para aplicar transiciones a múltiples clips. También cubre transiciones de audio y la transición "Transform Cut" para disimular cortes en entrevistas.

## Lecciones accionables
- **Abrir el panel de Efectos:** Ve al panel del Proyecto, haz clic en las líneas pequeñas y selecciona "Effects". También puedes usar el panel de Efectos en la parte inferior.
- **Encontrar transiciones de video:** Dentro del panel Effects, expande la carpeta "Video Transitions". La transición por defecto (con un cuadrado azul) es "Cross Dissolve" dentro de la carpeta "Dissolve".
- **Aplicar una transición:** Haz clic en la transición deseada, arrastra y suéltala entre los dos clips en la línea de tiempo donde quieras que ocurra la transición.
- **Ajustar la duración de la transición:**
    - Arrastra los bordes del cuadro de transición en la línea de tiempo hacia la izquierda o derecha.
    - O haz doble clic en el cuadro de transición y escribe la duración deseada (ej. "3 segundos").
- **Ajustar parámetros de la transición:** Selecciona la transición en la línea de tiempo, ve al panel "Effect Controls". Aquí puedes modificar:
    - **Duración:** Misma función que arrastrar en la línea de tiempo.
    - **Alineación:** "Start at Cut" (inicia en el corte), "End at Cut" (termina en el corte), "Custom Start" (personalizado).
    - **Parámetros específicos:** Cada transición tiene su propio panel (ej. "Border Width", "Border Color", "Anti-aliasing Quality", "Reverse").
- **Eliminar una transición:** Haz clic en el cuadro de transición en la línea de tiempo y presiona la tecla "Delete" (o "Supr").
- **Aplicar la transición por defecto (Cross Dissolve) rápidamente:**
    - A un solo corte: Coloca el cursor sobre el borde entre dos clips y presiona `Command + D` (Mac) / `Ctrl + D` (Windows).
    - A toda la secuencia: Selecciona todos los clips (herramienta de selección, arrastra sobre todos), luego presiona `Command + D` (Mac) / `Ctrl + D` (Windows).
    - Solo al final de la secuencia: Selecciona solo el último clip y presiona `Command + D` (Mac) / `Ctrl + D` (Windows).
- **Aplicar transiciones de audio:** Para aplicar la transición de audio por defecto (Exponential Fade) a clips de audio seleccionados, presiona `Shift + Command + D` (Mac) / `Shift + Ctrl + D` (Windows).
- **Cambiar la transición de audio por defecto:** En el panel Effects, dentro de "Audio Transitions" > "Crossfade", haz clic derecho en "Exponential Fade" y selecciona "Set Selected as Default Transition".
- **Usar la transición "Transform Cut":** Se encuentra en "Video Transitions" > "Dissolve". Se usa para disimular cortes en videos de entrevistas o grabaciones continuas. Premiere Pro analiza los fotogramas e inventa movimiento para suavizar el corte. Requiere tiempo de análisis en segundo plano.
- **Crear fundido a blanco manualmente (sin transición):**
    1. Ve a Project > New Item > "Color Matte". Elige blanco y haz clic en OK.
    2. Arrastra el color matte a una nueva pista de video debajo del clip.
    3. En el clip de video, usa keyframes de Opacidad (en Effect Controls) para bajar la opacidad a 0% al inicio y subirla al final, o viceversa.

## Reglas para agentes
- Usa "Cross Dissolve" como transición de video por defecto a menos que se especifique un efecto narrativo diferente.
- Usa "Exponential Fade" como transición de audio por defecto para fundidos de entrada y salida de audio.
- Cuando necesites disimular un corte en una entrevista o toma continua, aplica la transición "Transform Cut" y ajústala a una duración corta (ej. menos de 10 fotogramas) para que sea menos perceptible.
- Para aplicar una transición a múltiples clips simultáneamente, selecciona todos los clips primero y luego usa el atajo de teclado (`Ctrl+D` o `Shift+Ctrl+D`).
- Nunca uses transiciones llamativas (barridos, iris, zoom) en ediciones de video profesionales o corporativas a menos que sea un requisito explícito del proyecto.
- Para fundidos a negro o blanco, prefiere usar keyframes de opacidad en lugar de las transiciones "Dip to Black" o "Dip to White" para tener mayor control.

## Errores comunes que evita o menciona
- **No usar demasiadas transiciones:** El instructor menciona que personalmente no es fan de usar muchas transiciones; solo usa la disolución (Cross Dissolve). Evita saturar el video con efectos llamativos.
- **Cortes bruscos en audio:** Al hacer cortes en clips de audio, se genera un corte audible. Se recomienda aplicar una transición de audio (Exponential Fade) para suavizar la transición.
- **Cortes visibles en entrevistas:** Al cortar la cámara repetidamente en una grabación continua, el salto es evidente. La transición "Transform Cut" ayuda a disimularlo inventando fotogramas intermedios.
- **No confundir transiciones de video con transiciones de cámara:** El instructor aclara que las transiciones de cámara (movimientos de cámara reales) son diferentes y serán tratadas en un video dedicado.