# Apple Motion Text Behaviors Get a Makeover!
**Fuente:** jennjagerpro | https://youtu.be/YaMdK9IIA08

## Qué enseña
Este video muestra cómo modernizar los comportamientos de texto predeterminados en Apple Motion, ajustando parámetros como duración, escala, seguimiento (tracking), desenfoque (blur), velocidad y secuenciación para lograr efectos más elegantes y contemporáneos. La autora transforma 10 comportamientos "anticuados" (Deal In, Dolly In, Gather In, Hop In, Jump In, Pop In, Scramble In, Speedster, Springy, Tear In) mediante modificaciones técnicas específicas.

## Lecciones accionables
- **Deal In:** Acortar la duración del comportamiento significativamente. Reducir el valor de escala (Scale). Aumentar la dispersión (Spread) al máximo para que las letras entren más rápido y con menos rotación.
- **Dolly In:** Acortar la duración de la acción. Aumentar drásticamente el desenfoque (Blur) para que entre muy borroso y se enfoque. Animar toda la línea (entire line) en lugar de caracteres individuales. Incrementar el Spread.
- **Gather In:** Cambiar el seguimiento (Tracking) a un valor positivo alto (ej. +50 o más) para que los caracteres empiecen separados en lugar de apretados. Cambiar la velocidad (Speed) de "Constant" a "Accelerate" para que el movimiento termine con un chasquido.
- **Hop In:** Eliminar el parámetro de escala (Scale) para que los caracteres no se estiren/contraigan. Añadir un parámetro de Tracking que comience alto y termine en 0. Cambiar la secuenciación (Sequencing) a "From". Reducir el Spread. Cambiar la velocidad a "Decelerate". Acortar la duración. **Requisito:** La alineación del texto debe ser "Right Justified".
- **Jump In:** Eliminar los parámetros de escala (Scale) y rotación (Rotation). Aumentar el Spread considerablemente. Acelerar la acción acortando la duración en la línea de tiempo.
- **Pop In:** Reducir el valor de escala (Scale) para que el movimiento sea menos dramático. Aumentar la velocidad y cambiar la velocidad (Speed) a "Ease Both" para una entrada más suave.
- **Scramble In:** En el primer comportamiento (que controla rotación, posición y opacidad), eliminar los parámetros de rotación (Rotation) y posición (Position). En el segundo comportamiento (con keyframes), eliminar uno de los keyframes en la línea de tiempo para que el reposicionamiento sea constante y suave.
- **Speedster:** Aumentar drásticamente el desenfoque (Blur) para dar sensación de movimiento rápido. Aumentar el Spread para que los caracteres no entren uno por uno, sino casi todos juntos.
- **Springy:** Eliminar todos los atributos de apariencia (outline, glow, drop shadow). Añadir un parámetro de Tracking con valor alto para separar los caracteres. Cambiar la animación de "Random" a "By Word" con dirección "Center to Ends". Ajustar la velocidad.
- **Tear In:** Eliminar el parámetro de posición (Position) para que las letras no vengan desde la esquina inferior izquierda. Aumentar la escala (Scale) para que empiecen más grandes. Cambiar drásticamente la rotación Z (Z Rotation) para que giren más. Reducir ligeramente el Spread. Cambiar la velocidad de "Ease Out" a "Ease Both".

## Reglas para agentes
- Usa "Right Justified" como alineación de texto cuando apliques la versión modernizada de Hop In.
- Elimina siempre los parámetros de escala y rotación en Jump In para evitar un efecto demasiado dramático.
- Nunca uses los valores predeterminados de Tracking en Gather In; cámbialos siempre a un valor positivo alto.
- Cuando trabajes con Scramble In, elimina siempre los parámetros de rotación y posición del primer comportamiento y un keyframe del segundo para evitar caos visual.
- Para Speedster, aumenta el Blur drásticamente y el Spread para que los caracteres entren en grupo, no uno a uno.
- En Springy, elimina siempre outline, glow y drop shadow; usa animación "By Word" con dirección "Center to Ends".

## Errores comunes que evita o menciona
- **Deal In predeterminado:** Es lento y torpe (clunky) por su larga duración y bajo spread.
- **Gather In predeterminado:** Los caracteres empiezan demasiado apretados (tracking negativo) y el movimiento tiene un "herky-jerky" al final.
- **Hop In predeterminado:** La compresión/estiramiento de escala y la velocidad constante lo hacen caótico.
- **Jump In predeterminado:** Escala y rotación excesivas lo hacen poco usable en proyectos reales.
- **Scramble In predeterminado:** Demasiada rotación y cambios de posición lo hacen verse desordenado (sloppy).
- **Springy predeterminado:** Outline, glow y drop shadow añaden ruido visual innecesario; la animación aleatoria es desordenada.
- **Tear In predeterminado:** Las letras vienen desde la esquina inferior izquierda, lo que se siente menos elegante que un origen central.