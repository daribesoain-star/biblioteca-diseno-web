# Course - Final Cut Pro X - 2020 - 🎬 * Chapter 7 - Keyframes
**Fuente:** mundoaudiovisual | https://youtu.be/Ty_9c8PZEQY

## Qué enseña
Explica qué son los keyframes en Final Cut Pro X y cómo usarlos para animar parámetros como escala, posición y rotación en títulos y clips de video, así como para controlar volumen en audio. Muestra cómo crear movimientos dinámicos con múltiples keyframes.

## Lecciones accionables
- Para crear un zoom de entrada desde invisible: coloca el cursor en el primer frame del clip, activa el diamante de **Scale** en el inspector (se vuelve amarillo), ajusta Scale a **0**, avanza en la línea de tiempo, agrega otro keyframe en Scale y ajusta al valor deseado (ej. 100%).
- Para animar posición de un título: selecciona el título, ve al inspector, en **Position** haz clic en el diamante para crear keyframe en el frame inicial, mueve el título en el visor a la posición de inicio, avanza en la línea de tiempo, crea otro keyframe en Position y arrastra el título a la posición final.
- Para animar múltiples parámetros simultáneamente: en el frame inicial activa keyframes en **Position** y **Scale**, avanza unos frames, ajusta posición y escala, agrega nuevos keyframes en ambos parámetros, repite para cada punto de la animación.
- Para animar rotación: selecciona el clip, en el inspector activa keyframe en **Rotation**, avanza en la línea de tiempo, ajusta el valor de rotación (ej. 180° para voltear), avanza más, agrega otro keyframe y restablece a 0°.
- Para animar un clip de video superpuesto: coloca el clip sobre otro, reduce su escala para ver ambos, activa keyframes en Position, mueve el clip fuera del encuadre en el frame inicial, avanza y arrastra el clip hacia adentro, luego agrega keyframes de Rotation para efectos adicionales.
- Para ver la trayectoria de movimiento: después de crear keyframes de posición, aparece una línea en el visor que muestra la ruta que seguirá el objeto.
- Para acercar la vista del visor y ver los límites del encuadre: usa el control deslizante de zoom en el visor (ej. 50%).

## Reglas para agentes
- Activa el diamante (keyframe) en el inspector para el parámetro que deseas animar antes de cambiar su valor; el diamante debe volverse amarillo.
- Coloca siempre el primer keyframe en el primer frame del clip o título que vas a animar.
- Usa al menos dos keyframes para crear cualquier animación: uno de inicio y uno de fin.
- Cuando agregues múltiples keyframes, ajusta todos los parámetros que quieras animar en cada punto de la línea de tiempo antes de crear el siguiente keyframe.
- Para animar audio, usa los mismos principios en los parámetros de volumen o efectos de audio en el inspector.

## Errores comunes que evita o menciona
- No olvidar activar el diamante (keyframe) antes de modificar un parámetro; si no está activado, el cambio se aplica a todo el clip sin animación.
- No confundir el diamante desactivado (gris) con el activado (amarillo); solo el amarillo registra keyframes.
- No mover el cursor en la línea de tiempo sin antes haber creado el keyframe correspondiente, o el movimiento no quedará registrado.
- No limitarse a un solo keyframe; se pueden agregar múltiples para crear trayectorias complejas y cambios de escala/rotación en diferentes puntos.