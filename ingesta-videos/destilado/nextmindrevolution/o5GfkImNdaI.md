# Google Flow Ingredients to Video: Master Character Consistency
**Fuente:** nextmindrevolution | https://youtu.be/o5GfkImNdaI

## Qué enseña (2-3 líneas)
Este video enseña cómo usar la función "Ingredients to Video" de Google Flow (VO 3.1) para mantener la consistencia de personajes a través de múltiples escenas. Explica el flujo completo: crear referencias de sujetos con fondos planos, combinarlos como ingredientes en un mismo video, y controlar cambios de vestimenta y expresión mediante prompts detallados.

## Lecciones accionables
- **Crear referencias de sujetos con fondo plano**: Usa "Create Image" en la misma plataforma con el modelo Nano Banana Pro. Prompt exacto usado: *"A stylish man in his late 30s with short neat brown hair standing confidently. He is wearing a dark suit jacket over a light blue collared shirt and dark trousers. He has a thoughtful expression, plain green background."* Para el segundo sujeto, copia el mismo prompt cambiando "man" por "woman".
- **Activar modo "Ingredients to Video"**: Cambia el modo a "Ingredients to Video". Haz clic en "+" para agregar imágenes de referencia. Ve a "Images" y añade cada sujeto como ingrediente (ingredient number one, ingredient number two).
- **Prompt para escena con ingredientes**: Prompt exacto usado: *"A woman and a man happily walking on a stylish and exclusive London street."* El modelo reconoce automáticamente "a woman" y "a man" como los ingredientes cargados.
- **Reutilizar sujetos para nueva escena**: Usa "Reuse Prompt" para mantener los mismos ingredientes. Cambia el prompt de escena. Prompt exacto usado: *"A woman and a man happily walking on a disgusting apocalyptic landscape."*
- **Forzar cambios de vestimenta y expresión**: Prompt exacto usado: *"A woman and a man happily walking on a disgusting apocalyptic landscape. They wear tattered multi-layered survival gear, patched leather, heavy canvas drapes, and rusted utility belts caked in gray dust and grime. Their faces are gaunt showing deep sorrow and the physical strain of prolonged hunger."*
- **Estrategia para cambios de vestimenta**: Si necesitas un outfit específico en múltiples escenas, crea una imagen de referencia con ese outfit en Nano Banana Pro (costo cero en créditos de imagen) y luego impórtala como ingrediente adicional. No intentes cambiar vestimenta solo con prompts de video, porque gastarás 20-100 créditos por cada intento fallido.

## Reglas para agentes
- Usa fondo plano (plain green background) en las imágenes de referencia para facilitar la extracción del sujeto en cualquier video.
- Cuando quieras que el modelo NO complete la escena con elementos no solicitados, proporciona un prompt muy detallado con descripciones específicas de vestimenta, expresión y entorno.
- Si necesitas el mismo outfit en múltiples escenas, crea una imagen de referencia de ese outfit en Nano Banana Pro y úsala como ingrediente; nunca confíes solo en prompts de video para mantener consistencia de vestimenta.
- Para cambiar la vestimenta o expresión de un sujeto, incluye descripciones explícitas en el prompt (ej: "tattered multi-layered survival gear", "faces gaunt showing deep sorrow").
- Siempre que sea posible, genera cambios de vestimenta mediante imágenes de referencia (costo cero) en lugar de prompts de video (20-100 créditos por intento).

## Errores comunes que evita o menciona
- **Prompt demasiado corto**: Si el prompt es muy simple (ej: solo "a woman and a man walking"), Flow/VO 3.1 completa la escena con elementos no solicitados. Para evitarlo, proporciona descripciones detalladas del entorno, vestimenta y expresión.
- **Esperar cambios automáticos por contexto**: En escenas apocalípticas, el modelo NO cambia automáticamente la vestimenta o expresión de los sujetos si el prompt no lo especifica. Los sujetos mantienen su apariencia original por diseño (consistencia).
- **Gastar créditos en video para cambios de vestimenta**: Intentar cambiar outfits mediante prompts de video gasta 20-100 créditos por intento. Es más eficiente generar imágenes de referencia con el outfit deseado en Nano Banana Pro (costo cero) y luego usarlas como ingredientes.