# How To Create Long AI Anime With Consistent Characters
**Fuente:** imskaigenerated | https://youtu.be/qNCeIxja7Ws
## Qué enseña (2-3 líneas)
Enseña un flujo para crear anime largo con personajes consistentes usando Claude para storyboard, OpenArt como hub de modelos, Nano Banana Pro para referencias y CeeDance 2.0 para video.  
La clave es planificar toda la historia, generar hojas de personaje, usar prompts cortos y estructurados, extender clips en vez de reiniciar escenas y montar todo en un editor.

## Lecciones accionables
- Storyboardea antes de generar: define un clip de `60-second`, arco completo, un héroe consistente en todas las escenas y una pelea real con estética `Demon Slayer type aesthetic`.
- Usa Claude para estructurar la historia completa. Ejemplo del video: Ren, un joven espadachín, sale de casa, cruza un bosque con niebla, es emboscado por un rival, queda superado, recuerda una lección de su mentor y usa eso para ganar.
- Genera `character reference sheets` antes de cualquier video. Necesitas al menos tres: héroe, rival y mentor.
- En OpenArt, selecciona `NanoBanana Pro` / `Nano Banana Pro` para crear hojas de personaje.
- Prompt de hoja de personaje usado en el video: `front, side, and back view of our character wearing a fantasy travel outfit with a katana at his hip in a soft anime style theme`.
- Mantén las referencias de personaje como insumo recurrente: vuelve a subir las hojas de referencia en cada generación donde aparezca el personaje.
- No uses prompts enormes. El video advierte que muchos modelos de video procesan solo los primeros cientos de palabras; si el prompt tiene `400 words`, quizá solo atiendan unas `250 words`.
- Usa el framework de 6 puntos para prompts: `subject`, `action`, `environment`, `camera`, `style`, `constraints`.
- Revisa y recorta prompts generados por IA antes de pegarlos: elimina detalles innecesarios y palabras vagas.
- Para movimientos complejos o múltiples ángulos usa `timeline prompting`.
- Aprovecha la función `multi-shot` de `CeeDance` cuando haya varios planos o cambios de cámara.
- Crea `starting frames` con Nano Banana Pro antes de generar video, especialmente cuando cambia la escena.
- Prompt de starting frame inicial: `wide shot of the hero character kneeling down on the porch of a misty bamboo house at sunrise with his mentor standing beside him in a soft anime style aesthetic`.
- Para video, usa `CeeDance 2.0`; si quieres ahorrar créditos, `Kling 3.0` se menciona como alternativa sólida.
- Primer clip: sube la imagen de referencia inicial y las hojas de personaje, luego genera un plano de `13-second`.
- Prompt del primer clip: `13-second cinematic shot where Ren closes his bag and his mentor delivers one final line to him. After that, he hugs him and walks down the staircase`.
- Diálogo del primer clip: `I can't walk this road for you, but I'll always be watching over you.`
- Para ahorrar créditos, primero genera a `480p`; cuesta cerca de `1/5` de los créditos y sirve como preview. Cuando el resultado funcione, vuelve a generar a `1080p`.
- Segundo clip: genera un nuevo starting frame con Nano Banana Pro porque cambia la escena; sube ese frame junto con la hoja de personaje.
- Diálogo/acción del segundo clip: `You picked the wrong path to wander, traveler. Show yourself.`
- Para conectar escenas consecutivas, usa `video extension feature` en lugar de generar un clip nuevo solo desde el end frame.
- En la extensión de video, sube el clip anterior como referencia para que el modelo mantenga ambiente, movimiento y continuidad.
- Para una pelea con dos personajes, sube el clip anterior, agrega ambas hojas de referencia y usa tags con `@` para indicar qué personaje corresponde a cada parte del prompt.
- Prompt de pelea: `15-second cinematic fight scene that picks up exactly where the previous clip left off with smooth and varied camera motions as Ren and his rival clash, lock blades and exchange dialogue`.
- Diálogos de pelea usados: `Is this all the old man taught you?`, `He taught me enough TO BREAK YOU.`, `IS THIS REALLY ALL YOU HAVE?`
- Para el último clip, repite el proceso de extensión con referencias y continuidad.
- Diálogo del mentor en el cierre: `The sword was never the source of your strength. You were. Now, stop kneeling like a boy and stand up like the man I trained.`
- Monta los clips en un editor como `CapCut` o `Premiere Pro`: ordénalos, recorta, ajusta cortes y añade transiciones si ayudan al flujo.

## Reglas para agentes
- Usa Claude cuando necesites convertir una idea general en storyboard completo antes de generar video.
- Usa OpenArt cuando quieras acceder a varios modelos de IA desde una sola plataforma.
- Usa Nano Banana Pro cuando necesites hojas de personaje o starting frames consistentes.
- Usa CeeDance 2.0 cuando necesites clips de video con continuidad, diálogo, lip sync, multi-shot o extensión.
- Usa Kling 3.0 cuando el objetivo sea ahorrar créditos frente a CeeDance.
- Crea siempre hojas de referencia `front`, `side` y `back` antes de generar clips con personajes recurrentes.
- Sube las hojas de referencia en cada clip donde aparezca el personaje.
- Usa prompts estructurados con `subject`, `action`, `environment`, `camera`, `style`, `constraints`.
- Mantén los prompts cortos, claros y procesables; elimina texto ornamental antes de generar.
- Usa `timeline prompting` cuando haya múltiples ángulos, acciones secuenciales o movimientos de cámara.
- Usa `video extension feature` cuando una escena continúe desde el clip anterior.
- Usa tags con `@` cuando un prompt incluya dos o más personajes referenciados.
- Genera previews a `480p` antes de gastar créditos en `1080p`.
- Nunca empieces un video largo generando clips sueltos sin storyboard.
- Nunca dependas solo del end frame si necesitas continuidad de movimiento, tono y escena; usa el video anterior como referencia.
- Nunca pegues prompts largos generados por ChatGPT o Claude sin revisarlos y recortarlos.
- Nunca asumas que más detalle equivale a mejor resultado si el modelo va a ignorar parte del prompt.

## Errores comunes que evita o menciona
- Saltarse el storyboard y terminar con clips bonitos pero inconexos.
- Generar personajes sin hojas de referencia y perder consistencia entre escenas.
- Usar prompts de cientos de palabras que el modelo no procesa completos.
- Pegar directamente prompts enormes generados por ChatGPT o Claude.
- Describir demasiado sin estructura clara de sujeto, acción, entorno, cámara, estilo y restricciones.
- Generar cada clip como una escena aislada en vez de usar extensión de video.
- No etiquetar personajes con `@` cuando hay múltiples referencias.
- Gastar créditos generando directamente a `1080p` sin validar primero en `480p`.
- Intentar arreglar continuidad solo en edición cuando los clips ya nacen desconectados.
- Usar cinco herramientas separadas cuando OpenArt puede centralizar varios modelos.