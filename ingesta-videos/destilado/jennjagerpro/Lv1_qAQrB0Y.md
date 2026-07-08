# Faux In Camera Transitions for Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/Lv1_qAQrB0Y

## Qué enseña
Cómo construir transiciones falsas de "in camera" (giro simulado) en Apple Motion para Final Cut Pro, creando dos títulos separados que imitan un whip a la izquierda: uno para la salida del primer clip y otro para la entrada al segundo clip. La técnica usa capas clonadas, desenfoque direccional, cámara 3D y keyframes con interpolación Bezier para simular aceleración y desaceleración realistas.

## Lecciones accionables
- Crear un proyecto en Apple Motion como **Final Cut Title** con duración de **12 frames** para la primera mitad (whip out) y **20 frames** para la segunda mitad (whip in)
- Eliminar el texto por defecto del proyecto y habilitar **Title Background** como drop zone placeholder
- Agregar una **cámara** al proyecto para hacerlo 3D; en Inspector > Properties, aumentar la escala de la cámara para alejar el zoom y ver espacio alrededor del clip
- Crear **clone layers** del Title Background: seleccionar el clip original, usar atajo **K** o clic derecho > "Make Clone Layer"
- Renombrar los clones como "left side" y "right side" para organización
- Posicionar el clon izquierdo en **X: -3840** y el clon derecho en **X: +3840** (para proyecto 4K)
- Aplicar filtro **Distortion > Flop** a los clones laterales para crear espejo y ocultar bordes
- Reemplazar el clip original por otro B-roll para verificar que los clones se actualizan automáticamente
- Seleccionar el **grupo** que contiene todos los clips, aplicar filtro **Blur > Directional Blur**
- Keyframear el Directional Blur: frame inicial **Amount: 0**, frame final **Amount: 1000**
- Aplicar filtro **Blur > Gradient Blur** al mismo grupo para ocultar líneas oscuras en las uniones
- Keyframear Gradient Blur: frame inicial **Amount: 0**, frame final **Amount: 25**; orientar horizontalmente con controles en pantalla
- Resetear la escala de la cámara a **100%** para que el clip central esté a full frame
- Keyframear la posición de la cámara: frame inicial **X: 0**, frame final **X: -3840** (para whip out a la izquierda)
- En el **Keyframe Editor**, cambiar interpolación a **Bezier**; alargar el tangent del primer keyframe (Shift + arrastrar) y acortar el tangent del segundo keyframe para crear aceleración
- Guardar como: **File > Save As**, nombre "left whip in", crear categoría "whip transitions", sin theme
- Para la segunda mitad: **Save As** como "left whip out" en misma categoría, luego cambiar duración del proyecto a **20 frames**
- Seleccionar todos los elementos, mover playhead al final, presionar **O** para extender todo
- Invertir keyframes del Directional Blur: arrastrar el keyframe del inicio al final y viceversa
- Invertir keyframes de la cámara: primer keyframe **X: +3840**, segundo keyframe **X: 0**; mover el segundo al final del timeline
- En Keyframe Editor, invertir la forma de los tangents: acortar el primero (Shift + arrastrar hacia adentro), alargar el segundo (Shift + arrastrar hacia afuera) para crear desaceleración
- Limpiar el placeholder: seleccionar Title Background, ir a **Image > Clear**; guardar con **Command + S**
- Repetir limpieza en el archivo "left whip in" abriéndolo, limpiando el Title Background y guardando

## Reglas para agentes
- Usa **Final Cut Title** como tipo de proyecto en Motion, no Final Cut Transition, para tener control sobre el timing en FCP
- Usa **Directional Blur** en lugar de Motion Blur para el efecto de whip; el creador prefirió su resultado visual
- Aplica **Gradient Blur** siempre que uses Directional Blur en composiciones con clones, para ocultar las líneas oscuras en las uniones
- Nunca uses interpolación lineal para los keyframes de cámara o blur; usa siempre **Bezier** y ajusta los tangents manualmente
- Nunca dejes el placeholder (Title Background con clip) en los archivos publicados; siempre haz **Image > Clear** antes de guardar
- Cuando crees clones para el entorno, aplica siempre el filtro **Flop** para que el espejo sea seamless
- Usa valores de posición **±3840** para clones en proyectos 4K; ajusta proporcionalmente para otras resoluciones

## Errores comunes que evita o menciona
- No planificar las transiciones durante la grabación real; esta técnica es un "mock" para cuando ya tienes el metraje grabado
- No dejar espacio alrededor del clip principal al escalar la cámara; se necesita crear un entorno visual con clones para no "whip hacia espacio vacío"
- Usar Motion Blur en lugar de Directional Blur; el creador probó ambos y prefirió el resultado del Directional Blur
- Olvidar que los clones se actualizan automáticamente al cambiar el clip original; útil para reemplazar el placeholder sin rehacer todo
- No ajustar la interpolación de keyframes; el movimiento lineal no se siente natural, necesita aceleración (whip out) o desaceleración (whip in)