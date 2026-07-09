# Fal.ai: Plataforma Unificada de Generación Multi-Modelo (Imagen, Video, 3D, Audio)

## que_ensena
Fal.ai es una pasarela API que unifica más de 600 modelos de IA para generar imágenes, videos, audio y modelos 3D. Cubre desde la navegación del playground, el uso de modelos específicos como Flux, NanoBanana, VO3 Fast y Seed Dance, hasta la creación de workflows y la gestión de créditos. También enseña a usar Flux Context (modelo multimodal en LTX Studio) para edición por capas, transferencia de estilo e inpainting con referencia.

## reglas_para_agentes
- Usa el playground de cada modelo para probar prompts antes de implementarlos vía API; cada modelo tiene parámetros únicos (output format, aspect ratio, duration).
- Cuando generes videos con VO3 Fast, ajusta la duración exacta al contenido del diálogo para evitar relleno con "random gibberish".
- Para modelos 3D, genera primero una imagen de referencia con un prompt detallado (incluye "side profile view", "background", color) antes de subirla al modelo 3D.
- En Video Understanding, especifica claramente qué información quieres extraer (ej. "timestamps where delivery is off") para obtener resultados accionables.
- Nunca ejecutes un modelo sin verificar primero el costo estimado que aparece en el playground antes de hacer clic en "Run".
- Siempre copia el "HTTP curl request" desde la página de detalles del modelo cuando integres con automatizaciones; no uses prompts genéricos.
- En workflows, nombra cada paso (input, modelo, output) para mantener trazabilidad; conecta explícitamente el prompt de entrada al campo "prompt" del modelo.
- Usa ChatGPT para generar prompts ultra detallados (múltiples párrafos) antes de ingresarlos en Fal.AI.
- Usa guidance en 20 cuando necesites adherencia estricta al prompt; usa guidance 0-1 cuando quieras variaciones creativas.
- Guarda el seed de imágenes que te gusten para replicar el estilo en futuras generaciones.
- Nunca excedas 10 imágenes por ejecución para evitar gastos innecesarios de créditos.
- Usa el botón "Replay" (ícono de play) en "Request" para recargar configuraciones previas, no reescribas prompts manualmente.
- Descarga siempre las imágenes/videos antes de cerrar la sesión, pues los créditos no reembolsan contenido no descargado.
- Usa Together AI como alternativa gratuita cuando se acaben los créditos en flux.ai; selecciona siempre "flux 1.1 pro" para máximo realismo.
- Usa el modelo FLUX dev cuando priorices calidad sobre velocidad; usa Schnell cuando necesites generación más rápida.
- Nunca uses un VAE incorrecto para el modelo (dev VAE con dev, Schnell VAE con Schnell).
- Asegúrate de que todos los archivos estén en las carpetas correctas de Comfy UI (unet, clip, vae) antes de cargar el workflow.
- Usa siempre el área T5 para el prompt principal en FLUX; copia el mismo prompt en el área CLIP superior cuando necesites corregir texto o detalles finos.
- Cuando uses SCHNELL, confía en que sigue instrucciones de estilo explícitamente; no asumas que DEV hará lo mismo.
- Nunca uses brackets como pesos en FLUX (no funcionan como en SD); úsalos solo para legibilidad.
- Nunca uses "masterpiece" o "quality" en prompts de FLUX; no mejoran la calidad.
- Nunca dejes el área T5 vacía si pones prompt solo en CLIP; el resultado no se relacionará con el prompt.
- Siempre reformula lo que quieras evitar como instrucción positiva en el prompt, no uses negative prompts.
- Usa "change only the [elemento]" cuando quieras modificar una parte específica sin afectar el resto en Flux Context.
- Incluye siempre directivas de contención explícitas como "strictly confined to [superficie]" cuando trabajes con estilos que tienden a propagarse (ej: anime, surrealista).
- Nunca asumas que la IA infiere tu intención implícita; sé explícito sobre qué cambiar y qué preservar.
- Usa "maintain the original [atributo]" para cada aspecto que no deba modificarse (face, facial expression, skin tones, lighting, background, form, structure).
- Cuando uses redefinition prompting (prompts poéticos), establece Flux Guidance a 1 para evitar rigidez y sobresaturación.
- Para cambios localizados en áreas pequeñas (ej: uñas, joyería), acepta que habrá un "reconstruction tax" que puede alterar detalles finos; no intentes arreglarlo solo con prompting.
- Desglosa la imagen en conceptos antes de escribir el prompt: identifica cada elemento, sus relaciones, el estilo deseado y las directivas de fidelidad.

## errores_comunes
- **No especificar duración exacta en VO3 Fast:** Si el diálogo es corto pero la duración es larga (ej. 8 segundos), el modelo rellena con "random gibberish". Ajusta duration al contenido real.
- **Ignorar el costo por modelo:** Algunos modelos (ej. VO3 Fast) son significativamente más caros que otros; revisa siempre el precio antes de ejecutar.
- **No usar ChatGPT para prompts:** El video recomienda explícitamente usar ChatGPT para generar descripciones ultra detalladas; prompts simples producen resultados mediocres.
- **Ignorar el parámetro guidance:** Poner guidance muy bajo (0-1) sin intención puede generar imágenes que no siguen el prompt.
- **No guardar seeds:** Perder la oportunidad de replicar estilos exitosos en futuras generaciones.
- **Subestimar el costo de image-to-video:** Cada video cuesta ~50 centavos vs 5 centavos por imagen; planificar créditos en consecuencia.
- **Falta de créditos en flux.ai:** Se agotaron rápido (8 créditos por imagen). Solución: usar Together AI con $1 gratis.
- **Olvidar ingresar tarjeta de crédito en Together AI:** Sin tarjeta, el modelo Flux 1.1 Pro no se desbloquea, aunque prometen reembolsar el cargo temporal.
- **No colocar los modelos en las carpetas incorrectas (unet para FLUX, clip para encoders, vae para VAE) en Comfy UI.**
- **No actualizar Comfy UI antes de usar FLUX (puede causar incompatibilidades).**
- **Poner prompt solo en CLIP y dejar T5 vacío en FLUX:** la imagen no se relaciona con el prompt (posible bug).
- **Usar brackets como pesos (ej: `(text)`) en FLUX:** no tienen efecto, solo alteran ligeramente el texto.
- **Esperar que DEV siga estilos como "black and white", "drawing", "painting":** DEV ignora estos estilos y mantiene su estilo integrado (fotorrealista de personas). SCHNELL sí los sigue.
- **Asumir que la IA entiende intención implícita en Flux Context:** Ejemplo: "Change the dress to an anime style scene featuring cool rodents" — la IA no sabe qué es "cool" y aplica anime a toda la imagen.
- **Style bleed por conceptos con "gravedad" alta:** Estilos como "anime style" tienen mayor atracción en el espacio latente y se propagan si no se usan directivas de contención fuertes.
- **Usar Flux Guidance demasiado alto para prompts creativos:** El valor por defecto 2.5 puede sobresaturar y rigidizar la interpretación de prompts poéticos o de redefinición.

## fuentes_videos
- Fal.ai Tutorial in 15 Minutes: Generate Images, Videos & 3D Faster Than Anything Else [fal] — https://youtu.be/FTKnTYmfMv8
- How To Use Fal.AI - Full Guide [fal] — https://youtu.be/T11eCT1f-Sg
- Flux AI Tutorial - 2026 [fal] — https://youtu.be/D1tcNzot2HI
- FLUX: How To Generate UNLIMITED AI Images For FREE [fal] — https://youtu.be/DdSe5knj4k8
- How to use FLUX.1 Kontext [fal] — https://youtu.be/yiAV5pDe6R8
- How to Prompt FLUX. The BEST ways for prompting FLUX.1 SCHNELL and DEV including T5 and CLIP. [fal] — https://youtu.be/OSGavfgb5IA
- Flux.1 Kontext Prompting Guide [fal] — https://youtu.be/RXzeRfvH3_w