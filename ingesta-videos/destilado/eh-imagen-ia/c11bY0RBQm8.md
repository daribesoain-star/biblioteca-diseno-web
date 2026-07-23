# 97306
**Fuente:** eh-imagen-ia | https://youtu.be/c11bY0RBQm8

## Qué enseña
Muestra cómo usar la nueva función de edición de imágenes con texto en Google Gemini para realizar ediciones complejas (cambio de fondo, vestimenta, objetos, estilo artístico, restauración de fotos) sin Photoshop. Demuestra 10 casos de uso práctico con resultados precisos y rápidos.

## Lecciones accionables
- **Eliminar fondo y reemplazarlo:** subir imagen → prompt: *"remove the background and replace it with a subtle blue techy background"* → obtiene recorte limpio sin artefactos en dedos o bordes.
- **Cambiar vestimenta:** subir foto de persona → prompt: *"change my shirt to a green t-shirt"* → resultado en <10 segundos.
- **Combinar dos fotos:** subir dos imágenes (persona + objeto/animal) → prompt: *"have the person hold the puppy"* → luego prompt de seguimiento: *"put this person and the puppy in the same pose outside in a park"* → luego: *"make the puppy twice the size"*.
- **Edición multi-turno (decorar habitación):** subir foto de habitación vacía → prompt 1: *"add a couch here on the right side"* → prompt 2: *"add a dining room set in the back room"* → prompt 3: *"repaint the room white"* → prompt 4: *"remove the hardwood floor and replace with carpet"*.
- **Eliminar objetos no deseados:** subir foto con objetos molestos → prompt: *"remove the cars"* → los objetos desaparecen manteniendo el fondo.
- **Cambiar color de objetos:** subir foto de auto → prompt: *"make this blue"* → luego: *"make it matte black"* (elimina reflejos en la carrocería pero mantiene reflejos en vidrios).
- **Cambiar estilo artístico:** subir foto → prompt: *"turn this into acrylic painting"* → para estilo Pixar usar: *"turn this into an animated cartoon"* (evitar "Pixar style" por posible restricción de copyright).
- **Ideación de thumbnail:** prompt: *"create a YouTube thumbnail about the release of Gemini's new AI image editor"* → luego subir selfie → prompt: *"remove the hand and the photo here and replace it with me instead after you cut me out of the background"* → ajustar contraste: *"add more contrast to the person without changing the background"*.
- **Edición de valla publicitaria:** subir foto de valla → prompt: *"change this picture right here to be a burger instead of this chicken sandwich"* → luego: *"remove all white meat chicken here"* → luego: *"replace with the best burger in town"* → luego: *"put this billboard in Time Square"*.
- **Restauración de fotos antiguas:** subir foto dañada → prompt: *"restore this photo"* → luego: *"colorize and modernize this"* → añade objetos modernos (computadora) y cambia vestimenta.
- **Crear figura de acción (action figure):** subir selfie → prompt con texto personalizado (nombre + subtítulo + accesorios) → luego: *"recreate this head to toe"*.

## Reglas para agentes
- Usa prompts en inglés para mejor precisión en Gemini.
- Cuando pidas cambio de estilo artístico, evita términos como "Pixar style" (posible restricción de copyright); usa "animated cartoon" en su lugar.
- Para ediciones multi-turno, mantén el contexto: cada nuevo prompt se aplica sobre el resultado anterior.
- Si necesitas mover texto en una imagen compuesta, hazlo antes de añadir otros elementos (Gemini tiene limitaciones con la reubicación de texto cuando hay objetos superpuestos).
- Para cambiar color de objetos reflectantes, especifica "matte" si quieres eliminar reflejos en la superficie.
- Siempre descarga la imagen en resolución completa antes de hacer ediciones adicionales (usar el botón de descarga de Gemini).

## Errores comunes que evita o menciona
- **No usar "Pixar style"** para convertir a cartoon: Gemini no lo procesa por posible copyright; usar "animated cartoon" sí funciona.
- **No esperar reubicación precisa de texto** cuando hay múltiples objetos: Gemini falla al mover texto si otros elementos lo bloquean; hacerlo antes de añadir objetos.
- **No asumir que el contraste se mantiene** al insertar una persona en un fondo editado: el contraste de la persona puede quedar bajo; usar prompt específico para ajustarlo sin cambiar el fondo.
- **No confiar en que Gemini entienda "mover texto hacia arriba"** si hay manos u objetos en el camino: probar primero eliminando el objeto bloqueante.
- **No subestimar la capacidad de restauración** incluso con fotos donde no hay detalles faciales visibles: Gemini recrea rostros desde cero.