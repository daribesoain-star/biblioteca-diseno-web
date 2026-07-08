# Google Flow: How to use Frames to Video feature
**Fuente:** nextmindrevolution | https://youtu.be/KQu6X0VFsxc
## Qué enseña (2-3 líneas)
Enseña a usar **Frames to Video** en Google Flow para controlar el inicio y el final de un video mediante imágenes cargadas o generadas dentro de Flow.  
También muestra cómo crear frames consistentes con **Nano Banana Pro**, cómo escribir prompts para movimiento/audio y cómo iterar cuando Flow agrega música, canto, subtítulos o cortes no deseados.

## Lecciones accionables
- En Google Flow, entra a **Frames to Video** desde la parte inferior de la interfaz. Ahí aparecen dos espacios con “+”: uno para el **starting frame** y otro para el **ending frame**, además del campo de prompt.
- Para crear los frames dentro de Flow, sal de **Frames to Video** y ve a **Create Image**.
- En **Create Image**, elige modelo. Los modelos mencionados son: **Nano Banana Pro**, **Nano Banana** e **Imagen 4**. El video recomienda **Nano Banana Pro** para mantener consistencia de personaje.
- Configuración usada para generar la imagen inicial:
  - Outputs: **2**
  - Aspect ratio: **16:9**
  - Prompt verbatim: `Full body shot of a young aesthetic woman walking in the trail of a forest. Soft natural light as if under an overcast sky with diffused lighting, gentle highlights, and subtle shadows. Muted color palette, natural textures, candid shot.`
- Si las imágenes generadas no sirven, usa **Reuse prompt** y vuelve a ejecutar el mismo prompt hasta obtener una toma usable.
- Usa la imagen elegida como **starting frame**.
- Para crear el **ending frame** con el mismo personaje, abre la imagen inicial en tamaño completo y edítala desde el cuadro de texto describiendo solo los cambios deseados.
- Prompt verbatim para editar el frame final: `medium close shot. The subject is holding both hands up towards the viewer. Her expression is joyful, smiling and looking directly at the lens. The arms are raised above her head and slightly bent. The body is centered and facing directly forward.`
- Al crear frames para video, revisa que el fondo, ropa, personaje y composición sean coherentes. Elementos raros en el fondo o inconsistencias visuales pueden causar una generación fallida o extraña.
- Después de crear ambos frames, vuelve a **Frames to Video**, carga el frame inicial como **starting frame** y el editado como **ending frame**.
- Puedes intercambiar los frames si quieres invertir la dirección del video; la decisión depende del tipo de toma.
- Prompt verbatim usado para generar el video: `A woman is walking in the forest. The camera follows her with a slow cinematic movement as she walks toward the camera. She happily smiles and says, "Welcome back." No music, no subtitles.`
- Añade instrucciones negativas explícitas porque Flow puede insertar música o subtítulos automáticamente. Si falla, reutiliza el prompt y hazlo más específico con: `no music, no singing, and no subtitles.`
- Si la generación incluye música, canto, subtítulos, cortes bruscos o cambios de ángulo no deseados, usa **Reuse prompt** y vuelve a generar.
- También puedes usar **Frames to Video** con un solo frame inicial. En ese caso, carga solo el **starting frame** y deja que el prompt defina lo que ocurre después.
- Con un solo frame inicial, no hace falta redescribir el fondo ni el personaje con tanto detalle, porque el modelo ya parte de una imagen concreta. El prompt debe enfocarse en acción, cámara, expresión, diálogo y restricciones como `no music, no singing, and no subtitles.`
- Cuando el sujeto dice algo, el resultado puede requerir varias ejecuciones. El video menciona que esto aplica especialmente a **Veo 3.1** y otros modelos con audio.

## Reglas para agentes
- Usa **Frames to Video** cuando necesites controlar con precisión el primer y último frame de una escena.
- Usa **Nano Banana Pro** cuando necesites mantener consistencia de personaje entre imagen inicial e imagen final.
- Genera primero el **starting frame**, luego edítalo para producir el **ending frame** en vez de crear ambos desde cero.
- Mantén personaje, ropa, fondo, iluminación y composición coherentes entre frames.
- Rechaza una generación si aparecen música, canto o subtítulos cuando el prompt los prohíbe.
- Incluye instrucciones negativas explícitas: `No music`, `no singing`, `no subtitles`.
- Si Flow ignora una restricción, usa **Reuse prompt**, refuerza la instrucción negativa y vuelve a generar.
- Usa un solo **starting frame** cuando solo necesites fijar el punto de partida y dejar que el modelo continúe la acción.
- No redescribas todo el entorno cuando usas un frame inicial claro; describe la acción posterior.
- Nunca uses en producción una salida con cortes bruscos, cambio de ángulo no pedido, audio raro, canto accidental o subtítulos inesperados.

## Errores comunes que evita o menciona
- Usar prompts demasiado vagos y esperar una toma correcta en un solo intento.
- No especificar `No music`, `no singing` o `no subtitles`, lo que puede hacer que Flow agregue música, canto o subtítulos.
- Aceptar una generación con un corte inesperado entre el inicio y el final.
- Crear un frame final sin cuidar la consistencia del personaje, ropa, fondo o iluminación.
- Dejar elementos extraños en el fondo que pueden provocar resultados fallidos o raros.
- No iterar con **Reuse prompt** cuando el resultado no cumple.
- Confiar demasiado en el audio generado: puede añadir palabras al final, sonar raro o requerir edición posterior.