# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 7 - Las transiciones y los generadores.
**Fuente:** mundoaudiovisual | https://youtu.be/9a8Vk7VeYxg

## Qué enseña (2-3 líneas)
Este capítulo explica cómo aplicar y personalizar transiciones de video (como fundidos, cortinillas y efectos) para profesionalizar los cortes entre clips. También cubre el uso de generadores (color sólido, barras de color, ruido, humo) y cómo combinarlos con modos de composición para crear efectos visuales avanzados.

## Lecciones accionables
- **Añadir una transición:** Ve a la pestaña "Effects Library" > "Video Transitions". Arrastra la transición deseada (ej. "Cross Dissolve", "Color Fade", "Iris Cross") y suéltala en el punto de corte entre dos clips. Puedes colocarla en el centro, al inicio o al final del corte.
- **Ajustar duración de transición:** Selecciona la transición en la línea de tiempo. En el "Inspector", cambia "Duration" en segundos o frames. También puedes arrastrar los bordes de la transición en la línea de tiempo.
- **Cambiar la posición de la transición:** En el "Inspector", en la sección "Alignment", elige entre "Center", "Start" (left) o "End" (right). Si el clip no tiene metraje antes de su inicio, solo permitirá "Center" o "Start".
- **Personalizar curvas de velocidad:** En el "Inspector", en "Easing", selecciona "In/Out" o personaliza la curva manualmente para que la transición sea más lenta al inicio o al final.
- **Crear fundido a negro/color manualmente:** En el borde superior del clip, arrastra el triángulo blanco hacia la izquierda para bajar la opacidad a 0% (fundido a negro). Para fundido a blanco, coloca un generador "Solid Color" blanco debajo del clip y ajusta la opacidad del clip superior.
- **Añadir un generador:** Ve a "Effects Library" > "Generators". Arrastra un generador (ej. "Solid Color", "Noise", "Smoke") a la línea de tiempo sobre un clip. En el "Inspector" puedes ajustar color, escala, zoom y opacidad.
- **Usar modos de composición en generadores:** Selecciona el generador en la línea de tiempo. En el "Inspector", en "Settings" o "Compositing", cambia el modo a "Add" para mezclar el generador con el clip de abajo (ej. humo o ruido sobre la imagen).
- **Añadir borde a transiciones (ej. Iris Cross):** Selecciona la transición. En el "Inspector", activa "Border" y elige color y grosor.

## Reglas para agentes
- Usa "Cross Dissolve" para transiciones uniformes y profesionales entre clips.
- Usa "Color Fade" (negro o blanco) para entradas y salidas de video, especialmente al inicio o final del proyecto.
- Nunca uses transiciones llamativas (ej. "Heart", "Spiral Wipe") en contenido serio o corporativo; resérvalas para videos personales o creativos.
- Cuando un clip no tenga metraje antes de su inicio, usa "Center" o "Start" alignment en la transición; "End" no estará disponible.
- Para fundidos personalizados, ajusta la opacidad del clip manualmente arrastrando el triángulo blanco en el borde, no uses la transición "Color Fade" desde la biblioteca.
- Siempre espera a que la barra roja sobre la transición se vuelva azul (renderizado) antes de reproducir, para evitar saltos o cortes.

## Errores comunes que evita o menciona
- **Transición abrupta sin renderizar:** Si la línea sobre la transición es roja, el efecto no se verá suave; espera a que se vuelva azul.
- **Usar transiciones sin metraje suficiente:** Si un clip no tiene contenido antes de su punto de inicio, no podrás alinear la transición a la izquierda; solo funcionará centrada o al inicio.
- **Sobrecargar el video con transiciones llamativas:** El instructor recomienda no abusar de transiciones como "Spiral Wipe" o "Heart" porque pueden verse poco profesionales.
- **Confundir generadores con efectos:** Los generadores son elementos independientes (color, ruido, humo) que se colocan en la línea de tiempo, no efectos que se aplican directamente a clips.