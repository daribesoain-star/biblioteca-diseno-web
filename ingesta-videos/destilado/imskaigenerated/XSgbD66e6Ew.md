# Nano Banana 2 SOLVED Consistent AI Characters (here’s how)
**Fuente:** imskaigenerated | https://youtu.be/XSgbD66e6Ew

## Qué enseña (2-3 líneas)
Este video enseña el flujo de trabajo exacto para generar personajes consistentes en múltiples escenas y estilos usando Nano Banana 2 en Higgsfield AI. La clave es crear una hoja de referencia 360° del personaje (vistas frontal, lateral izquierda, lateral derecha y trasera) en lugar de usar una sola foto de referencia, y luego aplicar esa hoja a cualquier escena o estilo manteniendo la coherencia visual.

## Lecciones accionables
- **Error principal a evitar:** No usar una sola foto de referencia (headshot) para generar escenas, porque la IA inventa el resto del cuerpo y la vestimenta, causando inconsistencias.
- **Flujo correcto paso a paso:**
  1. **Generar headshot inicial:** En Higgsfield AI > Image > Nano Banana 2. Usar foto de referencia (ej: selfie) + prompt: *"A clean professional headshot on a pure white background"*. Configurar: aspect ratio 16:9, quality 4K, batch size 4.
  2. **Generar imagen lateral + frontal:** Subir el headshot a Nano Banana 2 con prompt que pida foto lado a lado (cara + cuerpo completo). Esto fija el frente pero aún deja puntos ciegos en la espalda y perfiles.
  3. **Generar hoja de referencia 360°:** Subir la imagen lado a lado a Nano Banana 2 con prompt: *"A professional character reference sheet that includes a top row of four full-body shots showing a front view, left profile, right profile, and back view, as well as a bottom row of three close-up shots showing a left view, front view, and right view"*.
  4. **Usar la hoja 360° en Cinema Studio:** Subir la hoja como referencia. Para video, usar single shot scene, aspect ratio 16:9, quality 1080p, duration 4-8 segundos según necesidad.
  5. **Para múltiples personajes (hasta 5):** Usar template de prompt en Nano Banana 2: incluir descripción del personaje + descripción de vestimenta + fondo blanco puro + "four full-body shots and three close-up shots". Ejemplos de prompts usados:
     - Personaje 1: *"A middle-aged man in a tailored outfit"*
     - Personaje 2: *"A young woman with short black hair and casual clothing"*
     - Personaje 3: *"A bald man with a thick dark beard and scuffed clothing"*
     - Personaje 4: *"A young woman with blonde short hair and a yellow knitted sweater"*
     - Personaje 5: *"A young man with wavy brown hair and a brown outfit"*
  6. **Para cambiar estilo manteniendo personajes:** Subir las 5 hojas de referencia a Nano Banana 2 con prompt que describa el nuevo estilo. Ejemplos:
     - Estilo 2D cartoon: *"A traditional 2D hand-drawn cartoon shot on a brick rooftop"*
     - Estilo Pixar 3D: *"[Characters] standing together in a magical forest in a Disney Pixar animation"*
     - Estilo cyberpunk: *"[Characters] walking down a busy cyberpunk street with high-tech dystopian details in their clothing"*
     - Estilo alfombra roja: *"[Characters] posing at a red carpet event with paparazzi in the background"*
  7. **Para video con cambio de estilo:** Subir la imagen generada como start frame en Cinema Studio + prompt de movimiento (ej: *"cinematic dolly push-in as characters slowly walk toward the camera"*, *"subtle zoom as wind rustles through their outfits"*, *"slow camera push-in while particles and fireflies float around"*, *"cinematic push-in on the characters as cameras rapidly flash around them"*).

## Reglas para agentes
- Usa SIEMPRE una hoja de referencia 360° (vistas frontal, lateral izquierda, lateral derecha y trasera) cuando necesites consistencia de personaje en múltiples escenas.
- NUNCA uses una sola foto de referencia (headshot o foto única) para generar escenas completas; la IA inventará el resto del cuerpo y causará inconsistencias.
- Cuando generes múltiples personajes, usa el template de prompt que incluya "four full-body shots and three close-up shots" para cada personaje.
- Para cambiar de estilo (realista a cartoon, Pixar, cyberpunk, etc.), sube TODAS las hojas de referencia 360° de los personajes al generador de imágenes, no solo una.
- En Cinema Studio, configura siempre single shot scene, aspect ratio 16:9, quality 1080p para videos consistentes.
- Para videos con cámara en movimiento (órbita, dolly, zoom), usa duración de 8 segundos para dar tiempo al movimiento natural.
- Cuando cambies la vestimenta de los personajes (ej: a cyberpunk), menciona explícitamente en el prompt que la ropa tiene los nuevos detalles, pero mantén las hojas de referencia originales.

## Errores comunes que evita o menciona
- **Usar una sola foto como referencia:** La IA inventa el resto del cuerpo, causando cambios en diseño de camisa, número de correas, zapatos, etc.
- **Usar imagen lado a lado (cara + cuerpo completo):** Fija el frente pero deja puntos ciegos en la espalda y perfiles laterales, causando desalineación de correas, bolsillos traseros que aparecen/desaparecen, etc.
- **No proporcionar suficiente data visual:** La IA genera su propia versión de las partes no visibles en cada escena.
- **Confiar solo en texto + headshot:** Insuficiente para mantener consistencia entre escenas.
- **No usar el template de prompt completo para múltiples personajes:** Omitir "four full-body shots and three close-up shots" resulta en referencias incompletas.