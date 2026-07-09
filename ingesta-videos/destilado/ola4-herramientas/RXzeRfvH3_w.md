# Flux.1 Kontext Prompting Guide [fal]
**Fuente:** ola4-herramientas | https://youtu.be/RXzeRfvH3_w

## Qué enseña (2-3 líneas)
Explica cómo estructurar prompts para el modelo Flux.1 Context Dev, diferenciando entre instrucciones implícitas y explícitas para controlar la generación de imágenes. Enseña a usar conceptos, relaciones, estilos y directivas de fidelidad para evitar el "style bleed" y lograr cambios localizados sin alterar el resto de la imagen.

## Lecciones accionables
- **Desglose de conceptos:** Identifica cada parte de la imagen como un concepto independiente (ej: "woman", "white dress", "wall", "background wall", "top of dress", "bottom of dress"). Cada concepto es controlable por separado.
- **Relaciones entre conceptos:** Define explícitamente cómo se conectan o separan los elementos. Usa frases como "change only the dress", "strictly confined to the dress surface", "maintain the original face, facial expression, skin tones, lighting, overall photographic quality, background, form and structure".
- **Estilo conceptual / tema de imagen:** Añade descriptores de estilo, estado de ánimo, iluminación y perspectiva. Ejemplo: "transform her elegant flowing dress into a luxury silk texture with a futuristic anime style ethereal village scene on it".
- **Directivas de calidad/fidelidad:** Usa términos como "photographic quality", "ensure no style bleed", "maintain the same photographic style for everything else", "background must remain exactly as in the original".
- **Uso de CLIP y T5 XXL:** CLIP entiende estilos artísticos amplios y señales visuales (ej: "photographic quality"). T5 XXL entiende oraciones complejas, relaciones matizadas e instrucciones explícitas. Combínalos: usa términos claros para calidad/fidelidad (CLIP) y oraciones detalladas para relaciones (T5 XXL).
- **Contención del style bleed:** Para evitar que un estilo se propague a toda la imagen, usa frases como "anime style must be strictly confined to the dress only", "this transformation and its associated styles and rodents must be strictly confined to the dress surface only".
- **Prompt negativo en el positivo:** Como no hay negative prompt, incluye lo que NO debe cambiar dentro del prompt positivo. Ejemplo: "keeping everything else the same", "maintain the original face, facial expression, skin tones, lighting, overall photographic quality, background, form and structure".
- **Ajuste del nodo Flux Guidance:** Por defecto está en 2.5. Valores más altos siguen el prompt más estrictamente pero reducen creatividad y pueden causar sobresaturación. Para "redefinition prompting" (prompts poéticos/fluidos), usa Flux Guidance = 1.
- **Redefinición en lugar de contención:** En lugar de contener, redefine elementos con frases como "the woman's hair should change but the dog is her loyal companion", "even though the foliage changes, her hair is bound to it as she is rooted in the ground of all being". Luego añade un estilo surrealista apropiado.
- **Iteración dirigida:** Si el resultado no es perfecto, no generes de nuevo al azar. Analiza: ¿fui lo suficientemente específico? ¿olvidé preservar algo? ¿hubo style bleed? Haz ajustes pequeños y específicos basados en el output anterior.

## Reglas para agentes
- Usa "change only the [elemento]" cuando quieras modificar una parte específica sin afectar el resto.
- Incluye siempre directivas de contención explícitas como "strictly confined to [superficie]" cuando trabajes con estilos que tienden a propagarse (ej: anime, surrealista).
- Nunca asumas que la IA infiere tu intención implícita; sé explícito sobre qué cambiar y qué preservar.
- Usa "maintain the original [atributo]" para cada aspecto que no deba modificarse (face, facial expression, skin tones, lighting, background, form, structure).
- Cuando uses redefinition prompting (prompts poéticos), establece Flux Guidance a 1 para evitar rigidez y sobresaturación.
- Para cambios localizados en áreas pequeñas (ej: uñas, joyería), acepta que habrá un "reconstruction tax" que puede alterar detalles finos; no intentes arreglarlo solo con prompting.
- Desglosa la imagen en conceptos antes de escribir el prompt: identifica cada elemento, sus relaciones, el estilo deseado y las directivas de fidelidad.

## Errores comunes que evita o menciona
- **Asumir que la IA entiende intención implícita:** Ejemplo: "Change the dress to an anime style scene featuring cool rodents" — la IA no sabe qué es "cool" y aplica anime a toda la imagen.
- **Asumir preservación implícita:** Decir "anime style scene" aplica el estilo a toda la escena, no solo al vestido. La palabra "scene" tiende a afectar toda la imagen.
- **Style bleed por conceptos con "gravedad" alta:** Estilos como "anime style" tienen mayor atracción en el espacio latente y se propagan si no se usan directivas de contención fuertes.
- **Olvidar que el "reconstruction tax" afecta áreas pequeñas:** Incluso con buen prompting, detalles como uñas, joyería o rostros pueden cambiar ligeramente debido al proceso generativo.
- **Usar Flux Guidance demasiado alto para prompts creativos:** El valor por defecto 2.5 puede sobresaturar y rigidizar la interpretación de prompts poéticos o de redefinición.
- **No iterar con análisis:** Generar repetidamente sin entender por qué falló el prompt anterior no mejora los resultados. Cada output es una pista para ajustar.