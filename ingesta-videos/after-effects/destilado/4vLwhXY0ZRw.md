# Typography Motion Graphics Animation in After Effects - After Effects Tutorial Kinetic Typography #4
**Fuente:** Motion Nations | https://youtu.be/4vLwhXY0ZRw

## Qué enseña
Cómo crear animaciones tipográficas cinéticas en After Effects usando las propiedades de animación de texto nativas (Animation Properties), sin necesidad de plugins externos. El método se basa en animar una sola palabra y luego duplicarla para construir una escena completa con múltiples textos, aplicando variaciones de dirección y secundarias con un objeto nulo.

## Técnicas accionables
- Crear composición: `Composition > New Composition` (o Ctrl+N), dimensiones 1920×1080, frame rate 30 fps, duración 20 segundos.
- Añadir fondo: `Layer > New > Solid` (o Ctrl+Y), color oscuro (ej. negro). Bloquear capa para evitar selección accidental.
- Crear texto: seleccionar `Text Tool` (Ctrl+T), escribir palabra (ej. "animating"), fuente "Montserrat" (o similar), estilo bold. Alinear al centro con `Window > Align` (Ctrl+Shift+F7). Activar `Title/Action Safe` para referencia visual.
- Aplicar animación de texto: seleccionar capa de texto, ir a `Animate > Position` y `Animate > Opacity`. En el `Animator 1`:
  - Opacity: establecer a 0.
  - Position: establecer Y a 100 (para que aparezca desde abajo).
  - En `Range Selector 1 > Advanced`: cambiar `Shape` de "Square" a "Ramp Up". Aumentar `Ease Low` a 100.
  - En `Range Selector 1`: agregar keyframe a `Offset` con valor -100 al inicio; avanzar unos fotogramas y cambiar Offset a 100.
  - Para animar palabra completa (no carácter por carácter): en `Advanced > Based On` cambiar de "Characters" a "Words".
- Duplicar texto animado: seleccionar capa de texto, presionar Ctrl+D. Editar texto y color según se desee.
- Añadir objeto nulo para movimiento secundario: `Layer > New > Null Object`. Seleccionar capa de texto, arrastrar el `Pick Whip` al null para parentearlo.
- Animación del null: seleccionar null, presionar S (escala) y P (posición). Agregar keyframes:
  - Escala: al inicio valor mayor a 100 (ej. 120), luego volver a 100.
  - Posición: ajustar según movimiento deseado.
  - Seleccionar keyframes, presionar F9 para aplicar Easy Ease. Abrir `Graph Editor`, asegurarse de usar `Speed Graph` (no Value Graph). Ajustar curvas para suavizar entrada/salida.
- Variar dirección de aparición de textos duplicados:
  - Para que aparezca desde arriba: en el `Animator 1 > Position`, cambiar Y a -100.
  - Para que aparezca desde la derecha: en `Position`, cambiar X a 100 (o valor positivo) y Y a 0.
  - Para que aparezca desde la izquierda: en `Position`, cambiar X a -100.
- Cambiar `Based On` entre "Words" y "Characters" en `Advanced` para variar el estilo de animación por texto.
- Añadir fondo estilizado:
  - `Layer > New > Adjustment Layer` (opcional) o directamente `Effect > Generate > 4-Color Gradient`. Ajustar colores: dos oscuros, uno claro. Mover puntos de color para crear degradado.
  - Duplicar capa de fondo, aplicar `Effect > Generate > Grid`. Desactivar `Fill`, reducir `Border` (ej. 2), cambiar `Corner` a `Width & Slider`, aumentar `Width` (ej. 100), reducir `Slider` para líneas sutiles.
- Activar Motion Blur: en cada capa de texto y null, activar el interruptor de `Motion Blur` (el icono de obturador). También activar el `Motion Blur` general de la composición (junto al nombre de la comp).

## Reglas para el erudito
- Usa `Shape: Ramp Up` y `Ease Low: 100` para una animación suave de entrada de texto.
- Usa `Based On: Words` cuando quieras que la palabra completa aparezca de una vez; usa `Based On: Characters` para animación carácter por carácter.
- Nunca uses el Value Graph en el Graph Editor para ajustar curvas de null; usa siempre el Speed Graph.
- Siempre presiona F9 (Easy Ease) en los keyframes de null antes de ajustar curvas en el Graph Editor.
- Para animar un texto desde abajo, usa Position Y = 100; desde arriba, Y = -100; desde derecha, X = 100; desde izquierda, X = -100.
- Al duplicar textos (Ctrl+D), el animator se copia automáticamente; solo cambia el texto y ajusta Offset o dirección si deseas variación.
- Activa Motion Blur en cada capa y en la composición para darle aspecto profesional.

## Errores comunes que evita o menciona
- No olvidar activar el Motion Blur tanto en las capas como en el interruptor general de la composición; de lo contrario, la animación se verá estática.
- No usar el Value Graph en lugar del Speed Graph al ajustar curvas de null; el Value Graph controla valores, no velocidad.
- No animar cada texto por separado desde cero; el método correcto es duplicar el texto ya animado y solo ajustar dirección o timing.
- No dejar el `Based On` en "Characters" si se desea que la palabra completa aparezca de golpe; cambiarlo a "Words" evita animación fragmentada.
- No olvidar ajustar el `Ease Low` a 100 para evitar transiciones bruscas en la animación de texto.