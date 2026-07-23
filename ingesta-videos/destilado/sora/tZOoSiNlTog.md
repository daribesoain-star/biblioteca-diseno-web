# Sora 2 Pro JSON Prompts: Create Cinematic AI Ads Easily
**Fuente:** sora | https://youtu.be/tZOoSiNlTog

## Que ensena
Enseña a construir anuncios cinematográficos con Sora 2 Pro usando prompts JSON estructurados, partiendo de imágenes de referencia y ChatGPT para generar descripciones detalladas de cámara, iluminación, movimiento y emoción. Muestra el flujo completo: crear un collage de producto, pasarlo a ChatGPT, obtener un JSON prompt, ajustar caracteres (límite 1.800), y generar en diseño con Sora 2 Pro en 1080p/16:9 hasta 12 segundos.

## Lecciones accionables
- **Estructura JSON clave:** Incluye `referenced_image`, `description` (acción global), `style` (ej: "cinematic, luxury adventure, maritime realism"), `camera` (lista de planos: "macro shot", "medium shot", "camera pulls back"), `lighting`, `location`, `elements`, `motion` (ej: "waves crashing, yacht leans, droplets slide over watch"), `audio`.
- **Prompt de cámara verbatim (ejemplo Breitling):** "The scene opens on a macro shot of seawater droplets gliding across the brushed bronze bezel and green dial, sunlight reflecting in crystal reflections. The camera pulls back to reveal a man steering the yacht wearing the watch as wind and salt spray shimmer on his wrist."
- **Parámetros técnicos:** Usa `image to video` en diseño, modelo `Sora 2 Pro`, resolución `1080p`, aspect ratio `16:9` (también `9:16` para vertical), duración `up to 12 seconds`. Límite de prompt: **1.800 caracteres**.
- **Flujo de trabajo:** 1) Crea collage de 5 imágenes del producto desde múltiples ángulos. 2) Súbelo a ChatGPT con instrucciones de dirección (ej: "yachting adventure, ocean spray"). 3) Copia JSON prompt generado. 4) Pégalo en diseño, ajusta si excede 1.800 caracteres. 5) Genera.
- **Para text-to-video:** Usa ChatGPT con un project file que contenga instrucciones JSON de Sora 2 Pro. Pide "create a movie prompt for a Bond-style movie about the end of the world" y obtendrás JSON estructurado listo para pegar en text-to-video de diseño.

## Reglas para el director de fotografia IA
- **Usa JSON prompts siempre que quieras control total sobre cámara, luz y emoción;** un prompt simple de texto da resultados aleatorios, un JSON da "the difference between a clip and a commercial".
- **Para evitar alucinaciones en video IA, incluye siempre una imagen de referencia** (collage de múltiples ángulos del producto/personaje) antes del prompt JSON; Sora 2 Pro la usará como base visual.
- **Cuando el prompt exceda 1.800 caracteres, pide a ChatGPT que lo acorte** manteniendo la estructura JSON y los elementos clave de cámara, iluminación y movimiento.
- **Para mantener coherencia narrativa en trailers de múltiples escenas,** genera cada escena por separado con su propio JSON prompt y luego combínalas en edición; Sora 2 Pro no referencia caras/estilos entre generaciones tan bien como otros modelos.
- **Define la dirección creativa ANTES de generar:** dale a ChatGPT un contexto temático (ej: "yachting adventure, ocean spray") para que el JSON resultante tenga tono y locación consistentes.

## Errores comunes que evita o menciona
- **No usar prompts de texto simples** si buscas calidad comercial; la diferencia es "between a clip and a commercial, between control and guessing".
- **No exceder el límite de 1.800 caracteres** en diseño; si el JSON es más largo, el sistema lo rechaza y debes regresar a ChatGPT a acortarlo.
- **No esperar consistencia facial/estilística entre clips** en Sora 2 Pro; el video menciona que "Sora 2 Pro isn't as good as some other models where you able to reference people's faces and styles more easily".
- **No olvidar incluir audio en el JSON** (ej: "cinematic ocean ambience, wind rushing, low deep rhythmic pulse") aunque diseño no lo use directamente; es parte de la estructura completa del prompt para mantener coherencia narrativa.