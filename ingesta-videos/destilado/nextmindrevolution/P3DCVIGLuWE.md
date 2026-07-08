# From Logo to Video: Google Flow AI UGC Workflow (2026)
**Fuente:** nextmindrevolution | https://youtu.be/P3DCVIGLuWE
## Qué enseña (2-3 líneas)
Enseña un flujo completo para crear una campaña UGC con IA: logo, empaques de producto y videos verticales usando Gemini y Google Flow.  
El proceso usa Gemini como ingeniero de prompts y Google Flow para generar imágenes, mantener ingredientes visuales y producir videos con Veo.

## Lecciones accionables
- Para crear el logo, empieza en Gemini con modo **thinking** o **pro** si está disponible.
- Prompt base para pedir el prompt del logo: `"Help me create a prompt for Gemini create image tool."`
- Define el producto y marca dentro del prompt: `"I want a logo for a product called Tasty."`
- Especifica producto: **ice cream bucket**.
- Estilo del logo: **modern**, **fun**, **tasty**.
- Cierra el prompt con: `"provide a text response only"` para evitar que Gemini genere imagen directamente.
- Gemini propone tres estilos; elige uno y pide cambios con una instrucción tipo: `"I like option one. Change this about the option one."`
- Para generar el logo, usa **Google Flow > Image > Nano Banana**.
- Si tienes cuenta gratis, usa **Nano Banana 2**; si tienes Pro o superior, usa **Nano Banana Pro**.
- Para logos, genera en **16:9** y usa hasta **4 variations** en Google Flow para explorar opciones rápido.
- En Google Flow, haz clic en la imagen para entrar en **edit mode** y pedir agregar o quitar elementos del logo.
- Marca la versión elegida con **favorite** para filtrar y verla fácilmente.
- Descarga el logo desde Google Flow con **hover > three dots > download**.
- Para crear productos, abre un chat nuevo en Gemini para evitar confusión con prompts anteriores.
- Sube el logo a Gemini y usa este prompt: `"Act as a prompt engineer. Using the attached logo, create three different text to image prompts for a premium ice cream bucket."`
- Añade la instrucción exacta: `"Create one prompt for each of the following flavors: vanilla, chocolate, and strawberry."`
- Pide consistencia entre productos al solicitar las tres imágenes en una sola respuesta.
- Añade requisitos: **detailed color palette**, **minimalist**, **clean studio background**, **realistic**, **soft light**.
- Cierra con: `"Avoid referencing the name of the attached image. Provide a text response only."`
- En Google Flow, crea cada product shot en **Image**, formato **16:9**, **one single output**.
- Para que el empaque use el logo real, arrastra el logo y suéltalo como **ingredient** antes de ejecutar el prompt.
- Para mantener consistencia entre sabores, usa como **ingredient** el logo y, si hace falta, también una imagen de empaque ya aprobada.
- Si el logo no se ve bien en chocolate u otro sabor, edita con una instrucción tipo: cambiar el logo a **white color** u otro color.
- Para video, usa Gemini para construir un prompt especializado para **Veo 3.1**.
- Prompt base del video: pedir que Gemini actúe como `"an expert prompt engineer specialized in text-to-video generation on Veo"`.
- Objetivo del prompt: `"Create a high-performance prompt that will create an authentic UGC type of video."`
- Define sujeto: **young woman** o el personaje deseado.
- Define escena: **real-world kitchen**.
- Define acción clave: que coma **Madagascar vanilla bean ice cream** desde el bucket.
- El nombre del producto debe coincidir exactamente con el empaque para no confundir al modelo.
- Define mood: la persona disfruta el helado.
- Para estilo UGC, especifica **Veo**, **handheld camera**, **smartphone**, **medium close**, iluminación y atmósfera.
- Antes de gastar créditos en video, lee y corrige el prompt generado por Gemini.
- En Google Flow, usa **Video > Ingredients**, formato vertical **9:16** por defecto, **one single** output.
- Para probar barato, usa la versión económica de **Veo** dentro de Flow; el video muestra que funciona con la versión **light/cheap**.
- Arrastra el product shot como **ingredient** del video antes de correr el prompt.
- Organiza assets en Google Flow con **@media > create collection**; renombra colecciones como **draft logos**.
- Para diálogo específico, pide a Gemini ajustar el prompt con: `"Please adjust the text prompt."`
- Líneas usadas en el ejemplo: `"Wow, this ice cream is the best."` y `"Tasty. You have to try it."`
- Para usar un personaje específico, sube fotos propias a Google Flow con **plain background** y buena calidad.
- También puedes generar un avatar con un prompt simple como: `"a medium close-up of an aesthetic young man, plain green background."`
- Renombra el sujeto en Flow, por ejemplo **Mark**, para referenciarlo fácilmente en prompts.
- Cuando cambies el sujeto, reemplaza todas las referencias de género y pronombres: **young woman**, **she**, **her** por **Mark**, **he** o el nombre del personaje.
- Para reutilizar una generación previa, usa **reuse the prompt** y cambia solo sujeto, producto o ingredientes.

## Reglas para agentes
- Usa **Gemini** para escribir prompts especializados antes de generar imágenes o videos.
- Usa **thinking** o **pro mode** cuando necesites prompts más precisos.
- Usa `"provide a text response only"` cuando quieras que Gemini devuelva solo texto.
- Usa chats nuevos cuando cambies de tarea: logo, producto, video o personaje.
- Usa **Google Flow** para generar variaciones rápidas de imágenes.
- Usa **Nano Banana Pro** cuando esté disponible; usa **Nano Banana 2** si no tienes Pro.
- Usa **ingredient** siempre que debas conservar logo, producto, empaque o personaje.
- Usa **favorite** para fijar el asset aprobado.
- Usa **@media collections** para separar borradores, logos finales, productos y videos.
- Nunca generes el video sin leer antes el prompt final si cuesta créditos.
- Nunca cambies el nombre del producto entre empaque y prompt de video.
- Nunca pidas demasiadas acciones y diálogo en un video de **7 u 8 segundos**.
- Evita que el sujeto coma, trague y diga dos líneas largas en el mismo clip corto.
- Usa **medium close**, **smartphone**, **handheld camera** y **9:16** para UGC vertical.
- Usa el nombre del personaje, como **Mark**, en lugar de pronombres ambiguos cuando haya ingredientes visuales.

## Errores comunes que evita o menciona
- Gemini puede generar una imagen cuando solo necesitas un prompt; se evita con `"provide a text response only"`.
- Gemini puede referenciar el nombre del archivo adjunto; se evita con `"Avoid referencing the name of the attached image."`
- Reutilizar el mismo chat puede confundir al modelo con prompts anteriores.
- Crear sabores por separado puede producir empaques inconsistentes.
- No agregar el logo como **ingredient** hace que el empaque no use la marca real.
- Cambiar el nombre del sabor o producto entre imagen y video confunde a Veo.
- El sujeto puede comer demasiado antes de hablar en un clip UGC corto.
- Veo puede inventar diálogo si el prompt no especifica líneas.
- Dos frases más una acción de comer puede ser demasiado para 7-8 segundos.
- Cambiar de mujer a hombre sin reemplazar **she/her/young woman** rompe la coherencia del prompt.
- No renombrar sujetos obliga a repetir descripciones largas y aumenta ambigüedad.