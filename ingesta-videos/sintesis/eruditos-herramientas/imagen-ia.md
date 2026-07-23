## Doctrina destilada (ingesta 2026-07-16)
> 23 fuentes destiladas (docs oficiales + tutoriales). Cada regla con su fuente.

### Selección de modelo por tarea

- **Fotorrealismo extremo y calidad cinematográfica:** Usar `black-forest-labs/flux-2-max` (S tier) — consistencia de personajes entre lotes (hasta 8 imágenes de referencia), control de color mediante códigos hex. También `bytedance/seedream-5-lite` (S tier) para razonamiento multi-paso integrado y comprensión espacial/física. (Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image; Fuente: eh-imagen-ia — https://youtu.be/_Ow97llH1YE)
- **Ilustración y estilos artísticos:** Usar `bytedance/seedream-5-lite` para edición basada en ejemplos y fusión multi-imagen (hasta 14 referencias). Para estética analógica 80s sin aspecto de IA, usar Reevark (A tier). Para renderizado bilingüe (chino e inglés) y estética dramática, usar Hanuan Image 3 (A tier, 80B parámetros, Tencent). (Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image; Fuente: eh-imagen-ia — https://youtu.be/_Ow97llH1YE)
- **Texto legible en logos/afiches:** Usar `black-forest-labs/flux-2-flex` — especialista en tipografía, hasta 10 imágenes de referencia. Alternativa: `ideogram-ai/ideogram-v3` con referencias de estilo (subir hasta 3 imágenes). Para texto en logos, usar FLUX.2 con códigos hex: `"The logo text 'ACME' in color #FF5733"`. (Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image; Fuente: bfl_flux2_prompting — https://docs.bfl.ml/guides/prompting_guide_flux2)
- **Vectorial SVG:** Usar `recraft-ai/recraft-v4-svg` o `recraft-ai/recraft-v4-pro-svg` — archivos SVG nativos editables, capas limpias, rutas estructuradas. Abre directamente en Illustrator, Figma, Sketch. (Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image)
- **Upscale:** En Google AI Pro ($19.99/mes): upscaling a 1080p. Google AI Ultra: upscaling a 4K. En Gemini API, especificar `image_size` con K mayúscula (ej. `"4K"`). Cream 4.5 soporta 2K y 4K. (Fuente: eh-imagen-ia — https://youtu.be/dmmSR3FOQfM; Fuente: gemini_image_docs — https://ai.google.dev/gemini-api/docs/image-generation; Fuente: eh-imagen-ia — https://youtu.be/_Ow97llH1YE)
- **Quitar fondo y reemplazar:** Subir imagen a Gemini → prompt: `"remove the background and replace it with a subtle blue techy background"`. Para preservar identidad facial y cambiar fondo: `"Place me in a magical forest sitting on a giant mushroom. Give me a fantasy elflike outfit"` — el modelo mantiene el rostro y cambia fondo en ~10 segundos. (Fuente: eh-imagen-ia — https://youtu.be/c11bY0RBQm8; Fuente: eh-imagen-ia — https://youtu.be/QGvRZmG_ZKA)
- **Edición con imagen de referencia:** Usar Cling (A tier como image-to-image) con prompt de edición: `"remove all the people from the image"`. Para photo blending: subir dos imágenes (ej. taza + patrón) y usar `"Apply the mosaic pattern from the second image onto the coffee mug, keeping the mug's original shape and texture"`. Para cambiar vestimenta sin afectar rostro: usar verbo **replace** + especificar solo la prenda, sin mencionar el rostro. (Fuente: eh-imagen-ia — https://youtu.be/_Ow97llH1YE; Fuente: eh-imagen-ia — https://youtu.be/QGvRZmG_ZKA; Fuente: eh-imagen-ia — https://youtu.be/KXYAji7-2wk)

### Prompting por modelo

- **Fórmula universal para GENERACIÓN de imágenes:** `[SUJETO] + [ACCIÓN] + [ENTORNO] + [ESTILO ARTÍSTICO] + [ILUMINACIÓN] + [DETALLES]`. Ejemplo: *"A young woman with freckles, smiling thoughtfully and sitting on a bench, in a cozy café, shot on a Canon 5D Mark 5, natural light, warm and inviting"*. (Fuente: eh-imagen-ia — https://youtu.be/KXYAji7-2wk)
- **Fórmula exacta para EDICIÓN de imágenes:** `[ACCIÓN/VERBO] + [ELEMENTO ESPECÍFICO A CAMBIAR] + [NUEVO ESTILO/EFECTO] + [DETALLES RELEVANTES]`. Usar SIEMPRE una de estas 5 palabras de acción al inicio: **add, change, make, remove, replace**. Ejemplo: *"Replace the sky in the image with a light blue sky and fluffy white clouds, photorealistic"*. (Fuente: eh-imagen-ia — https://youtu.be/KXYAji7-2wk)
- **FLUX.2:** Estructura: `Subject + Action + Style + Context`. El orden de las palabras importa: FLUX.2 presta más atención a lo que va primero. Nunca usar negative prompts (ej: "no blur", "no bad hands") — el modelo interpreta literalmente y puede añadir esos elementos. Usar positive constraints describiendo exactamente lo que se quiere ver. (Fuente: bfl_flux2_prompting — https://docs.bfl.ml/guides/prompting_guide_flux2; Fuente: eh-imagen-ia — https://youtu.be/cdCT9m9BIFQ)
- **FLUX.2 control preciso de color:** Señalar con palabras clave `"color"` o `"hex"` seguidas del código. Ejemplo: `"The logo text 'ACME' in color #FF5733"`. (Fuente: bfl_flux2_prompting — https://docs.bfl.ml/guides/prompting_guide_flux2)
- **Ideogram:** Límite de prompt: máximo 150-160 palabras o ~200 tokens. Lo que exceda puede ser ignorado. Para corrección ortográfica: remezclar la imagen editada con **image strength alto (90/100)** para que el AI integre y suavice el texto corregido. (Fuente: ideogram_prompt_structure — https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide/3-prompt-structure; Fuente: ideogram_texto_tipografia — https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide/2-prompting-fundamentals/text-and-typography)
- **Nano Banana (Gemini):** Para retoque de piel, usar `"Naturally smooth while maintaining realistic pores"` para evitar aspecto artificial. Para convertir a cartoon, usar `"turn this into an animated cartoon"` (evitar "Pixar style" por posible restricción de copyright). (Fuente: 296227 — https://youtu.be/nnlgMpyq-j0; Fuente: eh-imagen-ia — https://youtu.be/c11bY0RBQm8)
- **OpenAI gpt-image-2:** Parámetros clave: `size` (valores exactos: 1024x1024, 1536x1024, 1024x1536, 2048x2048, 3840x2160, auto; máximo borde 3840px; múltiplos de 16px; relación de aspecto ≤ 3:1), `quality` (low, medium, high, auto), `background` (opaque, transparent, auto — nota: gpt-image-2 no soporta transparent), `output_format` (png, jpeg, webp), `output_compression` (0-100% solo para jpeg y webp). (Fuente: openai_gpt_image_docs — https://developers.openai.com/api/docs/guides/image-generation)

### Parámetros y costos relativos

- **Costos por imagen (API):** Ideogram V_4: $0.04 por generación. Ideogram V3 Turbo: $0.03 por imagen. Nano Banana Pro: 60 créditos/imagen; Nano Banana Standard: 15 créditos/imagen. OpenAI gpt-image-2 calidad Low en 1024x1024 = 196 tokens; Medium = 1,632 tokens; High = 6,528 tokens. Cada imagen parcial (streaming) añade 100 tokens de salida adicionales. (Fuente: ideogram_prompting — https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide; Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image; Fuente: eh-imagen-ia — https://youtu.be/_Ow97llH1YE; Fuente: openai_gpt_image_docs — https://developers.openai.com/api/docs/guides/image-generation)
- **Planes gratuitos:** Google Flow: 100 créditos iniciales + 50 créditos diarios. Nano Banana Pro para imágenes cuesta 0 créditos. (Fuente: eh-imagen-ia — https://youtu.be/dmmSR3FOQfM)
- **Planes de pago Google AI:** Google AI Pro ($19.99/mes, primer mes gratis): 1000 créditos/mes, upscaling a 1080p. Google AI Ultra: 25,000 créditos/mes, upscaling a 4K. (Fuente: eh-imagen-ia — https://youtu.be/dmmSR3FOQfM)
- **Modelos de velocidad y bajo costo:** `prunaai/p-image` — sub 1 segundo. `black-forest-labs/flux-2-klein-4b` — 4 pasos destilados, inferencia sub-segundo. (Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image)
- **Higgsfield `ms_image`:** REQUIERE `style_id` (llamar `show_marketing_studio type=image_style` ANTES); sin style_id = error. (Fuente: higgsfield_image_models — https://docs.higgsfield.ai)
- **Gemini API:** Modelo recomendado general: `gemini-3.1-flash-image` (Nano Banana 2) con `client.interactions.create()`. Soporta hasta 14 imágenes de referencia y resolución 4K. Parámetro obligatorio: `image_size` con K mayúscula (ej. `"1K"`, `"2K"`, `"4K"`); valores en minúscula como `"1k"` serán rechazados. (Fuente: gemini_image_docs — https://ai.google.dev/gemini-api/docs/image-generation)

### Edición multi-turno y avanzada

- **Edición multi-turno en Gemini:** Encadenar comandos en la misma conversación sin reiniciar. Ejemplo: primero `"Change the park to a snowy mountain landscape"`, luego `"Add a small, friendly looking rabbit hopping near the dog's paws. Make it look like it's a cold, overcast day"`, luego `"Remove the Frisbee"`. (Fuente: eh-imagen-ia — https://youtu.be/KXYAji7-2wk)
- **Restauración de fotos antiguas:** Subir foto dañada → prompt: `"restore this photo"` → luego: `"colorize and modernize this"`. (Fuente: eh-imagen-ia — https://youtu.be/c11bY0RBQm8)
- **Edición con máscara (OpenAI):** Proporcionar imagen PNG con canal alfa para especificar regiones a editar. Endpoint: `POST /v1/images/edits`. (Fuente: openai_gpt_image_docs — https://developers.openai.com/api/docs/guides/image-generation)
- **Edición guiada por texto:** Modelos `black-forest-labs/flux-kontext-pro`, `black-forest-labs/flux-kontext-max`, `bytedance/seedream-4.5` — soportan edición guiada por texto ("añadir gafas de sol", "convertir en pintura"). (Fuente: replicate_t2i_collection — https://replicate.com/collections/text-to-image)
- **Activar modo Pro para ediciones avanzadas en Gemini:** Cambiar el modelo a `"thinking with free Pro"` para ediciones avanzadas, más realismo y mejor manejo de texto. (Fuente: eh-imagen-ia — https://youtu.be/-Yq1Yi0MpDQ)

### Instalación y configuración

- **Instalación de Ideogram 4 en ComfyUI:** Descargar modelos desde Hugging Face: `ideogram-4.safetensors` (FP8 o NVFP4) → `ComfyUI/models/diffusion_models/`; `ideogram-4-unconditional.safetensors` → `ComfyUI/models/diffusion_models/`; `Qwen2-VL-7B-Instruct` (FP8 o NVFP4) → `ComfyUI/models/text_encoders/`; `flux2-vae.safetensors` → `ComfyUI/models/vae/`. (Fuente: eh-imagen-ia — https://youtu.be/OA4gchz1Zcs)
- **Regla de Ideogram 4 en ComfyUI:** Sin bounding boxes en el canvas, el modelo devuelve "image blocked by safety filter". Siempre dibujar al menos un bounding box antes de generar. (Fuente: eh-imagen-ia — https://youtu.be/OA4gchz1Zcs)
- **Acceso a Nano Banana:** Ir a `gemini.google.com`, iniciar sesión con cuenta de Google, luego hacer clic en el ícono de banana pequeña en la parte inferior que dice "create image". Alternativa: desde el sitio web de Gemini, hacer clic en **Tools** y seleccionar **Create Images**. (Fuente: eh-imagen-ia — https://youtu.be/CINi8iduBuI; Fuente: Nano Banana AI Tutorial — https://youtu.be/lfE-csUyPF4)
- **Registro en Ideogram:** Ir a la página principal, hacer clic en "Sign up with Google", seleccionar cuenta de Google, aceptar términos, ingresar nombre de usuario y hacer clic en "Complete registration". (Fuente: Aprende a Usar Ideogram — https://youtu.be/iEdi5e-ruP4)
- **Recraft:** Usa el índice `/docs/llms.txt` para descubrir todas las páginas disponibles antes de explorar más. Modelos disponibles: Recraft V2, V3, V4, V4.1 (el más reciente). (Fuente: recraft_docs — https://www.recraft.ai/docs)

### Modelos a evitar

- **Quen Image (F tier):** Evitar completamente; produce resultados cartoon 3D de baja calidad. Desarrollado por Alibaba Cloud. (Fuente: eh-imagen-ia — https://youtu.be/_Ow97llH1YE)

### Errores comunes / anti-patrones

- **Degradación progresiva de calidad en Nano Banana:** Al iterar en una misma conversación, la calidad se degrada. Solución: iniciar nuevo chat y ser específico desde el primer prompt. (Fuente: eh-imagen-ia — https://youtu.be/CINi8iduBuI)
- **Resolución insuficiente en Nano Banana:** Adecuada solo para visualización en redes sociales, no para impresión física. (Fuente: eh-imagen-ia — https://youtu.be/CINi8iduBuI)
- **Producto flotando en Nano Banana:** Al generar fondos sin especificar superficie, el producto parece flotar. Solución: añadir `"put the product down on the table"`. (Fuente: eh-imagen-ia — https://youtu.be/CINi8iduBuI)
- **No usar "Pixar style" en Gemini:** Gemini no lo procesa por posible copyright; usar "animated cartoon" sí funciona. (Fuente: eh-imagen-ia — https://youtu.be/c11bY0RBQm8)
- **Esperar que Flux 2 sea fine-tune de Flux 1:** Es una arquitectura completamente nueva, requiere cambiar el flujo de prompting. (Fuente: eh-imagen-ia — https://youtu.be/cdCT9m9BIFQ)
- **Confundir "grab background" en Ideogram con image-to-image:** La función solo superpone la imagen generada como referencia visual, no la usa como input. (Fuente: eh-imagen-ia — https://youtu.be/OA4gchz1Zcs)
- **Usar negative prompts en Flux 2:** El modelo interpreta literalmente y puede añadir los elementos negados. Usar positive constraints en su lugar. (Fuente: eh-imagen-ia — https://youtu.be/cdCT9m9BIFQ)
- **Olvidar style_id en Higgsfield:** El modelo `ms_image` REQUIERE `style_id`; sin él devuelve error. (Fuente: higgsfield_image_models — https://docs.higgsfield.ai)
- **Usar `image_size` en minúscula en Gemini API:** Valores como `"1k"` serán rechazados; usar siempre K mayúscula (`"1K"`, `"2K"`, `"4K"`). (Fuente: gemini_image_docs — https://ai.google.dev/gemini-api/docs/image-generation)

### Fuentes de esta ingesta
- eh-imagen-ia — https://youtu.be/CINi8iduBuI
- eh-imagen-ia — https://youtu.be/-Yq1Yi0MpDQ
- eh-imagen-ia — https://youtu.be/KXYAji7-2wk
- eh-imagen-ia — https://youtu.be/_Ow97llH1YE
- eh-imagen-ia — https://youtu.be/QGvRZmG_ZKA
- eh-imagen-ia — https://youtu.be/c11bY0RBQm8
- eh-imagen-ia — https://youtu.be/dmmSR3FOQfM
- eh-imagen-ia — https://youtu.be/OA4gchz1Zcs
- eh-imagen-ia — https://youtu.be/cdCT9m9BIFQ
- Aprende a Usar Ideogram — https://youtu.be/iEdi5e-ruP4
- Nano Banana AI Tutorial — https://youtu.be/lfE-csUyPF4
- 296227 — https://youtu.be/nnlgMpyq-j0
- bfl_flux2_prompting — https://docs.bfl.ml/guides/prompting_guide_flux2
- gemini_image_docs — https://ai.google.dev/gemini-api/docs/image-generation
- higgsfield_image_models — https://docs.higgsfield.ai
- ideogram_prompting — https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide
- ideogram_prompt_structure — https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide/3-prompt-structure
- ideogram_texto_tipografia — https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide/2-prompting-fundamentals/text-and-typography
- openai_gpt_image_docs — https://developers.openai.com/api/docs/guides/image-generation
- replicate_t2i_collection — https://replicate.com/collections/text-to-image
- recraft_docs — https://www.recraft.ai/docs