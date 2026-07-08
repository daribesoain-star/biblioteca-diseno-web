# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 8 - Los fotogramas clave
**Fuente:** mundoaudiovisual | https://youtu.be/JVUw8ey42I4

## Qué enseña (2-3 líneas)
Este capítulo explica qué son los fotogramas clave (keyframes) en Adobe Premiere Pro 2020 y cómo usarlos para animar posición, escala, rotación y opacidad en clips de video, texto y audio. También cubre la edición de curvas de animación para controlar la velocidad y suavidad de los movimientos.

## Lecciones accionables
- **Activar animación de escala:** Selecciona el clip → ve a "Controles de efectos" (Effects Controls) → haz clic en el reloj junto a "Escala" (Scale) para crear el primer keyframe → mueve el cabezal de tiempo más adelante → cambia el valor de escala (ej. 0 a 100) para crear el segundo keyframe.
- **Animar posición:** En Controles de efectos, haz clic en el reloj junto a "Posición" (Position) → en el primer keyframe, establece coordenadas (ej. Y=1080 para que empiece abajo) → mueve el cabezal → cambia la posición (ej. Y=540 para centrar).
- **Animar rotación:** Activa el reloj junto a "Rotación" (Rotation) → en el primer keyframe, valor 0 → en el segundo keyframe, escribe el número de grados (ej. 3x0.0° para tres vueltas completas).
- **Animar opacidad desde la línea del clip:** En la línea de tiempo, mantén presionada la tecla **Comando (Mac)** o **Control (Windows)** → haz clic en la línea blanca de opacidad del clip para crear un keyframe → arrastra la línea hacia abajo para reducir opacidad → repite para crear fade-in y fade-out.
- **Animar opacidad desde Controles de efectos:** Activa el reloj junto a "Opacidad" (Opacity) → primer keyframe en 100% → segundo keyframe en 0% para fade-out.
- **Animar audio con keyframes:** En el clip de audio, ve a "Nivel" (Level) en Controles de efectos → activa el reloj → primer keyframe en 0 dB → segundo keyframe en valor positivo (ej. 5 dB) para fade-in.
- **Ajustar curvas de animación:** Haz clic derecho sobre un keyframe → selecciona "Interpolación temporal" (Temporal Interpolation) → elige "Suavizar entrada" (Ease In), "Suavizar salida" (Ease Out) o "Suavizar" (Ease) → también puedes arrastrar los controles de la curva en el panel de keyframes.
- **Eliminar keyframes:** Haz clic en el reloj junto al parámetro (ej. Rotación) → aparecerá un mensaje "Esta acción eliminará los keyframes existentes" → acepta.

## Reglas para agentes
- Usa el reloj (toggle animation) junto a cualquier parámetro en Controles de efectos para activar la animación con keyframes.
- Cuando crees un fade-in o fade-out de opacidad, usa la línea blanca del clip con **Comando/Control + clic** para añadir keyframes directamente.
- Para animar audio, usa el parámetro "Nivel" (Level) en Controles de efectos, no la línea de opacidad visual.
- Nunca elimines keyframes manualmente uno por uno si quieres borrar toda la animación de un parámetro; usa el botón del reloj para eliminarlos todos de una vez.
- Usa "Suavizar entrada" (Ease In) y "Suavizar salida" (Ease Out) en keyframes de posición para movimientos más naturales.

## Errores comunes que evita o menciona
- No confundir la línea blanca de opacidad del clip con la línea de otros parámetros; por defecto solo controla opacidad, aunque se puede cambiar con clic derecho en el botón "fx".
- Al eliminar keyframes con el botón del reloj, aparece un mensaje de confirmación; no ignorarlo o se perderán todos los keyframes de ese parámetro.
- No mover keyframes sin querer al arrastrar la línea de opacidad; usar **Comando/Control + clic** para crear keyframes evita desplazamientos accidentales.
- Al animar rotación, escribir "3x0.0°" significa tres vueltas completas; no usar valores sin el formato "x" si se desean múltiples giros.