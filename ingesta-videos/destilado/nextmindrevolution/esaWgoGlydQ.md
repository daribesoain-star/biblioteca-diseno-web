# How to Edit AI Images: FLOW Nano Banana editing tools Tutorial (2026 Update)
**Fuente:** nextmindrevolution | https://youtu.be/esaWgoGlydQ
## Qué enseña (2-3 líneas)
Enseña cómo editar imágenes en Google Flow usando Nano Banana mediante prompts, selecciones visuales, doodles, anotaciones, recorte y outpainting.  
La idea central es combinar instrucciones textuales precisas con herramientas de selección para indicar exactamente qué parte de la imagen debe cambiarse.

## Lecciones accionables
- Para editar una imagen en Flow: haz clic en la imagen, abre la vista grande y usa el campo de prompt o las herramientas del lado izquierdo.
- Nano Banana funciona como modelo de razonamiento: puede interpretar objetos dentro de la imagen sin máscaras perfectas si el prompt es claro.
- Prompt directo para cambiar un objeto: `change the color of the coffee cup to white`.
- Para cambiar el entorno sin alterar el sujeto, especifica explícitamente qué conservar: cambiar el suéter por camisa roja, reemplazar el fondo por 1950s y mantener `the woman's identity and pose exactly the same`.
- Si una generación falla por demanda alta o errores temporales, vuelve a ejecutarla.
- Si el resultado no sale bien, cambia keywords o reformula el prompt y vuelve a generar.
- El historial aparece a la derecha: puedes seleccionar cualquier versión y verla en el panel principal.
- Usa `save to project` para guardar una edición como copia dentro del proyecto.
- Al guardar una edición como copia, esa nueva imagen no conserva el historial de la imagen original.
- Herramientas disponibles: `crop tool`, `box selection`, `lasso`, `doodle`, `annotations`.
- Doodle sirve para señalar o dibujar una zona objetivo: dibuja sobre el objeto y luego escribe el cambio.
- Ejemplo con doodle sobre el libro: prompt `a gray tablet` para reemplazar el libro por una tablet gris.
- Doodle también puede indicar dónde agregar algo: dibuja una persona en el fondo y usa el prompt `a person standing at the back`.
- Para agregar objetos simples con doodle: dibuja la forma aproximada, por ejemplo un sombrero, y promptéalo como `hat`.
- Box selection permite seleccionar un área rectangular y pedir un cambio sobre esa zona.
- Ejemplo con box selection sobre la taza: prompt para reemplazarla por `a bottle of water`. El instructor aclara que es mejor escribir el cambio completo, por ejemplo `replace the coffee cup with a bottle of water`.
- Para reemplazar fondo u objetos cercanos al sujeto, selecciona la zona y especifica el objeto exacto: `replace the window with a wall`.
- Las anotaciones permiten escribir instrucciones directamente sobre la imagen.
- Flujo de anotaciones: selecciona una zona, activa `annotations`, escribe la instrucción y añade una flecha si hace falta.
- Ejemplo de anotación sobre rostro: `she is looking at the camera`.
- Ejemplo de anotación sobre taza: `remove the cup`.
- Para que Nano Banana use las anotaciones, el prompt debe decir: `follow edit instructions on annotations`.
- Box selection y lasso en el modo de selección puntual solo permiten una selección a la vez.
- Box selection es especialmente útil para eliminar objetos: seleccionar taza y prompt `remove the cup`.
- Lasso funciona igual que box selection, pero permite una selección más precisa con contorno manual.
- Crop permite ratios: `landscape`, `portrait`, `square`, múltiples ratios y `free form`.
- El recorte queda guardado como una entrada del historial con un icono propio.
- Un recorte puede perder calidad; para mejorarlo, selecciona la versión recortada y usa el prompt `enhance image`.
- El recorte no solo sirve para cambiar proporción: puedes recortar un objeto, guardarlo con `save to project` y reutilizarlo como `ingredient` en otras generaciones.
- Para outpainting no hay botón visible específico: usa prompt conversacional.
- Prompt de outpainting: `outpaint the image from all sides`.
- Outpainting extiende la imagen imaginando más contenido en los bordes, por ejemplo más barra, ventana o techo.

## Reglas para agentes
- Usa prompt directo cuando el cambio sea simple y el objeto sea evidente.
- Usa selección visual cuando debas cambiar una parte concreta de la imagen.
- Usa doodle cuando quieras indicar ubicación, forma aproximada o intención espacial.
- Usa box selection para cambios rectangulares o eliminación de objetos.
- Usa lasso cuando necesites una selección más precisa que un rectángulo.
- Usa annotations cuando haya varias instrucciones visuales dentro de una misma imagen.
- Siempre añade `follow edit instructions on annotations` cuando uses anotaciones escritas sobre la imagen.
- Cuando selecciones una zona que toca al sujeto, especifica exactamente qué debe cambiar y qué debe conservarse.
- Para conservar identidad y pose, dilo explícitamente en el prompt.
- Guarda con `save to project` cualquier variante que quieras reutilizar fuera del historial.
- Antes de usar `enhance image`, verifica que la versión recortada esté seleccionada.
- Usa `outpaint the image from all sides` cuando quieras extender la imagen sin una herramienta visible de outpainting.
- No asumas que una edición guardada conservará el historial de la imagen original.
- No abandones una edición por un primer mal resultado: ajusta keywords y reintenta.

## Errores comunes que evita o menciona
- Nano Banana puede fallar temporalmente por alta demanda; hay que volver a generar.
- Prompts vagos producen resultados inconsistentes; conviene cambiar keywords o dar más información.
- Si seleccionas parte del sofá o del sujeto al cambiar una ventana, Nano Banana puede confundirse y alterar elementos no deseados.
- Al reemplazar una ventana por una pared, puede conservarse iluminación incoherente del sujeto.
- Box selection puede eliminar objetos adicionales además del objetivo.
- Los recortes pueden verse con baja calidad si no se mejoran después.
- `enhance image` puede inpaintar o agregar detalles; no genera una copia perfectamente idéntica al original.
- Las anotaciones pueden ignorarse si no se pide explícitamente seguirlas con `follow edit instructions on annotations`.