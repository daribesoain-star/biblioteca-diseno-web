# Create a WHISK AI commercial: Coffee AI Filmmaking Tutorial Guide
**Fuente:** nextmindrevolution | https://youtu.be/IqWQtVHJp6k
## Qué enseña (2-3 líneas)
Enseña a construir un comercial corto de café usando Whisk para generar imágenes y videos, Gemini para convertir una idea básica en storyboard, y DaVinci Resolve para editar el resultado final.  
El flujo prioriza consistencia de personaje, consistencia de escenario/producto, generación de múltiples tomas, uso controlado de créditos y montaje rápido con música, cortes, velocidad y zooms sutiles.

## Lecciones accionables
- Parte con una idea cruda en lenguaje natural y pásala por Gemini pidiendo un storyboard. La idea usada: mujer entra a una cocina desordenada después de una fiesta, se ve decepcionada/molesta porque debe limpiar, prepara café, presiona el botón de la espresso machine, bebe el café, deja la taza o sale de escena, y termina con un product shot.
- Puedes usar las sugerencias de Gemini directamente como prompts en Whisk; si una sugerencia no sirve, pide a Gemini que la cambie o edítala manualmente.
- Para consistencia de personaje, crea primero una referencia del sujeto con plano de cuerpo completo, no close-up. Prompt/frases exactas mencionadas: `a high resolution cinematic full body shot`, `woman in her 30s`, `natural skin type of texture`, `wrinkled, oversized` nightwear, `plain green background`.
- Usa cuerpo completo porque la ropa debe verse en todas las escenas; si usas close-up, Whisk puede cambiar la ropa en cada toma.
- Genera muchas variaciones de imagen porque en Whisk las imágenes son gratis, pero los videos consumen créditos.
- Para el escenario, crea una cocina consistente y asegúrate de que la máquina de café permanezca igual. Frases exactas del prompt: `messy kitchen at the morning after a party`, `dirty dishes`, `to the right of the sink near the wall, we have a sleek professional chrome espresso machine`.
- Para la primera escena, marca/checkea sujeto + escena en Whisk. Prompt descrito: `a wide shot of the woman from the subject reference walking into a messy kitchen`, posicionada a la derecha, con expresión `very tired or exhausted`.
- Compara cada imagen nueva con la escena principal antes de usarla; si es demasiado distinta, vuelve a generar o modifica el prompt.
- Marca como favorito cada frame que vayas a llevar a video; evita perder tiempo buscando imágenes entre muchas generaciones.
- Para obtener el close-up de la espresso machine, edita la imagen elegida y usa: `close-up shot of the espresso machine`.
- Si aparece un objeto no deseado por estar en la referencia, edita explícitamente. Prompt exacto mencionado: `remove the dirty coffee cup in the espresso machine`.
- Para la escena donde ella coloca la taza, no animes solo la máquina: Whisk puede cambiar el sujeto. Pon a la mujer dentro del frame para mantener consistencia.
- Para ese frame, usa la espresso machine como escena y una referencia lateral del personaje como sujeto. Prompt/frase mencionada: `She is standing at the left side of the frame facing the espresso machine and the focus is going to be on the espresso machine, not the subject`.
- Si el personaje se ve distinto de perfil, genera una nueva referencia del sujeto pidiendo `side profile`; luego reemplaza la referencia del sujeto y vuelve a generar.
- Corrige la escena de la taza con edición directa. Prompt exacto mencionado: `Remove the coffee cup on the espresso machine. She's holding a white coffee cup.`
- Para el botón de la máquina, puedes referenciar solo la escena y pedir: `extreme close-up shot of the espresso machine buttons`. No siempre hace falta editar la imagen original para conseguir un close-up.
- Para la escena de beber café, checkea la escena + el full body shot del sujeto, descheckea la máquina si no la necesitas. Prompt/frases mencionadas: `medium low angle shot`, la mujer bebiendo y sosteniendo el café, feliz, `steam rising into her face`, `Her expression is blissful and calm`, `Golden hour`.
- Genera una toma alternativa de la misma acción para edición. En el ejemplo cambia el ángulo a `high angle shot` para tener más dinamismo.
- Si usas Whisk estándar, algunos cambios de ángulo pueden ser débiles; el video menciona que para usar la versión pro de Nano Banana necesitas créditos.
- Para crear video en Whisk, entra a favoritos, pasa el cursor sobre el frame elegido, toca el ícono de video y agrega un prompt de acción.
- Los videos no son gratis: necesitas créditos y probablemente cuenta Pro/Premium. El autor menciona aproximadamente `1,000 credits` y entre `30 and 50 videos`, pero recalca que varias generaciones saldrán mal y tendrás que repetir.
- Prompt de video para entrada a cocina: la mujer entra a la cocina, va hacia la mesa de madera y mira el desorden sobre la mesa. Especifica dónde debe mirar para evitar que mire a cámara o hacia otro lugar.
- Para colocar la taza, primer prompt simple exacto/parcial: `Cinematic close-up shot. The woman slowly and carefully places a clean empty coffee cup on the machine.`
- Para una versión extendida del prompt de la taza, agrega iluminación y movimiento: la mujer va a la máquina con una taza, `harsh morning sunlight`, movimiento `steady` y `sluggish`, acabado `photo realistic 8K`.
- Si la generación es buena pero lenta, úsala igual y acelera partes en edición.
- Para el botón, prompt exacto/parcial: `cinematic close-up shot. The woman needs to press a button and the button needs to light up.`
- Si una generación rompe la máquina o deforma números, usa solo el tramo útil: corta justo cuando presiona el botón.
- Para beber café en video, prompt descrito: `cinematic medium shot`, la mujer agarra el café con ambas manos, toma un sorbo, se relaja y disfruta; agrega expresión y `Wisp of steam rise from the cup into her face`.
- Para hacer que salga de la habitación, el prompt simple usado fue la descripción del personaje + `she stands up and leaves the room`; produjo problemas. En el segundo intento agregó que la mujer deja la habitación y `the camera remains static`.
- Si una acción compleja no funciona en Whisk, usa Google Flow con first frame + last frame, porque Whisk no tiene función frame-to-frame en este flujo. Los créditos de Whisk y Google Flow son los mismos según el video.
- Para el product shot final, sube una imagen de una bolsa de café genérica y asegúrate de que nada más esté checkeado.
- Prompt/frases del product shot: `professional product photography type of shot`, bolsa de café sobre mesa, fondo desenfocado, `cozy` living room, `blurred` background, granos tostados, `steaming white coffee cup`, iluminación y calidad al final del prompt.
- Para animar el product shot, prompt descrito: la cámara hace `dolly zoom out`, se mueve lentamente hacia afuera para revelar más del living room, la taza y el entorno.
- En DaVinci Resolve, Premiere o CapCut, ordena todas las escenas en secuencia. El ejemplo usa seis escenas.
- Reduce duración: el montaje bruto quedó en unos 48 segundos; el comercial final queda alrededor de 30 segundos.
- Corta las tomas largas antes de miradas raras o acciones defectuosas. En el ejemplo corta la escena de salida apenas ella se levanta y empieza a moverse.
- Acelera clips lentos: usa `Change Clip Speed`; prueba `140`, luego `150` para las tomas de colocar taza y presionar botón; usa cerca de `120` para la toma de beber café.
- Al cambiar velocidad, el audio se deforma; silencia el audio de los clips cuando no lo necesites.
- Agrega música libre de YouTube para evitar problemas de copyright; complementa con sound effects si quieres más realismo.
- Si un audio generado raro funciona narrativamente, puedes conservarlo; el autor mantiene un sonido tipo horror al entrar a la cocina.
- Para añadir movimiento a tomas estáticas en DaVinci Resolve, usa `Adjustment Clip` sobre el clip y aplica zoom al ajuste.
- Usa el plugin `Magic Zoom` en DaVinci Resolve para hacer zooms sutiles sin animar keyframes manualmente.
- Ajusta `Magic Zoom` a un zoom pequeño, transición de `4` a `5` segundos, tipo `in only`; evita `in and out` si no encaja con el comercial. El autor baja la intensidad a `nine or 10`.
- Para textos finales, usa `Basic Title`, fade in/fade out, y una transición `Cross Dissolve`.
- Frases de copy usadas: `let the coffee do the work` y marca ficticia `Golden Blend`.
- El autor rechaza `Open Sans`: `Never use open sense unless it's for something highly specific`.

## Reglas para agentes
- Usa Gemini cuando solo tengas una idea cruda y necesites convertirla en storyboard antes de generar assets.
- Usa Whisk para generar muchas imágenes gratis antes de gastar créditos en video.
- Usa una referencia de personaje en cuerpo completo cuando el mismo sujeto deba aparecer en varias escenas.
- Nunca uses solo un close-up como referencia principal del personaje si necesitas conservar ropa y silueta.
- Usa fondo `plain green background` o fondo neutro para aislar una referencia de sujeto.
- Bloquea/checkea sujeto y escena en Whisk cuando quieras combinar personaje consistente con escenario consistente.
- Nunca animes una escena que necesita personaje consistente usando solo la referencia del objeto o del escenario.
- Genera una referencia de `side profile` cuando una escena muestre al personaje de perfil.
- Favorita cada imagen que vayas a convertir en video.
- Repite generaciones hasta que el frame sea usable; no aceptes un frame base con problemas evidentes si luego será animado.
- Especifica dirección de mirada cuando el personaje no debe mirar a cámara.
- Especifica cámara estática cuando el movimiento de cámara pueda crear deformaciones o salidas raras.
- Usa Google Flow cuando necesites control first-frame/last-frame o acciones complejas que Whisk no resuelve.
- Nunca gastes todos los créditos en la primera versión; reserva créditos para regenerar videos fallidos.
- Corta en edición las partes defectuosas de una generación en vez de descartar automáticamente todo el clip.
- Acelera clips demasiado lentos antes de decidir que no sirven.
- Silencia audio generado cuando hayas cambiado velocidad o cuando produzca artefactos.
- Usa sound effects y música con licencia segura para dar coherencia comercial.
- Usa `Adjustment Clip` + `Magic Zoom` para añadir movimiento sutil a tomas estáticas.
- Mantén los zooms sutiles; no uses un zoom agresivo si distrae del producto.
- Usa transiciones simples como `Cross Dissolve` para product shots y cierre de marca.
- Nunca uses `Open Sans` salvo que haya una razón específica.

## Errores comunes que evita o menciona
- Usar solo Whisk tiene limitaciones de consistencia y de flujo; Google Flow, Clink/Clank, Runway o Freepik pueden facilitar tareas más complejas.
- Whisk no permite tomar dos imágenes distintas y animarlas juntas directamente; en el flujo mostrado solo anima una imagen.
- Whisk no tiene frame-to-frame en este flujo; por eso acciones complejas como levantarse y salir pueden fallar.
- El personaje puede cambiar de ropa, pelo o identidad si la referencia no muestra el cuerpo completo o el perfil necesario.
- La espresso machine puede cambiar entre escenas si no se fija bien como parte del escenario.
- Objetos no deseados de una referencia, como una taza sucia, pueden arrastrarse a nuevas generaciones.
- Los videos pueden salir con manos/piernas raras, movimientos extraños, miradas a cámara, puertas inexistentes, objetos que desaparecen o máquinas deformadas.
- Una generación puede cumplir la acción pero ser mala por sonido incorrecto, encendido no pedido de la máquina, números raros o deformación del objeto.
- Las tomas generadas suelen ser demasiado largas y lentas para un comercial; hay que cortar y acelerar.
- Cambiar velocidad de clips puede arruinar el audio original.
- Una sola toma de 5 segundos de alguien bebiendo café queda aburrida; conviene generar ángulos alternativos.
- Un product shot en la misma cocina desordenada puede verse peor; conviene cambiar a un fondo cozy y desenfocado.
- Un zoom `in and out` puede no sentirse comercial; para este caso funciona mejor `in only`.
- Usar fuentes genéricas sin intención, como Open Sans, puede debilitar el cierre visual.