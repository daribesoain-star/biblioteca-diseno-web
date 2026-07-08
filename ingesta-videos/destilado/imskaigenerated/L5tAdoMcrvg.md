# Create INSANE AI Anime with Nano Banana & Seedance! FREE workflow
**Fuente:** imskaigenerated | https://youtu.be/L5tAdoMcrvg

## Qué enseña
Flujo completo para generar una historia de anime con IA usando Nano Banana (generación de imágenes) y Seedance (animación con múltiples ángulos de cámara), todo desde una sola plataforma llamada Weevi. Muestra cómo pasar de una imagen de referencia a una secuencia animada profesional con sonido en menos de 30 minutos.

## Lecciones accionables
- **Crear personaje base:** Usa un GPT personalizado que escribe prompts detallados para Midjourney. Prompt ejemplo: *"anime girl riding a Kawasaki ninja in a cyberpunk city"*. Pega el prompt en Midjourney y ajusta con múltiples generaciones hasta obtener el personaje ideal.
- **Requisito de imagen base:** La imagen del personaje debe mostrar claramente rostro, estilo y apariencia general. Esta única imagen es la base que mantiene la consistencia en todas las escenas.
- **Upscale obligatorio:** Pasa cada imagen generada por **Recraft Crisp Upscale** antes de usarla. Esto mejora drásticamente la calidad profesional del resultado.
- **Generar prompts de escenas con IA:** Usa instrucciones personalizadas en ChatGPT (o cualquier LLM) con esta estructura:
  1. Definir rol y objetivo del GPT.
  2. Indicar la tarea: crear 3 scene prompts.
  3. Especificar las 3 escenas deseadas (ej: "the escape", "the sanctuary").
  4. Definir la estructura de salida y pedir que separe cada prompt.
- **Procesamiento paralelo:** Configura un array en el workflow que separe automáticamente los 3 prompts y los dirija a 3 modelos **Nano Banana** diferentes. Así todas las imágenes se generan simultáneamente con la misma calidad.
- **Generar shots adicionales por escena:** Toma cada imagen de escena upscaleada y usa un **Nano Banana GPT** para generar 10 editing prompts de shots posteriores. Sube la imagen de la escena y pide: *"generate 10 editing prompts for shots after this image"*.
- **Crear cada shot en Nano Banana:** Para cada shot, alimenta el prompt de edición en Nano Banana y conecta la imagen de la escena como imagen de referencia para mantener la consistencia del personaje.
- **Animar con Seedance:** Para cada shot generado, usa un **Seedance GPT** que optimiza el prompt para video. Sube el shot y escribe el mismo prompt usado en Nano Banana. El GPT devuelve un prompt de video con múltiples cortes y ángulos. Ejemplo de prompt optimizado: *"A woman types rapidly on her laptop in a dimly lit, cluttered room. Cut to close-up. Her fingers tapping quickly on the keyboard. Screen light flickering. Cut wide shot. She sits hunched over, surrounded by books and empty coffee mugs. Cut side profile. She rubs her eyes slowly, face lit by the laptop's blue glow."*
- **Sonido con Eleven Labs:** Usa la función de generación de efectos de sonido por prompt. Escribe exactamente el sonido deseado (ej: "fingers hitting keys in a quiet room", "satisfying click sound of laptop lid closing", "subtle electronic beep of key fob").
- **Edición final:** Lleva todos los clips animados y efectos de sonido a un editor de video como **CapCut**. Combínalos comenzando con la escena 1 y continuando secuencialmente.

## Reglas para agentes
- Usa **Recraft Crisp Upscale** en cada imagen generada antes de pasarla al siguiente paso.
- Nunca generes prompts de escena manualmente uno por uno; usa siempre el método de instrucciones personalizadas en un LLM para crear múltiples prompts simultáneos.
- Conecta siempre la imagen de escena original como **imagen de referencia** al generar shots en Nano Banana.
- Usa el **mismo prompt textual** para generar el shot en Nano Banana y para generar el video en Seedance.
- Alimenta siempre el shot generado en Nano Banana como imagen de entrada en Seedance, no la imagen original de la escena.
- Separa siempre los prompts de escena en un array para procesamiento paralelo en múltiples modelos Nano Banana.

## Errores comunes que evita o menciona
- Saltarse el paso de upscale: "Most tutorials skip this step, but trust me, it is very important". Sin upscale los resultados se ven amateur.
- Generar prompts uno por uno para cada escena: "takes forever and gives you inconsistent anime characters". El método de instrucciones personalizadas en LLM evita esto.
- Esperar que la primera generación en Midjourney sea perfecta: "It won't be perfect at first. You need to tweak the prompt a little bit and do multiple generations".
- Usar una imagen base que no muestre claramente rostro, estilo y apariencia general: "this single image is the foundation that keeps your entire anime scenes look consistent".
- No usar el mismo prompt en Nano Banana y Seedance: la consistencia del video depende de que ambos modelos reciban la misma descripción.