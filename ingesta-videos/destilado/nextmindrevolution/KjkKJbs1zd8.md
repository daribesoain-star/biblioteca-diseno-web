# Kling AI Inpaint & Remove Full Deep dive
**Fuente:** nextmindrevolution | https://youtu.be/KjkKJbs1zd8
## Qué enseña (2-3 líneas)
Explica cómo usar **Inpaint** y **Remove** en Kling AI para crear variaciones, añadir elementos y limpiar composiciones.  
La idea central: **Inpaint regenera lo seleccionado**, mientras que **Remove elimina objetos sin prompt**.

## Lecciones accionables
- En Kling, al pasar el cursor sobre una imagen aparecen los iconos de **Inpaint** y **Remove** en la parte inferior; también aparecen al abrir la imagen en tamaño grande.
- En **Inpaint**, las herramientas principales son **Brush** y **Box Selection**.
- Usa **Brush** para selecciones orgánicas o irregulares; ajusta el **brush size** cuando necesites cubrir zonas grandes o detalles finos.
- Usa **Box Selection** para seleccionar áreas rectangulares: clic, arrastrar y soltar.
- Usa **Eraser** para refinar selecciones y borrar partes pintadas por error.
- Usa **Undo** y **Redo** para revertir o rehacer el último movimiento.
- Usa **Clear** para eliminar toda la selección de una vez.
- Usa **Zoom** y **Move** para acercarte, reposicionar la imagen y seleccionar detalles con precisión.
- Inpaint sirve para **añadir elementos** o **crear variaciones** dentro de la zona seleccionada.
- Prompt usado para añadir un sombrero: `she is wearing a designer's hat`.
- Si seleccionas toda la cabeza para añadir un sombrero, Kling puede cambiar también el rostro, porque Inpaint genera una nueva versión de todo lo que esté dentro de la selección.
- Para añadir un sombrero sin cambiar la cara, selecciona solo el área donde irá el sombrero, sin cubrir el rostro.
- Puedes intentar escribir en el prompt que no cambie la cara, pero el video dice que normalmente eso no funciona bien en Inpaint; eso corresponde más a **Omni One**.
- Si el resultado se ve poco realista, ejecuta más generaciones, por ejemplo **3 o 4**, y añade instrucciones como `hyper realistic`.
- Si haces una selección en Inpaint y dejas el prompt vacío, Kling intenta crear una variación de esa zona.
- Las variaciones sin prompt pueden ser muy sutiles: cambios pequeños en ventanas, hojas, fondo o detalles.
- Para cambios drásticos, escribe un prompt explícito o usa **Omni One**.
- No uses Inpaint como herramienta principal para borrar objetos.
- Prompts mencionados para borrar con Inpaint: `delete this`, `remove that`, `remove the tree`.
- Al usar Inpaint con `remove the tree`, el resultado no elimina bien el árbol; tiende a cambiarlo por otro árbol o variar su estilo.
- Para eliminar objetos, usa **Remove**.
- En **Remove** no hay campo de prompt: seleccionas el objeto y Kling intenta quitarlo automáticamente.
- En Remove, selecciona el objeto a borrar, elige cuántos **outputs** quieres y ejecuta **Run Task**.
- Remove funciona mejor para limpiar composiciones y eliminar elementos no deseados.
- Para borrar una imagen completa del proyecto, no uses Remove; abre el menú de **tres puntos** y usa **Delete** o elimina la generación/asset.

## Reglas para agentes
- Usa **Inpaint** cuando el objetivo sea añadir un elemento nuevo a una imagen.
- Usa **Inpaint** cuando el objetivo sea generar variaciones locales de una zona seleccionada.
- Usa **Remove** cuando el objetivo sea eliminar un objeto de la imagen.
- Nunca uses **Inpaint** como primera opción para borrar objetos si existe **Remove**.
- Selecciona solo la zona que debe cambiar; todo lo seleccionado puede ser regenerado.
- Para añadir accesorios cerca de una cara, selecciona únicamente el espacio del accesorio y evita cubrir rasgos faciales.
- Si el prompt queda vacío en Inpaint, espera cambios sutiles, no transformaciones grandes.
- Si necesitas un cambio fuerte, escribe el cambio en el prompt.
- Usa **Brush** para objetos irregulares como árboles, caras, cabello o siluetas.
- Usa **Box Selection** para áreas rectangulares o fondos simples.
- Usa **Eraser** antes de ejecutar la tarea si la selección invade zonas que deben conservarse.
- Usa varios **outputs** o repite generaciones cuando el primer resultado no sea realista.
- Añade términos como `hyper realistic` cuando el resultado de Inpaint parezca artificial.
- No intentes borrar una imagen del asset usando **Remove**; usa el menú de **tres puntos** y **Delete**.

## Errores comunes que evita o menciona
- Seleccionar toda la cabeza para añadir un sombrero y terminar cambiando el rostro.
- Creer que escribir “no cambies la cara” en Inpaint evitará de forma fiable cambios faciales.
- Usar Inpaint con prompts como `remove the tree` esperando una eliminación limpia.
- Confundir **Remove** con borrar la imagen completa del proyecto.
- Esperar cambios grandes cuando se usa Inpaint con el prompt vacío.
- No hacer zoom ni mover la imagen antes de seleccionar detalles pequeños.
- No refinar la máscara con **Eraser** antes de ejecutar la generación.