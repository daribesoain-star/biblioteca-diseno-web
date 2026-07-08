# Apple Motion Flip Effect
**Fuente:** jennjagerpro | https://youtu.be/94pu7A1OlQE

## Qué enseña (2-3 líneas)
Cómo crear un efecto de volteo (flip) animado en Apple Motion usando imágenes PNG recortadas, máscaras de imagen, colores sólidos y keyframes de rotación. También cubre la sincronización con música, la adición de textura con generadores y el uso de comportamientos de aleatorización para dar movimiento sutil.

## Lecciones accionables
- **Preparación de imágenes:** Usa Pixelmator Pro (o cualquier editor de fotos) para recortar sujetos de imágenes de stock (ej. Pixabay). Exporta cada recorte como archivo PNG individual.
- **Creación del proyecto en Motion:** Configura resolución 2160x3840 (vertical) o 16:9, duración 6 segundos.
- **Fondo:** Agrega un color sólido desde Library > Generators. Renómbralo "background". Color: hot pink.
- **Máscara de imagen:** Arrastra otro color sólido encima del grupo "background". Dentro de ese grupo, importa un PNG del sujeto. Duplica ese PNG (clic derecho > Duplicate). Selecciona el color sólido, clic derecho > Add Image Mask. En Inspector > Image Mask, arrastra una copia del PNG al campo de máscara. Activa "Invert Mask". Desactiva temporalmente la copia del PNG para ver el recorte.
- **Sombra 3D:** Selecciona el color sólido, ve a Properties > Drop Shadow. Aumenta Distance y Opacity para dar profundidad.
- **Agrupación:** Selecciona el color sólido y la copia del PNG que usaste para la máscara (Shift+clic). Clic derecho > Group. Colapsa el grupo. Renómbralo (ej. "number one blue").
- **Keyframes de rotación:**
  - En el grupo recién creado, coloca el playhead al inicio del timeline. En Properties > Rotation, crea un keyframe en X Rotation con valor **-90**.
  - Selecciona el PNG del sujeto (no la copia). En X Rotation, crea un keyframe con valor **+90**.
  - Avanza 6 frames en el timeline. Cambia X Rotation del grupo a **0** (se añade keyframe automáticamente). Cambia X Rotation del PNG a **0**.
- **Desfase opcional:** Arrastra el grupo 1 frame más tarde en el timeline para que no estén perfectamente sincronizados.
- **Duplicación de grupos:** Selecciona el grupo completo, clic derecho > Duplicate. Renombra (ej. "number two green"). Cambia el color sólido al nuevo color. Reemplaza el PNG del sujeto en la máscara y en la copia arrastrando desde Finder (aparece flecha curva).
- **Posicionamiento y escala:** Selecciona cada grupo, ajusta Position, Rotation y Scale en Properties. Si el color sólido no llena el frame, escala solo el color sólido (no afecta la máscara).
- **Sincronización con música:** Importa el archivo de audio. En timeline settings, cambia a "Large" para ver formas de onda. Arrastra el inicio de la canción al inicio del timeline. Reposiciona los grupos en el tiempo según los beats y cambios en la música.
- **Textura:** Desde Library > Generators, selecciona "True KET Tiles" (o similar). Arrástralo al tope del proyecto. En Inspector, cambia Shape a "Dots", color negro a gris claro. En Properties, cambia Blend Mode a "Soft Light". Reduce Size de los tiles y baja Opacity.
- **Movimiento de textura:** Selecciona el generador de textura. Ve a Behaviors > Parameter > Randomize. Aplica al parámetro "Tile Size". Reduce Frequency y Noisiness para movimiento sutil.
- **Agrupación final:** Selecciona todos los grupos en el panel de proyecto, clic derecho > Group. En Properties > Position, agrega Behavior > Randomize. Aumenta Amount para movimiento general.

## Reglas para agentes
- Usa **PNG exportados individualmente** para cada sujeto, no archivos de proyecto de Pixelmator, para facilitar el reemplazo rápido.
- Siempre **duplica el PNG del sujeto** dentro del grupo antes de crear la máscara de imagen; una copia es para la máscara y otra para la imagen visible.
- Trabaja siempre a **nivel de grupo** al reposicionar, escalar o rotar; ajusta la escala del color sólido por separado si es necesario para llenar el frame.
- Usa **X Rotation** (no Y ni Z) para el efecto flip; valores clave: grupo en -90, PNG en +90, ambos a 0 después de 6 frames.
- Cuando dupliques grupos, **reemplaza el PNG en dos lugares** dentro del grupo: en la máscara de imagen y en la copia del PNG.
- Aplica **Behaviors > Parameter > Randomize** para animar la textura (Tile Size) y el movimiento general del grupo final (Position).
- Nunca modifiques la escala o posición del PNG del sujeto directamente; hazlo solo a nivel de grupo para mantener la máscara alineada.

## Errores comunes que evita o menciona
- No olvidar **duplicar el PNG** antes de crear la máscara de imagen; si no, no hay imagen visible después de aplicar la máscara.
- No escalar el color sólido después de reposicionar el grupo; si el color no llena el frame, se ve el fondo.
- No sincronizar los keyframes de rotación del grupo y del PNG; ambos deben ir a 0 en el mismo frame para que el flip se complete correctamente.
- No reemplazar el PNG en **ambos lugares** (máscara y copia) al duplicar grupos; de lo contrario, aparece el sujeto anterior.
- No ajustar la opacidad y frecuencia del comportamiento Randomize en la textura; puede verse demasiado caótico.