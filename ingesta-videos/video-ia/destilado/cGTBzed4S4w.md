# The Secret to Better AI Videos: Stop Writing Prompts
**Fuente:** AI Video School | https://youtu.be/cGTBzed4S4w

## Qué enseña
El tutorial revela que no debes escribir prompts manualmente para generación de video con IA. En su lugar, debes entrenar un GPT (o GEM) con la documentación oficial del modelo que uses, luego darle tu idea y dejar que él formatee el prompt optimizado para ese modelo específico. La clave es que el arte es tu idea, no el prompt; el prompting es solo un traductor.

## Técnicas accionables
- **Obtén la documentación oficial del modelo** desde estas ubicaciones exactas:
  - **Hailuo**: sitio oficial de Hailuo
  - **Kling**: sitio oficial de Kling
  - **Luma Dream Machine**: sitio oficial de Luma
  - **Veo**: DeepMind → "Build with Gemini" → Documentación → "Veo video generation" → "Prompt writing basics". Guarda como PDF simulando impresión.
  - **Runway**: documentación dispersa en múltiples lugares del sitio
- **Carga la documentación en un LLM** de una de estas formas:
  - **ChatGPT (plan pago)**: ve a "GPTs" → "Create" → sube el archivo en "Knowledge". En instrucciones escribe: "This provides optimized prompts for the user's ideas based on the documentation."
  - **Gemini (plan pago)**: abre el menú lateral → "Explore gems" → "New gem" → añade el conocimiento. Mismas instrucciones.
  - **Versión gratuita (ChatGPT, Gemini, DeepSeek)**: sube el PDF directamente al chat. Usa un chat nuevo por cada proyecto para evitar que el modelo olvide el documento.
- **Estructura de interacción con el GPT/GEM**: dale tu idea en lenguaje natural, no prompts técnicos. Ejemplo: "Quiero un closeup de su rostro y luego revelar lo que está mirando" o "Empezar en su rostro, hacer pull back y orbitar alrededor para ver su vista".
- **Iteración por descripción**: si el resultado no te gusta, describe qué falló. Ejemplo: "Se siente demasiado dramático y exagerado. Quiero algo más cinematográfico y emocionalmente contenido." El GPT reescribe el prompt automáticamente.
- **Placeholders para mejores prácticas**: en el prompt sidekick, usa placeholders como "outline the best practices" para que el GPT extraiga las reglas de la documentación subida.
- **Comparación entre modelos**: dale al GPT una idea y pídele: "I want model optimized prompts for Runway, Hailuo, Veo, Kling" para generar prompts específicos de cada modelo y luego comparar resultados.
- **Generar e iterar**: cuando obtengas un mal resultado, adjunta una captura de pantalla y explica qué salió mal y qué quieres diferente.

## Reglas para el erudito
- Usa un chat nuevo para cada proyecto cuando uses la versión gratuita, porque el modelo olvida el documento subido cuanto más largo sea el historial.
- Describe el movimiento de cámara en lenguaje natural ("closeup de su rostro, luego revelar lo que mira", "pull back y orbitar alrededor") y deja que el GPT lo traduzca a términos técnicos del modelo.
- Cuando un resultado no sea exactamente lo que buscas, vuelve al GPT y añade especificaciones como "que mire al barco al final" o "que sea más cinematográfico".
- Para escenas complejas con múltiples sujetos, describe la relación entre ellos: "un marinero solitario en el barco mirando hacia la costa donde la mujer es apenas visible".
- Prioriza expresar tu visión creativa y emocional ("cómo debería sentirse el espectador") sobre escribir sintaxis técnica de prompts.

## Errores comunes / limitaciones que menciona
- **Error común**: pensar que escribir prompts manualmente es una habilidad valiosa (el "prompt engineer" como trabajo del futuro). El creador argumenta que eso es falso; la habilidad real es articular tu idea y visión creativa.
- **Limitación de versión gratuita**: el modelo olvida el documento subido cuanto más largo sea el chat; por eso recomienda chat nuevo por proyecto.
- **Riesgo de resultados no deseados**: si el prompt generado se siente "demasiado dramático y exagerado", hay que iterar describiendo el tono deseado, no reescribiendo el prompt manualmente.
- **El prompt no es el arte**: el creador enfatiza que enfocarse en escribir prompts manualmente desvía energía creativa de lo importante: la idea, la perspectiva, la intención.