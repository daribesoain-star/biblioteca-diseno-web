# Generate Image & Video with ElevenLabs (Full Tutorial)
**Fuente:** eh-elevenlabs-audio | https://youtu.be/BmMxkpm12vc

## Qué enseña
Este tutorial explica cómo generar imágenes y videos directamente desde ElevenLabs usando modelos como Google Veo 3.1, Flux, Wan 2.5, Sora 2, y Topaz para upscaling. Muestra flujos completos: generar imagen, upscalearla, usarla como start frame para video, y editar todo en ElevenLabs Studio con lip-sync, voz, música y efectos.

## Lecciones accionables
- Para empezar, haz clic en la pestaña "Image & Video" desde la página de inicio de ElevenLabs.
- Escribe el prompt en el modal inferior antes de seleccionar modelo y parámetros.
- Para generar una imagen: selecciona el tipo "Image", elige el modelo (Google Nano Banana, Cream 4, GPT, Flux Context, W 2.5), ajusta aspect ratio y número de generaciones (1 a 4).
- Puedes añadir imágenes como referencia de estilo: arrastra desde la página "Explore" o sube tus propias imágenes al campo "Image Reference".
- Para generar video: cambia a "Video", los parámetros varían según el modelo. Ejemplo: con Google Veo 3.1 puedes usar start frame, end frame e image references; con Clean 2.5 solo start frame.
- Para upscalar una imagen: haz clic en la imagen generada, selecciona "Upscale", elige la resolución (ej. 4x) y haz clic en "Generate". Usa el modelo Topaz.
- Para crear un video desde una imagen upscaleada: abre la imagen, haz clic en "Create Video", selecciona el modelo (ej. Google Veo 3.1), elige aspect ratio, resolución (1080p), duración (ej. 6 segundos), activa o desactiva audio, añade negative prompt si es necesario, y elige número de generaciones.
- Para reutilizar un modelo, parámetros o prompt: haz clic en una generación anterior y se copiará automáticamente al cuadro de prompt.
- Para lip-sync: desde una generación de video, selecciona "Lip-sync", elige un audio generado con ElevenLabs (voz clonada o creada).
- Para editar en ElevenLabs Studio: desde un video generado, haz clic en "Edit in Studio" para añadir efectos de sonido, voiceovers y música.
- También puedes generar video directamente en Studio: haz clic en "Video", describe el prompt, selecciona modelo, aspect ratio y parámetros.

## Reglas para agentes
- Usa siempre "Upscale" antes de generar un video desde una imagen para obtener la mejor calidad de salida.
- Cuando generes múltiples variaciones, selecciona el número de generaciones (1-4) antes de hacer clic en "Generate".
- Si aparecen elementos no deseados en el video, usa el campo "Negative Prompt" para eliminarlos.
- Para transiciones entre escenas, usa "Start Frame" y "End Frame" arrastrando las imágenes correspondientes.
- Nunca descargues una imagen para upscalearla en otra herramienta; hazlo todo dentro de ElevenLabs usando Topaz.
- Cuando quieras regenerar un resultado similar, haz clic en la generación anterior para copiar prompt y parámetros exactos, luego ajusta solo lo necesario.

## Errores comunes que evita o menciona
- No generar video directamente desde una imagen sin upscalearla primero (resultado de menor calidad).
- No usar end frame si no se ha generado previamente la imagen de destino.
- No olvidar que los parámetros disponibles cambian según el modelo de video seleccionado (ej. Veo 3.1 permite start y end frames; Clean 2.5 solo start frame).
- No generar sin ajustar aspect ratio y resolución según el formato deseado.
- No ignorar la opción de "Generate with audio" si se necesita sonido sincronizado en el video.