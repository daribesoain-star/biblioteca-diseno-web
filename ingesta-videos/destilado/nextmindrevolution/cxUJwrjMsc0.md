# FLOW Nano Banana Tutorial: Reasoning-Based Image Editing Tools
**Fuente:** nextmindrevolution | https://youtu.be/cxUJwrjMsc0
## Qué enseña (2-3 líneas)
Enseña cómo usar Nano Banana Pro dentro de Flow para editar imágenes con razonamiento: el modelo interpreta prompts, selecciones, flechas, dibujos y anotaciones sobre la imagen.  
Muestra cómo mantener consistencia de personaje, reemplazar objetos, cambiar fondos, hacer inpainting, limpiar anotaciones incrustadas y expandir imágenes con outpainting.

## Lecciones accionables
- Para crear la imagen base en Flow: ir abajo a **Create Image**, pegar el prompt, configurar **one single output**, elegir ratio **landscape**, seleccionar **Nano Banana Pro** y ejecutar **Run task**.
- Prompt inicial VERBATIM: `A realistic photo of an aesthetic young woman with messy hair and an oversized sweater reading a blue book. The setting is a cozy cafe with dark wood bookshelves, soft velvet armchairs, and warm fairy lights during a rainy day. The mood should be calm with the focus on the texture of the worn book pages, water drops on the window, and steam rising from a ceramic cup. Use a side view for the composition.`
- Para editar una imagen ya generada: hacer clic en la imagen, entrar en **edit mode** y escribir instrucciones en el campo **Edit image**. Flow trabaja sobre el **selected canvas** o **selected image**.
- Nano Banana mantiene bien la consistencia del personaje; úsalo para conservar identidad mientras cambias ubicación, pose, ropa, pelo o fondo.
- Edición simple demostrada: cambiar la taza blanca a azul con la instrucción `change the color of the coffee cup to blue`.
- Edición fuerte demostrada: cambiar ropa, fondo y ambiente manteniendo identidad y pose. Prompt usado: `Replace the white sweater for a red shirt. Replace the background for a 1950 restroom style. keeps the woman identity and pose exactly the same.`
- Si quieres insertar un sujeto en otra ubicación con más realismo, puede funcionar mejor crear primero el sujeto y luego ponerlo en otra localización, en vez de transformar toda la escena de golpe.
- Herramienta **doodle / brush**: sirve para dibujar, marcar o señalar visualmente una zona y luego pedir el cambio por prompt.
- Ejemplo con doodle: pintar encima del libro y pedir `replace book for a gray tablet` o simplemente `a gray tablet`; Nano Banana entiende que debe reemplazar el libro marcado por una tablet gris.
- El doodle no solo sirve para seleccionar: también puedes dibujar una forma nueva. Ejemplo: dibujar una gorra y usar el prompt `a baseball cap`; el modelo genera una gorra realista en esa zona.
- Herramienta **arrow tool**: úsala para apuntar a un objeto específico. Ejemplo: flecha hacia la taza y prompt `remove`; no hace falta escribir `remove the coffee cup` si la flecha ya apunta al objeto.
- Herramienta **box selection**: está pensada para **inpainting**. Selecciona un área y pide qué debe aparecer dentro o qué debe reemplazarse.
- No combines **box selection** y **arrow tool** para la misma instrucción si no es necesario. En el ejemplo, seleccionar la taza con box, apuntarla con flecha y usar `a bottle` produjo una botella, pero también dejó la flecha incrustada en la imagen.
- Si el modelo conserva la selección, flecha o marca dentro del resultado, pídele limpiar esos elementos con el prompt `remove blue drawings and annotations`.
- Para reemplazos, la keyword exacta **replace** ayuda mucho. En vez de solo `a bottle of water`, usar algo como `replace the coffee cup for a bottle of water`.
- Otro ejemplo con keyword: seleccionar un área cercana a la ventana y usar `replace the window for a wall`; el modelo reemplaza la ventana por una pared.
- Puedes usar doodles de distintos colores. Ejemplo operativo: hacer un doodle rojo y uno azul, luego escribir instrucciones separadas como “do something on the red doodle” y “do something on the blue doodle”; Nano Banana razona sobre colores y marcas.
- Puedes escribir notas directamente sobre la imagen como instrucciones visuales. Ejemplos de anotaciones: `remove the cup` y `she is looking at the camera`.
- Para que las anotaciones funcionen, acompáñalas con el prompt `follow edit instructions on annotations`. La keyword exacta importante es **annotations**.
- Las anotaciones, flechas y selecciones no se conservan si la edición falla; si necesitas repetir, tendrás que recrearlas.
- Aunque puedes hacer muchas anotaciones a la vez, conviene probar de una en una para reducir errores.
- **Outpaint** permite expandir la imagen desde los bordes para mostrar más habitación, paisaje o escena.
- Keyword exacta para outpainting: **outpaint**.
- Prompt de expansión general: `out paint the image from all sides`. Mantiene el ratio y expande de forma equilibrada desde todos los lados.
- Prompt de expansión lateral: `outpaint the image from the left side`. Expande la escena solo hacia la izquierda.
- Después de outpainting, las mismas reglas aplican: puedes usar **box selection** para remover o inpaint, doodle para agregar elementos y prompts con **replace** para cambios precisos.

## Reglas para agentes
- Usa **Nano Banana Pro** en Flow cuando necesites edición de imagen basada en razonamiento e instrucciones visuales.
- Usa **Edit image** solo después de seleccionar una imagen o canvas específico.
- Usa prompts explícitos con **replace** cuando quieras sustituir un objeto o parte de la escena.
- Usa **doodle / brush** cuando quieras dibujar una forma nueva o marcar visualmente qué zona debe transformarse.
- Usa **arrow tool** cuando quieras apuntar a un único objeto y dar una instrucción corta como `remove`.
- Usa **box selection** cuando quieras hacer **inpainting** dentro de una región delimitada.
- Nunca uses flecha y box para indicar la misma operación salvo que aceptes riesgo de que las marcas queden incrustadas.
- Si aparecen marcas, flechas o anotaciones en el resultado, ejecuta una limpieza con `remove blue drawings and annotations`.
- Usa la keyword **annotations** cuando escribas instrucciones encima de la imagen y quieras que el modelo las siga.
- Mantén las anotaciones simples y prueba una instrucción por vez cuando la edición sea delicada.
- Usa **outpaint** cuando quieras expandir una imagen desde los bordes.
- Especifica dirección en outpainting: `from all sides`, `from the left side`, `from the right side`, `top` o `bottom`.
- Para preservar identidad del personaje, dilo explícitamente: `keeps the woman identity and pose exactly the same`.
- Si necesitas máximo realismo al cambiar de locación, crea primero el sujeto y luego intégralo en la nueva escena.

## Errores comunes que evita o menciona
- Pedir cambios complejos de escena puede mantener identidad y pose, pero no siempre produce integración completamente realista.
- Usar prompts demasiado mínimos como `a bottle of water` puede hacer que el modelo no entienda que debe reemplazar el objeto existente.
- No usar la keyword **replace** puede provocar que el modelo agregue o conserve elementos en vez de sustituirlos.
- Combinar **box selection** y **arrow tool** para la misma instrucción puede incrustar la flecha, el recuadro o las marcas en la imagen final.
- Las anotaciones pueden quedar quemadas en la imagen si el modelo interpreta que forman parte del resultado visual.
- Si una edición con anotaciones falla, Flow no mantiene esas anotaciones para reintentar; hay que recrearlas.
- Hacer muchas anotaciones simultáneas aumenta la probabilidad de resultados mixtos o marcas persistentes.
- Seleccionar solo parte del objeto o una zona demasiado ambigua puede producir resultados inconsistentes.
- Esperar que el modelo “adivine” reemplazo sin una instrucción clara puede generar salidas parciales o incorrectas.