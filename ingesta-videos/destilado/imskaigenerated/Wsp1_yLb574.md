# Higgsfield AI Supercomputer = EASY YouTube Shorts Automation
**Fuente:** imskaigenerated | https://youtu.be/Wsp1_yLb574

## Qué enseña (2-3 líneas)
Enseña cómo automatizar un canal de YouTube Shorts sin rostro usando Claude Co-work como agente programado y Higgsfield como generador visual vía MCP.  
El flujo crea un “skill” para fijar formato, voz, humor y estructura, usa una hoja de personaje para consistencia visual, genera videos con Seedance 2.0 y los programa para producirse todos los días a las 8:00 a.m.

## Lecciones accionables
- Instala la app de escritorio de Claude desde `Claude.com`; no basta usar Claude en navegador porque la app puede leer y escribir archivos locales.
- En Claude Desktop usa la pestaña `Co-work`, no `chat` ni `code`, porque Co-work puede navegar archivos, llamar herramientas conectadas y ejecutarse con programación.
- Conecta Higgsfield desde `Settings` → `Connectors` → `Add custom connector`; nombra el conector `Higgsfield`, pega el `MCP URL`, pulsa `Connect`, inicia sesión en Higgsfield en la ventana del navegador y aprueba el acceso.
- Una vez conectado Higgsfield por MCP, Claude puede llamar modelos de imagen y video desde Co-work, incluyendo `Seedance 2.0` y `Nano Banana Pro`.
- Antes de generar videos, crea un skill para evitar deriva de contenido: en una sesión nueva de Co-work selecciona la carpeta de workspace y ejecuta `/skill-creator`.
- Responde la entrevista de `/skill-creator` definiendo formato, voz, estructura y humor. En el ejemplo: canal tipo vlog de viajero en el tiempo, host joven, visitas a períodos históricos y reacciones con sensibilidad moderna.
- Fija reglas del short dentro del skill: duración exacta de `15 seconds`, estructura con `cold open`, realidad histórica clara y `punchline` basado en el choque entre sensibilidad moderna y realidad histórica.
- Indica al skill que elija temas frescos de distintas eras y que nunca repita temas entre ejecuciones.
- Para consistencia de marca, genera una hoja de referencia del personaje antes del primer video: una sola imagen del host desde varios ángulos, sobre fondo blanco puro.
- Usa `Nano Banana Pro` para la hoja de personaje porque el video lo presenta como el modelo más fuerte para consistencia de personajes.
- Actualiza el skill para que referencie automáticamente la hoja de personaje en cada ejecución futura; así no tienes que adjuntar manualmente la imagen en cada generación.
- Prompt/instrucción base usada para producir un short: `Use the time traveler short skill to write and produce one finished short with C-Dance 2.0 as the model.`
- Usa `Seedance 2.0` / `C-Dance 2.0` cuando necesites generar habla sincronizada y visuales en un solo render.
- Deja que Claude ejecute el flujo completo: leer el skill, elegir una era histórica, escribir el guion, construir el prompt visual detallado, llamar Higgsfield y guardar el archivo terminado.
- Ejemplo de dirección adicional para iterar: `Let's switch to a Wild West saloon, mid-afternoon, with our same host reacting to 19th century whiskey.`
- Otro ejemplo de dirección adicional: `London tube station in 1941 with our same host watching families settle in for the night.`
- Para automatizar la producción diaria, dentro de la sesión de Co-work ejecuta `/schedule`.
- Configura la tarea programada con nombre, cadencia `every day at 8:00 a.m.`, carpeta de workspace y la misma instrucción de producción: seguir el skill y producir un short terminado.
- Las tareas locales de Co-work solo se ejecutan si el laptop está despierto y Claude Desktop está abierto; si está dormido a las 8:00 a.m., Co-work se pone al día la próxima vez que abras la app.
- El mismo patrón se puede adaptar a otros nichos: educación infantil, UGC ads ultrarrealistas o comerciales 3D de producto, cambiando skill, host y reglas visuales.

## Reglas para agentes
- Usa Claude Desktop cuando el flujo requiera leer, escribir o guardar archivos locales.
- Usa Co-work cuando la tarea deba llamar herramientas, operar sobre carpetas o ejecutarse en horario programado.
- Conecta Higgsfield por MCP antes de pedir generación de imagen o video.
- Crea un skill antes de producir contenido recurrente para fijar voz, formato, estructura y restricciones.
- Define duración, estructura narrativa, tipo de humor y criterios de no repetición dentro del skill.
- Usa una hoja de referencia de personaje cuando la identidad visual del host deba mantenerse entre videos.
- Referencia automáticamente la hoja de personaje desde el skill en cada ejecución.
- Usa `Nano Banana Pro` para generar referencias de personaje consistentes.
- Usa `Seedance 2.0` cuando el video final necesite voz sincronizada y visuales en un solo render.
- Programa con `/schedule` solo después de validar que una ejecución manual produce un short correcto.
- Mantén la app abierta y el equipo despierto si la tarea programada debe ejecutarse exactamente a una hora local.
- Nunca generes shorts recurrentes sin skill si necesitas un canal reconocible.
- Nunca dependas de prompts manuales repetidos para mantener consistencia de host, voz o formato.
- Nunca asumas que Co-work ejecutará tareas locales mientras el computador está dormido.

## Errores comunes que evita o menciona
- Saltar directo a generar videos sin definir skill, provocando inconsistencia de host, formato y estilo.
- Crear cada short manualmente, obligando a alguien a aparecer todos los días para escribir, promptar y renderizar.
- No fijar un personaje recurrente, perdiendo reconocimiento visual de canal.
- Adjuntar manualmente la referencia del personaje en cada generación en vez de automatizarla desde el skill.
- Usar Claude en navegador para un flujo que necesita acceso a archivos locales.
- Olvidar que las tareas programadas locales requieren laptop despierto y app abierta.
- Dejar que el contenido “derive” con el tiempo por no definir reglas de voz, estructura, humor y no repetición.