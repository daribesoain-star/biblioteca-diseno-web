# Kinetic Typography in After Effects: Tutorial Part 1 — School of Motion
**Materia:** tipografia-en-movimiento-motion-design | **Fuente:** https://www.schoolofmotion.com/blog/kinetic-typography-after-effects-part-1 (consultada 2026-07-07)

## Qué aporta
Guía paso a paso para iniciar un proyecto de tipografía cinética en After Effects, cubriendo la sincronización de audio con marcadores, construcción de texturas de fondo con CC Reptile, animación de elementos gráficos con máscaras y gestión de movimientos de cámara complejos mediante objetos nulos. Enfocado en flujos de trabajo organizados para proyectos con múltiples capas y audio sincronizado.

## Reglas candidatas para agentes
- Usar cámara de **1 nodo** (sin punto de interés) para movimientos rápidos y múltiples cambios de encuadre en tipografía cinética.
- Para previsualizar audio sin renderizar video, presionar el **punto (.) del teclado numérico**.
- Para mostrar la forma de onda de un layer de audio, seleccionarlo y presionar **L dos veces**.
- Para añadir un marcador en la línea de tiempo de la composición (no en un layer), asegurarse de no tener nada seleccionado y presionar **asterisco (*) del teclado numérico**.
- Para añadir marcadores en tiempo real mientras se reproduce el audio, presionar **asterisco (*)** durante la reproducción.
- Para duplicar una máscara en un layer, seleccionarla y presionar **Cmd+D** (Mac) / **Ctrl+D** (Windows).
- Para revelar todas las propiedades de todas las máscaras de un layer, presionar **M dos veces**.
- Para escalar una composición al doble de su tamaño manteniendo la posición relativa de los elementos, usar **File > Scripts > Scale Composition** con factor **2**.
- Para separar las dimensiones de posición (X, Y, Z) en propiedades individuales, hacer clic derecho en la propiedad Position y seleccionar **Separate Dimensions**.
- Para que un layer de audio en una precomposición no se reproduzca al anidarla, establecerlo como **guía (Guide Layer)** con Ctrl+clic (Mac) / clic derecho.
- Para mover el playhead ajustándolo a los marcadores, mantener presionada la tecla **Shift** mientras se arrastra.
- Para usar un efecto de transición no lineal en un fade, aplicar **Gradient Wipe** (Effect > Transition) usando una textura como capa de gradiente.
- Para expandir o contraer un matte antes de aplicar Rough Edges, usar **Simple Choker** con valores negativos para expandir.
- Para crear texturas de fondo que permitan percibir el movimiento de cámara, usar **CC Reptile** configurado en modo **Repeat**, expandiendo left, right, up, down según sea necesario.
- Para que una textura de fondo sea un tile sin costuras, prepararla previamente en Photoshop como textura seamless.
- Para animar la aparición de un elemento por partes usando máscaras, animar la propiedad **Mask Expansion** de cada máscara individualmente.
- Para gestionar múltiples movimientos de cámara, crear un **objeto nulo (Null Object)** por cada movimiento, parentar la cámara al primer nulo, y anidar los nulos entre sí (parentar move_01 a move_02, etc.).

## Errores comunes que documenta
- Usar cámara de 2 nodos para movimientos rápidos y múltiples cambios de encuadre: es mucho más difícil de controlar que una de 1 nodo.
- No tener una textura o referencia visual de fondo: sin ella, el espectador no puede distinguir si se mueve la cámara o los objetos.
- Escalar elementos al tamaño final en lugar de hacerlos más grandes de lo necesario: al acercar la cámara, se verían pixelados.
- Colocar marcadores en el layer de audio en lugar de en la composición: si se mueve el layer o se precompone, los marcadores se pierden.
- Copiar y pegar un layer de audio dentro de una precomposición sin desactivarlo: el audio se reproduce duplicado y suena el doble de fuerte.
- Usar Easy Ease en keyframes intermedios sin verificar las curvas: puede generar "hitches" o tirones en la animación.
- Animar todos los movimientos de cámara directamente sobre la cámara: dificulta la transición suave entre diferentes movimientos.
- Usar CC Reptile con valores demasiado altos (ej. 15,000-20,000 px): ralentiza After Effects significativamente.

## Datos/citas clave textuales
- "The camera that I use for kinetic type pieces is always a one node camera."
- "If you select your audio layer and you hit L twice, it brings up the wave form."
- "The hot key for [adding a marker] is the asterisk key on your number pad."
- "If you double tap M, it brings up all the mask properties."
- "I'm going to make my comp twice normal size."
- "I'm going to separate the dimensions... so I can adjust those animation curves individually."
- "A guide layer has this little icon next to it... once you use that pre-com, that audio doesn't exist anymore."
- "I used an effect called CC Reptile... set it to repeat and I'm going to expand it to the left, expand it up and down."
- "If you have a massive, massive comp and you need to set this up to like 15, 20,000, eventually After Effects is not going to like this layer anymore."
- "I use the Knowles to move the camera and every time there's a different move, you make a new Knoll and that Knoll does that move."
- "If you have an easy ease key frame in between two other key frames that are easy ease, it can sometimes add a little hitch in your animation."