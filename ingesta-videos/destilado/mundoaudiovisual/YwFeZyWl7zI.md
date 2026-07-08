# Curso de After Effects en español - 🎬 Capítulo 3 - Tu Primer Efecto de Video con Fotogramas Clave.
**Fuente:** mundoaudiovisual | https://youtu.be/YwFeZyWl7zI

## Qué enseña (2-3 líneas)
Este capítulo enseña el uso de fotogramas clave (keyframes) en After Effects para animar propiedades como posición, escala, rotación y opacidad. Aplica estos conceptos para crear un efecto completo donde un texto aparece entre las manos al abrirse, usando máscaras animadas y el efecto "Scatter" de simulación.

## Lecciones accionables
- **Activar fotogramas clave:** Haz clic en el cronómetro (stopwatch) junto a la propiedad que deseas animar (posición, escala, rotación, opacidad, color). Esto crea el primer keyframe en la línea de tiempo.
- **Crear movimiento lineal:** Coloca el indicador de tiempo en un fotograma, activa el cronómetro de "Posición", mueve la capa a la ubicación deseada. Luego, desplaza el indicador a otro punto y cambia la posición. After Effects interpola automáticamente el movimiento.
- **Ajustar duración del movimiento:** Arrastra los keyframes en la línea de tiempo para separarlos o acercarlos, controlando la velocidad del cambio.
- **Activar desenfoque de movimiento (Motion Blur):** Activa el botón "Enable motion blur for all layers that have the definer" en la línea de tiempo, y luego activa el interruptor de Motion Blur en la capa específica.
- **Usar el Editor de Gráficos (Graph Editor):** Haz clic en el botón "Graph Editor" para ver curvas de velocidad o valor. Cambia entre "Value Graph" y "Speed Graph" usando el botón correspondiente. Añade puntos en la curva y ajústalos para crear aceleraciones y desaceleraciones (por ejemplo, inicio lento, luego rápido, luego lento).
- **Animar múltiples propiedades simultáneamente:** Activa keyframes para posición, escala y rotación en la misma capa. Cambia cada propiedad en diferentes momentos para crear animaciones complejas (ej. bola que se mueve, cambia de tamaño y gira).
- **Animar color con keyframes:** Aplica el efecto "Color" (o "Tint") a una capa. Activa el cronómetro en la propiedad de color del efecto. Cambia el color en diferentes keyframes para transicionar entre colores (ej. de rojo a azul).
- **Crear máscaras animadas:** Selecciona la capa de texto, usa la herramienta de máscara (rectángulo o pluma) para dibujar una máscara sobre el texto. En la propiedad "Mask Path", activa el cronómetro. En keyframes posteriores, ajusta la forma de la máscara para que coincida con el movimiento de las manos (abriendo/cerrando). Cambia el modo de la máscara a "Subtract" para ocultar partes del texto.
- **Animar opacidad de texto:** Activa keyframes en "Opacity" de la capa de texto. Pon opacidad 0% cuando las manos están cerradas, y 100% cuando comienzan a abrirse.
- **Aplicar efecto Scatter (simulación):** Ve a Effects > Simulation > Scatter. Ajusta parámetros: "Shape" a "Brick", "Strength" a 1, "Radius" inicial pequeño. Activa keyframes en "Radius" y aumenta su valor en keyframes posteriores para que el texto se disperse. En "Physics", desactiva "Gravity" y "Mass Variance".
- **Añadir capa de humo/partículas:** Importa un video o imagen de humo. Colócalo sobre el texto. Crea una máscara en la capa de humo para limitar su área. Cambia el modo de fusión (Blending Mode) a "Screen" o "Add". Anima opacidad y escala: keyframe en opacidad 0% antes de la acción, 100% al presionar, luego 0% al disiparse. Keyframe en escala para que crezca.
- **Ajustar exposición con Lumetri:** Ve a Window > Effects, busca "Lumetri Color". Reduce la exposición para oscurecer la escena y ajusta tonos rojos para dar atmósfera.

## Reglas para agentes
- Usa el cronómetro (stopwatch) para activar keyframes en cualquier propiedad que quieras animar; nunca intentes animar sin activarlo primero.
- Cuando crees máscaras para ocultar texto detrás de objetos, cambia el modo de la máscara a "Subtract" para que el texto se oculte en esa área.
- Activa Motion Blur en la capa y en el botón global siempre que quieras que el movimiento se vea más realista y suave.
- Usa el Graph Editor para ajustar la velocidad de animación cuando necesites movimientos no lineales (acelerar, desacelerar); nunca dejes keyframes lineales si buscas realismo.
- Para efectos de dispersión (Scatter), desactiva gravedad y variación de masa en Physics para que las partículas no caigan ni tengan comportamientos aleatorios no deseados.
- Cuando combines capas de humo/partículas, usa modos de fusión "Screen" o "Add" para que se integren visualmente con el fondo.
- Anima opacidad y escala simultáneamente en efectos de aparición/desaparición para que el elemento aparezca y crezca de forma natural.

## Errores comunes que evita o menciona
- **No olvidar activar el cronómetro:** Si no activas el cronómetro, no se crearán keyframes y no podrás animar la propiedad.
- **No confundir keyframe lineal con movimiento realista:** El movimiento lineal tiene velocidad constante; para simular aceleración/desaceleración, usa el Graph Editor para curvar la velocidad.
- **No dejar máscaras sin animar:** Si las manos se mueven pero la máscara no sigue su trayectoria, el texto aparecerá o desaparecerá en el lugar equivocado.
- **No olvidar cambiar el modo de máscara a "Subtract":** Si usas "Add", la máscara mostrará el texto en lugar de ocultarlo.
- **No aplicar Scatter sin keyframes en Radius:** Si no animas el radio, el efecto de dispersión no ocurrirá progresivamente.
- **No dejar opacidad en 100% todo el tiempo:** Si el texto o el humo son visibles desde el inicio, el efecto sorpresa se pierde.
- **No olvidar desactivar gravedad en Scatter:** Si la gravedad está activa, las partículas caerán hacia abajo en lugar de dispersarse uniformemente.