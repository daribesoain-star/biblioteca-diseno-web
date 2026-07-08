1. **Regla vaga y no accionable:** "Usa **16:9** como relación de aspecto en Midjourney cuando generes imágenes para comerciales; incluye siempre términos de iluminación específicos en los prompts."
   *   **Corrección:** Especificar qué términos de iluminación concretos se deben usar (ej. "cinematic warm light", "golden hour", "soft diffused light") o eliminar la instrucción genérica.

2. **Regla vaga y no accionable:** "Sincroniza la voz en off con las imágenes: las palabras clave del producto deben coincidir exactamente con el momento en que aparece el producto en pantalla."
   *   **Corrección:** Es una instrucción de edición de video genérica, no una regla técnica para el agente. Debe eliminarse o reformularse como un paso de verificación (ej. "Verifica que el marcador de tiempo de la palabra clave coincida con el fotograma del producto").

3. **Afirmación sospechosa de ser alucinación:** "Cuando uses **DeepSeek** para mejorar un prompt, proporciona siempre un prompt base con detalles de contexto, ángulo de cámara, estilo y hora del día."
   *   **Corrección:** DeepSeek es un modelo de lenguaje, no una herramienta integrada en Kling AI. La instrucción sugiere una funcionalidad que no existe dentro de la interfaz de Kling. Debe aclararse que es un proceso externo o eliminarse.

4. **Afirmación sospechosa de ser alucinación:** "En **ElevenLabs**, selecciona voces con tono cálido y atractivo para comerciales (ej. Richard); configura el modelo en **V3**."
   *   **Corrección:** ElevenLabs es una plataforma externa no relacionada con Kling AI. La regla no pertenece a este tutorial y sugiere una integración que no existe. Debe eliminarse.

5. **Regla duplicada/contradictoria:** "Usa **Inpaint** cuando el objetivo sea añadir un elemento nuevo... nunca lo uses como primera opción para borrar objetos si existe **Remove**." vs. "Para añadir objetos concretos después de Expand, primero expande con poco o ningún prompt y luego usa **inpaint**."
   *   **Corrección:** La primera regla dice que Inpaint es para añadir, la segunda lo confirma. No hay contradicción grave, pero la redacción de la primera ("nunca lo uses como primera opción para borrar") es confusa porque Inpaint sí puede borrar. Se sugiere unificar: "Usa Inpaint para añadir o modificar; usa Remove exclusivamente para borrar."

6. **Regla vaga y no accionable:** "Ajusta el volumen de los efectos de sonido al **15-20%** del volumen principal en la edición final."
   *   **Corrección:** "Volumen principal" es ambiguo. Debe especificarse si es el volumen de la voz en off, de la música de fondo o del pico de la mezcla. Además, es una regla de edición de audio, no de uso de Kling.

7. **Afirmación sospechosa de ser alucinación:** "En Kling 2.1 para transiciones de video, usa siempre un **starting frame** y un **ending frame**; nunca generes video sin ambos."
   *   **Corrección:** Kling 2.1 permite generar video sin frames de inicio/fin (solo con prompt). La afirmación "nunca generes video sin ambos" es falsa y restrictiva. Debe corregirse a: "Para transiciones controladas, usa un starting y ending frame."

8. **Regla vaga y no accionable:** "Usa fondos simples en Motion Control para evitar artefactos en el fondo."
   *   **Corrección:** "Simples" es subjetivo. Debe definirse (ej. "fondos sin texturas repetitivas, sin múltiples personas, sin patrones geométricos densos").

9. **Regla contradictoria:** "En **Image Reference**, usa el modo **Subject** cuando la imagen tenga un sujeto grande y claramente definido" vs. "Múltiples sujetos en modo Subject de Image Reference" (en errores comunes).
   *   **Corrección:** La regla no prohíbe múltiples sujetos, pero el error común sí. Debe aclararse: "Subject mode funciona mejor con un solo sujeto dominante; para múltiples sujetos, usa Elements."

10. **Afirmación sospechosa de ser alucinación:** "En **Omni One** para expresiones, usa `change the expression to [expression]` para expresiones simples; usa una imagen de referencia para expresiones complejas o ambiguas."
    *   **Corrección:** "Omni One" no es una herramienta de Kling AI. Es una plataforma de video AI diferente. La regla no pertenece a este tutorial y debe eliminarse.