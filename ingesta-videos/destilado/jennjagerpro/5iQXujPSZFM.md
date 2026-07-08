# How to Make Text Write on in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/5iQXujPSZFM

## Qué enseña
A crear un efecto de escritura a mano animado sobre cualquier texto en Apple Motion, usando la herramienta Bezier, el comportamiento "Write On" y una máscara de imagen. El método funciona con cualquier fuente, especialmente script fonts.

## Lecciones accionables
- Abre Apple Motion y crea un fondo sólido (color solid) blanco para visualizar bien el texto.
- Escribe el texto deseado usando una fuente script (cursiva) para que el efecto de escritura sea más natural.
- Selecciona la herramienta **Bezier** (icono de pluma) en el menú superior.
- Traza puntos haciendo clic sobre el texto, siguiendo el orden y la dirección en que se escribiría a mano (por ejemplo, letra por letra).
- Presiona **Enter** para finalizar el trazado Bezier.
- En el inspector, ve a la pestaña **Shape** y ajusta el parámetro **Width** para que la línea Bezier cubra todo el texto, pero sea lo más delgada posible.
- Si el trazado tiene esquinas, haz clic derecho sobre un punto de control y selecciona **Smooth** para suavizar la curva; luego ajusta los ángulos y la posición del punto.
- Aumenta el ancho de la línea Bezier gradualmente hasta que no se vea el texto original asomando por debajo.
- Con el Bezier seleccionado, ve a **Behaviors > Shape > Write On**.
- En la línea de tiempo, arrastra los extremos de la barra "Write On" para acortar la duración y hacer que la animación sea más rápida.
- Selecciona el texto original (el que está debajo del Bezier), ve a **Object > Add Image Mask**.
- En el inspector, bajo **Image Mask**, arrastra el Bezier desde la lista de capas al campo **Drop Zone**.
- Reproduce la animación: el texto se dibujará siguiendo el trazado Bezier.
- Para retoques, ajusta puntos de control, suavizado o ancho del Bezier; la velocidad rápida disimula imperfecciones.

## Reglas para agentes
- Usa una fuente script (cursiva) cuando quieras que el efecto de escritura se vea natural.
- Ajusta el ancho del Bezier al mínimo necesario para cubrir todo el texto, sin excederte.
- Haz que la animación "Write On" sea rápida (acorta la barra en la línea de tiempo) para ocultar pequeñas imperfecciones en el trazado.
- Siempre suaviza (Smooth) los puntos de control del Bezier que generen esquinas bruscas.
- Nunca uses un Bezier demasiado grueso, porque el efecto se verá artificial y cubrirá detalles de la fuente.

## Errores comunes que evita o menciona
- No cubrir completamente el texto con el Bezier: el texto original se asoma y arruina el efecto.
- Hacer el Bezier demasiado grueso: se pierde la sensación de escritura a mano.
- No suavizar los puntos de control: el trazado se ve angular y poco natural.
- Dejar la animación demasiado lenta: las imperfecciones en el trazado se vuelven evidentes.
- Olvidar arrastrar el Bezier al campo "Drop Zone" de la máscara de imagen: sin ese paso, el efecto no funciona.