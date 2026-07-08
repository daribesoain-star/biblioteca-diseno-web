# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 5 - Herramientas de recorte - Trucos
**Fuente:** mundoaudiovisual | https://youtu.be/TJKkKCyblrY

## Qué enseña (2-3 líneas)
Este capítulo enseña a usar las herramientas de recorte (trimming) en DaVinci Resolve para eliminar silencios y partes no deseadas de los clips. Incluye trucos avanzados como atajos de teclado personalizados (Q y W) para recortes rápidos con ripple, y explica el comportamiento del corte múltiple según la selección de pistas.

## Lecciones accionables
- **Zoom rápido en la línea de tiempo:** Presiona `Alt` + rueda del mouse para acercar/alejar centrado en el playhead.
- **Corte con tecla de selección activa (sin cambiar a cuchilla):** Posiciona el playhead y presiona `Control + B` para hacer un corte en el clip.
- **Corte múltiple en todas las pistas:** Asegúrate de que ningún clip esté seleccionado (haz clic fuera) y presiona `Control + B`. Cortará todos los clips en la posición del playhead.
- **Corte en una sola pista:** Selecciona el clip deseado (se pondrá en rojo) y presiona `Control + B`. Solo cortará ese clip.
- **Control de pistas activas para corte múltiple:** Usa los botones "Seleccionar pista automáticamente" (junto a cada pista). Si están desactivados, `Control + B` no cortará esa pista. Mantén todos activados para cortar todo.
- **Recorte con ripple (arrastrando borde):** Selecciona la herramienta de recorte (ícono de dos flechas horizontales) y arrastra el borde del clip. El resto de la línea de tiempo se desplaza automáticamente, eliminando el espacio.
- **Deslizar clip (slide):** Con la herramienta de recorte, coloca el cursor en el borde derecho del clip (aparece icono de dos flechas verticales) y arrastra para deslizar el contenido del clip sin mover su posición en la línea de tiempo.
- **Recorte dinámico:** Selecciona la herramienta de recorte dinámico, presiona `L` (reproducir) y el recorte se mueve automáticamente. Usa `J` para retroceder. Poco recomendado por el instructor.
- **Atajo personalizado Q y W (método recomendado):**
    1. Ve a `Workspace > Keyboard Customization`.
    2. Busca el comando `Mark End and Trim` y asígnale la tecla `Q`.
    3. Busca el comando `Mark Start and Trim` y asígnale la tecla `W`.
    4. **Uso:** Con la herramienta de recorte (ripple) activa, posiciona el playhead donde quieras cortar. Presiona `Q` para recortar todo hacia la izquierda (elimina lo anterior) o `W` para recortar todo hacia la derecha (elimina lo posterior). El corte se hace con ripple automático.
- **Copiar un fragmento de clip:** Selecciona el fragmento, presiona `Alt` y arrastra hacia arriba para duplicarlo en una pista superior.

## Reglas para agentes
- Usa `Control + B` para hacer cortes rápidos sin cambiar de herramienta, manteniendo la selección activa.
- Activa siempre los botones "Seleccionar pista automáticamente" en todas las pistas para que `Control + B` corte todas las capas a la vez.
- Cuando uses `Control + B`, asegúrate de que ningún clip esté seleccionado si quieres cortar todas las pistas; selecciona un clip si solo quieres cortar esa pista.
- Para eliminar un fragmento con ripple, usa la herramienta de recorte (no la de selección) y arrastra el borde del clip.
- Para el método más rápido de recorte, configura los atajos `Q` (Mark End and Trim) y `W` (Mark Start and Trim) y úsalos siempre con la herramienta de recorte activa.
- Nunca uses la herramienta de cuchilla (blade) para cortes básicos; es ineficiente. Prefiere `Control + B` o los atajos Q/W.
- Nunca uses la tecla `Backspace` para eliminar clips si quieres ripple; usa `Delete` (Supr) para cerrar el espacio automáticamente.

## Errores comunes que evita o menciona
- **Error:** Usar la herramienta de cuchilla para cada corte, obligando a cambiar constantemente de herramienta. **Solución:** Usar `Control + B` o los atajos Q/W con la herramienta de recorte activa.
- **Error:** Al presionar `Control + B`, no cortar todas las pistas porque algún clip está seleccionado. **Solución:** Hacer clic fuera de los clips para deseleccionar todo antes de cortar.
- **Error:** Que `Control + B` no corte una pista específica porque el botón "Seleccionar pista automáticamente" está desactivado. **Solución:** Verificar que todos esos botones estén activados (color azul/iluminado).
- **Error:** Al eliminar un clip con `Backspace`, dejar un hueco en la línea de tiempo. **Solución:** Usar `Delete` (Supr) para ripple automático, o usar la herramienta de recorte.
- **Error:** No personalizar los atajos de teclado, perdiendo eficiencia. **Solución:** Asignar Q y W a "Mark End and Trim" y "Mark Start and Trim" respectivamente.