Aquí están los problemas graves encontrados en la entrada JSON:

1. **Herramienta inexistente: "Nano Banana 2" / "Nano Banana Pro" / "Cinema Studio 2.5"**  
   No existe una herramienta de generación de imágenes o video llamada "Nano Banana" ni "Cinema Studio 2.5" en el mercado real. Parece ser una alucinación o nombre inventado.  
   *Corregir:* Reemplazar por herramientas reales como Midjourney, Stable Diffusion, DALL-E, o Runway Gen-3.

2. **Herramienta inexistente: "CeeDance 2.0"**  
   No existe un generador de video llamado "CeeDance 2.0". Probablemente confundido con "Seedance" o "Runway".  
   *Corregir:* Unificar con el nombre real de la herramienta (Seedance) o eliminar.

3. **Herramienta inexistente: "Recraft Crisp Upscale"**  
   No existe un upscaler llamado "Recraft Crisp Upscale". "Recraft" es una herramienta de diseño vectorial, no un upscaler de imágenes.  
   *Corregir:* Reemplazar por upscalers reales como ESRGAN, Topaz Gigapixel, o Real-ESRGAN.

4. **Herramienta inexistente: "Seedance GPT"**  
   No existe un modelo llamado "Seedance GPT". Seedance es una herramienta de video, no un LLM.  
   *Corregir:* Eliminar o reemplazar por un LLM real (GPT-4, Claude, etc.).

5. **Regla contradictoria: "Usa prompts estructurados con los 6 puntos" vs "Mantén los prompts cortos y procesables"**  
   La primera regla exige incluir 6 puntos (subject, action, environment, camera, style, constraints), lo que inevitablemente alarga el prompt, contradiciendo la segunda regla que pide prompts cortos.  
   *Corregir:* Unificar criterio: definir si se prioriza estructura completa o brevedad.

6. **Regla vaga y no accionable: "Usa timeline prompting cuando haya múltiples ángulos, acciones secuenciales o cambios de cámara en un mismo clip"**  
   No explica qué es "timeline prompting" ni cómo implementarlo. Es una instrucción críptica sin contexto.  
   *Corregir:* Definir claramente el concepto o reemplazar por una instrucción concreta (ej: "describe la secuencia de planos en orden cronológico dentro del prompt").

7. **Regla vaga y no accionable: "Usa tags con @ para etiquetar personajes cuando un prompt incluya dos o más referencias"**  
   No especifica en qué herramienta usar @ (¿Midjourney? ¿Seedance? ¿Nano Banana?). No es una sintaxis estándar en ninguna herramienta conocida.  
   *Corregir:* Especificar la herramienta y la sintaxis real, o eliminar si no aplica.

8. **Afirmación sospechosa: "Selecciona multi-shot manual en Cinema Studio 2.5 para controlar cada plano individualmente"**  
   "Cinema Studio 2.5" no existe. Además, "multi-shot manual" no es un término reconocido en herramientas de IA.  
   *Corregir:* Eliminar o reemplazar por una funcionalidad real (ej: "storyboard mode" en Runway).

9. **Regla contradictoria: "Usa el mismo prompt textual para generar el shot en Nano Banana y para generar el video en Seedance"**  
   Inmediatamente después dice: "Alimenta siempre el shot generado en Nano Banana como imagen de entrada en Seedance, no la imagen original de la escena". Si el prompt es el mismo pero la imagen de entrada cambia, el resultado será inconsistente.  
   *Corregir:* Aclarar si el prompt debe adaptarse a la imagen de entrada o viceversa.

10. **Prompt/receta sin contexto de uso: "Prompt para hoja de personaje de 4 ángulos (Nano Banana 2): usar el prompt devuelto por el LLM tras escribir 'yes to create your character anchor image'"**  
    No se entiende cuándo ni cómo aplicar esta instrucción. ¿Qué LLM? ¿Qué significa "yes to create your character anchor image"? Es una instrucción interna de un tutorial no documentada.  
    *Corregir:* Explicar el flujo completo o eliminar la referencia críptica.