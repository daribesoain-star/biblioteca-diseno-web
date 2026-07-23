# 749313
**Fuente:** eh-imagen-ia | https://youtu.be/pwWBcsxEoLk

## Qué enseña
Enseña a redactar prompts efectivos para modelos de lenguaje (LLMs) entendiendo que un prompt no es una pregunta sino un programa que hackea la probabilidad de la IA. Cubre desde técnicas fundamentales (personas, contexto, formato de salida) hasta avanzadas (cadena de pensamiento, árbol de pensamiento, validación adversarial), culminando en la meta-habilidad de claridad de pensamiento.

## Lecciones accionables
- **Usa personas:** Incluye en el prompt "Eres un [rol específico] escribiendo para [audiencia específica]". Ejemplo: "You're a senior site reliability engineer for CloudFlare. You're writing to both customers and engineers."
- **Proporciona contexto completo:** Nunca asumas que la IA sabe algo. Incluye todos los hechos, fechas y detalles relevantes. Más contexto = menos alucinaciones.
- **Da permiso para fallar:** Añade explícitamente "If it's not in the context, you can't find the answer, say 'I don't know'". Esto evita que la IA invente respuestas para complacerte.
- **Especifica requisitos de salida:** Al final del prompt, detalla formato exacto. Ejemplo: "Clear bulleted list for timeline. Keep it under 200 words. Tone: professional, apologetic, radically transparent, no corporate fluff."
- **Usa few-shot prompting:** Proporciona ejemplos concretos del output deseado en lugar de solo describirlo. Muestra ejemplos de tono, estructura y transparencia técnica.
- **Activa extended thinking / reasoning models:** Usa el botón "Extended thinking" o "Thinking" disponible en la mayoría de proveedores (Claude, ChatGPT, Gemini). Ethan Molik: "95% of all practical problems folks encounter can be solved by turning on extended thinking."
- **Chain of Thought (COT):** Añade "Before writing this email, think through it step by step, taking these steps: [lista de pasos]". Esto mejora precisión y permite ver el razonamiento.
- **Tree of Thought (TOT):** Usa prompts como "Brainstorm three distinct tonal strategic approaches: [opción A], [opción B], [opción C]. Evaluate each branch, synthesize them and find the golden path."
- **Battle of the Bots (adversarial validation):** Crea una competencia de 3 rondas con 3 personas distintas. Ejemplo: "Round 1: [Persona 1] and [Persona 2] write their own version. [Persona 3] reads both drafts and brutally critiques them. Then they read the feedback and collaborate to produce one final email."
- **Usa un prompt enhancer:** Toma tus ideas crudas y pídele a la IA que las estructure en un prompt óptimo. Ejemplo: "Take my raw ideas and structure them into a great prompt for an AI to understand."
- **Guarda prompts exitosos en una biblioteca:** Usa herramientas como Fabric (de Daniel Miessler) o tu propia colección de prompts reutilizables.

## Reglas para agentes
- Nunca asumas que la IA tiene contexto de interacciones previas; siempre proporciona todo el contexto cada vez.
- Nunca uses prompts vagos sin especificar persona, tono, formato y restricciones.
- Siempre da permiso explícito a la IA para decir "no sé" cuando no tenga la respuesta.
- Siempre verifica las fuentes cuando la IA use herramientas de búsqueda web; puede acceder a sitios incorrectos o información desactualizada.
- Siempre piensa primero, escribe el prompt después: si no puedes explicar claramente lo que quieres, la IA no podrá ejecutarlo.
- Trata cada mala respuesta como un "skill issue" personal: "I didn't explain it well enough or I didn't give it enough context."

## Errores comunes que evita o menciona
- **Tratar el prompt como una pregunta en lugar de un programa:** La IA es un motor de predicción, no un ser pensante. Un prompt vago produce resultados genéricos.
- **No usar personas:** Preguntar "escribe un email" sin especificar quién lo escribe produce texto genérico y sin alma.
- **Omitir contexto:** La IA alucinará y llenará los vacíos con información inventada si no le das todos los hechos.
- **Confiar en la memoria de la IA:** Las funciones de memoria pueden hacer que asumas que la IA sabe más de lo que realmente sabe.
- **No especificar el formato de salida:** La IA produce respuestas largas y aburridas si no le dices exactamente cómo quieres el resultado (longitud, tono, estructura).
- **Usar zero-shot cuando se necesita few-shot:** Describir el output es menos efectivo que mostrar ejemplos concretos del output deseado.
- **No activar extended thinking en modelos que lo soportan:** La mayoría de problemas prácticos se resuelven simplemente activando esta función.
- **No validar fuentes en búsquedas web:** La IA puede usar sitios incorrectos o información desactualizada al buscar en internet.