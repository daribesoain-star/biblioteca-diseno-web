# How to Prompt FLUX. The BEST ways for prompting FLUX.1 SCHNELL and DEV including T5 and CLIP. [fal]
**Fuente:** ola4-herramientas | https://youtu.be/OSGavfgb5IA

## Qué enseña
Explica cómo usar correctamente los dos codificadores de texto de FLUX (CLIP y T5) para generar imágenes, comparando el prompting con tokens estilo Stable Diffusion vs. lenguaje natural. Revela diferencias clave entre los modelos SCHNELL y DEV, y proporciona una estructura práctica para crear prompts efectivos.

## Lecciones accionables
- **Usa el área T5 para el prompt principal** y copia el mismo prompt en el área CLIP superior para corregir errores en texto, dedos o signos. Ejemplo: poner el prompt en ambas áreas corrigió "text on sign" incorrecto.
- **Estructura de prompt recomendada**: `[sujeto] [atributos/actividades] + [segundo objeto/sujeto con atributos] + [posiciones] + [fondo/entorno] + [estilo] + [iluminación/color/cámara]`. Ejemplo del video: `in the center a blonde woman wearing a silver armor and holding a shield with text on it`
- **Para posiciones funciona mejor con FLUX que con SD**: usa frases como "on the left", "in the foreground", "in the center". Ejemplo: `a red dragon on the left and a green dragon on the right`
- **Traduce prompts con brackets a lenguaje natural usando ChatGPT**: copia tu prompt con brackets y pide "translate this to natural language for FLUX T5". Ejemplo de resultado: `a green dragon and a red dragon flying in the sky with clouds and birds, black and white style`
- **Para estilo "black and white" en SCHNELL**: funciona con lenguaje natural. Para DEV: no funciona correctamente (solo desatura), usar guidance diferente en el nodo text encoder como alternativa.
- **Para estilo "anime artist Shinji Aramaki"**: SCHNELL da resultado brillante; DEV da algo diferente.
- **Para estilo "drawing", "painting", "photo"**: SCHNELL sigue las instrucciones perfectamente; DEV tiende a ignorar el estilo y mantener su estilo integrado.
- **Para prompts muy largos generados por LLM**: verifica que no contradigan tu prompt. Ejemplo: prompt extendido con "waterfall" hizo que los dragones "se derritieran" y perdió el tercer dragón y los pájaros.
- **Para corregir errores pequeños sin ControlNet ni inpaint**: mueve o añade comas/letras especiales en el prompt para cambiar ligeramente la salida. También aumenta el número de steps.
- **Para evitar problemas con prompts negativos (no soportados nativamente)**: reformula lo negativo como positivo. Ejemplo: en vez de "missing arms" en negativo, usa "with two arms" en el prompt positivo.
- **Parámetros para DEV**: prueba diferentes valores de Guidance en el nodo text encoder. SCHNELL no soporta guidance.
- **Resolución usada en pruebas**: 768x512. Modelos: SCHNELL y DEV. Cargadores: City96 GGUF para ahorrar VRAM.

## Reglas para agentes
- Usa siempre el área T5 para el prompt principal; copia el mismo prompt en el área CLIP superior cuando necesites corregir texto o detalles finos.
- Cuando uses SCHNELL, confía en que sigue instrucciones de estilo explícitamente; no asumas que DEV hará lo mismo.
- Cuando uses DEV para estilos diferentes a "foto de personas", verifica manualmente el resultado; si no funciona, prueba con guidance modificado.
- Nunca uses brackets como pesos en FLUX (no funcionan como en SD); úsalos solo para legibilidad.
- Nunca uses "masterpiece" o "quality" en prompts de FLUX; no mejoran la calidad.
- Nunca dejes el área T5 vacía si pones prompt solo en CLIP; el resultado no se relacionará con el prompt.
- Siempre verifica que los prompts generados por LLM no contradigan ni omitan elementos clave de tu prompt original.
- Siempre reformula lo que quieras evitar como instrucción positiva en el prompt, no uses negative prompts.

## Errores comunes que evita o menciona
- **Poner prompt solo en CLIP y dejar T5 vacío**: la imagen no se relaciona con el prompt (posible bug).
- **Usar brackets como pesos (ej: `(text)`)**: no tienen efecto en FLUX, solo alteran ligeramente el texto.
- **Usar "masterpiece", "quality"**: no mejoran la calidad en FLUX.
- **Esperar que DEV siga estilos como "black and white", "drawing", "painting"**: DEV ignora estos estilos y mantiene su estilo integrado (fotorrealista de personas). SCHNELL sí los sigue.
- **Usar prompts muy largos generados por LLM sin revisar**: pueden perder objetos, fusionar elementos o contradecir el prompt original.
- **Usar negative prompts nativos**: FLUX no los soporta; en su lugar, reformular como positivo.
- **Asumir que DEV es superior a SCHNELL**: SCHNELL es mejor para variedad de estilos y sigue prompts más fielmente; DEV es mejor solo para fotos de personas con su estilo integrado.