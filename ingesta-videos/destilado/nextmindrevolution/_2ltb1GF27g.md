# How to Create an AI Falling from the sky VIRAL Videos (Step-by-Step Tutorial)
**Fuente:** nextmindrevolution | https://youtu.be/_2ltb1GF27g
## Qué enseña (2-3 líneas)
Enseña a crear un video viral de una persona cayendo del cielo usando una foto de cuerpo completo como referencia, generando primero el encuadre final y luego animándolo con una herramienta de start frame/end frame.  
El flujo combina FreePik, Nano Banana, Gemini y Kling 2.6, ajustando composición, movimiento de cámara y poses del sujeto para que el resultado sea más dinámico.

## Lecciones accionables
- Usa una foto de cuerpo completo del sujeto como referencia inicial. Si eres el sujeto, toma la foto con trípode o pide a otra persona que te fotografíe.
- En FreePik, entra al image generator y usa Nano Banana para generar la imagen base.
- Configura el formato según destino: `16:9` para landscape; `9:16` para portrait.
- Añade el personaje desde `characters`, selecciona la imagen del sujeto y pulsa `use the image` para usarla como referencia.
- El primer prompt completo no aparece en pantalla/transcripción, pero el autor explica su estructura: describe que el hombre está cayendo, suspendido horizontalmente, cayendo desde el cielo; luego describe el fondo, por ejemplo `warm amber sky` y `soft orange glow`; finalmente define el estado del sujeto como calmado/tranquilo para evitar que aparezca en pánico.
- Para cambiar el ambiente del prompt, usa Gemini con: `Modify the following prompt to be during night time, the sky is clear and the stars are visible.`
- Si Gemini intenta generar una imagen en vez de devolver texto, añade: `provide a text response, do not create an image here.`
- Para crear el plano inicial lejano, usa la imagen generada como referencia y pide: `Recreate this shot with an extreme long shot. The person is barely visible and the person is located in the upper third of the frame`
- Keywords críticas para composición: `extreme long shot` y `upper third`.
- Elige como start frame una toma donde el sujeto esté muy pequeño en la parte superior del encuadre y haya cielo/espacio debajo.
- Revisa consistencia visual entre start frame y end frame: el autor prefiere la toma donde las nubes del fondo son más consistentes, porque diferencias entre imagen inicial y final pueden causar problemas al animar.
- Para video, usa una herramienta con `start frame` y `end frame`; el autor menciona que existe en Google Flow, Kling, Polo AI y otros generadores.
- En FreePik selecciona modelo `Kling 2.6`.
- Configuración usada para video: `5 seconds`, `16:9`, `1080p`.
- Usa como start image el plano lejano y como end image el close-up del sujeto cayendo.
- Primer prompt simple de animación: `A cinematic downward tracking shot following a person in fixed mid-air.`
- Prompt más completo para mantener consistencia: `downward tracking shot, camera locked on the subject, the man remains centered in a consistent horizontal pose`
- Añade movimiento corporal sutil con: `only subtle life-like movements of his legs, arms, and head against the wind resistance.`
- Keyword importante para movimiento estable: `tracking shot`.
- Si el tracking shot queda demasiado plano o poco dramático, usa zoom rápido: `The camera performs an aggressive fast downward zoom in.`
- Para más dinamismo, el autor prefiere pedir explícitamente `aggressive`, `fast` y `zoom in`.
- Si el sujeto parece caer rígido “como ladrillo”, edita el end frame con Nano Banana antes de generar el video.
- Para cambiar expresión del sujeto, usa: `the man is looking at the camera and smiling.`
- Guarda la imagen editada antes de seguir.
- Para añadir gesto, edita la imagen sonriente con: `he is making a thumbs up with his hand.`
- Luego reemplaza el ending frame por la nueva imagen con pulgar arriba y vuelve a ejecutar el mismo prompt de video en `Kling 2.6`, `16:9`, `5 seconds`.

## Reglas para agentes
- Usa una imagen de cuerpo completo cuando el efecto requiera reconocer al sujeto durante toda la caída.
- Usa `16:9` cuando el resultado sea horizontal y `9:16` cuando sea vertical.
- Describe siempre el fondo antes de generar la escena: hora del día, color del cielo, atmósfera y ubicación.
- Define siempre el estado emocional del sujeto; usa calma/tranquilidad si no quieres que el modelo genere pánico.
- Usa Gemini para reescribir variaciones de prompt, no para generar imagen, cuando solo necesites modificar texto.
- Añade `provide a text response, do not create an image here` si Gemini intenta producir una imagen.
- Usa `extreme long shot` y `upper third` para crear el start frame con el sujeto pequeño en la parte alta del encuadre.
- Usa start frame/end frame cuando necesites una transición controlada de plano lejano a close-up.
- Verifica que start frame y end frame tengan fondos consistentes antes de animar.
- Usa `Kling 2.6` cuando quieras replicar este flujo exacto en FreePik.
- Usa `tracking shot` cuando quieras una cámara estable siguiendo al sujeto.
- Usa `aggressive fast downward zoom in` cuando quieras una caída más dinámica.
- Edita el end frame con cambios de pose o gesto antes de animar si el sujeto se ve demasiado rígido.
- Nunca dependas solo de “persona cayendo del cielo”; especifica composición, cámara, fondo, pose, emoción y movimiento corporal.

## Errores comunes que evita o menciona
- No describir el fondo, lo que deja al modelo decidir una escena genérica.
- No indicar emoción del sujeto, lo que puede hacer que aparezca asustado o en pánico.
- Usar start frame y end frame con fondos inconsistentes, causando artefactos en la animación.
- Generar una toma donde el sujeto no esté suficientemente pequeño o no esté en el tercio superior.
- Pedir solo un tracking shot y obtener un movimiento demasiado constante o poco dramático.
- No añadir movimientos sutiles de piernas, brazos y cabeza, haciendo que el sujeto caiga rígido.
- Mantener la misma pose durante toda la caída, reduciendo realismo y dinamismo.
- No hacer múltiples generaciones cuando se especifican movimientos de cámara complejos.