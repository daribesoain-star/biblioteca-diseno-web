# Curso de Motion 5 tutorial en español - 🎬 * Capítulo 12 - Comportamientos de Las Luces
**Fuente:** mundoaudiovisual | https://youtu.be/fmN8px4bS2c

## Qué enseña (2-3 líneas)
Este capítulo enseña a aplicar comportamientos de parámetros y animación a luces en Motion 5, incluyendo colorear luces, crear efectos de barrido con spotlight, y sincronizar el movimiento de un objeto con la luz que lo ilumina usando el comportamiento "Apuntar a". También cubre la duplicación de luces con comportamientos copiados y el ajuste de parámetros para movimientos asincrónicos.

## Lecciones accionables
- **Renombrar luces en el inspector:** Seleccionar cada luz, ir a la pestaña "Propiedades" y cambiar el nombre en el campo superior para identificar cada luz (ej: "low lighting", "top light", "right light", "left light", "ambient light").
- **Agrupar luces:** Crear un nuevo grupo vacío (menú + o clic derecho en la lista de capas), nombrarlo "lights", y arrastrar todas las luces dentro de ese grupo.
- **Colorear una luz:** Seleccionar la luz, ir al inspector > pestaña "Luces", hacer clic en el cuadrado de color para abrir la paleta, elegir un tono (ej: rojizo para la luz derecha, azul para la izquierda), y ajustar la intensidad (ej: 205 para ambas, luego 200 y 250).
- **Crear un spotlight concentrado:** Añadir una nueva luz, en el inspector > "Luces" > desactivar "Ángulo de zoom" (no bajar), seleccionar tipo "Redondo", ajustar posición para que cubra el logo, y en "Propiedades" > "Extracción" > "Hilo" poner a 0 para bordes perfectos.
- **Añadir comportamiento de parámetro a una luz:** Seleccionar la luz, hacer clic en el pequeño icono de flecha/tab junto al parámetro deseado (ej: "Rotación Y"), elegir "Añadir comportamiento de parámetro" > "Balanceo" (Wobble). Esto hará que la luz oscile en ese eje.
- **Limitar el rango de balanceo:** En el inspector del comportamiento "Balanceo", ajustar "Amplitud" (ej: 3 puntos) para que el movimiento solo cubra la parte deseada (ej: solo la pared, no el suelo).
- **Animar un objeto para que siga la luz con keyframes:** Seleccionar el logo, ir a "Propiedades" > "Posición", en el fotograma 0 hacer clic en el diamante de keyframe para fijar posición inicial. Avanzar en la línea de tiempo, mover el logo a la nueva posición (se crea keyframe automáticamente). Repetir hasta el final.
- **Usar "Apuntar a" para que la luz siga un objeto:** Seleccionar la luz, ir a Biblioteca > "Comportamientos" > "Animación básica" > "Apuntar a". Arrastrar el comportamiento sobre la luz. En el inspector del comportamiento, en el campo "Objeto", seleccionar el logo. La luz apuntará automáticamente al logo mientras se mueve.
- **Añadir comportamiento "Balanceo" al logo:** Seleccionar el logo, ir a Biblioteca > "Comportamientos" > "Animación básica" > "Balanceo". Ajustar "Amplitud" para controlar el ancho del movimiento.
- **Duplicar una luz con comportamiento:** Seleccionar la luz original, presionar Cmd+D para duplicar. Mover la copia a la posición deseada (ej: derecha). Para copiar el comportamiento a la nueva luz, mantener presionada la tecla **Opt** y arrastrar el comportamiento desde la luz original hasta la luz duplicada.
- **Desincronizar movimientos de luces duplicadas:** Seleccionar el comportamiento "Velocidad" en una de las luces, en el inspector cambiar "Desviación final" (ej: de 0 a 56) para que los movimientos no sean idénticos.
- **Animar apertura de spotlight con keyframes:** En fotograma 0, poner keyframe en "Ángulo de contorno" (valor pequeño). Avanzar unos fotogramas (ej: 6), aumentar "Ángulo de contorno" y poner otro keyframe para que el spotlight se abra gradualmente.

## Reglas para agentes
- Usa "Apuntar a" cuando necesites que una luz siga automáticamente a un objeto en movimiento.
- Cuando copies un comportamiento a otra luz, usa la tecla **Opt** + arrastre para mantener la independencia de parámetros.
- Ajusta "Amplitud" en el comportamiento "Balanceo" para controlar el rango exacto del movimiento de la luz.
- Pon "Extracción" > "Hilo" a 0 en spotlights para eliminar bordes suaves y obtener un círculo perfecto.
- Nunca dejes luces sin nombre en proyectos complejos; renómbralas inmediatamente según su función (ej: "top light", "ambient light").
- Para que dos luces duplicadas tengan movimientos diferentes, cambia "Desviación final" en el comportamiento de velocidad de una de ellas.

## Errores comunes que evita o menciona
- **No confundir qué luz es cuál:** El instructor muestra que al abrir un proyecto antiguo es fácil olvidar qué luz hace qué, por eso recomienda renombrarlas al inicio.
- **No usar keyframes manuales cuando el comportamiento "Apuntar a" es más eficiente:** Inicialmente intenta animar el logo con keyframes para que coincida con la luz, pero luego muestra que "Apuntar a" resuelve el seguimiento automáticamente.
- **No olvidar que al desactivar todas las luces, Motion ilumina todo por defecto:** Si no hay luces activas, la escena se ve completamente iluminada, lo que puede confundir al ajustar luces individuales.
- **No copiar comportamientos sin la tecla Opt:** Si arrastras un comportamiento sin Opt, se mueve en lugar de copiarse, perdiendo el comportamiento original.