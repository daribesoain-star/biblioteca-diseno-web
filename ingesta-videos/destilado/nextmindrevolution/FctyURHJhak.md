# Google Flow AI Image Tools: Complete Guide
**Fuente:** nextmindrevolution | https://youtu.be/FctyURHJhak

## Qué enseña (2-3 líneas)
Explica cómo usar las herramientas de imagen de Google Flow dentro de un proyecto: bocetos, vectorización/retexture, exploración de escenas, mockups, edición por capas, variaciones de cámara, máscaras y grillas/storyboards.  
También muestra cómo remixar herramientas existentes o crear herramientas nuevas con el agente de Flow.

## Lecciones accionables
- Entra a un proyecto y abre **Tools**; las categorías visibles son **Image tools**, **Video tools** y **Prompting tools**. Este flujo cubre solo las herramientas de imagen.
- En **Simple Sketch**, dibuja con **pen**, **shapes** y **annotations**; ajusta color y tamaño, usa **undo/redo** y elimina todo con el icono de papelera.
- En **Simple Sketch**, completa dos campos: **Describe the image** y **Additional instructions**. El selector **Fast** usa **NanoBanana2** y **Pro** usa **NanoBananaPro**.
- Prompts/keywords usados en Simple Sketch: `a Caucasian man walking down the road`, `an ultra-realistic image`, `a plastic ball`.
- Usa **Additional instructions** como preset de estilo: pide a Gemini una definición de estilo, por ejemplo **Wes Anderson style**, con respuesta solo en texto, copia esa definición y pégala como instrucción adicional.
- Cada generación queda en el historial lateral y también en **All Media**. Desde el resultado puedes **trash**, **download** o enviar la generación al canvas para dibujar encima.
- Para editar una imagen importada dentro de Simple Sketch, usa el icono de importar media, ajusta la referencia al canvas, dibuja encima y pide el objeto; el video muestra que no coloca objetos con precisión, así que para edición localizada conviene más el editor.
- En la herramienta de **vector layer / retexture**, inicia con **upload**, **webcam**, **media gallery** o **create sketch from blank canvas**.
- Usa **Generate vector layer** para convertir una imagen base en una versión vectorial. Luego compara **Base** y **Vector** con modos **wipe**, **fade** y **blend**.
- La herramienta entrega cuatro iteraciones iniciales; si no sirven, usa **Create new versions**.
- En **AI settings**, ajusta modelo, **Guiding prompt**, estilo y aspect ratio. Keywords usadas para retexturizar: `underwater`, `rusty`; estilos disponibles mencionados: **macro**, **realistic**, **custom instructions** y **photography film**.
- Para retexturizar, crea primero el vector layer y luego pulsa **Create render**. Sirve para mantener la estructura de la referencia y cambiar textura/estética.
- Para partir de cero, usa **Create sketch from blank canvas**, cambia el aspect ratio a landscape si lo necesitas, dibuja la composición y ejecuta **Create vector layer**.
- En **Scene Explorer**, usa prompts amplios de ubicación, no prompts hiper detallados. Ejemplos exactos mencionados: `a train station`, `ticket window`.
- **Scene Explorer** genera ideas de **camera shots** y elementos de escena. Haz clic en sugerencias como wide shot o ticket window, usa el botón de reroll para nuevas ideas y abre la flecha para ver el prompt que Flow usa detrás.
- En **Mock Up**, importa una imagen base y aplícala a presets como **laptop**, **poster** o **TV**. En **Custom mock-up**, escribe una escena propia y elige modelo, por ejemplo Pro.
- En resultados de **Mock Up**, puedes descargar, eliminar o reintentar. El prompt visible en el resultado puede ser tu prompt, mientras que en **All Media** puedes ver el prompt expandido generado por el modelo.
- En **Image Editor**, define **canvas dimensions**, ratio, modelo y capas. Puedes añadir imagen o texto, ocultar/eliminar capas, mover, redimensionar, rotar, voltear y ajustar **opacity**, **brightness**, **contrast** y **saturation**.
- Atajo de zoom del editor: **Command + rueda del mouse** en Mac o **Control + rueda del mouse** en Windows.
- Herramientas avanzadas del editor: **in-paint**, **out-paint**, **cutout**, **crop** y **refine**.
- En **in-paint**, selecciona con brocha el área y escribe el cambio; ejemplo exacto: `black sunglasses`. El editor crea una nueva capa con la edición.
- En **out-paint**, amplía el canvas o la imagen y ejecuta la extensión; la descripción es opcional.
- **Save to gallery** es necesario cuando haces ajustes manuales de capa como brillo/contraste/saturación; las generaciones de IA sí aparecen automáticamente en **All Media**.
- **Crop** recorta la capa actual. **Cutout** elimina el fondo de la capa actual, pero no exporta un PNG transparente; sirve para componer dentro del editor.
- Usa **Refine** después de combinar sujeto y fondo de fuentes distintas; analiza las capas y armoniza iluminación/color en una nueva composición.
- En **Shot Explorer**, selecciona una referencia y genera variaciones: **side**, **overhead**, paneo a izquierda/abajo/arriba, **zoom in**, **zoom out**, **extreme detail** tipo macro y **Surprise me**.
- En **Shot Explorer**, abre la flecha del resultado para ver el prompt usado detrás y usa **Regenerate** si una toma sale rara.
- En **Mask Magic**, elige imagen, motor **smart** o **brush**, selecciona el área y escribe la acción. Prompts exactos usados: `remove`, `golden coin`.
- En **Mask Magic**, el estado **Editing image** indica que la generación está corriendo. El historial inferior permite volver una edición atrás.
- **Grid Architect** funciona como creador automático de grillas/storyboards. Puedes abrir **Tutorial**, elegir modelo como **DynamiVision Pro**, ratio, número de slots, filas y columnas.
- En **Grid Architect**, usa **4x4** para ir más rápido; puedes personalizar filas/columnas y elegir **Style from Reference**, subir una referencia, seleccionar un estilo como **cinematic movie** o crear un estilo custom.
- Modos de **Grid Architect**: **Unified Theme** usa un prompt/story/script único; **Sequence** usa un prompt por shot; **Prompt Wizard** toma una historia y con **Create Breakdown** autocompleta los shots.
- Después de generar grillas, puedes editar un shot con instrucciones adicionales, descargar la grilla completa o usar **Enhance all to 1K** para guardar imágenes individuales en **All Media**.
- Para crear herramientas propias, puedes usar **Remix tool** sobre una herramienta existente o **Create new** desde cero.
- En **Remix tool**, el agente abre un panel lateral; describe el cambio, ejecuta **Run** y luego **Create a new version**. Hay pestañas **Tool** y **Edit**, y si sabes React puedes revisar/modificar el código.
- Las herramientas creadas quedan en **My Tools**. El uso del agente consume cuota, no créditos.
- Para crear una herramienta nueva, escribe de forma conversacional lo que debe hacer o pide a Gemini que convierta tu idea en un prompt más completo para pegarlo en el agente.
- Ejemplo de herramienta nueva mostrada: elegir una imagen de la galería y transformarla en versiones **1900s**, **1980s** y **cyberpunk**. Para mejorarla, entra en **Edit** y chatea con el agente.

## Reglas para agentes
- Usa **Fast / NanoBanana2** cuando priorices velocidad; usa **Pro / NanoBananaPro** cuando priorices calidad, estilo o composición.
- En **Simple Sketch**, siempre entrega una descripción de imagen y separa el estilo en **Additional instructions**.
- Usa **Additional instructions** como preset reutilizable de estilo, no solo como una frase decorativa.
- Usa **Image Editor** o **Mask Magic** cuando necesites inpainting localizado; no uses Simple Sketch para colocar objetos con precisión.
- Usa **Generate vector layer** antes de retexturizar; luego aplica **Guiding prompt**, estilo, aspect ratio y **Create render**.
- Usa **Scene Explorer** para idear ubicaciones, cámaras y elementos; no lo uses como generador final con prompts demasiado cerrados.
- Usa **Shot Explorer** cuando ya tengas una imagen y necesites variaciones de cámara verificables.
- Usa **Grid Architect** para storyboards, secuencias y grillas; usa **Prompt Wizard** cuando tengas una historia y necesites desglose por plano.
- Usa **Sequence** cuando cada shot requiera una instrucción específica.
- Ejecuta **Enhance all to 1K** antes de tratar los shots de Grid Architect como assets reutilizables.
- Después de cambios manuales en capas, pulsa **Save to gallery**; no asumas que esos ajustes ya están en **All Media**.
- Usa **Cutout** solo para composición por capas dentro del editor; nunca prometas PNG transparente desde esa función.
- Usa **Refine** después de combinar capas que no comparten iluminación, color o ambiente.
- Revisa los prompts ocultos con las flechas o desde **All Media** para aprender cómo Flow expandió la instrucción.
- Controla el uso del agente al remixar o crear herramientas; la cuota se agota aunque no consuma créditos.

## Errores comunes que evita o menciona
- Esperar que Simple Sketch coloque un objeto exactamente donde se dibujó o que borre siempre el trazo original.
- Dar prompts demasiado detallados en **Scene Explorer** en vez de usarlo para exploración.
- Pensar que estas herramientas reemplazan Canva, Figma o un editor dedicado.
- Olvidar que algunas ediciones crean nuevas capas y otras modifican la capa actual.
- Creer que **Cutout** permite exportar PNG con fondo transparente.
- No usar **Save to gallery** después de ajustes manuales de brillo, contraste, saturación u opacidad.
- Esperar que **Refine** armonice perfectamente todas las composiciones.
- Usar palabras de color o material en **Mask Magic** sin considerar que pueden contaminar toda la escena.
- Usar outputs de **Grid Architect** en baja resolución sin pasar por **Enhance all to 1K**.
- Gastar cuota del agente creando/remixando herramientas sin probar cambios pequeños primero.