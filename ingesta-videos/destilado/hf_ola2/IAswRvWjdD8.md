# AI Videos Look Bad? Here's Why
**Fuente:** hf_ola2 | https://youtu.be/IAswRvWjdD8

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield permite pasar de "texto a video" (poco control) a "imagen a video" con control total usando **start frames**, **Cinema Studio** para cámara y género, y **personajes consistentes** mediante Nana Banana Pro y etiquetado. La clave: el 80% del resultado depende de la calidad de la imagen inicial.

## Tips y flujos accionables

### Flujo para imagen de inicio (start frame) perfecta
1. En **Images**, selecciona **Soul 2** (mejor modelo para imágenes producidas).
2. Describe la escena en palabras simples. **Activa el Prompt Enhancer**.
3. Usa **Soul ID** entrenado con 20+ fotos tuyas para mantener identidad.
4. Regla: "Garbage in, garbage out" – la imagen define el 80% del video final.

### Flujo para animar con Cinema Studio
1. Sube tu start frame a **Cinema Studio**.
2. Prompt estructurado (5 elementos):
   - **Sujeto:** "A man"
   - **Ubicación:** "in a park"
   - **Acción:** "performs a trick and then continues skating"
   - **Cámara:** selecciona **Handheld** (da vibración natural) desde el menú de movimientos de cámara.
   - **Género/Mood:** selecciona uno de los géneros predefinidos en Cinema Studio.
3. No uses prompts vagos como "cool shot" o "cinematic scene".

### Consistencia de personajes (sin face drift)
1. Crea el personaje desde múltiples ángulos usando **Nana Banana Pro**.
2. Sube ese personaje a **Cinema Studio**, asígnale **nombre y descripción**.
3. En lugar de escribir "he is doing something", **etiqueta al personaje** con su nombre.
4. Usa **multi-shot** (generación con cortes de escena) para mantener al mismo personaje en diferentes ángulos, incluso de espaldas.

### Pro tips avanzados
- **Prompt con LLM:** Lleva tu imagen a **Gemini** (o ChatGPT). Describe la animación en términos simples y pide: *"Do not generate, just give me the prompt"* en mayúsculas al final. Revisa y ajusta el prompt antes de usarlo.
- **Motion Control:** Graba un video rápido de ti mismo haciendo la acción. Súbelo a **Motion Control** y transfiérelo a tu personaje. Activa **Scene Control** para mejores resultados.
- **Acciones rápidas sin morphing:** Genera la escena en **cámara lenta**, luego acelérala en cualquier editor de video.
- **Imágenes detalladas:** En la generación de imágenes, especifica ropa, maquillaje, iluminación, composición – como en un rodaje real.

## Reglas para el erudito de Higgsfield
- Para **imagen de inicio producida**: usa **Soul 2** con **Prompt Enhancer** activado.
- Para **control de cámara natural**: usa **Handheld** en Cinema Studio.
- Para **personaje consistente entre tomas**: crea con **Nana Banana Pro**, sube a Cinema Studio, **etiqueta por nombre** y usa **multi-shot**.
- Para **acciones complejas sin morphing**: genera en **cámara lenta** y acelera en postproducción.
- Para **precisión de movimiento**: usa **Motion Control** con **Scene Control** activado.
- Para **prompts detallados**: usa un LLM (Gemini/ChatGPT) con la instrucción *"Do not generate, just give me the prompt"*.

## Errores comunes / que evitar
- **Texto a video sin start frame:** es una máquina tragamonedas sin control de composición. Siempre usa una imagen de inicio.
- **Start frame de baja calidad:** imágenes borrosas o con piel plástica arruinan el video. Usa Soul 2.
- **Prompts vagos:** "algo cool" no funciona. Estructura: sujeto + ubicación + acción + cámara + mood.
- **Inconsistencia de personajes:** el color de pelo, ojos o lunares cambian entre tomas. Usa Nana Banana Pro + etiquetado en Cinema Studio.
- **Sobrecargar la escena:** 15 explosiones + terremoto + conversación emocional = caos. Una acción principal + 1-2 secundarias por escena. Genera planos separados (wide, medium, close-up) y edítalos juntos.