# How To Create Long AI Animation Videos With Consistent Characters - Kling 3.0
**Fuente:** Dan Kieft | https://youtu.be/0CjArtUh_Wg

## Qué enseña
Este tutorial enseña un flujo completo de 4 pasos para crear videos de animación AI largos con personajes consistentes: storyboarding con generación de imágenes, image-to-video con Kling 3.0, sincronización de audio con cambiadores de voz, y edición final. El 95% del proceso se realiza en Higgsfield AI, usando Nanobanana para imágenes y Kling 3.0 para video.

## Técnicas accionables
- **Creación de personajes:** Usa Nanobanana (Pro o 2) con prompt de estilo: "3D animated young woman of around 25 year old" + descripción física. Todos los personajes deben compartir el mismo estilo (ej. "3D animation" o "Disney Pixar animation style").
- **Character sheet:** Sube la imagen del personaje a Nanobanana, copia un "detail prompt" (disponible en su comunidad gratuita), configura 16:9 y 4K, genera. Obtendrás múltiples ángulos y close-ups del rostro.
- **Generación de imágenes para escenas:** Sube el character sheet como referencia, escribe prompt detallado: "[estilo] [personaje] [acción] [entorno] [iluminación] [estilo de animación]". Ejemplo: "3D animated man in a dark suit and a loose messenger bag on his shoulder standing inside a warmly lit apartment. He has a hand on the door as if he's just walking in, looking into the room. Disney Pixar animation style."
- **Múltiples referencias en una imagen:** Sube hasta 3 imágenes (character sheets + objetos/escenas). Usa etiquetas (@image2) en el prompt para referenciar imágenes específicas. Ejemplo: "A wide centered shot at night, a father and his young son stand on a sidewalk handing out flyers... @image2 [the flyer image]... Pixar Dreamworks style 3D animation."
- **Técnica 1 - Start and End Frame (Kling 3.0):** Edita la imagen base en Nanobanana (ej. "remove the guy and close the door"). Sube esa imagen editada como start frame y la imagen original como end frame en Kling 3.0. Prompt: "He grips the doorknob, turns it, and pushes through the door while saying 'I'm home.' He steps inside and slides his hands from the doorknob to the edge of the door looking into the room." Selecciona duración.
- **Técnica 2 - Scene Continuation:** Toma el último frame del video generado, descárgalo. Úsalo como start frame en Kling 3.0. Sube una imagen nueva de la siguiente escena como end frame. Prompt: "A man closed the door. Camera turns slowly. Pans towards the kid." Genera y empalma con el clip anterior.
- **Técnica 3 - Kling 3.0 Omni Multishot:** Activa "multishot" en Kling 3.0 Omni. Sube múltiples elementos (personajes, escenas, character sheets). Define hasta 3 shots con prompts independientes y duraciones distintas (ej. 4s cada uno). Ejemplo: Shot 1: "A father tucks his young son into the bed. Gently brushes his hair. Both look sad." Shot 2: "The father stands up, turns off the light, opens the door, and walks out into the hallway. The door slowly closes." Shot 3: "@image2 The father leans against the wall besides the door and slowly slides down to sit on the floor."
- **Audio sync con voice changer:** En Higgsfield AI, ve a Audio > Change Voice, sube el clip, selecciona una voz, genera. Alternativa mejor: Eleven Labs voice changer (más variedad de voces, permite crear voces personalizadas).
- **Edición de lip sync:** En el editor de video (CapCut, DaVinci, Premiere), copia el clip de audio y desplázalo ligeramente antes del video para que coincida mejor con el movimiento de labios.
- **Ajustes finales:** Añade film burn en clips de flashback, transiciones fade, sound effects (Artlist o Eleven Labs AI), y música (AI generada o Artlist).

## Reglas para el erudito
- Usa Nanobanana para generar imágenes baratas y storyboard antes de gastar créditos en video.
- Usa el mismo estilo de animación (ej. "3D animation", "Disney Pixar style") en TODOS los prompts de personajes para mantener consistencia.
- Usa character sheets con múltiples ángulos como referencia en cada generación de imagen.
- Usa start and end frame en Kling 3.0 cuando necesites control preciso del movimiento de entrada/salida.
- Usa scene continuation (último frame como start frame) para transiciones seamless entre escenas.
- Usa Kling 3.0 Omni multishot cuando tengas múltiples referencias y quieras un solo video con varios ángulos.
- Usa voice changer (Eleven Labs preferido) para mantener consistencia de voz entre clips generados por separado.
- Usa el truco de adelantar el audio en la línea de tiempo para corregir lip sync deficiente de Kling 3.0.

## Errores comunes / limitaciones que menciona
- No añadir detalles de iluminación en el prompt puede generar mezclas extrañas de estilos (personajes 3D mezclados con fondos realistas).
- Generar videos sin storyboard previo desperdicia créditos; las imágenes son baratas, los videos caros.
- Kling 3.0 tiene problemas de lip sync en diálogos largos; requiere ajuste manual del audio en edición.
- Sin voice changer, cada clip generado tendrá una voz diferente, rompiendo la consistencia del personaje.
- El multishot de Kling 3.0 Omni puede cambiar la posición de los personajes respecto a la referencia (ej. personaje aparece en lado opuesto de la pared), pero el resultado puede ser aceptable.