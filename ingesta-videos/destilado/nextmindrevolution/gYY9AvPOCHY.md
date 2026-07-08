# Stop Repeating Yourself: The Ultimate Guide to Gemini GEMS (2026)
**Fuente:** nextmindrevolution | https://youtu.be/gYY9AvPOCHY
## Qué enseña (2-3 líneas)
Enseña qué son los Gemini Gems: asistentes reutilizables con instrucciones permanentes para evitar repetir prompts y obtener formatos consistentes.  
Muestra cómo crear, probar, ajustar y alimentar Gems con conocimiento propio como PDFs, archivos de Drive, imágenes o documentación oficial.

## Lecciones accionables
- Un Gem funciona como un set permanente de instrucciones: define reglas una vez y Gemini debe seguirlas en cada conversación.
- Para crear uno: entra a `Gems` desde la pantalla principal, baja a `Gem manager`, abre `My gems` y haz clic en `New Gem`.
- Completa siempre `Title`, `Description` e `Instructions`; el título debe ser descriptivo porque terminarás acumulando muchos Gems.
- Ejemplo 1: Gem para OCR/transcripción de imágenes.
- Nombre usado: `MG text extract`.
- Descripción usada: `Extract to text from attached image`.
- Prompt/instrucción inicial verbatim: `transcribe text from images`.
- Usa el ícono de lápiz en `Instructions` para que Gemini reescriba una instrucción conversacional en instrucciones largas con propósito, objetivos, comportamiento, reglas, proceso de transcripción, interacción con usuario y tono.
- Después de usar el rewrite automático, lee y edita las instrucciones generadas; elimina reglas que no quieras y agrega reglas propias.
- En `Tool`, selecciona una herramienta por defecto solo si el Gem debe especializarse: `Create images` para imágenes, `Music` para música o `No default tool` si no estás seguro.
- `No default tool` es la opción segura porque permite que el Gem use las herramientas disponibles según la tarea.
- En `Knowledge`, usa el botón `+` para agregar archivos, subir archivos, seleccionar desde Drive, añadir fotos o enlazar un notebook específico.
- Usa `Knowledge` para adjuntar referencias, guías, PDFs, documentación o manuales que Gemini debe mantener a mano para responder mejor.
- Caso técnico mencionado: si quieres que un Gem responda cómo reparar una impresora, sube el manual y la documentación de esa impresora.
- Antes de usar el Gem fuera del editor, haz clic en `Save`; si no guardas, las instrucciones no quedan activas.
- Tras guardar, puedes usar `Start chat` o volver al Gem desde el menú de tres puntos y elegir `Edit`.
- El panel de chat del lado derecho sirve para probar instrucciones sin salir del editor.
- Para modificar un Gem existente: abre los tres puntos, entra a `Edit`, cambia instrucciones y luego haz clic en `Update`.
- Regla añadida verbatim en el ejemplo OCR: `Always start a response with hello brother.`
- Para probar el Gem OCR: toma una captura de pantalla de una web, pégala en Gemini y envía sin escribir instrucciones adicionales; el Gem debe inferir que debe extraer el texto.
- Ejemplo 2: Gem para responder emails de clientes.
- Nombre usado: `email responder`.
- Descripción usada: `answer customer questions`.
- Instrucciones descritas: actuar como asistente de comunicación por email, responder correos según las instrucciones del usuario, no agregar relleno, no iniciar conversaciones, no salirse del tema, seguir reglas de formato, tono y estilo, y responder solo con la información proporcionada.
- Para que el Gem responda sobre un negocio, adjunta un documento de conocimiento con FAQs, menú, horarios, restricciones y datos operativos.
- Archivo de ejemplo desde Drive: `IG FAQs`.
- Prueba del Gem de emails con prompt verbatim: `Is it open?`
- Flujo recomendado para respuestas de negocio: copiar el email recibido, pegarlo en el Gem y usar la respuesta generada como base.
- Si el tono suena poco humano o el formato sale mal, vuelve a `Instructions`, ajusta reglas, prueba en el chat lateral y repite.
- La mejora real de un Gem ocurre en el ciclo `instructions -> testing -> changes -> testing`.
- Si te bloqueas creando instrucciones, abre un chat normal y pídele a Gemini que cree las instrucciones del Gem.
- Prompt verbatim para generar instrucciones de un Gem: `Can you help me creating an instructions for a gem? I want the gem to response the questions about movies and actors and directors. I want to provide a name and I want to get an order list with filmography.`
- Gemini puede devolver una plantilla copiable con rol, reglas de formato y estructura de respuesta.
- Si una parte de las instrucciones generadas no te gusta, pídele en el mismo chat que la cambie en vez de editar todo manualmente.
- Para tareas que requieren precisión documental, crea un Gem que responda solo con base en un PDF o documentación oficial enlazada.
- Usa modelos como `thinking` o `pro` cuando estén disponibles para generar mejores instrucciones; el modo `fast` también funciona.
- Los Gems prehechos de Google están en la sección de Google/Labs; algunos tienen interfaces tipo app.
- Ejemplo de Gem de Labs: `Recipe Genie`, que permite tomar una foto del refrigerador y generar recetas con los ingredientes detectados.
- Otro ejemplo de Labs: subir una foto de una habitación para recibir ayuda de diseño interior.

## Reglas para agentes
- Usa un Gem cuando una tarea se repite y requiere formato, tono o criterios consistentes.
- Define un nombre claro para cada Gem antes de guardarlo.
- Escribe instrucciones explícitas cuando la tarea sea compleja.
- Usa el rewrite con lápiz cuando solo tengas una idea conversacional y necesites convertirla en reglas detalladas.
- Revisa siempre las instrucciones generadas automáticamente antes de guardar.
- Usa `Knowledge` cuando la respuesta dependa de información privada, técnica, empresarial u oficial.
- Responde solo con la documentación adjunta cuando el Gem esté diseñado para evitar fuentes externas.
- Usa `No default tool` cuando el Gem no dependa de una herramienta única.
- Selecciona `Create images` cuando el Gem deba crear imágenes por defecto.
- Selecciona `Music` cuando el Gem deba trabajar con música por defecto.
- Guarda con `Save` al crear un Gem nuevo.
- Guarda con `Update` después de editar instrucciones existentes.
- Prueba el Gem en el chat lateral antes de darlo por terminado.
- Ajusta instrucciones si el formato, tono o contenido no coinciden con lo esperado.
- Nunca asumas que Gemini conoce datos específicos de tu negocio si no los agregaste en `Knowledge`.
- Nunca salgas del editor después de modificar instrucciones sin hacer clic en `Update`.
- Nunca dejes instrucciones vagas en Gems que responden a clientes.
- Nunca uses un Gem documental sin adjuntar la fuente oficial si necesitas respuestas confiables.
- Itera hasta que las respuestas sean consistentes en varios casos de prueba.

## Errores comunes que evita o menciona
- Abrir chats nuevos una y otra vez para repetir la misma tarea.
- Obtener formatos inconsistentes por no fijar instrucciones permanentes.
- Recibir respuestas fuera de tema por instrucciones vagas.
- Pedir varias veces lo mismo porque Gemini no entendió el formato esperado.
- Crear un Gem sin guardarlo con `Save`.
- Editar instrucciones y olvidar hacer clic en `Update`.
- Confiar en conocimiento general cuando la respuesta debe venir de un PDF, manual o FAQ oficial.
- No revisar las instrucciones generadas por el rewrite automático.
- No adjuntar información del negocio y esperar que Gemini responda preguntas de clientes correctamente.
- No dedicar tiempo a probar y refinar instrucciones.
- Usar una herramienta por defecto incorrecta cuando el Gem debería quedar en `No default tool`.
- Aceptar respuestas con tono raro o formato incorrecto sin volver a ajustar las reglas.