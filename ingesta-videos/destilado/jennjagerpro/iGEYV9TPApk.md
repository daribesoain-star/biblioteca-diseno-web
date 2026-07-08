# 5 Text Ideas for FCP
**Fuente:** jennjagerpro | https://youtu.be/iGEYV9TPApk

## Qué enseña (2-3 líneas)
Cinco animaciones de texto nativas en Final Cut Pro sin usar Apple Motion ni plugins de terceros. Utiliza herramientas básicas como transiciones, fotogramas clave, clips compuestos y efectos integrados para crear efectos profesionales de texto sobre video.

## Lecciones accionables

- **Bar Reveal (Revelación con barra):**
  1. Añadir título básico, escalarlo y activar la guía horizontal (Horizon) en el visor.
  2. En Inspector > Face, elegir color con cuentagotas desde el video.
  3. Ir a Transiciones > Wipes > Center Wipe, aplicarlo al inicio y final del título.
  4. En la transición de entrada: duración 1 segundo, ángulo 60°. En Edge Treatment: cambiar Edge Type a "Solid Color", color igual al texto.
  5. Fotogramas clave: al inicio de la transición, añadir keyframe en Border Width = 4. Avanzar 10 frames (Shift + flecha derecha) + 2 frames más, cambiar Border Width = 0.
  6. En la transición de salida: ángulo 90°, Edge Treatment = Solid Color, Border Width = 1 (sin keyframes).

- **Outline Reveal (Revelación con contorno):**
  1. Título básico, deshabilitar Face, habilitar Outline. Color del contorno con cuentagotas del video, brillo alto.
  2. Duplicar el título (Cmd + D). En la copia: deshabilitar Outline, habilitar Glow. Color del glow desde el video, aumentar Glare.
  3. Duplicar otra vez: deshabilitar Glow, habilitar Face, dejar Face en blanco.
  4. En la línea de tiempo: al título con Outline añadir Cross Dissolve al final (12 frames), cambiar Look a "Warm". Acortar duración, añadir otro Cross Dissolve al final con Look "Subtractive".
  5. Al título con Glow: Cross Dissolve al inicio (9 frames, Look "Dull"), acortar, Cross Dissolve al final (9 frames, Look "Video"). Colocar debajo del título original.
  6. Al título con Face: Cross Dissolve de 12 frames, Look "Video". Ajustar tiempos para que Outline fade out coincida con Face fade in, y Glow quede entre ambos.

- **Reflection Effect (Efecto reflejo):**
  1. Título básico centrado. Añadir transición Push (Movements > Push) al inicio, cambiar dirección de Top a Bottom.
  2. Seleccionar el título, Option + arrastrar para duplicar. Al duplicado: aplicar efecto Flipped (Distortion > Flipped), cambiar de Horizontal a Vertical. Ajustar posición para que toque el texto original.
  3. En la transición Push del duplicado, cambiar dirección de Bottom a Top.
  4. Seleccionar cada título y agrupar en clip compuesto (Option + G).
  5. Al título superior (reflejo): aplicar Graduated Mask (Masks & Keying). Ajustar controles en pantalla para mostrar solo parte de las letras.
  6. Añadir generador Gradient (Textures), color inferior negro, superior blanco. En Inspector: Blend Mode = Multiply, bajar opacidad.

- **Rack Focus Look (Efecto enfoque/desenfoque):**
  1. Título básico centrado, color con cuentagotas del video, brillo alto.
  2. Seleccionar título, Cmd + T para añadir Cross Dissolve a ambos lados.
  3. Aplicar efecto Blur al título.
  4. Colocar playhead después del Cross Dissolve de entrada. Añadir keyframe en Amount del Blur (valor actual).
  5. Avanzar 10 frames, hacer blade cut (Cmd + B) en el video. Añadir Cross Dissolve en el corte.
  6. Justo después del Cross Dissolve, seleccionar título, cambiar Amount del Blur a 0.
  7. Avanzar, añadir otro keyframe en Amount (hold keyframe). Avanzar 10 frames, blade cut, Cross Dissolve.
  8. Después del Cross Dissolve, cambiar Amount del Blur de vuelta a 50.
  9. Seleccionar la sección media del clip de video, aplicar el mismo Blur.

- **Split Text Animation (Animación de texto dividido):**
  1. Título básico con primera palabra. Ajustar peso ligero si es larga.
  2. Fotogramas clave de posición: al inicio, keyframe en Position X, mover X hasta que la letra E toque la guía vertical. Avanzar 15 frames, cambiar X para que la letra G quede a la izquierda de la guía.
  3. Duplicar el clip, cambiar a segunda palabra con peso más pesado y color blanco.
  4. En el duplicado: keyframe inicial, mover X para que borde de S toque guía. En keyframe final, mover X para que T quede a la derecha de la guía.
  5. Seleccionar cada clip, Option + G para hacer clip compuesto.
  6. Al primer clip compuesto: Crop desde la derecha hasta el centro. Al segundo: Crop desde la izquierda hasta el centro.
  7. Seleccionar ambos clips compuestos, Option + G para unirlos en un nuevo clip compuesto. Usar herramientas de transformación para centrar el texto.

## Reglas para agentes

- Usa la guía Horizon (activar en visor) para alinear texto en todos los efectos.
- Aplica Option + G (clip compuesto) siempre que una transición o efecto afecte al video subyacente en lugar del texto.
- Usa Cross Dissolve con Look "Warm", "Subtractive" o "Dull" para variar la apariencia de las disolvencias.
- Cuando uses Push transition, conviértela en clip compuesto para evitar que mueva el video de fondo.
- Nunca uses Apple Motion ni plugins de pago para estos efectos; todas las herramientas son nativas de Final Cut Pro.
- Para el efecto Rack Focus, aplica el mismo blur al video en la sección media para sincronizar el desenfoque del texto con el fondo.

## Errores comunes que evita o menciona

- Evita que la transición Push afecte al video subyacente: siempre convierte los títulos en clips compuestos (Option + G) antes de aplicar la transición.
- No olvides ajustar los tiempos de las disolvencias en el Outline Reveal para que el fade out del contorno coincida con el fade in del texto completo.
- En el efecto Reflection, la máscara graduada (Graduated Mask) debe ajustarse manualmente en el visor para que solo se vea parte de las letras reflejadas.
- En el Split Text Animation, si el texto queda descentrado después de recortar, agrupa ambos clips compuestos en uno nuevo y usa las herramientas de transformación para centrarlo.