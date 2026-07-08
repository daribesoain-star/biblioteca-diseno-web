# How to Use Google Flow & Veo 3.1 (Start to Finish)
**Fuente:** nextmindrevolution | https://youtu.be/x5xEKl1LM28

## Qué enseña
Guía completa para usar Google Flow y Veo 3.1 desde cero: cómo generar videos con tres métodos (texto a video, frames a video e ingredientes a video), crear imágenes con Nano Banana, y ensamblar secuencias completas usando el Scene Builder. También cubre ajustes de configuración, gestión de créditos y trucos de prompting.

## Lecciones accionables

- **Accede a Flow TV** desde la pantalla principal (botón superior "Flow TV") para ver creaciones de otros usuarios, copiar prompts exactos y reutilizarlos en tus propios proyectos.
- **Para texto a video**, escribe un prompt mínimo como "a man reading a book" y haz clic en la flecha de generación; espera aproximadamente un minuto para obtener el resultado.
- **Estructura prompts avanzados** con esta plantilla exacta: `[estilo], [composición/encuadre] de [sujeto] [acción] en [ubicación], [ambiente/iluminación], [movimiento de cámara], [audio/diálogo]`. Ejemplo: "cinematic, medium shot of a man reading a book in a cozy bedroom, warm soft light, camera slowly zooming in, no dialogue".
- **Usa Gemini o ChatGPT** para mejorar prompts: describe conversacionalmente lo que quieres y pide "enhance it to use on Google Flow".
- **Para frames a video**: sube una imagen de inicio (primer frame) y una de fin (último frame), luego escribe en el prompt lo que ocurre entre ambos. Ejemplo: "she looks directly at the camera lens".
- **Para usar solo un frame inicial**: elimina el último frame, y en el prompt describe qué debe pasar después del primer frame.
- **Para ingredientes a video**: sube hasta 3 imágenes de referencia, y en el prompt menciónalas explícitamente. Ejemplo: "a woman and a man happily walking on a stylish London street" (donde "woman" y "man" corresponden a las imágenes subidas).
- **Usa fondos verdes lisos** en las imágenes de ingredientes para que el modelo extraiga mejor los sujetos.
- **Configura los ajustes antes de generar**: ve a Settings, elige relación de aspecto (9:16 portrait o landscape), número de outputs (1 o 4), y modelo (V3.1 fast = 20 créditos, V3.1 quality = 100 créditos).
- **Verifica siempre los ajustes** antes de ejecutar: si seleccionas "quality" + "4 outputs", gastarás 400 créditos por una sola ejecución.
- **Para crear secuencias**: usa Scene Builder (botón superior). Agrega clips individuales haciendo clic en "add to scene" en cada video generado.
- **En Scene Builder**: arrastra clips para reordenarlos, usa el playhead para recortar duración, y haz clic en "+" en el playhead para tomar un snapshot (captura de frame como imagen).
- **Para eliminar un clip del Scene Builder**: ve al panel principal, pasa el cursor sobre el clip y haz clic en "remove from scene".
- **Usa "Jump to"** en Scene Builder: selecciona un clip, ve al final, haz clic en "jump to" y escribe un prompt para crear una nueva escena que comience desde el último frame (requiere modelo quality, 100 créditos).
- **Usa "Extend"** en Scene Builder: selecciona un clip, haz clic en "extend" y escribe un prompt para alargar el clip manteniendo consistencia con el último frame (puede usar V3.1 fast a 20 créditos).
- **Descarga la secuencia completa** desde el botón "download" en Scene Builder.

## Reglas para agentes

- Usa la plantilla `[estilo], [composición] de [sujeto] [acción] en [ubicación], [ambiente/iluminación], [movimiento de cámara], [audio/diálogo]` cuando generes prompts para texto a video.
- Nunca ejecutes una generación sin verificar primero los ajustes de modelo y número de outputs para evitar gastar créditos innecesariamente.
- Usa fondos verdes lisos en las imágenes de ingredientes para mejorar la extracción de sujetos.
- Cuando uses frames a video con solo un frame inicial, elimina siempre el último frame y describe en el prompt qué debe ocurrir después.
- Nunca intentes añadir videos al Scene Builder directamente desde allí; primero debes hacer clic en "add to scene" desde cada clip individual en el panel principal.
- Usa "Jump to" solo cuando quieras un cambio drástico de escena (hard cut); usa "Extend" cuando quieras mantener consistencia visual con el clip anterior.
- Para eliminar clips del Scene Builder, hazlo siempre desde el panel principal con "remove from scene", nunca desde el timeline del Scene Builder.

## Errores comunes que evita o menciona

- **Prompts mínimos dan resultados impredecibles**: si solo escribes "a man reading a book", el modelo rellena los vacíos (etnia, ubicación, iluminación, encuadre) de forma aleatoria. Siempre especifica estilo, composición, ambiente y movimiento de cámara.
- **No verificar configuración antes de generar**: si dejas "quality" y "4 outputs" activados, gastarás 400 créditos en una sola ejecución. Revisa siempre los ajustes.
- **Bug de interfaz**: al seleccionar "V3.1 quality", a veces no se actualiza visualmente la selección. Verifica dos veces antes de ejecutar.
- **No se puede añadir videos directamente al Scene Builder**: primero debes hacer clic en "add to scene" desde cada clip generado, o no aparecerán en el timeline.
- **No se puede eliminar clips desde el Scene Builder**: la única forma es ir al panel principal y usar "remove from scene".
- **"Jump to" solo funciona con modelo quality (100 créditos)**: si intentas usarlo con "fast", la generación falla y muestra un error. Cambia a quality obligatoriamente.
- **"Extend" permite usar modelo fast (20 créditos)**: a diferencia de "Jump to", puedes ahorrar créditos usando V3.1 fast para extensiones.