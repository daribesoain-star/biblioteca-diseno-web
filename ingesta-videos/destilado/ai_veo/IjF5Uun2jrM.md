# Google Veo 3 Tutorial: Make Cinematic AI Videos with Just a Prompt
**Fuente:** ai_veo | https://youtu.be/IjF5Uun2jrM

## Que ensena
Cómo usar Google Veo 3 (integrado en Gemini) para generar videos cinematográficos desde texto, incluyendo la adición automática de audio, narración con líneas específicas y cómo refinar prompts usando el propio chat de Gemini para obtener resultados pulidos y naturales.

## Lecciones accionables

- **Estructura de prompt cinematográfico:** Incluir en este orden: tipo de plano/ movimiento de cámara → sujeto/acción → ubicación → iluminación → foco → efectos atmosféricos → música. Ejemplo del video: *"a cinematic slow motion shot of freshly baked chocolate chip cookies being pulled out of the oven... in a cozy sunlit kitchen... warm lighting... steam rising..."*
- **Narración con líneas específicas:** Para que Veo 3 añada voz en off, incluir el texto narrativo entre comillas al final del prompt, precedido de "this is the narration". Prompt VERBATIM usado: *"...and at the very end, I call out that this is the narration, and then here I have all the text that I wanted to narrate included in quotes."*
- **Refinamiento con Gemini:** Si no sabes redactar un prompt cinematográfico, pídele a Gemini en el mismo chat: *"Can you help me write a cinematic video prompt about [tu idea]?"* Gemini devuelve versiones con ángulos de cámara, iluminación, música de fondo y pacing que puedes copiar-pegar y ajustar.
- **Parámetros clave a detallar en el prompt:** Ubicación (cozy sunlit kitchen), tipo de iluminación (warm), foco deseado, efectos atmosféricos (steam rising), y si se incluye música de fondo o ambient sound effects.
- **Descarga:** Una vez generado el video, hover sobre el clip → icono de descarga en esquina superior derecha → descarga archivo MP4.
- **Historial:** Para recuperar videos anteriores, ir a la barra lateral izquierda de Gemini → "Recent" → seleccionar chat → el video asociado aparece automáticamente.

## Reglas para el director de fotografia IA

- **Usa descripciones de iluminación específicas** ("warm lighting", "sunlit") cuando quieras controlar el mood de la escena; Veo 3 entiende términos de lighting y composition.
- **Incluye términos de cámara en inglés** en el prompt para mayor precisión: "slow motion shot", "camera angles", "cinematic", "focus".
- **Para evitar alucinaciones en objetos pequeños**, detalla su estado exacto: en el ejemplo de cookies, especificar "chocolate chips intact" o "melted" según lo que quieras, porque el modelo puede alucinar fusión no deseada.
- **Usa el chat de Gemini como previsualización de prompt** antes de generar: pídele que te sugiera una versión cinematográfica y revísala para corregir posibles incoherencias antes de enviar a Veo 3.
- **Para narración con voz**, siempre encierra el texto narrativo entre comillas dobles y etiquétalo explícitamente como "narration" al final del prompt; el modelo asigna una voz que "fits the part".

## Errores comunes que evita o menciona

- **No detallar el estado de los elementos pequeños** (como chocolate chips) → el modelo puede alucinar derretimiento o deformación no deseada.
- **No usar el asistente Gemini para refinar prompts** cuando no sabes cómo redactar términos cinematográficos → pierdes la oportunidad de obtener ángulos de cámara, iluminación y pacing sugeridos automáticamente.
- **Olvidar incluir la etiqueta "narration" y las comillas** para voz en off → el modelo no activa la función de narración y solo genera video sin audio hablado.
- **No especificar el tipo de música o ambiente sonoro** → el audio generado por defecto puede no coincidir con el tono deseado de la escena.