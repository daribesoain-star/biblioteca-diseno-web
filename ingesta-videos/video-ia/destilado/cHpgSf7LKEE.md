# EVERY Camera Movement Prompt in Kling 2.5 (in 6 Minutes)
**Fuente:** Tao Prompts | https://youtu.be/cHpgSf7LKEE

## Qué enseña (2-3 líneas)
Guía completa para controlar movimientos de cámara en Kling 2.5 usando prompts específicos, desde fijo hasta tracking avanzado, crane shots y tomas submarinas. Enfatiza el uso de image-to-video con contexto de escena para mantener consistencia visual y evitar cambios de color no deseados.

## Técnicas accionables
- **Modelo usado:** Kling 2.5 (función image-to-video: subir imagen de referencia + prompt de movimiento)
- **Ajuste clave:** Subir el slider "creativity and relevance" para que el AI siga los prompts más fielmente
- **Cámara fija:** `fixed lens` – funciona mejor en Kling 2.5, pero si hay movimiento residual al final, reintentar el prompt varias veces
- **Zoom in:** `zoom in` + opcional `fast` para acelerar el movimiento
- **Zoom out:** `camera pullback` + opcional `fast`
- **Arco/rotación alrededor del sujeto:** `rotating lens` – muy consistente, funciona casi siempre
- **Primera persona / drone:** `fpv` (first person view) para vuelos sobre paisajes
- **Vista cenital:** `fly above` + `bird's eye view`
- **Control de saturación de color:** `muted colors` – evita cambios bruscos de color hacia el final del video; si quieres neón, sacrifica consistencia
- **Seguimiento submarino:** `follow` + `underwater` – el personaje y escena se mantienen consistentes
- **Crane shot (de nivel de ojo a overhead):** `camera pulls back` + `fly above overhead` (como si la cámara subiera en una grúa)
- **Combinación de movimientos:** `camera pull back and then tilt up` para revelar lo que hay en el cielo
- **Tracking shot:** `tracking shot` – la cámara sigue al sujeto mientras se mueve
- **Seguimiento de sujeto que camina:** `follow` cuando el sujeto está de espaldas y se aleja
- **Estructura de prompt VERBATIM (ejemplos):**
  - `rotating lens, she has a panicking expression like she's terrified of something, camera pull back, reveal her holding up a weapon to defend herself`
  - `camera zooms in on the woman's eyes`
  - `camera pulls back to reveal her in a dress`
  - `he turns around and raises a pistol, camera zooms in` (problema: no gira completamente)
  - `he turns around and raises a pistol, camera zooms in on his eyes` (solución: fuerza el giro porque la cámara debe seguir los ojos)
  - `tilt up and look at the city through a glass ceiling` (con `muted colors` para evitar saturación)
  - `camera pans to reveal new parts of our characters` (ej: revelar que es un cyborg)
  - `camera goes overhead to show her standing on a geometric pattern`
- **Truco de consistencia de personaje:** Añadir contexto de escena – no solo pedir el movimiento, sino especificar hacia dónde mira la cámara y qué muestra (ej: "zoom in on his eyes" obliga al personaje a girarse)
- **First frame / last frame:** No se menciona explícitamente, pero el image-to-video usa la imagen subida como primer frame
- **Negative prompts:** No se mencionan

## Reglas para el erudito
- Usa `fixed lens` cuando quieras cero movimiento de cámara; si falla, reintenta varias veces
- Usa `rotating lens` cuando necesites un arco consistente alrededor del sujeto (casi siempre funciona)
- Usa `muted colors` cuando el AI añada saturación de color no deseada al final del video
- Usa `camera zooms in on [parte del cuerpo]` cuando quieras forzar al personaje a girarse hacia la cámara
- Usa `fast` como palabra clave cuando los movimientos por defecto sean demasiado lentos
- Usa image-to-video + slider de creatividad alto para que el AI siga los prompts de movimiento más fielmente
- Combina movimientos de cámara con contexto de escena: piensa hacia dónde se mueve la cámara y qué revela, no solo el tipo de movimiento
- Recuerda que cuanto más te alejes del contenido de la imagen original, menos consistente será el video

## Errores comunes / limitaciones que menciona
- **Color saturation:** El AI añade cambios bruscos de color (volviéndose más vibrante) hacia el final del video; se soluciona con `muted colors`, pero se pierde el estilo neón si se deseaba
- **Fixed lens no siempre funciona:** A veces hay movimiento residual al final; hay que reintentar el prompt varias veces
- **Falta de contexto en el prompt:** Pedir solo "camera zooms in" sin especificar qué mostrar hace que el personaje no se gire correctamente (ej: soldado levanta el arma pero sigue de espaldas)
- **Inconsistencia al alejarse:** Cuanto más te alejes del contenido de la imagen original (crane shot, overhead), menos consistente es el video resultante
- **Movimientos lentos por defecto:** A veces los movimientos son demasiado lentos; hay que añadir `fast` para acelerarlos