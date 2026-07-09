# Ideogram — Generador de imágenes IA especialista en texto legible, logos y afiches

## que_ensena
Ideogram es un generador de imágenes por IA con capacidad única para renderizar texto legible dentro de imágenes (logotipos, pósters, títulos, frases). Permite crear retratos fotorrealistas, diseños tipográficos precisos, pósters de películas, diseños para merchandising y camisetas, todo mediante prompts de texto. Incluye funciones como "Magic Prompt" para expandir automáticamente prompts básicos, "Remix" para modificar imágenes existentes, y una interfaz social tipo Instagram donde todas las creaciones son públicas. Se destaca frente a otros generadores (Midjourney, DALL-E, Leonardo AI) por su capacidad de manejar tipografía correctamente.

## reglas_para_agentes
- Usa **Ideogram 2.0** como modelo cuando el objetivo sea generar o modificar tipografía en imágenes; para diseños de camisetas usa **Ideogram 3.0** con aspect ratio 4.5 y escala 3.0.
- Para generar texto dentro de imágenes, selecciona el efecto **"Typography"** en el panel de efectos; para retratos fotorrealistas usa **"Portrait photography"** + opcionalmente **"Cinematic"**.
- Para pósters de películas usa siempre relación de aspecto **9:16** y activa **Magic Prompt en Auto** para que Ideogram extienda automáticamente tu prompt básico.
- Estructura los prompts de pósters como: `[nombre de la película] movie poster [título o texto]` (ejemplo: "Sonic movie poster Green Hill Zone").
- Para diseños de camisetas usa la fórmula exacta: `[Nicho o sujeto] + [Gancho divertido o emocional] + [Estilo visual o elemento de diseño] + [Texto opcional]`.
- Incluye siempre **"clear readable text"** o **"bold text"** en el prompt cuando el diseño contenga texto.
- Para logos, antepone **"Vector logo for a company named"** seguido del nombre exacto que debe aparecer en la imagen.
- Para texto 3D estilizado usa la estructura **"A single text 3D [TEXTO EXACTO]"**.
- Usa la función **"Remix"** (crear variación) para modificar elementos específicos de una imagen ya generada; ajusta el **image weight** (0 a 2): valor bajo para cambios grandes, valor alto para mantener similitud.
- Cuando subas una imagen existente para modificar su tipografía, primero pide a la IA que la describa (ej: "Describe this poster design") antes de editar el texto.
- Para retocar diseños existentes usa instrucciones como: "Make the text larger and clearer. Keep the cartoon style. Add an angry face on the goose."
- Siempre verifica el texto generado con zoom al 100% antes de considerar el diseño como final.
- Exporta diseños de camisetas en **PNG transparente** a **4500x5400 píxeles a 300 DPI** para plataformas de print on demand.
- Usa **TM Hunt** para verificar que frases o conceptos no estén registrados como marca antes de publicar.
- Nunca incluyas referencias a Disney, Nike, celebridades o cualquier marca registrada sin verificar derechos.
- Asume que todas las imágenes generadas son **públicas**; no hay opción de privacidad en la interfaz estándar.

## errores_comunes
- **Error:** Usar modelos genéricos (Midjourney, DALL-E, Leonardo AI) para generar texto en imágenes. **Corrección:** Ideogram es el único que maneja tipografía correctamente.
- **Error:** Escribir prompts demasiado largos o complejos. **Solución:** Limitar el prompt a una idea visual fuerte con estilo claro; el Magic Prompt expande automáticamente.
- **Error:** Confiar ciegamente en el texto generado por IA sin verificar. **Advertencia:** El texto puede salir "jumbled or weird" — siempre haz zoom al 100% para verificar ortografía y legibilidad.
- **Error:** Esperar calidad fotográfica igual a Midjourney. **Aclaración:** Ideogram no alcanza ese nivel de realismo, pero compensa con la función de texto exacto.
- **Error:** No escribir el texto correctamente en el prompt. **Consecuencia:** Si el nombre tiene errores ortográficos, la IA los replicará en la imagen.
- **Error:** Diseños descentrados o con mucho espacio en blanco. **Solución:** Recorta y centra manualmente el diseño después de generarlo.
- **Error:** Baja resolución para impresión. **Corrección:** Ideogram no exporta en tamaños de impresión por defecto — siempre escala a 4500x5400 píxeles a 300 DPI.
- **Error:** Usar frases o imágenes con derechos de autor. **Advertencia:** "Stay away from Disney, Nike, or any celebrity faces" — verifica siempre con TM Hunt antes de publicar.

## fuentes_videos
- Flora's Ideogram: Design typography with AI [ideogram] — https://youtu.be/kftlCzaP34Q
- Ideogram Ai: The Best Ai image generator [ideogram] — https://youtu.be/UkZUWm1-qPE
- How To Make Instant Movie Poster With Ideogram AI (Ideogram Beginner Tutorial) [ideogram] — https://youtu.be/rJ22XCRnIlc
- Ideogram Ai - Create amazing Text Logo & Art designs - Malayalam Artificial intelligence [ideogram] — https://youtu.be/gI6Ic4hygHI
- Create VIRAL T-Shirt Designs Using Ideogram AI Without Photoshop [ideogram] — https://youtu.be/aLQB6l6KgXI