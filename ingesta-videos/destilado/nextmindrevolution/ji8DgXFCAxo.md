# Gemini Image Editing: Brush, Add, Remove, Resize and Outpaint Like a Pro
**Fuente:** nextmindrevolution | https://youtu.be/ji8DgXFCAxo
## Qué enseña (2-3 líneas)
Cómo editar imágenes en Gemini mediante prompts, pincel, anotaciones, selección localizada, cambios de relación de aspecto, outpainting y referencias visuales.  
El flujo central es combinar instrucciones específicas con marcas visuales sobre la imagen para reemplazar, agregar, remover, variar o expandir elementos.

## Lecciones accionables
- Para una edición básica, arrastra la imagen al chat y escribe la instrucción en lenguaje natural. Ejemplo verbatim: `change the jacket the man is wearing for a leather type of jacket`.
- Puedes dejar el modo en `tools`; también puedes ir a `create image`, pero en el ejemplo el autor deja `tools` y `fast`.
- Cuanta más información incluyas en el prompt, mejor el resultado: no digas solo `leather jacket` si necesitas color, estilo, cadenas, textura o detalles concretos.
- Para agregar y remover en una misma imagen, el ejemplo usa: `I want to remove the glasses from the subject, and I want to add a red baseball cap`.
- Gemini puede inferir relaciones visuales: si dices `Add a red baseball cap`, puede colocarla en la cabeza del sujeto aunque no digas “wearing”. Pero puede fallar y ponerla atrás o en la mano.
- Para evitar ambigüedad, formula la ubicación o relación exacta. Mejor prompt verbatim: `The subject is wearing a red baseball cap`.
- Si Gemini usa una imagen equivocada del chat o ignora `use the attached image as a reference`, abre un chat nuevo y repite la edición allí.
- Al hacer clic sobre una imagen se abre el panel de edición con `brush` y `annotations`.
- En el panel de edición, usa `undo` en la parte superior para revertir marcas o trazos.
- El `brush` sirve para apuntar zonas, crear variaciones localizadas e inpainting.
- Para variaciones, pinta encima de los objetos específicos, pulsa `done` y pide una variación. Según el video, incluso puede funcionar sin prompt, o con prompts simples como `vary` o `variation`.
- Para remover objetos, selecciona el objeto; no pintes encima. Si pintas encima, Gemini puede interpretar que quieres una variación, no una eliminación.
- Si el objeto tiene sombra, selecciona también la sombra.
- Prompt verbatim para borrar selección: `remove the selected items`.
- Si Gemini elimina un objeto pero falla con otro, vuelve a intentar o toma la última imagen generada y elimina un solo objeto por vez.
- El pincel también sirve como puntero espacial: dibuja un círculo o marca donde quieres insertar algo.
- Prompt simple usado: `add a coffee cup`.
- Prompt más específico recomendado: `add a coffee cup where the doodle or where the circle the red circle is`.
- Los colores de anotación permiten instrucciones separadas por zona. Prompt verbatim: `Add a coffee cup according to the blue annotation and a bottle of water according to the red annotation`.
- Las `annotations` permiten escribir instrucciones directamente sobre la imagen y reforzarlas con flechas.
- Ejemplos de anotaciones escritas en la imagen: `remove the plant` y `Turn couch to blue`.
- Para ejecutar las anotaciones, usa el prompt verbatim: `Follow edit instructions on annotations`.
- Para cambiar formato de horizontal a vertical, usa el prompt verbatim: `change the aspect ratio to 9:16`.
- Cambiar de `16:9` a `9:16` no es un recorte: Gemini genera una nueva imagen y puede modificar elementos para ajustarlos al nuevo encuadre.
- Para cambiar de `9:16` a `16:9`, Gemini debe imaginar y generar contenido en los laterales; este proceso tarda más y es más creativo.
- El proceso de expandir imagen generando zonas que no existían se describe como `expanding` y `out-painting`.
- Para mantener el mismo formato pero ver más escena alrededor, usa outpainting con una instrucción explícita. Prompt verbatim: `extend the attached image from all sides, maintain 9:16 aspect ratio`.
- Si no incluyes `maintain 9:16 aspect ratio`, Gemini puede cambiar la relación de aspecto libremente.
- Para usar referencias o ingredientes, arrastra varias imágenes/objetos y explica la relación en el prompt. Ejemplo: `the man is wearing a blue baseball cap and a red watch`.
- Gemini no permite bloquear ingredientes como Google Flow.
- Para referencias/ingredientes sobre una imagen existente, Gemini funciona pero puede generar resultados débiles.
- Para crear una imagen nueva con referencias, el resultado suele ser mejor. Prompt verbatim: `full body shot of a man wearing a blue baseball cap and a red watch`.
- Si generas algo nuevo, añade detalles sobre sujeto, fondo, pose, estilo y contexto; si no, Gemini puede inventar cualquier sujeto o fondo.

## Reglas para agentes
- Usa prompts específicos cuando edites atributos visuales; incluye color, material, posición, relación con el sujeto y detalles de estilo.
- Usa `tools` para ediciones directas de imagen cuando no necesites cambiar al modo `create image`.
- Abre un chat nuevo cuando Gemini use una imagen incorrecta o ignore la imagen adjunta.
- Usa `brush` pintando encima de objetos cuando quieras variaciones localizadas.
- Usa selección alrededor del objeto, no pintura encima, cuando quieras agregar o remover elementos.
- Selecciona sombras junto con el objeto cuando el objetivo sea removerlo.
- Remueve un objeto por vez si Gemini falla al borrar múltiples objetos.
- Usa marcas, círculos o doodles como punteros cuando quieras insertar algo en una posición exacta.
- Usa colores distintos de anotación solo si el prompt asigna una acción clara a cada color.
- Usa flechas y texto en `annotations` para reforzar instrucciones sobre objetos concretos.
- Usa `Follow edit instructions on annotations` cuando hayas escrito instrucciones sobre la imagen.
- Usa `maintain 9:16 aspect ratio` o la relación exacta requerida cuando hagas outpainting sin querer cambiar el formato.
- Nunca asumas que `Add a red baseball cap` significa necesariamente “en la cabeza”; especifica `The subject is wearing...`.
- Nunca confundas cambio de aspect ratio con recorte: si quieres recorte real, usa Photoshop, Figma u otro editor.
- Nunca dependas de ingredientes en Gemini para ediciones finas sobre una imagen existente si necesitas máxima fidelidad; usa Google Flow cuando necesites mejores resultados con referencias bloqueables.

## Errores comunes que evita o menciona
- Dar prompts demasiado vagos y esperar detalles específicos.
- Decir `Add a red baseball cap` sin indicar dónde va la gorra.
- Seguir trabajando en un chat donde Gemini ya está usando la imagen equivocada.
- Pintar encima de un objeto cuando la intención real es removerlo.
- No seleccionar la sombra de un objeto al intentar borrarlo.
- Intentar borrar varios objetos a la vez y no iterar de a uno cuando falla.
- Usar anotaciones de colores sin explicar qué debe hacer cada color.
- Cambiar relación de aspecto esperando un recorte exacto.
- Hacer outpainting sin fijar explícitamente la relación de aspecto.
- Esperar que Gemini maneje referencias/ingredientes tan bien como Google Flow en ediciones sobre imágenes existentes.