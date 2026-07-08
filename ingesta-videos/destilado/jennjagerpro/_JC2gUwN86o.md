# What is Keyframing?
**Fuente:** jennjagerpro | https://youtu.be/_JC2gUwN86o

## Qué enseña
Explica el concepto fundamental de keyframing en Final Cut Pro y Apple Motion, desde audio hasta animaciones visuales. Muestra cómo crear, editar y manipular keyframes para controlar cambios de parámetros como volumen, escala, posición, tracking y color. Destaca la importancia de dominar keyframing para ejecutar ideas sin depender de presets.

## Lecciones accionables
- **Para crear keyframe en audio (Final Cut):** presiona `Option` + clic sobre la línea de volumen en el clip de audio del timeline hasta que aparezca el diamante y el mensaje "adjust volume"
- **Para crear keyframe en inspector (Final Cut):** haz clic en el botón de diamante junto al parámetro deseado (ej. Scale, Position, Volume)
- **Para navegar entre keyframes en inspector:** usa las flechas `←` y `→` (Previous/Next Keyframe) que aparecen cuando hay múltiples keyframes
- **Para visualizar keyframes en timeline (Final Cut):** selecciona el clip, presiona `Control` + `V` para expandir la vista y ver los diamantes
- **Para cambiar tipo de interpolación en Final Cut:** selecciona el clip, haz clic en el menú "Transform" del canvas, haz clic derecho sobre un punto de keyframe y elige entre "Linear" o "Smooth"
- **Para abrir Keyframe Editor en Apple Motion:** haz clic en el ícono de tres diamantes en la parte inferior del timeline
- **Para cambiar interpolación en Apple Motion:** en el Keyframe Editor, haz clic derecho sobre un keyframe → "Interpolation" → elige "Bezier" (Bézier)
- **Para ajustar curvas Bezier en Apple Motion:** arrastra los handles (manijas) que aparecen al seleccionar un keyframe con interpolación Bezier para modificar la aceleración
- **Para seleccionar múltiples keyframes en Apple Motion:** arrastra un rectángulo alrededor de los keyframes deseados en el Keyframe Editor
- **Para identificar qué parámetro anima cada línea en Keyframe Editor:** revisa la leyenda de colores en la parte superior del editor (ej. línea púrpura = tracking, colores RGB = color)
- **Para keyframear filtros en Apple Motion:** selecciona el objeto, ve a "Filters" → elige un filtro (ej. "Distortion" → "Disk Warp"), ajusta parámetros y añade keyframes en el inspector

## Reglas para agentes
- Usa `Option` + clic sobre la línea de volumen en audio de Final Cut para crear keyframes directamente en el timeline
- Siempre crea al menos dos keyframes para que ocurra un cambio visible o audible
- Cuando quieras mantener un valor constante entre dos cambios, añade un keyframe "hold" (keyframe adicional sin modificar el valor) para evitar transiciones no deseadas
- En Final Cut, cambia keyframes a "Linear" cuando necesites movimiento uniforme de punto A a punto B sin aceleración
- En Apple Motion, usa interpolación "Bezier" cuando necesites control preciso sobre la aceleración y desaceleración de una animación
- Nunca actives keyframes separados para X e Y en Scale de Final Cut a menos que quieras distorsionar la imagen

## Errores comunes que evita o menciona
- Creer que keyframing está obsoleto: el video afirma que "no eres un editor profesional si no sabes keyframear"
- Pensar que un solo keyframe produce cambio: se necesita mínimo dos keyframes para que ocurra una transición
- No añadir keyframe "hold" al finalizar una transición: si solo pones keyframe de bajada y subida sin mantener el valor bajo, el volumen subirá inmediatamente después del punto más bajo
- Usar keyframes "Smooth" por defecto en Final Cut cuando se necesita movimiento lineal: Smooth añade un ease-in/ease-out que puede causar movimientos no deseados (ej. el horizonte sube y baja)
- No usar el Keyframe Editor en Apple Motion: es donde ocurre "toda la magia" del keyframing avanzado
- Confundir keyframes de diferentes parámetros en el Keyframe Editor: usar la leyenda de colores para identificar qué línea corresponde a cada parámetro animado