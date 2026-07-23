

===== 0CjArtUh_Wg.md =====
# How To Create Long AI Animation Videos With Consistent Characters - Kling 3.0
**Fuente:** Dan Kieft | https://youtu.be/0CjArtUh_Wg

## Qué enseña
Este tutorial enseña un flujo completo de 4 pasos para crear videos de animación AI largos con personajes consistentes: storyboarding con generación de imágenes, image-to-video con Kling 3.0, sincronización de audio con cambiadores de voz, y edición final. El 95% del proceso se realiza en Higgsfield AI, usando Nanobanana para imágenes y Kling 3.0 para video.

## Técnicas accionables
- **Creación de personajes:** Usa Nanobanana (Pro o 2) con prompt de estilo: "3D animated young woman of around 25 year old" + descripción física. Todos los personajes deben compartir el mismo estilo (ej. "3D animation" o "Disney Pixar animation style").
- **Character sheet:** Sube la imagen del personaje a Nanobanana, copia un "detail prompt" (disponible en su comunidad gratuita), configura 16:9 y 4K, genera. Obtendrás múltiples ángulos y close-ups del rostro.
- **Generación de imágenes para escenas:** Sube el character sheet como referencia, escribe prompt detallado: "[estilo] [personaje] [acción] [entorno] [iluminación] [estilo de animación]". Ejemplo: "3D animated man in a dark suit and a loose messenger bag on his shoulder standing inside a warmly lit apartment. He has a hand on the door as if he's just walking in, looking into the room. Disney Pixar animation style."
- **Múltiples referencias en una imagen:** Sube hasta 3 imágenes (character sheets + objetos/escenas). Usa etiquetas (@image2) en el prompt para referenciar imágenes específicas. Ejemplo: "A wide centered shot at night, a father and his young son stand on a sidewalk handing out flyers... @image2 [the flyer image]... Pixar Dreamworks style 3D animation."
- **Técnica 1 - Start and End Frame (Kling 3.0):** Edita la imagen base en Nanobanana (ej. "remove the guy and close the door"). Sube esa imagen editada como start frame y la imagen original como end frame en Kling 3.0. Prompt: "He grips the doorknob, turns it, and pushes through the door while saying 'I'm home.' He steps inside and slides his hands from the doorknob to the edge of the door looking into the room." Selecciona duración.
- **Técnica 2 - Scene Continuation:** Toma el último frame del video generado, descárgalo. Úsalo como start frame en Kling 3.0. Sube una imagen nueva de la siguiente escena como end frame. Prompt: "A man closed the door. Camera turns slowly. Pans towards the kid." Genera y empalma con el clip anterior.
- **Técnica 3 - Kling 3.0 Omni Multishot:** Activa "multishot" en Kling 3.0 Omni. Sube múltiples elementos (personajes, escenas, character sheets). Define hasta 3 shots con prompts independientes y duraciones distintas (ej. 4s cada uno). Ejemplo: Shot 1: "A father tucks his young son into the bed. Gently brushes his hair. Both look sad." Shot 2: "The father stands up, turns off the light, opens the door, and walks out into the hallway. The door slowly closes." Shot 3: "@image2 The father leans against the wall besides the door and slowly slides down to sit on the floor."
- **Audio sync con voice changer:** En Higgsfield AI, ve a Audio > Change Voice, sube el clip, selecciona una voz, genera. Alternativa mejor: Eleven Labs voice changer (más variedad de voces, permite crear voces personalizadas).
- **Edición de lip sync:** En el editor de video (CapCut, DaVinci, Premiere), copia el clip de audio y desplázalo ligeramente antes del video para que coincida mejor con el movimiento de labios.
- **Ajustes finales:** Añade film burn en clips de flashback, transiciones fade, sound effects (Artlist o Eleven Labs AI), y música (AI generada o Artlist).

## Reglas para el erudito
- Usa Nanobanana para generar imágenes baratas y storyboard antes de gastar créditos en video.
- Usa el mismo estilo de animación (ej. "3D animation", "Disney Pixar style") en TODOS los prompts de personajes para mantener consistencia.
- Usa character sheets con múltiples ángulos como referencia en cada generación de imagen.
- Usa start and end frame en Kling 3.0 cuando necesites control preciso del movimiento de entrada/salida.
- Usa scene continuation (último frame como start frame) para transiciones seamless entre escenas.
- Usa Kling 3.0 Omni multishot cuando tengas múltiples referencias y quieras un solo video con varios ángulos.
- Usa voice changer (Eleven Labs preferido) para mantener consistencia de voz entre clips generados por separado.
- Usa el truco de adelantar el audio en la línea de tiempo para corregir lip sync deficiente de Kling 3.0.

## Errores comunes / limitaciones que menciona
- No añadir detalles de iluminación en el prompt puede generar mezclas extrañas de estilos (personajes 3D mezclados con fondos realistas).
- Generar videos sin storyboard previo desperdicia créditos; las imágenes son baratas, los videos caros.
- Kling 3.0 tiene problemas de lip sync en diálogos largos; requiere ajuste manual del audio en edición.
- Sin voice changer, cada clip generado tendrá una voz diferente, rompiendo la consistencia del personaje.
- El multishot de Kling 3.0 Omni puede cambiar la posición de los personajes respecto a la referencia (ej. personaje aparece en lado opuesto de la pared), pero el resultado puede ser aceptable.

===== 17YPqat8aDE.md =====
# Kling AI Image to Video Tutorial — AI Video Generation (Kling 1.6)
**Fuente:** Cem Eygi Media | https://youtu.be/17YPqat8aDE

## Qué enseña
Cómo generar imágenes con Kling AI y luego convertirlas en videos cortos usando la función image-to-video. También muestra cómo usar ChatGPT para generar variaciones de prompts y expandir la biblioteca de ideas.

## Técnicas accionables
- **Preparación de imagen en Kling AI:** desde el panel izquierdo seleccionar "Image". Escribir un prompt detallado que defina: sujeto, ubicación y detalles. Ejemplo exacto usado: *"a realistic Captain America in his iconic suit, but his head is a Labrador puppy standing on a New York City rooftop in the evening"*.
- **Configuración de imagen:** ajustar Ratio a "1:1" (cuadrado), Number of outputs a "1", elegir entre "Standard" (pruebas rápidas) o "High Resolution" (para imprimir/compartir). Luego hacer clic en "Generate".
- **Generación de variantes de prompts con ChatGPT:** copiar el prompt original y escribir en ChatGPT: *"Here's a prompt I just used in Kling AI. Could you give me five similar prompts, but combine different superheroes, dog breeds, and locations?"* Pegar el prompt original. Copiar los resultados de vuelta a Kling AI.
- **Image-to-video:** desde el dashboard de Kling AI, pasar el cursor sobre la imagen creada y hacer clic en "Generate video". Se abre la pestaña "image to video" con la imagen cargada. Para usar otra imagen, eliminar la actual y arrastrar una nueva.
- **Prompt de video:** escribir un prompt de movimiento. Ejemplo exacto: *"character doing a Fortnite dance while the camera slowly zooms out"*.
- **Ajustes de video:** seleccionar "Standard" (gratuito) o "Professional" (mayor calidad, requiere créditos). Elegir "Video length" entre "5 seconds" o "10 seconds". Number of outputs: "1". Luego hacer clic en "Generate".
- **Regeneración:** para obtener una versión diferente, presionar "Generate" nuevamente; Kling AI crea un video ligeramente distinto cada vez.

## Reglas para el erudito
- Usa un prompt de imagen que defina explícitamente sujeto, ubicación y detalles para obtener resultados coherentes.
- Usa ChatGPT para generar variaciones de prompts cuando necesites una serie de imágenes relacionadas (thumbnails, posts sociales).
- Usa "Standard" para pruebas rápidas y "High Resolution" solo cuando el resultado final vaya a imprimirse o compartirse en alta calidad.
- Usa "Professional" en image-to-video solo si tienes créditos disponibles y necesitas mayor calidad de render.
- Usa "5 seconds" para videos cortos y "10 seconds" para clips más largos según la plataforma de destino (TikTok, Instagram, YouTube Shorts).

## Errores comunes / limitaciones que menciona
- No menciona errores específicos ni limitaciones técnicas del modelo. Solo indica que la generación toma "unos minutos" y que al presionar "Generate" varias veces se obtienen versiones ligeramente diferentes.

===== 1JkmT6L2CmA.md =====
# How To Make AI Videos - Prompting Guide For Beginners
**Fuente:** Mira AI | https://youtu.be/1JkmT6L2CmA

## Qué enseña
Este tutorial enseña a principiantes cómo generar videos con IA usando prompts estructurados, enfocándose en el modelo Seedance 2.0 dentro de la plataforma Higgs Field. Explica el flujo de trabajo profesional desde texto-a-video e imagen-a-video, incluyendo consistencia de personaje, control de cámara, audio integrado y la técnica de timeline prompting para evitar errores comunes.

## Técnicas accionables
- **Modelo principal usado:** Seedance 2.0 (dentro de Higgs Field). Modelo de imagen usado: Nano Banana Pro (para crear character boards).
- **Estructura de prompt VERBATIM (fórmula):** "Start with a [the] then [action], then [setting], then [camera], then [style]". Ejemplo dado: *"Medium tracking shot of our kid grooving down a New York sidewalk golden hour"*.
- **Character board:** Crear una sola imagen que muestre al personaje desde frente, lado y espalda. Prompt usado: *"A high school student around 16 with a rounded afro and white earphones"* + pedir "shots from the front, the side, and the back all in one image".
- **Image-to-video workflow:** Generar imagen primero con Nano Banana Pro, luego usar esa imagen como referencia fija en Seedance para animar.
- **Timeline prompting:** Dividir el clip en segmentos de tiempo. Ejemplo: "0 to 5 seconds: he struts and sings down the sidewalk. 5 to 10: he spins and stomps in a puddle right on the beat. 10 to 15: the camera lifts up into that beautiful overhead shot as he dances in the golden light."
- **Audio integrado en Seedance:** Tres tipos: 1) Diálogo entre comillas: *"The city feels so right tonight"*. 2) Efectos de sonido: "splash of water as his foot hits a puddle" o "hum of city traffic". 3) Mood general: "upbeat and funky" o "tense and quiet".
- **Truco de reutilización de audio:** Si un clip tiene buen audio pero video glitch, cubrir el video con una pantalla negra sólida (solid black screen) para que el AI solo tome el sonido sin confundirse con los viejos visuales.
- **Referencias etiquetadas:** Al usar múltiples referencias (imagen + video con audio), etiquetar en el prompt para que el AI sepa para qué sirve cada una.
- **Uso de Claude como asistente:** Dar la idea en inglés simple, pedirle que escriba el prompt optimizado para el modelo específico (Seedance). Luego hacer ajuste manual final.
- **Regla de props mínimos:** Cuantos menos accesorios tenga el personaje, menos glitches. Ejemplo: quitar mochila porque el AI duplicaba la mochila en la espalda.
- **En motion prompt, describir solo el movimiento, no la apariencia.** No reescribir la descripción del personaje (cara, pelo, outfit) porque eso rompe la consistencia.

## Reglas para el erudito
- Usa **imagen-a-video** siempre que necesites control total del personaje; texto-a-video es para pruebas rápidas pero pierdes consistencia.
- Usa la **fórmula [the] + [acción] + [setting] + [cámara] + [estilo]** para prompts estructurados; evita prompts vagos como "kid dancing in the city happy".
- Usa **timeline prompting** cuando necesites múltiples acciones en un clip de 15 segundos; asigna cada acción a un bloque de tiempo específico (0-5s, 5-10s, 10-15s).
- Usa **Claude** para pulir tu prompt y añadir toques cinematográficos, pero haz el ajuste final manualmente.
- Usa **pantalla negra sólida** sobre un video existente si quieres reutilizar solo su audio sin que el AI se confunda con los visuales antiguos.
- Limita cada clip a **una sola idea principal**; no metas más de 2-3 acciones simples por clip de 15 segundos.
- Mantén el **movimiento lento y suave**; el movimiento rápido y complejo (breakdance, giros de cabeza) causa glitches y deformaciones.
- Incluye **direcciones de cámara** explícitas en el prompt (slow dolly in, low angle, medium tracking shot, overhead shot) para tener control sobre el encuadre.

## Errores comunes / limitaciones que menciona
- **Error 1: Meter una película entera en un clip corto.** Si le das 10 acciones (caminar, parar, comprar, beber, revisar teléfono, cruzar calle, saludar, bailar), el AI acelera todo y se ve apresurado. Seedance limita a ~15 segundos.
- **Error 2: No especificar la cámara.** Sin dirección de cámara, el AI elige el ángulo y movimiento al azar, y cada generación es diferente (unos push in, otros drift sideways).
- **Error 3: Redescribir la apariencia del personaje en el motion prompt.** Si usas un character board pero luego escribes otra vez la cara, pelo y outfit, el primer frame se ve raro y rompe la consistencia.
- **Error 4: Demasiado movimiento rápido.** Pedir breakdance a velocidad completa causa glitches, piernas dobladas en direcciones imposibles, manos derretidas. El AI no puede mantener el ritmo con movimientos complejos rápidos.
- **Limitación de audio:** Seedance puede generar audio (diálogo, efectos, mood) pero para una pista musical pulida y completa es mejor usar una herramienta de música dedicada.
- **Glitch de props:** Darle una mochila al personaje resultó en que el AI duplicara la mochila en la espalda sin razón, arruinando el clip.

===== 1wRX1V5qGn0.md =====
# Create AI Videos in Seconds (KLING AI Step-by-Step Tutorial)
**Fuente:** Arca Artificial by Lordwind Enrique | https://youtu.be/1wRX1V5qGn0

## Qué enseña
Tutorial completo sobre Kling AI (versiones 1.0 a 1.6), herramienta de generación de video e imagen con IA lanzada en mid-2024. Cubre desde registro gratuito (366 créditos iniciales), creación de imágenes con prompts, transformación de imagen a video, control de movimiento con motion brush, lip sync, virtual try-on, y estructura de prompts para resultados óptimos.

## Técnicas accionables
- **Modelos disponibles:** Kling AI (versiones 1.0, 1.1, 1.5, 1.6). No menciona Veo/Seedance/Runway/Sora/Wan/Hailuo como parte del tutorial, solo Kling.
- **Registro y créditos:** Ingresar a klingai.com → "Sign in for free credits" → registro gratuito otorga 366 créditos iniciales. Sin tarjeta de crédito requerida.
- **Generación de imagen:** En sección "Images", escribir prompt. Cambiar aspect ratio (cuadrado, vertical, panorámico, story). Por defecto genera 4 imágenes por prompt, ajustable de 1 a 9. Ejemplo prompt usado: *"a luxury model in a photo shoot with a haute couture dress with many details, glamorous, with professional lighting"* con aspect ratio 9:16.
- **Opciones post-generación de imagen:** Escalar (aumentar calidad), copiar, like/dislike, compartir, favoritos, descargar (con/sin watermark). En versión gratuita todo descargable tiene watermark.
- **Image-to-video (Bring to Life):** Desde imagen generada, click "bring to life" → se abre sección de video. Ejemplo: imagen de perro con sombrero rojo, prompt *"the dog is barking"*. Créditos: 4 para imagen, 35 para convertir a video.
- **Estructura de prompt para texto-a-video:** 1) Sujeto (persona/animal/objeto) + descripción. 2) Movimiento del sujeto. 3) Escena/background. 4) Estilo de cámara (ej: Sony, Nikon), resolución (4K/8K), iluminación (cinematic lighting). Ejemplo usado: *"a sports car speeding through a city, commercial style"*.
- **Estructura de prompt para imagen-a-video:** 1) Sujeto (ej: "a girl"). 2) Movimiento (ej: "walking forward, looking at the camera"). 3) Background (ej: "people are blurred, moving normally"). Ejemplo usado: *"the girl is walking forward, looking at the camera, and in the background, the people are blurred, and they are seen moving normally"*.
- **Motion Brush (dibujar movimientos):** En versiones 1.1 y anteriores, opción "draw motions" → se abre tab para asignar movimientos por áreas segmentadas automáticamente. Ejemplo: área 1 (brazo) mover hacia arriba, área 2 (otro brazo + katana) mover en dirección específica, área 3 (cuerpo) mover a la derecha, área 5 (humo) movimiento circular.
- **Negative Prompts:** Sección para indicar qué NO debe aparecer en la generación. Ejemplo: evitar deformaciones, objetos no deseados.
- **Virtual Try On:** En sección "Images" → botón "Virtual Try On" → crear modelo → opciones: Outfit (cambiar vestimenta usando prendas predeterminadas), Upscale, Span (expandir imagen), Bring to Life. Créditos: 20 por generación. Consejo: usar fondo blanco y manos fuera de la ropa para mejor resultado.
- **Lip Sync:** Botón "lip sync" → usar presets o subir audio propio (ejemplo: 10 segundos). Costo: 10 créditos. Tiempo de generación: 10-12 minutos por duración del audio.
- **Modelos de calidad:** En generación de video, opción "Professional" (más lento, mejor calidad) vs "Standby". Ejemplo: con plan pago, video generado en 9 minutos en modo profesional.
- **Aspect ratio en video:** Configurable antes de generar.

## Reglas para el erudito
- Usa la estructura de prompt sujeto + movimiento + escena + estilo de cámara/iluminación cuando generes texto-a-video.
- Usa la estructura sujeto + movimiento + background cuando conviertas imagen existente a video.
- Usa fondo blanco y manos fuera de la ropa cuando hagas Virtual Try On para evitar borrones.
- Usa Negative Prompts para excluir elementos no deseados de la generación.
- Usa Motion Brush en versiones 1.1 o anteriores para controlar movimiento por áreas específicas.
- Usa el modelo "Professional" cuando necesites máxima calidad, aunque tome más tiempo.
- Usa versiones 1.6 para mejor calidad de gestos faciales y realismo en personas.
- Ajusta el número de imágenes generadas (1-9) según necesidad; default es 4.

## Errores comunes / limitaciones que menciona
- **Velocidad lenta en versión gratuita:** La generación es "muy lenta" sin plan pago. Ejemplo: incluso con plan pago, video en modo profesional tarda 9 minutos.
- **Watermark obligatorio en versión gratuita:** Todo contenido descargado incluye marca de agua; solo se elimina con pago.
- **Falla en primer intento:** Es normal que la primera generación no funcione; hay que cambiar prompt, configuración, iluminación y probar varias veces.
- **Lip Sync poco realista:** "Todavía necesita mucho trabajo", los gestos faciales se ven "sobrenaturales" y no naturales.
- **Virtual Try On impreciso:** La colocación de prendas puede generar borrones, especialmente en manos y bordes.
- **Motion Brush no disponible en versión 1.6:** En la versión más reciente, el control de movimiento por dibujo y movimiento de cámara no están disponibles aún.
- **Inconsistencia de personajes:** Reconoce que "no hay muy buena consistencia" en personajes a lo largo del video, especialmente al crear videos desde imágenes.
- **Gestos extraños en personas:** Las expresiones faciales y movimientos pueden verse "super falsos" o "sobrenaturales", aunque mejoran con cada versión.
- **Créditos variables:** Generar imagen cuesta 4 créditos, convertir a video cuesta 35, Virtual Try On cuesta 20, Lip Sync cuesta 10.

===== 5zYUNcyRcUc.md =====
# This Runway AI Tool Fixes the #1 Problem with AI Videos (Runway Gen-4 References Full Tutorial)
**Fuente:** Justin Serran | https://youtu.be/5zYUNcyRcUc

## Qué enseña (2-3 líneas)
Este tutorial explica cómo usar la nueva función "References" de Runway Gen-4 para generar videos con personajes consistentes, evitando caras aleatorias o rerenders fallidos. El flujo actual es un proceso de dos pasos: primero generar una imagen consistente con referencias (text-to-image), y luego animarla con la herramienta image-to-video. También cubre el etiquetado de referencias múltiples para combinar personaje y locación.

## Técnicas accionables
- **Modelo usado:** Runway Gen-4 (solo la función References funciona dentro de text-to-image, no directamente en text-to-video).
- **Paso 1 – Generar imagen consistente:** Ve a la pestaña "Text to Image" y haz clic en "References". Selecciona dimensiones de salida (output dimensions) y usa el slider "Aesthetic Range" para controlar la variación de estilo entre las 4 imágenes generadas.
- **Subir referencias:** Hasta 3 imágenes frontales, con iluminación uniforme, sin sombras fuertes, sin gafas de sol, sin fondos recargados. Mantén las imágenes limpias y enfocadas.
- **Estructura de prompt para imagen (VERBATIM):** "A cinematic portrait of a woman wearing a red jacket standing in a foggy forest. Dramatic sidelighting, shallow depth of field." La IA funciona mejor cuando la imagen de referencia y el prompt hablan el mismo lenguaje visual.
- **Paso 2 – Animar (image-to-video):** Usa la herramienta de image-to-video. El prompt debe describir movimiento, no solo estética. Ejemplo (VERBATIM): "Camera slowly pushing in as she turns her head slightly and fog swirls in the background."
- **Truco de consistencia con etiquetas:** Sube una referencia de locación y otra de modelo. Etiquétalas (ej. "model 2", "location 2") y luego escribe en el prompt: "show me at model 2 in location 2". Esto genera una imagen personalizada que luego puedes animar con el mismo flujo.
- **Consejos de cámara/movimiento:** Piensa como un cinematógrafo, no solo como un prompt engineer. Usa lenguaje direccional: "camera slowly pushing in", "turns her head slightly", "fog swirls".
- **Consistencia entre tomas múltiples:** Genera todas las imágenes fijas primero (stills), luego anímalas una por una para mantener el personaje consistente entre cortes.

## Reglas para el erudito
- Usa imágenes de referencia sin estilizar, mantenlas naturales.
- Usa vestimenta e iluminación consistentes en todas las subidas para mejores resultados.
- Cuando planees una secuencia de múltiples tomas, genera todos los stills primero y luego anímalos uno por uno.
- Alinea siempre el prompt descriptivo con la imagen de referencia; ambos deben hablar el mismo lenguaje visual.
- Etiqueta las referencias (modelo y locación) y usa esas etiquetas en el prompt para combinaciones personalizadas.

## Errores comunes / limitaciones que menciona
- Runway Gen-4 no es perfecto: su movimiento tiende a ser más "artístico" que preciso, a veces flotante o abstracto, comparado con herramientas como Pika que producen movimiento más firme y realista.
- La función References solo funciona dentro de text-to-image por ahora; no se puede alimentar un prompt y referencia directamente para obtener un video completo. Es un proceso de dos pasos.
- Tres de cada cuatro imágenes generadas pueden verse "bastante malas" si el prompt no está alineado con la referencia; el problema suele ser el prompt.
- Runway ha confirmado que References se expandirá a flujos completos de text-to-video, pero aún no está disponible.

===== 6LhkvHfpjAY.md =====
# This Is How To Use Google Veo 3 Like A PRO: JSON Prompt (The Only Guide You Need)
**Fuente:** Sebastien Jefferies | https://youtu.be/6LhkvHfpjAY

## Qué enseña
El tutorial explica cómo crear anuncios publicitarios de alta calidad (estilo "producción de $100,000") usando Google Veo 3 mediante **JSON prompting**. Muestra el flujo completo: desde generar prompts estructurados en JSON con ChatGPT o Gemini, hasta renderizar en Google Flow (acceso a Veo) y escalar el resultado final.

## Técnicas accionables
- **Modelo usado:** Google Veo 3 (V3 fast para 720p a 20 créditos; V3 quality con beta audio para mayor resolución). No usa Veo 2 porque V2 no genera audio.
- **Plataforma de acceso:** https://flow.google.com (crear nuevo proyecto, pegar el JSON prompt, generar).
- **Estructura del JSON prompt (VERBATIM del ejemplo mostrado):**
  ```json
  {
    "prompt": "descripción de la escena",
    "camera": "movimiento de cámara",
    "lighting": "tipo de iluminación",
    "style": "estilo visual"
  }
  ```
  (El tutorial muestra que el JSON incluye claves como `prompt`, `camera`, `lighting`, `style`; se recomienda copiar ejemplos de la plantilla incluida en el recurso del video.)
- **Workflow para crear prompts:**
  1. Crear un **proyecto en ChatGPT** (o Gemini) con instrucciones personalizadas y un archivo de referencia con ejemplos JSON.
  2. Pedir: *"Create a JSON prompt for a [marca/producto] ad"*.
  3. Si se tiene una imagen del producto, subirla y decir: *"This is a product of my image. Can you go ahead and create a JSON prompt?"*
  4. Copiar el JSON generado y pegarlo en flow.google.
- **Configuración en flow.google:**
  - Ir a **Settings > Models** y seleccionar **V3 fast** (para ahorrar créditos) o **V3 quality (beta audio)**.
  - Ajustar **output** a 1 o 2 videos (2 cuesta 20 créditos en fast mode).
- **Upscaling:** Descargar el video en 720p (fast mode) y usar un upscaler externo para llevarlo a 1080p o 4K.
- **Recurso adicional:** El tutorial ofrece 10 prompts JSON listos para usar (enlace en descripción del video).
- **Créditos gratuitos:** Suscribirse a **Gemini AI Pro** (prueba gratuita de 1 mes) da 1,000 créditos en Flow, equivalentes a ~10 videos en alta calidad o ~100+ en modo lento 720p.

## Reglas para el erudito
- **Usa JSON prompting** cuando quieras resultados cinematográficos y consistentes con marcas/productos específicos; el prompting textual nativo da resultados inferiores.
- **Usa V3 fast** cuando priorices ahorrar créditos (20 créditos por video) y aceptes 720p; luego upscalea externamente.
- **Usa V3 quality con beta audio** cuando necesites máxima calidad y audio sincronizado (mayor costo de créditos).
- **Usa ChatGPT Projects o Gemini Gems** con instrucciones y archivo de ejemplos JSON para generar prompts en segundos; no los crees manualmente.
- **Ajusta output a 1** para maximizar créditos; usa 2 solo si tienes suficientes créditos (plan ultra).
- **Incluye imagen del producto** en el prompt si quieres que el JSON respete su apariencia exacta (image-to-video implícito).

## Errores comunes / limitaciones que menciona
- **No usar Veo 2** porque no genera audio; siempre usar V3 (fast o quality).
- **No confiar en el prompting textual simple** para anuncios profesionales; produce videos "buenos pero no cinematográficos".
- **El modo fast solo da 720p**; requiere upscaling externo para 1080p/4K.
- **Flow.google es una herramienta paga**; la prueba gratuita de Gemini AI Pro es limitada (1 mes, 1,000 créditos).
- **El JSON prompt debe copiarse exactamente** del generador; errores de sintaxis rompen la generación.

===== 7GWd4PV3hoA.md =====
# ALL Camera Movement Prompts for AI Filmmaking Explained
**Fuente:** Dan Kieft | https://youtu.be/7GWd4PV3hoA

## Qué enseña
Explica 30 movimientos de cámara distintos para usar en generación de video con IA, detallando cómo escribirlos en prompts, cuándo aplicarlos y qué intención narrativa tiene cada uno. Incluye desde tomas básicas (estáticas, paneo, zoom) hasta movimientos complejos (grúa, dron, cámara corporal) y efectos especiales (tilt shift, time lapse, infinite zoom).

## Técnicas accionables
- **Modelos usados:** Seedance y Kling (dentro de la plataforma Higgs Field). No se mencionan Veo, Runway, Sora, Wan ni Hailuo.
- **Estructura de prompt:** El creador ofrece un generador de prompts y una cheat sheet en el enlace de descripción; no proporciona prompts VERBATIM en el video, pero sugiere copiar los prompts desde el sitio web y personalizarlos.
- **Tomas estáticas:** Promptear "static shot" + plano (close-up, medium, wide, extreme close-up). La cámara no se mueve ni un milímetro.
- **Pan / Whip pan:** "pan left to right" o "whip pan". Trípode quieto, cámara gira horizontalmente. Útil para escanear una habitación o seguir acción.
- **Tilt up / Tilt down:** "tilt up" o "tilt down". Movimiento vertical como asentir con la cabeza. Para mostrar edificios altos o pies de personaje.
- **Slow zoom in / Slow zoom out:** "slow zoom in" o "slow zoom out". Construye tensión o distancia emocional. No confundir con dolly.
- **Fast zoom in:** "fast zoom in". Cambio rápido de lente para acercar al sujeto. Usar cuando un personaje hace un descubrimiento repentino.
- **Crash zoom in / Crash zoom out:** "crash zoom in" o "crash zoom out". Efecto agresivo, cómico o de shock repentino (ej: Kill Bill). Crash zoom out para mostrar entorno absurdo.
- **Dolly in / Dolly out:** "dolly in" o "dolly out". La cámara se mueve físicamente, el lente no cambia. Sensación realista de acercarse o alejarse. Dolly out para personajes derrotados o solitarios.
- **Truck shot:** "truck shot" o "truck left/right". Cámara se mueve lateralmente en línea recta, paralela al sujeto. Para acompañar a un personaje caminando.
- **Pedestal up / Pedestal down:** "pedestal up" o "pedestal down". Cámara sube o baja verticalmente sin inclinarse. Para presentar un personaje desde los pies a la cabeza.
- **Slider shot:** "slider shot". Deslizamiento corto y controlado de izquierda a derecha en espacios reducidos. Ej: detective inclinado sobre un escritorio.
- **Push past / Pass by shot:** "push past" o "pass by shot". La cámara avanza pasando un obstáculo (cables, objetos) para revelar algo oculto.
- **Arc shot:** "arc shot". Cámara se desplaza en arco alrededor del personaje, desde atrás hasta ver su rostro. Similar a orbit pero menos extremo.
- **Orbit shot:** "orbit shot" o "360 orbit". Giro completo de 360° alrededor del sujeto. Para escenas de acción o mundos fantásticos.
- **Tracking shot:** "tracking shot". Cámara se mueve físicamente siguiendo al personaje a la misma velocidad. Ej: chef caminando por cocina llena.
- **Follow shot / Over-the-shoulder:** "follow shot" o "over-the-shoulder tracking". Cámara detrás del hombro del personaje. Construye suspenso y curiosidad.
- **Reverse tracking:** "reverse tracking". Cámara retrocede al mismo ritmo que el personaje avanza, enfocada en sus expresiones faciales.
- **Side tracking:** "side tracking". Cámara paralela al sujeto mientras corre o camina. Para atletas o persecuciones laterales.
- **Low tracking shot:** "low tracking shot". Cámara apunta por debajo del cinturón, siguiendo pasos o botas. Para personajes misteriosos.
- **Vehicle tracking:** "vehicle tracking". Seguimiento de vehículos a alta velocidad (autos, motos, trenes). Para escenas de acción o viajes.
- **Chase shot:** "chase shot". Cámara agresiva y desordenada que intenta seguir acción impredecible. Ej: huyendo de una bestia.
- **Handheld shot:** "handheld shot" o "slight shakiness". Cámara tiembla ligeramente como si la sostuviera una persona. Para escenas crudas, realistas o tensas.
- **Body mounted / Snorricam:** "body mounted camera" o "snorricam". Cámara fija al torso del actor; el fondo se mueve violentamente mientras el rostro queda centrado. Para pánico, embriaguez o ataques de ansiedad.
- **Crane up / Crane down:** "crane up" o "crane down". Brazo mecánico levanta o baja la cámara verticalmente. Para finales de escena o revelar el entorno.
- **Drone shots:** "drone flyover", "drone push in", "drone pull back", "drone orbit". Movimientos aéreos suaves (excepto FPV). Para paisajes, entrar por ventanas o seguir objetos.
- **Helicopter shot:** "helicopter shot". Similar a dron pero más gradual y estable. Para tomas de apertura grandiosas o seguir autos.
- **First-person view (FPV):** "first-person view". Lente en los ojos del personaje. Para ver el mundo a través de sus ojos.
- **Tilt shift:** "tilt shift". Desenfoque en la parte superior e inferior del cuadro. Hace que escenas reales parezcan maquetas.
- **Infinite zoom:** "infinite zoom". Zoom continuo hacia adentro sin detenerse. Para revelaciones surrealistas o sueños.
- **Earth zoom out:** "earth zoom out". Cámara se eleva rápidamente desde un objeto/persona hasta la ciudad/país/mundo.
- **Time lapse:** "time lapse". Cámara fija grabando el mismo lugar por largo tiempo, luego acelerado. Para cambios climáticos, multitudes o luces.

## Reglas para el erudito
- Usa **static shot** cuando quieras que la audiencia se concentre en el sujeto sin distracciones.
- Usa **pan** para escanear una habitación o seguir a un personaje que se mueve horizontalmente.
- Usa **tilt up/down** para mostrar altura (edificios) o vulnerabilidad (personaje mirando hacia arriba a un gigante).
- Usa **slow zoom in** para construir tensión lentamente; **slow zoom out** para distanciar emocionalmente al espectador.
- Usa **fast zoom in** cuando un personaje hace un descubrimiento repentino o recibe una noticia inesperada.
- Usa **crash zoom in** para momentos de shock abrumador o énfasis cómico; **crash zoom out** para revelar un entorno absurdo.
- Usa **dolly in** en lugar de zoom cuando quieras sensación realista de acercamiento físico (ej: acercarse a una figura en un pasillo).
- Usa **dolly out** cuando un personaje está derrotado, aislado o solitario; es más íntimo que un zoom out.
- Usa **truck shot** para viajar paralelo a un personaje que camina.
- Usa **pedestal up/down** para presentar un personaje desde los pies a la cabeza sin inclinar la cámara.
- Usa **slider shot** en espacios reducidos para deslizamientos cortos y controlados.
- Usa **push past** para entrar a una habitación o revelar algo oculto detrás de obstáculos.
- Usa **arc shot** para pasar de ver la espalda de un personaje a ver su rostro.
- Usa **orbit shot** para escenas de acción intensas o mostrar mundos fantásticos en 360°.
- Usa **tracking shot** para mantener al personaje centrado mientras se mueve por un entorno concurrido.
- Usa **follow shot over-the-shoulder** para construir suspenso, haciendo que el espectador sienta que está detrás del personaje.
- Usa **reverse tracking** para enfocarte en las expresiones faciales mientras el personaje avanza.
- Usa **side tracking** para escenas de carrera o persecución lateral.
- Usa **low tracking shot** para personajes misteriosos, enfocándote en sus pasos o botas.
- Usa **vehicle tracking** para persecuciones de autos, motos o trenes.
- Usa **chase shot** para acción caótica e impredecible (ej: huyendo de un monstruo).
- Usa **handheld shot** cuando quieras que una escena ficticia se sienta más real, cruda o incómoda.
- Usa **body mounted / snorricam** para representar pánico, embriaguez o ataques de ansiedad.
- Usa **crane up** para finales de escena, alejándose del personaje y revelando el entorno.
- Usa **drone flyover** para paisajes; **drone push in** para acercarse a objetos; **drone orbit** para tomas aéreas envolventes.
- Usa **helicopter shot** para tomas de apertura grandiosas o seguir vehículos desde arriba.
- Usa **first-person view** para que el espectador vea directamente a través de los ojos del personaje.
- Usa **tilt shift** para que una escena real parezca una maqueta a escala.
- Usa **infinite zoom** para revelaciones surrealistas o secuencias de sueños.
- Usa **earth zoom out** para pasar de un momento humano pequeño a una vista global.
- Usa **time lapse** para mostrar cambios climáticos, movimiento de multitudes o cambios de luz a lo largo del día.

## Errores comunes / limitaciones que menciona
- **Confundir zoom con dolly:** El zoom cambia el lente sin mover la cámara; el dolly mueve la cámara físicamente. Son diferentes en sensación y propósito.
- **Movimientos demasiado pulidos:** Los zooms o slider shots muy suaves pueden sentirse robóticos. Los movimientos handheld (con ligero temblor) hacen que el video se sienta más real y humano.
- **No especificar la velocidad del zoom:** Es importante diferenciar entre slow zoom, fast zoom y crash zoom, ya que cada uno comunica una emoción distinta.
- **No se mencionan parámetros técnicos específicos** (f-stop, ISO, lente en mm, resolución, FPS) ni negative prompts en el video.
- **No se aborda consistencia de personaje** ni técnicas de image-to-video, first/last frame.
- **Limitación implícita:** Los movimientos complejos (grúa, dron, orbit) tradicionalmente requieren equipos costosos y grandes crews; con IA se simplifican, pero el creador no detalla cómo mantener coherencia visual entre tomas.

===== 7tAwOtVTNlE.md =====
# The ULTIMATE Sora 2 Prompting Guide (Complete Control + Amazing Results)
**Fuente:** Noble Goose | https://youtu.be/7tAwOtVTNlE

## Qué enseña
Enseña a estructurar prompts para Sora 2 combinando intención de escena, composición de plano y estilo lumínico/tonal. Cubre desde prompts simples de texto a video hasta prompts avanzados con múltiples cortes, diálogos, efectos de sonido y uso de image-to-video con control total sobre cada segundo de la generación.

## Técnicas accionables
- **Fórmula universal del prompt en Sora 2:** `Scene intent + Shot composition + Lighting and tone`. Siempre en ese orden.
- **Scene intent (1-3 oraciones):** Describe el tema/mundo/estilo visual. Ejemplo textual: *"High quality 2D anime film style cinematic realism. A samurai woman with long white hair walks slowly along a coastal path beside the ocean."*
- **Shot composition:** Define cortes con timestamps o etiquetas de corte. Estructura VERBATIM para múltiples cortes:
  ```
  Cut 1: [descripción de acción y cámara, duración implícita]
  Cut 2: [transición, nueva acción, sonido/diálogo]
  Cut 3: [close-up, diálogo textual entre comillas]
  ```
  Ejemplo exacto del tutorial: *"In cut one, we want to watch her walk slowly down the fence. In cut two, we want to see the camera tilt downward towards the rocks below. And then in cut three, we want to see her eyes reflecting and we want her to say, 'It's been so long.'"*
- **Diálogos y efectos de sonido:** El diálogo específico va dentro del corte correspondiente (ej: *she says "It's been so long"* en cut 3). Sonidos tonales/fondo van en la sección de lighting and tone (ej: *sound of distant waves and wind, ship horn*).
- **Lighting and tone (párrafo final):** Define look global. Ejemplo textual: *"Golden late afternoon sunset with soft shadows, dynamic ocean reflections, sound of distant waves and wind completes the tranquil environment."*
- **Image-to-video:** Usa imágenes externas (Midjourney, etc.) como primer frame. Ajusta el lenguaje: en lugar de "the woman walks", usa *"the woman gently shifts her weight, then begins walking a few slow steps towards the fence down the path"* para animación natural desde el frame inicial.
- **Control de duración:** Sora 2 permite 10 segundos (plan gratuito) o 12 segundos (plan pro). Distribuye los cortes para ocupar todo el tiempo.
- **Custom GPT del creador:** Usa un GPT entrenado en mejores prácticas de Sora 2 (enlace en descripción del video) para generar prompts automáticamente con la estructura correcta.

## Reglas para el erudito
- Usa la fórmula `scene intent + shot composition + lighting and tone` en TODOS los prompts de Sora 2, sin excepción.
- Cuando uses image-to-video, describe la transición desde el frame inicial con verbos de movimiento gradual ("gently shifts", "begins walking") en lugar de acciones directas.
- Coloca el diálogo textual ENTRE COMILLAS dentro del corte específico donde debe ocurrir; los sonidos ambientales van en lighting and tone.
- Separa los cortes con etiquetas "Cut 1:", "Cut 2:", etc., y describe cada uno con acción + movimiento de cámara + sonido si aplica.
- Termina SIEMPRE con un párrafo de lighting and tone que unifique atmósfera, iluminación y emociones.

## Errores comunes / limitaciones que menciona
- No especificar cortes ni timestamps en prompts complejos: Sora necesita dirección explícita para usar los 10-12 segundos completos.
- Mezclar diálogos específicos con sonidos ambientales en la misma sección: el diálogo va en el corte, los sonidos de fondo en lighting and tone.
- Usar lenguaje genérico en image-to-video: si no describes la transición desde el frame inicial, el movimiento puede no ser natural.
- Escribir prompts largos manualmente sin apoyo de GPT: el creador recomienda su custom GPT para ahorrar tiempo, ya que "estos prompts toman mucho tiempo para escribir".

===== 9HY76YLO-M8.md =====
# 【手把手AI教程】用Seedance 2.0 做AI短劇漫劇 + AI音樂MV對嘴 +AI 產品廣告，一條影片教會你全部玩法！AI音樂 AI製作產品廣告 AI短劇 AI漫劇 AI做視頻
**Fuente:** Joy | https://youtu.be/9HY76YLO-M8

## Qué enseña
Este tutorial enseña a usar Seedance 2.0 (integrado en la plataforma Higgsfield) para generar cortometrajes de acción real, animación (漫劇), anuncios de productos y vídeos musicales con sincronización labial. Cubre el flujo completo: creación de storyboards con un agente de imágenes multigrilla, conversión de esas imágenes a vídeo, y técnicas para mantener la consistencia del personaje y el movimiento de cámara.

## Técnicas accionables
- **Modelo principal:** Seedance 2.0 (accedido desde la pestaña “video” > “top” en Higgsfield). También se mencionan Hailuo AI Music, Suno y Gemini para generar audio.
- **Estructura de prompt para imagen a vídeo (cortometraje/animación):**
    1. Usar el **agente de imágenes multigrilla** (multi-grid image generator) para crear un storyboard de 9, 16 o 25 paneles. Indicar el estilo (ej. “古风仙侠剧” / drama de espadas y hadas antiguo).
    2. Extraer una imagen individual con el comando: `提取+[número]` (ej. `提取10` para obtener la imagen del panel 10).
    3. Solicitar el prompt de vídeo al agente: `影片提示词` o `视频提示词`, especificando duración (ej. “15秒”). El agente devuelve prompts en chino e inglés.
    4. En Higgsfield: subir la imagen multigrilla o la imagen individual como referencia (icono de imagen). Pegar el prompt de vídeo.
    5. **Añadir obligatoriamente:** `全程无字幕、无水印` (sin subtítulos ni marcas de agua en todo el metraje) para evitar que la IA genere texto no deseado.
- **Parámetros de vídeo en Higgsfield:**
    - Duración: deslizador manual (seleccionar 8s, 10s, 15s o personalizado).
    - Relación de aspecto: seleccionable.
    - Resolución: 480p, 720p, 1080p.
- **Técnica para anuncio de producto:**
    - Subir la imagen del producto al agente multigrilla. Solicitar 9, 16 o 25 paneles. El agente genera una secuencia que muestra el producto en uso desde múltiples ángulos.
    - Luego pedir el prompt de vídeo (ej. “15秒”) y seguir el mismo flujo en Higgsfield.
- **Técnica para sincronización labial (music MV):**
    - **Requisito de audio:** Seedance 2.0 solo acepta clips de hasta **13 segundos**. Cortar el audio con un editor de vídeo antes de subirlo.
    - Subir el audio (icono de audio). Ajustar la selección verde con el deslizador para precisar la duración exacta.
    - Subir una imagen del personaje (opcional, pero recomendado para fijar la apariencia).
    - **Prompt obligatorio:** incluir la letra de la canción completa en el prompt (ej. “谁为我添一件梦的衣裳”). Si no se incluye, la IA puede añadir o cambiar palabras.
    - **Añadir:** `全程无字幕、无水印` y `唱歌时` (mientras canta).
    - Si no se necesita que el personaje cante (se añadirá la música en postproducción), **no incluir** la letra ni subir audio; solo describir la escena.
- **Truco de consistencia de personaje:** Usar el agente multigrilla para generar todas las imágenes del storyboard con el mismo personaje. Luego subir una de esas imágenes como referencia en Higgsfield.
- **Truco para escenas de transición suave (ej. “颁奖礼时间静止” / ceremonia de premios con tiempo congelado):** Usar el prompt exacto proporcionado en el vídeo (no se transcribe literalmente, pero se indica que los puntos de referencia mundiales son intercambiables). Ejemplo de prompt para versión mitológica antigua: `上古神话版` + prompt específico.
- **Si el vídeo no se genera por “protección de contenido”:** Intentar la generación varias veces (hasta que funcione).

## Reglas para el erudito
- **Usa el agente multigrilla** cuando necesites un storyboard coherente con personajes consistentes para cortometrajes, animaciones o anuncios.
- **Usa `提取+[número]`** para extraer una imagen individual de un panel específico del storyboard.
- **Usa `全程无字幕、无水印`** en todos los prompts de vídeo para evitar que la IA añada texto no deseado.
- **Usa la letra completa de la canción en el prompt** cuando hagas sincronización labial; de lo contrario, la IA modificará la letra.
- **Usa clips de audio de máximo 13 segundos** para la función de sincronización labial en Seedance 2.0.
- **Usa la opción de “no volver a subir”** en Higgsfield: después de que la imagen pase la verificación, haz clic en ella para que aparezca directamente en la zona de素材 (material de referencia).
- **Si falla la generación por protección de contenido**, repite la generación varias veces hasta que funcione.

## Errores comunes / limitaciones que menciona
- **Límite de audio:** Seedance 2.0 solo acepta clips de audio de hasta 13 segundos para sincronización labial. Es necesario recortar el audio previamente.
- **Subtítulos no deseados:** Incluso añadiendo `全程无字幕、无水印`, en raras ocasiones la IA sigue generando subtítulos. Se recomienda añadirlo siempre.
- **Modificación de letra:** Si no se incluye la letra exacta en el prompt, la IA puede añadir o cambiar palabras (ej. añadió “谁为我添一件梦的衣裳”).
- **Protección de contenido:** En Higgsfield, a veces la generación falla por “protección de contenido”. La solución es intentar generar varias veces.
- **Tiempo de generación:** Seedance 2.0 es más rápido que Jimeng (即梦), pero aún puede tardar varios minutos en generar vídeos complejos.

===== FqYRkl12ON8.md =====
# Runway AI - Tutorial for Beginners in 17 MINUTES ! [ FULL GUIDE ]
**Fuente:** Skills Factory | https://youtu.be/FqYRkl12ON8

## Qué enseña
Tutorial completo para principiantes sobre Runway AI, cubriendo generación de video e imagen con los modelos Gen-4 y Gen-3, edición con Aleph, control de keyframes, Act One/Act Two para transferencia de gestos, lip sync, y la herramienta Sketch para modificar imágenes de referencia.

## Técnicas accionables
- **Modelos disponibles:** Gen-4 Turbo (mejor para live action, VFX, clips de movimiento, animar imágenes simples), Gen-4 (modelo más potente, mejor consistencia de personajes, solo plan pago), Gen-3 Alpha Turbo (más barato, permite keyframes y Camera Control), Gen-3 Alpha (mayor precisión, permite texto sin referencia, solo plan pago). Gen-1 y Gen-2 ya no están disponibles.
- **Estructura de prompt para video:** "Describe main subject, how it moves, its actions, any mood, and camera movement. Then describe scene or background. Then define style (cinematic, realistic, cartoon, 3D animation)." Ejemplo usado: "A blonde horse running with powerful movement. Camera tracks the horse while it runs. The desert remains static, only sand dust rises behind. Cinematic."
- **Parámetros de video:** Resolución fija 720p (24 fps). Duración: 5s o 10s según modelo. Gen-4 Turbo y Gen-4 permiten hasta 5s. Gen-3 Alpha Turbo permite hasta 10s. Upscale a 4K por 10 créditos. Aspect ratio configurable (Portrait, Landscape, etc.).
- **Image-to-video:** En Gen-4 Turbo y Gen-4, subir imagen como referencia obligatoria (Gen-4 Turbo) u opcional (Gen-4). Usar "Input for Video" para seleccionar imagen. Recortar si es necesario.
- **First/Last frame (keyframes):** En Gen-3 Alpha Turbo, definir primer keyframe (imagen), luego agregar hasta dos más (central y final). "Define one image as the first keyframe and then add two more if you want." Las imágenes deben tener contenido similar para transiciones suaves.
- **Referencias con @ (image generation):** Subir hasta 3 imágenes de referencia, nombrarlas (ej: "Lion", "JaguarPattern", "Vulcan"), y en el prompt usar "@Nombre" para referenciarlas: "Selecting the Lion as the main subject. We can describe its skin by adding @JaguarPattern as skin and define the environment by using the Vulcan reference."
- **Camera Control (Gen-3 Alpha Turbo):** Activar "Camera Control" para añadir efectos como panning o tilting. "These camera settings apply to the entire video, not just a single keyframe."
- **Act Two (transferencia de gestos):** En sesión de video, activar "Act Two". Subir video de referencia (grabación propia o archivo) para capturar gestos de cara, manos y cuerpo completo. Subir personaje (imagen o video). Configurar aspect ratio, expressiveness, y si transferir gestos. El video de salida dura lo mismo que el video de referencia.
- **Lip Sync:** En "Generative Audio" > "Lip Sync Video". Importar video del personaje (funciona principalmente con rostros humanos). Subir audio o escribir texto. Elegir voz con el botón de micrófono. Generar.
- **Sketch tool:** Subir imagen de referencia, nombrarla, hacer clic en botón de pincel. Dibujar formas simples o pintar directamente. Usar CTRL/CMD+Z para deshacer. "Export Sketch" para usar la referencia con un prompt. También se puede dibujar una flecha con color llamativo (ej: rosa) y añadir etiqueta para ediciones específicas (ej: "pull down a branch").
- **Expand feature:** Cambiar aspect ratio de cualquier video. Seleccionar video, "Actions" > "Expand Video". Ejemplo: convertir de portrait a landscape.
- **Extend button (Gen-3 Alpha Turbo):** Añadir 8 segundos más ingresando un nuevo prompt.
- **Imagen a 4K:** Usar "Upscale Image" desde la lista de herramientas para subir resolución hasta HD, 2K o 4K.
- **Estilos de imagen (sin referencia):** Vivid, High Contrast, etc. Resolución: 720p o 1080p. Número de variaciones configurable.

## Reglas para el erudito
- Usa Gen-4 Turbo cuando necesites animar imágenes simples o clips de movimiento sin mucha complejidad.
- Usa Gen-4 cuando requieras mejor consistencia de personajes y fuerte alineación con imágenes de referencia (solo plan pago).
- Usa Gen-3 Alpha Turbo para ahorrar créditos y cuando necesites keyframes o Camera Control.
- Usa Gen-3 Alpha cuando quieras generar video solo con texto sin imagen de referencia (mayor precisión, plan pago).
- En prompts, sé directo, claro, sin bucles ni frases negativas; proporciona detalles específicos y directos.
- Para consistencia de personaje en imágenes, usa el sistema de @referencias con nombres exactos.
- Cuando uses keyframes, asegúrate de que tengan contenido similar para evitar saltos bruscos al último keyframe.
- En Act Two, el video de salida dura exactamente lo mismo que el video de referencia subido.
- Para editar video existente con Aleph, usa instrucciones simples como Add, Remove, Change, Replace.
- Los videos generados siempre serán 720p incluso si usas imagen de referencia en 4K.

## Errores comunes / limitaciones que menciona
- Gen-3 es un modelo más simple; prompts complejos pueden no funcionar como se espera (ejemplo: "This complex prompt didn't work as expected because Gen-3 is a simpler model, so we should switch to Gen-4").
- La generación puede saltar al último keyframe demasiado rápido si este se ve muy diferente de los otros keyframes.
- Runway no ofrece herramientas para aumentar la tasa de frames de video; se mantiene fija en 24 fps.
- Act One (transferencia solo facial) se depreciará en el futuro; usar Act Two para gestos completos.
- Lip Sync funciona principalmente en rostros humanos, no en personajes no humanos.
- El plan gratuito comienza con 125 créditos; cada generación consume créditos según modelo y tipo (imagen/video).

===== H8szjl6KwXs.md =====
# Ultimate SORA 2 Guide 2026: How To Use Sora 2 For Beginners
**Fuente:** AI Master | https://youtu.be/H8szjl6KwXs

## Qué enseña
Guía práctica para dominar Sora 2 en generación de video con IA, cubriendo desde la interfaz básica hasta técnicas avanzadas de prompting, consistencia de personajes y uso de imágenes de referencia. Incluye estrategias para crear contenido viral, publicidad, tráilers de juegos y prototipos para clientes, además de cómo monetizar las creaciones en la plataforma AI Master.

## Técnicas accionables
- **5 fórmulas de prompt VERBATIM:**
  - **Fórmula 1 (escena + cámara + estilo):** `[ubicación/escena] + [movimiento de cámara] + [estilo visual o estado de ánimo]`. Ejemplo: *"Modern office space, smooth dolly shot moving forward, cinematic lighting, professional aesthetic"*
  - **Fórmula 2 (producto + contexto + ambiente):** `[nombre del producto] + [entorno/superficie] + [comportamiento de cámara] + [estética/ambiente]`. Ejemplo: *"Luxury watch on marble desk, slow rotating close-up, soft shadows, elegant and minimal"*
  - **Fórmula 3 (narrativa con cortes):** Usar la palabra "cut to" para múltiples tomas. Ejemplo: *"Real estate agent walks through a luxury home. Cut to kitchen closeup. Cut to living room wide shot. Bright natural light. Modern interior design"*
  - **Fórmula 4 (perspectiva + acción + entorno):** `[ángulo de cámara/POV] + [sujeto y acción] + [entorno y ambiente]`. Ejemplo: *"Low angle shot of sneakers walking on wet city street at night, neon reflection, cinematic and moody"*
  - **Fórmula 5 (procesos y transformaciones):** `[proceso/transformación] + [ángulo de cámara] + [ritmo y ambiente]`. Ejemplo: *"Paint being mixed on canvas, overhead shot, smooth brush strokes, artistic and satisfying"*
- **Parámetros de generación:** Aspect ratio (9:16 vertical para TikTok/Reels, 16:9 horizontal para YouTube/ads), duración (10 o 15 segundos), referencia de imagen (drag and drop), campo de creación de personajes.
- **Consistencia de personaje:** Usar la "character library" para crear un personaje una vez y reutilizarlo en múltiples videos. Seleccionar desde la galería o crear uno propio; el personaje mantiene diseño, estilo y apariencia idénticos en diferentes escenas.
- **Image-to-video:** Subir foto de producto, ubicación o escena específica como referencia; Sora 2 basa el video en esa imagen. Ejemplo: subir foto de un auto rojo deportivo y promptear *"Sports car driving through mountain highway at sunset. Cinematic tracking shot. Dramatic lighting"* — el resultado coincide con el modelo exacto, color y detalles.
- **First/last frame:** No se menciona explícitamente como función separada; en su lugar, se usan cortes narrativos con "cut to" para secuencias multi-toma.
- **Negative prompts:** No se mencionan en el tutorial.
- **Truco de consistencia de marca:** Subir imágenes de referencia del producto real para que Sora base el video en esas referencias, asegurando branding consistente en trabajos para clientes.
- **Uso del botón "Enhance prompt":** Escribir un prompt básico (ej. *"video of a sunset over the ocean"*), presionar "enhance", y AI Master lo reescribe automáticamente en un prompt estructurado y optimizado.
- **Workflow de batching:** Escribir 5-10 prompts por adelantado, encolarlos, dejar que se generen mientras se trabaja en otra cosa, luego revisar y descargar los que funcionan.
- **Remix e iteraciones:** Cambiar un elemento del prompt (iluminación, ángulo de cámara, ambiente) y regenerar en lugar de empezar desde cero. Ejemplo: original *"cozy bookstore interior, camera slowly moving between shelves, afternoon light through windows"* → remix *"cozy bookstore interior, camera slowly moving between shelves, warm evening light, amber tones, more intimate atmosphere"*.
- **Combinar con edición:** Generar múltiples clips, llevarlos a Premiere, Da Vinci o CapCut, añadir transiciones, superposiciones de texto, música y voz en off.

## Reglas para el erudito
- Usa la Fórmula 1 (escena + cámara + estilo) cuando necesites metraje B-roll cinematográfico o contenido atmosférico.
- Usa la Fórmula 2 (producto + contexto + ambiente) para demostraciones de productos e-commerce o videos publicitarios de objetos.
- Usa la Fórmula 3 (narrativa con "cut to") cuando necesites múltiples tomas o ángulos en un solo video, como recorridos de propiedades.
- Usa la Fórmula 4 (perspectiva + acción + entorno) para contenido social con POV creativo o ángulos únicos que atrapen la atención en los primeros 2 segundos.
- Usa la Fórmula 5 (procesos y transformaciones) para videos de procesos (cocina, arte, manualidades) que funcionan bien en redes sociales por su efecto "oddly satisfying".
- Mantén los prompts enfocados: menos de 50 palabras, una idea clara por generación.
- Siempre sube imágenes de referencia cuando trabajes con sujetos específicos (productos, ubicaciones, personajes) para obtener resultados precisos y consistentes.
- Elige la relación de aspecto correcta antes de generar: 9:16 para TikTok/Reels, 16:9 para YouTube/ads.
- Para física compleja (líquidos, telas, gravedad), mantén las interacciones simples; evita salpicaduras extremas o simulaciones de física avanzada.
- Divide ideas complejas en múltiples generaciones separadas y luego edítalas juntas en lugar de meter todo en un solo prompt.
- Guarda tus mejores prompts en una biblioteca personal para reutilizarlos y adaptarlos a proyectos futuros.
- Usa el botón "Enhance prompt" cuando no estés seguro de cómo estructurar un prompt; escribe un borrador y deja que la herramienta lo optimice.

## Errores comunes / limitaciones que menciona
- **Prompts demasiado vagos:** Escribir "a person walking" da resultados aleatorios. La solución es añadir ángulo de cámara, iluminación, movimiento, entorno y ambiente específicos.
- **Esperar física perfecta:** Sora 2 lucha con física compleja como líquidos, simulaciones de tela o acciones que desafían la gravedad. Pueden aparecer artefactos extraños o movimiento antinatural. Mantén las interacciones simples.
- **Sobrecargar el prompt:** Prompts de 150 palabras con 10 instrucciones diferentes hacen que Sora ignore la mitad. Mantén los prompts enfocados y bajo 50 palabras.
- **Ignorar la relación de aspecto:** Generar todo en una relación de aspecto y luego recortar pierde calidad y encuadre. Selecciona la relación correcta antes de generar.
- **No usar imágenes de referencia:** Sin referencia visual, Sora genera interpretaciones genéricas. Para trabajos de clientes o contenido de marca, las imágenes de referencia son cruciales para precisión y consistencia.