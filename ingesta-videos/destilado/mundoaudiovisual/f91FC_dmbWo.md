# Curso de Motion 5 tutorial en español - 🎬 * Capítulo 7 - Cámaras y entorno 3D
**Fuente:** mundoaudiovisual | https://youtu.be/f91FC_dmbWo

## Qué enseña
Introducción al entorno 3D en Motion 5: cómo añadir y manipular cámaras, trabajar con los ejes X, Y, Z, y crear una escena tridimensional básica con fondo, suelo y paredes laterales. Se explica la conversión de grupos 2D a 3D, el uso de vistas de cámara (activa, superior, perspectiva) y la aplicación de comportamientos de cámara como el barrido.

## Lecciones accionables
- Para activar el entorno 3D, añade una cámara: ve a **Objeto > Nueva cámara** o usa el botón **Añadir objeto** y selecciona **Cámara**. Al aparecer el mensaje "La cámara solo afecta a grupos 3D. ¿Quieres convertir tus grupos 2D a 3D?", haz clic en **Cambiar a 3D**.
- Identifica los grupos 3D por el icono de capas apiladas; los grupos 2D tienen un icono de imagen simple.
- Para mover un objeto en el eje Z (profundidad), en el **Inspector > Propiedades > Posición**, ajusta el parámetro **Z**. Un valor negativo (ej. -1000) aleja el objeto de la cámara; un valor positivo lo acerca.
- Usa las flechas de transformación en el lienzo: **flecha roja** = eje X (izquierda/derecha), **flecha verde** = eje Y (arriba/abajo), **flecha azul** = eje Z (adelante/atrás). Aparecen al seleccionar un objeto.
- Para rotar un objeto, usa los **aros de rotación** que aparecen al pasar el ratón sobre el objeto: **aro rojo** = rotación en X, **aro verde** = rotación en Y, **aro azul** = rotación en Z. Los cambios se reflejan en el Inspector.
- Cambia la vista de cámara desde el menú desplegable superior del lienzo: selecciona **Cámara activa**, **Superior**, **Frontal**, **Perspectiva**, etc. La vista **Superior** muestra la posición de objetos y cámara desde arriba.
- Para mover la cámara directamente, selecciona la cámara en la lista de capas y usa los controles del lienzo o el **Inspector > Propiedades > Posición** (X, Y, Z) y **Rotación** (X, Y, Z).
- Usa los botones de navegación 3D en la esquina superior del lienzo: **primer botón** (mano) = mover cámara en X/Y, **segundo botón** (flechas curvas) = rotar cámara, **tercer botón** (lupa) = zoom in/out de la cámara.
- Para crear un suelo: duplica el objeto de fondo, ajústalo en **Rotación X = -90°** para que quede horizontal, y colócalo en **Posición Z = -1000** (o el valor que tenga el fondo). Luego ajusta **Posición Y** para que quede alineado con la base del fondo.
- Para crear paredes laterales: duplica el fondo, ajústalo en **Rotación Y = 90°** (pared derecha) o **-90°** (pared izquierda). Coloca la pared en **Posición X** con el mismo valor absoluto que la distancia del fondo en Z (ej. si fondo está en Z=-846, pon pared en X=-846 y la opuesta en X=846).
- Para añadir un comportamiento de cámara: selecciona la cámara, ve a **Biblioteca > Comportamientos > Cámara > Barrido**. Ajusta los parámetros **Ángulo inicial** y **Ángulo final** (ej. -19° a 19°) para definir el recorrido.
- Para aplicar filtros a objetos 3D: selecciona el objeto, ve a **Biblioteca > Filtros > Color > Tono/Saturación/Brillo** o **Estilizar > Reducción de ruido**. Ajusta intensidad y semilla para realismo.
- Para acortar la duración de un grupo o cámara: selecciona el grupo o cámara en la línea de tiempo, arrastra el extremo derecho hacia la izquierda hasta la duración deseada (ej. 5 segundos).

## Reglas para agentes
- Usa **Cambiar a 3D** cuando añadas una cámara a un proyecto con grupos 2D existentes.
- Nunca confundas el escalado de un objeto con su movimiento en el eje Z: un valor negativo en Z aleja el objeto, no lo escala.
- Siempre verifica la vista de cámara activa antes de ajustar posiciones; usa **Cámara activa** para ver el resultado final.
- Cuando crees paredes o suelos, usa **duplicar** el objeto base y ajusta solo rotación y posición, no el tamaño.
- Para alinear objetos en 3D, usa la vista **Superior** o **Perspectiva** para ver las posiciones relativas.
- Al añadir un comportamiento de barrido, asegúrate de que los ángulos inicial y final no excedan los límites de la escena para evitar que se vean bordes.

## Errores comunes que evita o menciona
- No confundir el movimiento en el eje Z con el escalado: al alejar un objeto en Z, parece más pequeño, pero no se ha escalado.
- Al crear el suelo, la posición Z debe ser igual a la del fondo (ej. -1000) pero ajustada porque el suelo tiene mitad de grosor; se corrige moviendo el suelo en Y hasta que coincida visualmente.
- Si la cámara se "pierde" o no sabes dónde está, reinicia sus parámetros de posición X e Y a 0 en el Inspector y luego reajusta rotación y altura.
- Al duplicar paredes, verifica que la posición X de la pared derecha sea el valor positivo exacto de la izquierda (ej. 846 y -846) para que queden simétricas.
- El filtro de ruido puede no ser útil para realismo; si no gusta el resultado, elimínalo.