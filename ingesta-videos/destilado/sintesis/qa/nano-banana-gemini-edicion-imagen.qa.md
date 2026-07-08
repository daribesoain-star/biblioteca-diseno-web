Aquí está la revisión de control de calidad para la entrada JSON proporcionada:

- **Problema:** La regla "Usa 'thinking' o 'pro' en Gemini cuando necesites precisión visual, análisis de referencia o coherencia en storyboards." es vaga. "Precisión visual" y "coherencia" son subjetivos y no definen un umbral de acción claro.
    - **Corrección:** Especificar un caso de uso concreto, ej: "Activa 'thinking' en Gemini cuando el prompt contenga más de 3 instrucciones visuales simultáneas (ej: cambiar color, posición y textura de un objeto)."

- **Problema:** La regla "Usa 'Refine' después de combinar capas con distinta iluminación o color." es vaga. No especifica qué hace 'Refine' ni cómo soluciona el problema de iluminación.
    - **Corrección:** Reemplazar por: "Tras combinar capas con iluminación dispar, ejecuta 'Refine' para unificar tonos y sombras. Si el resultado sigue siendo incoherente, separa las capas y ajusta el brillo/contraste de cada una manualmente antes de volver a combinar."

- **Problema:** La regla "Usa 'YouTube thumbnail' como keyword para activar estilo de miniatura: texto grande, alto contraste." es sospechosa de ser una alucinación. No es una función estándar documentada de Gemini, Nano Banana o GPT Image 2. Es probable que funcione por probabilidad estadística, no como un comando oficial.
    - **Corrección:** Cambiar a: "Para generar miniaturas, describe explícitamente el estilo: 'texto grande y en negrita, alto contraste, composición llamativa para YouTube'. No confíes en una sola palabra mágica como 'YouTube thumbnail'."

- **Problema:** La regla "Usa 'thinking mode' en GPT Image 2 para prompts complejos con múltiples restricciones." es sospechosa. No existe una función oficial llamada "thinking mode" en GPT Image 2 (o DALL-E). Es una confusión con la función de "reasoning" de Gemini.
    - **Corrección:** Eliminar la regla o reemplazarla por: "Para prompts complejos en GPT Image 2, estructura la solicitud en viñetas o párrafos separados para mejorar la adherencia a las restricciones."

- **Problema:** La regla "Usa 'Create a realistic photo of this character' para transformar anime a realista." es demasiado simplista y puede no funcionar. La transformación de estilos requiere más contexto (iluminación, fondo, textura de piel).
    - **Corrección:** Ampliar a: "Para transformar anime a realista, usa el prompt: 'Create a realistic photo of this character. Add realistic skin texture, natural lighting, and a photographic background. Keep the facial features and pose identical.'"

- **Problema:** La regla "Usa 'enlarge this image to 4K resolution' exactamente para upscaling." es sospechosa. Ninguna herramienta de IA generativa (Gemini, GPT, Nano Banana) puede upscalear a 4K real simplemente con ese prompt. El resultado será un reescalado con pérdida de calidad o una reinvención.
    - **Corrección:** Cambiar a: "Para upscaling, usa herramientas especializadas (ej: Topaz Gigapixel, Clipdrop). Si usas un generador, el prompt 'enlarge this image to 4K resolution' no creará detalle nuevo; solo cambiará el tamaño del lienzo."

- **Problema:** La regla "Usa 'Replace the character with [nombre]' para swaps en pósters, manteniendo el resto del prompt mínimo." es vaga y puede fallar. "Manteniendo el resto del prompt mínimo" no es una instrucción accionable.
    - **Corrección:** Especificar: "Para swaps de personaje, usa el prompt: 'Replace the character in this poster with [nombre]. Keep the background, lighting, pose, and composition exactly the same.' No asumas que el modelo inferirá el contexto solo porque el prompt es corto."

- **Problema:** La regla "Usa el prompt completo de '3D fluffy object' con 'exact colors', 'hyperrealistic hair texture' y 'studio lighting'." es una receta sin contexto de uso. No se entiende cuándo aplicarla ni qué imagen de entrada se espera.
    - **Corrección:** Añadir contexto: "Aplica este prompt a una imagen de un objeto simple (ej: una taza, un zapato) para convertirlo en una versión 3D de peluche. No funciona con imágenes de personas o escenas complejas."

- **Problema:** La regla "Usa 'Show me one unique Apple Genmoji for each person' para avatares estilo emoji." es sospechosa de ser una alucinación. "Apple Genmoji" no es una función de ninguna de las herramientas listadas (Gemini, Nano Banana, GPT). Es un concepto de Apple no disponible en estas plataformas.
    - **Corrección:** Eliminar la regla o reemplazarla por: "Para avatares estilo emoji, usa el prompt: 'Create a 3D rendered emoji-style avatar of this person, with exaggerated features, solid colors, and no background.'"

- **Problema:** La regla "Usa 'subject' en Whisk para consistencia de personaje, 'scene' para ubicación y 'style' para estética." es una regla duplicada y contradictoria con otra regla: "Marca solo las referencias que deben influir en la generación; desmarca las que no." La primera asume que siempre se usan tres campos, la segunda sugiere que se pueden desmarcar.
    - **Corrección:** Unificar en una sola regla: "En Whisk, usa los campos 'subject', 'scene' y 'style' para definir personaje, ubicación y estética respectivamente. Puedes desmarcar cualquier campo si no quieres que influya en la generación (ej: desmarca 'scene' si solo quieres cambiar el estilo del personaje)."