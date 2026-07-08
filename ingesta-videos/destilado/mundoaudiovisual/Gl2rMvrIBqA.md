# Video editing course - Davinci Resolve - 🎬 Chapter 10 - Time and slow motion and remapping.
**Fuente:** mundoaudiovisual | https://youtu.be/Gl2rMvrIBqA

## Qué enseña (2-3 líneas)
Este capítulo explica cómo crear cámara lenta, cámara rápida (time-lapse) y remapeo de velocidad (speed ramping) en DaVinci Resolve. Cubre la teoría de fotogramas por segundo (fps) necesaria para un slow motion suave, el uso de Optical Flow para forzar cámara lenta en clips con pocos fps, y la manipulación de keyframes de velocidad para transiciones progresivas.

## Lecciones accionables
- **Verificar fps del clip y del proyecto:** Ve a la pestaña "Metadata" para ver los fps del clip. Ve al ícono de engranaje (Configuración del proyecto) para ver los fps de la línea de tiempo. Los fps del clip deben ser mayores que los de la línea de tiempo para un slow motion suave.
- **Cambiar velocidad de un clip (método básico):** Selecciona el clip en la línea de tiempo. Presiona la tecla `R` (o haz clic derecho > "Change Clip Speed"). En el cuadro de diálogo, ingresa el porcentaje de velocidad deseado (ej. 50% para cámara lenta, 5000% para cámara rápida). Haz clic en "Accept".
- **Calcular la velocidad mínima para slow motion suave:** Divide los fps del clip entre los fps de la línea de tiempo. Ejemplo: clip a 120 fps, línea de tiempo a 29.97 fps → 29.97 / 120 ≈ 25%. Puedes bajar la velocidad hasta 25% sin perder suavidad.
- **Forzar slow motion en clips con pocos fps (Optical Flow):** Selecciona el clip. En el inspector, baja a la sección "Time Adjustment and Resizing". En "Processing", selecciona "Optical Flow". En "Mode", elige "Better Quality" (o "Enhanced Better Quality" si está disponible). Esto inventa fotogramas intermedios para suavizar el movimiento.
- **Abrir el panel de keyframes de velocidad:** Selecciona el clip. Haz clic en el botón "Controller" (icono de control deslizante) en la esquina superior izquierda del visor. Aparecerán triángulos azules en la línea de tiempo del clip.
- **Agregar keyframes de velocidad (speed points):** En el panel de keyframes de velocidad, haz clic en el botón "Add Speed Point" (icono de +) en la posición deseada. Repite para agregar múltiples puntos.
- **Cambiar la velocidad entre keyframes:** Selecciona un segmento entre dos keyframes. En el inspector, ajusta el valor de "Speed" (ej. 800% para acelerar). El clip se acorta o alarga automáticamente.
- **Crear transiciones progresivas de velocidad (speed ramping):** En el panel de keyframes de velocidad, haz clic derecho sobre un keyframe y selecciona "Convert to Curved" (o presiona `Shift` para abrir el panel de keyframes). En el panel, selecciona "Speed Processing". Arrastra las manijas de la curva para suavizar la aceleración/desaceleración.
- **Truco para superar el límite de 1000% de velocidad:** Corta el clip en el punto donde quieres la aceleración máxima (Ctrl+B). Selecciona el segmento acelerado y presiona `Ctrl+R` para abrir el panel de keyframes. Haz clic derecho en el clip y selecciona "New Compound Clip". Ahora trata el compound clip como un clip nuevo y aplica keyframes de velocidad nuevamente, permitiendo aceleraciones mayores.

## Reglas para agentes
- Usa `R` para abrir el cuadro de diálogo "Change Clip Speed" en lugar de hacer clic derecho.
- Verifica siempre los fps del clip en Metadata y los fps del proyecto en Configuración (ícono de engranaje) antes de aplicar slow motion.
- Activa "Optical Flow" con modo "Better Quality" solo cuando el clip tenga menos fps que la línea de tiempo y necesites slow motion forzado.
- Usa "Convert to Curved" en los keyframes de velocidad para transiciones suaves, no valores lineales.
- Crea un "Compound Clip" cuando necesites superar el límite de 1000% de velocidad en un segmento.
- Nunca apliques slow motion a un clip con fps igual o menor a los fps de la línea de tiempo sin activar Optical Flow, o el resultado será entrecortado.

## Errores comunes que evita o menciona
- **Cámara lenta entrecortada:** Ocurre cuando reduces la velocidad de un clip con fps iguales o menores a los de la línea de tiempo (ej. clip a 29.97 fps en línea de tiempo a 29.97 fps al 50%). Se evita usando Optical Flow o grabando a fps más altos (60, 120, 240 fps).
- **Forzar slow motion sin Optical Flow:** Si reduces la velocidad a 10% en un clip de 29.97 fps, el movimiento se vuelve "pam pam pam" (muy entrecortado). Optical Flow lo suaviza inventando fotogramas.
- **No verificar fps del clip:** Asumir que cualquier clip puede hacer slow motion suave sin revisar los fps lleva a resultados pobres.
- **Usar valores lineales en speed ramping:** La aceleración/desaceleración brusca se ve poco orgánica. Convertir keyframes a curvas y ajustar las manijas da un efecto más natural.
- **Olvidar que el límite de velocidad es 1000%:** Intentar poner 2000% en el cuadro de diálogo falla. La solución es crear un Compound Clip y aplicar keyframes nuevamente.