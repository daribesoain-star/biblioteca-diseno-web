# Replicate images: GPT Image 2 guide tutorial
**Fuente:** nextmindrevolution | https://youtu.be/3QxMZPJ6U_0
## Qué enseña (2-3 líneas)
Explica cuatro flujos para crear thumbnails con GPT Image 2: desde texto, desde referencia estética, desde referencia de sujeto y mediante edición directa.  
El foco está en replicar estilos de miniaturas de YouTube, cambiar texto, mantener personajes y reutilizar composiciones existentes con alta precisión.

## Lecciones accionables
- Usa la keyword exacta `YouTube thumbnail` para activar el estilo típico de miniatura: texto grande, alto contraste, fondo desenfocado y composición llamativa.
- Prompt base mencionado: `creating a YouTube thumbnail. The main title should say GPT-2, it's awesome. A man is pointing with his finger to the title.`
- Configuración usada repetidamente: `16:9` / transcrito como `69`, calidad `4K`; en un caso también usa `medium`.
- Herramientas mencionadas para generar: `Magnific` antes `FreePik`, `Hicksfield`, `ChatGPT`.
- Para replicar una estética difícil de describir, sube una miniatura a `Gemini` o `ChatGPT` y pide que genere un prompt textual que describa la imagen.
- Recomienda usar `thinking mode` en Gemini; `fast` funciona, pero `thinking` o superior reconoce mejor la imagen.
- Instrucción usada para Gemini: crear un `text prompt describing the YouTube thumbnail image`.
- Después de obtener el prompt de Gemini, copia solo el prompt útil, pégalo en Magnific y reemplaza las keywords o textos concretos, por ejemplo cambiar `Master Gemini` por `Awesome GPT-2`.
- Para referencia directa de estilo, sube la imagen al campo de imagen de la app, no al campo de `character` ni al de `style`.
- Prompt de referencia de estilo mencionado: `Use IMG 1 as a style reference`.
- Instrucciones exactas de edición de texto: `Change the top yellow text to Canva 2.0, and at the bottom, change the white text to deep dive.`
- Para cambiar contenido visual en pantalla: `The laptop screen displays a Canva interface.`
- GPT Image 2 puede inferir interfaces conocidas si nombras la app, por ejemplo `Canva interface`.
- Para agregar persona o avatar, sube la referencia como `image number one` o como `character`; la calidad de la imagen de referencia afecta directamente el resultado.
- Prompt de sujeto mencionado: `Create a YouTube thumbnail. A man like in [IMG 1] is pointing with a determined expression at the title GPT-2. It is awesome.`
- Para mezclar prompt generado por Gemini con un sujeto propio, reemplaza la descripción genérica del hombre por: `a cheerful young man as in [IMG 1]`.
- Para edición de una miniatura existente, sube la miniatura como `IMG 1` y el sujeto/persona como `IMG 2`.
- Prompt de edición mencionado: `replace the man on IMG 1 with the man on IMG 2. He is holding a tablet instead of a laptop and remove the text and arrow from IMG 1.`
- Flujo alternativo: quitar texto y flechas en GPT Image 2, descargar el resultado y añadir tipografía manualmente en `Figma` o `Photoshop`.
- También se puede editar el thumbnail completo dentro del generador: reemplazar sujeto, cambiar laptop por tablet, cambiar títulos, definir fuente, estilo, color y posición.
- Ejemplo de cambio de copy: reemplazar el texto amarillo `master` por `insane`.
- Herramientas y nombres mencionados: `GPT Image 2`, `Gemini`, `ChatGPT`, `Magnific`, `FreePik`, `Hicksfield`, `Nano Banana`, `Flow`, `Figma`, `Photoshop`, `Canva`.

## Reglas para agentes
- Usa `YouTube thumbnail` cuando el objetivo sea una miniatura de YouTube con texto grande, contraste alto y composición viral.
- Usa Gemini o ChatGPT para convertir una referencia visual en prompt cuando el usuario no pueda describir el estilo con precisión.
- Usa `thinking mode` en Gemini cuando necesites mejor lectura de una imagen de referencia.
- Reemplaza manualmente los textos clave del prompt generado antes de ejecutar la generación.
- Usa `IMG 1 as a style reference` cuando quieras conservar la estética de una miniatura existente.
- Usa referencias separadas: `IMG 1` para la miniatura base y `IMG 2` para el sujeto/persona que debe reemplazar al original.
- Indica explícitamente qué texto cambiar, dónde está ubicado y qué color o jerarquía tiene: por ejemplo `top yellow text`, `bottom white text`.
- Nombra interfaces conocidas, como `Canva interface`, cuando quieras que GPT Image 2 las recree en una pantalla.
- Si el texto final debe ser exacto y editable, elimina texto/flechas en la generación y termina la composición en Figma o Photoshop.
- Nunca dejes prompts generados por Gemini sin revisar; siempre cambia nombres, títulos y keywords antes de generar.
- Nunca subas una referencia de estilo en el campo incorrecto si la herramienta separa `app`, `character` y `style`.
- Usa imágenes de referencia de alta calidad para sujetos, avatares o personas.
- Itera varias veces; el video recalca que mucho del proceso es experimentar hasta que encaje con el canal y el contenido.

## Errores comunes que evita o menciona
- Intentar describir manualmente un estilo complejo en vez de pedir a Gemini/ChatGPT que lo convierta en prompt.
- Olvidar cambiar textos heredados del prompt de referencia, como `Master Gemini`.
- Subir una referencia al campo equivocado: `character` o `style` cuando debía ir en la app.
- Ser demasiado vago con cambios de texto, color o posición cuando se quiere editar directamente la miniatura.
- Usar una imagen de sujeto de baja calidad y esperar resultados fieles.
- Forzar edición tipográfica dentro del generador cuando conviene quitar el texto y terminarlo en Figma o Photoshop.
- Asumir que Nano Banana replica igual de bien; el video afirma que GPT Image 2 es mejor para este caso.