# The Complete Guide to Flow Agent Mode: From Brainstorming to Batch Editing, Deep Dive.
**Fuente:** nextmindrevolution | https://youtu.be/YrIMD9KJC14
## Qué enseña (2-3 líneas)
Enseña cómo usar Google Flow Agent Mode para idear, generar, editar y organizar imágenes/videos usando sesiones conversacionales, referencias, instrucciones persistentes y generación por lotes.  
El foco práctico es controlar al agente con prompts explícitos, revisar sus propuestas antes de gastar créditos y usarlo para tareas donde el contexto del proyecto sí aporta valor.

## Lecciones accionables
- Activa Agent Mode desde el ícono/agente en la caja de prompt. Al activarlo desaparecen los ajustes normales de generación porque el agente pasa a manejar las generaciones.
- Cada vez que abres el agente se crea una sesión tipo chat. Puedes tener varias sesiones, abrir una nueva desde arriba, ver el historial en la izquierda, renombrar sesiones o eliminarlas.
- En `Agent settings`, revisa los defaults de generación de imagen y video, y deja activo `confirm before generating` / `ask before creating`.
- Con `confirm before generating` activado, Flow muestra cuántas generaciones hará y cuántos créditos consumirá antes de aprobar.
- Para pedir ideas sin generar inmediatamente, usa keywords explícitas como `brainstorm` e `ideas`. Prompt usado: `I want some UGC style images about a soda called Iron Horse. Can you help brainstorming ideas?`
- Si no dices explícitamente que solo quieres ideas, el agente intentará crear una imagen o video porque su objetivo principal es producir media.
- Para ahorrar cuota, empieza con prompts más precisos en vez de conversar con instrucciones mínimas. El agente tiene límite de uso y al alcanzarlo debes esperar 24 horas.
- Para conceptos de video UGC, incluye producto, estilo, duración/tipo de salida, luz, tono visual, planos, ángulos y escenas. El ejemplo describe: soda `Iron Power`, `UGC style`, `video`, `raw natural daylight`, estilo definido y solicitud de `detailed shots, angles, and scenes`.
- Si te propone varios conceptos, selecciona uno o modifica uno. Prompt usado: `I like the concept number three`.
- Para referencias de estilo, pide plural si necesitas varias imágenes. El error mostrado fue pedir `generate a style reference`, lo que produjo una sola imagen; al cambiar a `references`, el agente preparó tres imágenes, una por escena.
- Después de generar referencias visuales, compáralas contra el plan original: escena, producto, continuidad, ángulo y consistencia de lata/personaje/props.
- Prompt de video usado: `Create an 8-seconds video by using this concept and references.`
- Una escena con tres shots puede no caber en 8 segundos: el ejemplo saltó de la primera escena a la final porque no había suficiente tiempo.
- Para storyboards, prompt usado: `Please create a storyboard about a robot in the desert. Decide the details for me.`
- Si no agregas `Decide the details for me`, el agente puede responder pidiendo más detalles sobre la historia.
- Para convertir el storyboard textual en imagen, usa la keyword exacta que sugiere Flow: `visual storyboard`. Prompt sugerido: `create a visual storyboard grid based on these scenes`.
- Para videos cortos, pide el storyboard limitado por duración. Prompt usado: `Please create a storyboard for a 10 seconds video. And it's about a robot in the desert.` y añade `provide the script and the visual grid storyboard`.
- Revisa si el diálogo o narración cabe en la duración. En el ejemplo, el agente propuso demasiada narración para 10 segundos.
- Para pasar de storyboard a video, prompt usado: `I like the second storyboard, please create the video.`
- Puedes usar referencias y personajes con `+` o `@`. Con `@` seleccionas assets del proyecto, avatares, personajes o assets de otros proyectos.
- Ejemplo de composición con ingredientes: pedir una imagen `16:9`, seleccionar el personaje `Orlando Hue`, añadir el asset `red cup` y el asset `sunglasses`, con una instrucción tipo: `He's drinking a [red cup]. He is wearing a [sunglasses].`
- Usa `show thinking` antes de aprobar una generación para revisar el proceso interno del agente; si el razonamiento está mal, rechaza y vuelve a pedir.
- Prompt de storyboard con personaje y referencias: `Please create a storyboard by using Orlando Hue and the attached references. The location is a beach at sunset. Provide details about each scene and shot and create a visual storyboard grid.`
- El agente mantiene consistencia razonable con personajes/referencias, pero puede fallar en propuestas de POV, especialmente tomas “a través de lentes” u objetos.
- Para mejorar prompts simples, usa: `please enhance my prompt.` seguido del prompt pobre. Ejemplo base: `Medium shot of a man drinking coffee and cinematic and realistic.`
- El agente puede devolver varias versiones mejoradas del prompt. Luego puedes iterar: `I like the option three, but I want it to be at golden hour.`
- Para mejorar prompts sin referencias ni contexto del proyecto, usa Gemini, ChatGPT u otro chat gratuito; usa Flow Agent cuando necesites personajes, referencias y contexto del proyecto.
- Para edición de imagen con contexto, arrastra una referencia como ingrediente y pide cambios. Prompt usado: `Edit the attached reference, the man is wearing red pants and change the color of the couch to blue.`
- El agente interpreta que debe editar la imagen existente, no crear una imagen separada, y genera un prompt optimizado detrás de escena.
- Puedes seguir editando sin volver a adjuntar la referencia si el contexto está claro. Prompt usado: `Make it black and white.`
- También puedes editar video con una referencia. Prompt usado: `Edit the video. The man is wearing a plain black shirt, and he is wearing sunglasses.`
- En videos con muchas iteraciones, especifica `last generated video` o `last output` para evitar que edite una versión anterior.
- Para batch generation de imágenes, adjunta una referencia y pide múltiples shots. Ejemplo técnico: crear `five different UGC-style type of shots`, mantener `brand tone clean and modern`, y especificar tomas como `marble-type counter`, `natural sunlight and water`, producto sostenido en mano, `minimalist-type studio shot`, y producto rodeado de `fresh leaves`.
- Para batch generation de video, adjunta el producto y pide variantes. Ejemplo: `Take the cream and create it two different videos, high-quality UGC-style.`
- Para batch edit, adjunta varias imágenes como ingredientes y pide una edición común. Prompt usado: añadir el texto `awesome` en `bold` y `red` a las tres imágenes a la vez.
- Las ediciones por lotes también funcionan en video, pero consumen créditos.
- Usa colecciones para editar grupos completos. Flujo: `create collection`, menú de tres puntos, `rename`, poner assets dentro, luego pedir: `edit all images inside the cream collection` y, por ejemplo, `make them a little bit more warmer`.
- Las imágenes originales se conservan como iteraciones; la versión editada aparece como última iteración.
- Usa `Agent instructions` para reglas persistentes por proyecto. Puedes añadir una imagen de referencia o pegar guidelines.
- En instrucciones persistentes, el ejemplo incluye categorías: `composition`, `color palette`, `lighting`, `art direction`, `subject direction`.
- Puedes crear varias instrucciones, editarlas, renombrarlas, borrarlas o apagarlas. Ejemplo de nombre: `Wes style`.
- Las instrucciones aplican a todas las sesiones dentro del mismo proyecto, pero no se importan automáticamente a otros proyectos.
- Si activas instrucciones de estilo, puedes pedir algo simple como `generate a wide shot of a recording studio` y el agente aplicará el estilo sin repetirlo en el prompt.
- El agente también ejecuta gestión de assets: renombrar archivos, crear colecciones, mover assets a trash y organizar por propiedades detectables.
- Comando de gestión mencionado: `rename all assets to have an OMG at the beginning.`
- Comando de trash: adjuntar assets y pedir `put these assets on the trash`.
- Comando de colección: `create a collection called awesome and put the attached assets inside.`
- Comando avanzado: `put all seven seconds video inside of a collection`; el agente detecta videos de 7 segundos y los agrupa.
- Comando avanzado de orden: `group and reorder all assets by color grade from colder to warm`.

## Reglas para agentes
- Usa `brainstorm` e `ideas` cuando quieras ideación sin generación inmediata.
- Mantén `confirm before generating` activado siempre que trabajes con créditos, especialmente video.
- Aprueba manualmente cada generación después de revisar cantidad de outputs y costo en créditos.
- Usa prompts precisos desde el inicio cuando tengas cuota limitada.
- Revisa guiones, escenas, shots, duración, referencias y storyboards antes de generar video.
- Usa `references` en plural cuando necesites una referencia por escena o por shot.
- Verifica que cada imagen generada coincida con la escena textual original antes de avanzar.
- Pide `visual storyboard grid` cuando quieras un storyboard visual en grilla.
- Limita el storyboard por duración cuando el destino sea un video de 8 o 10 segundos.
- Elimina o reduce diálogos si no caben en la duración final.
- Usa `@` o `+` para adjuntar assets, personajes, avatares y referencias del proyecto.
- Revisa `show thinking` antes de aprobar si la tarea es compleja o costosa.
- Usa el agente para prompts con referencias, personajes o contexto del proyecto; usa otro chat para mejorar prompts genéricos sin contexto.
- Especifica `last generated video` cuando edites videos con múltiples iteraciones.
- Usa colecciones cuando quieras editar, organizar o procesar muchos assets a la vez.
- Define `Agent instructions` cuando un proyecto requiera una estética constante.
- Apaga instrucciones persistentes antes de generar algo que no debe seguir ese estilo.
- Copia manualmente las instrucciones si quieres usarlas en otro proyecto; no asumas que se transfieren.
- Usa comandos de gestión para tareas repetitivas como renombrar, agrupar, enviar a trash y ordenar assets.

## Errores comunes que evita o menciona
- No activar aprobación manual y gastar créditos por generaciones malinterpretadas.
- Pedir una idea sin decir `brainstorm` o `ideas`, provocando que el agente genere media de inmediato.
- Conversar con prompts mínimos hasta agotar la cuota del agente.
- Pedir `style reference` en singular cuando necesitas varias referencias.
- Generar video directamente sin revisar storyboard, guion, escenas ni referencias.
- Intentar meter demasiadas escenas o narración en videos de 8-10 segundos.
- Asumir que un storyboard visual será perfecto: puede tener inconsistencias de personaje, props, reflejos, frames faltantes o elementos inventados.
- Ignorar problemas de POV sugeridos por el agente, especialmente tomas a través de lentes.
- Dejar que el modelo decida ubicación, luz, ropa o estilo cuando el prompt es demasiado genérico.
- Usar Flow Agent para mejorar prompts simples sin referencias, desperdiciando cuota.
- Editar videos con muchas iteraciones sin indicar que quieres modificar el último output.
- Olvidar que las instrucciones del agente aplican a todas las sesiones del proyecto.
- Asumir que las instrucciones se importan automáticamente entre proyectos.
- No revisar costo de créditos cuando se generan varias imágenes o videos por lote.