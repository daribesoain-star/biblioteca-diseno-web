# DOCTRINA ACCIONABLE: Generación de Video con IA

## 1) Selección de Modelo

- **Google Veo 3 / 3.1:** Usar cuando necesites diálogos de personajes, alto seguimiento de prompts, y escenas con audio nativo. Ideal para vlogs, entrevistas callejeras, y narrativa con diálogo. (Tao Prompts — fvV95J0LiOE.md; Tao Prompts — utnLVMzxX4U.md)
- **Google Veo 2:** Usar para frame interpolation (first/last frame) y funciones legacy como "ingredients to video" y "add to scene". No genera audio. (Tao Prompts — fvV95J0LiOE.md)
- **Kling 2.5 / 2.6 / 3.0:** Usar cuando priorices realismo en expresiones faciales, control de luz y sombra natural, y estabilidad en escenas de producto. Kling 2.6 recomendado para videos con start/end frame y duración de 10 segundos. (Youri van Hofwegen — h5kjDJrHw_g.md; 小V說 — wPP1RBLQhlU.md; Tao Prompts — utnLVMzxX4U.md)
- **Seedance 2.0:** Usar cuando necesites narrativa cinematográfica, movimiento de cámara rico y planos variados (medio, panorámico, close-up, cámara lenta). Activar modo "full model" para mayor detalle. (小V說 — wPP1RBLQhlU.md)
- **Runway Gen 3 / 4.5:** Usar Gen 3 para Camera Control con control visual interactivo (pan, tilt, roll, zoom). Usar Gen 4.5 Motion Sketch para anotaciones dibujadas sobre imagen. (Wade McMaster — jJHDJLzuwa8.md; AI. Now Y'Know — hZHy0f7Uy-s.md)
- **Wan 2.5 / Wan Animate:** Usar para video-to-video con máximo control sobre movimientos y diálogo. Requiere imagen del personaje + video de acción real de hasta 15 segundos. (Tao Prompts — utnLVMzxX4U.md)
- **Hailuo:** Alternativa para generación de video con start/end frame. (Tao Prompts — utnLVMzxX4U.md)
- **Sora 2:** Alternativa realista pero más censurado y limitado que Veo 3.1. (Tao Prompts — utnLVMzxX4U.md)
- **Dreamina Omnihuman 1.5:** Usar para lip sync con movimiento corporal (caminar y hablar simultáneamente). (Tao Prompts — utnLVMzxX4U.md)
- **Hunyuan Avatar 4:** Usar para lip sync estático con expresiones faciales realistas, postura y ademanes. (Tao Prompts — utnLVMzxX4U.md)
- **Omni Flash (Google Flow):** Usar para generación de video desde imagen o texto en Google Flow. No soporta extensión directa de video. (AI Edge Mastery — oCcU1C8WilI.md)
- **NanoBanana Pro:** Usar para máxima calidad y realismo en imágenes y videos dentro de OpenArt. (Youri van Hofwegen — h5kjDJrHw_g.md)
- **LitVideo:** Plataforma multi-modelo que integra Seedance 2.0 y Kling 3.0 para generación simultánea. (小V說 — wPP1RBLQhlU.md)

## 2) Estructura del Prompt

- **Estructura de 8 componentes para Veo 3:**
  1. Formato inicial (ej: "street interview style", "selfie video", "realistic cinematic scene")
  2. Sujeto/personaje
  3. Acción/verbo
  4. Entorno/fondo
  5. Estilo visual
  6. Perspectiva y movimiento de cámara
  7. Iluminación y atmósfera
  8. Sonido y música (siempre al final del prompt)
  (Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)

- **Prompt VERBATIM para vlog selfie:**
  `self camera angle shot from an extended arm. A Yeti with wife holding up a fish. He's in an icy landscape. Dialogue: "Welcome back to Yeti Adventures. Today, we're learning how to go ice fishing."`
  (Tao Prompts — fvV95J0LiOE.md)

- **Prompt VERBATIM para entrevista callejera:**
  `man on the street interview. Inside Gotham City, a young female reporter asked a young man what he thinks about Batman. The young man is unhappy with how many problems Batman causes. Dialogue reporter: "What are your thoughts on Batman?" Dialogue man: "Honestly, he causes more problems than he solves."`
  (Tao Prompts — fvV95J0LiOE.md)

- **Prompt VERBATIM para diálogo entre personajes:**
  `For the Stormtrooper reporter, tell him to say: "Are the rumors about the war in the Outer Rim true?" And for the male Sith, tell him to say: "The Outer Rim is ripe for conquest. The Empire always expands."`
  (Tao Prompts — fvV95J0LiOE.md)

- **Diálogo sin comillas en Veo 3:** Usar `dialogue:` seguido de dos puntos, sin comillas ni apóstrofes. Ejemplo: `dialogue: Hi, how are you?` (Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)

- **Diálogo entre dos personajes:** Especificar quién habla primero. Ejemplo: `After explaining the scene, the reporter speaks first. [diálogo del reportero]. Then the surgeon responds confidently while continuing with his work. [diálogo del cirujano].` (Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)

- **Poner estilo o género al INICIO del prompt** para que Veo 3 lo pondere más. Ejemplo: `2D anime` + descripción. (Tao Prompts — fvV95J0LiOE.md)

- **Prompt VERBATIM para Runway Gen 3 Camera Control:**
  `a woman surrounded by burning temples looking around at the fire`
  `a dog in a post-apocalyptic city panning away to look at the buildings`
  `tilt up to the sky to see jellyfish flying upward woods`
  (Wade McMaster — jJHDJLzuwa8.md)

- **Prompt VERBATIM para Seedance 2.0 vs Kling 3.0:**
  `70's retro-style couple dance clips`
  (小V說 — wPP1RBLQhlU.md)

- **Timestamped prompting (Google AI Studio):** Desglosar video de 8 segundos en segmentos. Ejemplo: `primeros 3 segundos: estudia la tableta brillante y aparece un holograma de nave espacial; siguientes 3 segundos: zoom a primer plano de ceño fruncido, expresión de preocupación; últimos 2 segundos: un retumbo bajo sacude el hábitat, las luces parpadean, la astronauta se estabiliza`. (Tao Prompts — utnLVMzxX4U.md)

- **Longitud del prompt:** Usar pre-built options + inglés simple para motion. Prompts demasiado largos confunden al modelo. (Youri van Hofwegen — gY9KTfMGauU.md)

## 3) Control de Cámara y Movimiento

- **Dolly in (lento):** `slow dolly in` — cámara montada en plataforma con ruedas que avanza hacia el sujeto
- **Dolly out (lento):** `slow dolly out` — cámara se aleja del sujeto lentamente
- **Fast dolly in (rush):** `fast dolly in` — cámara avanza rápidamente hacia el rostro del sujeto
- **Vertigo effect (zolly):** `vertigo effect` o `zolly` — cámara retrocede físicamente mientras el lente hace zoom in simultáneamente
- **Tilt up:** `tilt up` — cámara se inclina hacia arriba, desde piernas hasta ojos
- **Tilt down:** `tilt down` — cámara se inclina hacia abajo, desde cabeza hasta pies
- **Pan:** `pan from the female character and show an abandoned monastery far in the distance`
- **Truck left:** `camera truck left` — cámara se mueve lateralmente hacia la izquierda sobre un riel
- **Truck right:** `camera truck right` — cámara se mueve lateralmente hacia la derecha sobre un riel
- **Orbit 180:** `orbit 180, half circle around subject` — cámara rodea al sujeto en semicírculo
- **Fast 360 orbit (spin):** `fast 360 orbit spin` — giro completo rápido alrededor del sujeto (duración recomendada: 5 segundos)
- **Slow cinematic arc:** `slow cinematic arc, camera moves in a gentle wide curve around subject, revealing side profile slowly`
- **Crane up / high angle reveal:** `crane up, high angle reveal` — cámara asciende como en una grúa
- **Crane down / landing:** `crane down, landing` — cámara desciende lentamente como aterrizando
- **Pedestal down:** `pedestal down` — cámara baja verticalmente desde el nivel de los ojos al de la cintura
- **Pedestal up:** `pedestal up, camera body rises vertically straight up from waist level to eye level`
- **Push-in:** `zoom in on her face during the battle`
- **Smooth optical zoom in:** `smooth optical zoom in`
- **Smooth optical zoom out:** `smooth optical zoom out`
- **Snap zoom / crash zoom:** `snap zoom, crash zoom, sudden extremely rapid zoom directly into subject's eyes`
- **Whip pan:** `whip pan, camera whips violently to the left with extreme directional motion blur`
- **Dutch angle / roll:** `dutch angle, camera permanently tilted sideways on its Z axis`
- **Leading shot / backward tracking:** `leading shot, subject walks forward toward camera at steady pace, camera moves backward at exact same speed`
- **Following shot / forward tracking:** `following shot, subject walks away from camera, camera follows behind at exact same speed`
- **Side tracking / parallel:** `side tracking, subject walks from left to right, camera tracks alongside at same speed`
- **POV walk:** `POV walk, first person walk, camera moves forward with slight bobbing and swaying motion of a person walking approaching subject`
- **FPV drone dive:** `FPV drone, aggressive drone dive`
- **Drone flyover:** `drone flyover, high altitude flyover over subjects to sea and mountains`
- **Top down / God's eye view:** `top down drone shot, camera positioned directly overhead pointing straight down, slowly twisting`
- **Handheld documentary style:** `handheld documentary style camera movement`
- **Reveal from behind / wipe:** `camera starts blocked by a wall, then slides laterally to reveal subject`
- **Fly-through aperture:** `camera goes through the window to the subject's face`
- **Reveal from blur fade in:** `video starts completely out of focus bokeh, lens slowly pulls focus until subject is razor sharp`
- **Rack focus:** `shot begins with subject in sharp focus and background blurry, halfway through focus shifts, subject becomes blurry and background becomes sharp`
- **Over-the-shoulder (OTS):** `over the shoulder shot` — cámara montada detrás del hombro de un sujeto
- **Fish-eye / peephole lens:** `extreme wide angle distortion, fish eye lens, peephole view`
- **Extreme macro zoom:** `extreme macro zoom, face body to micro`
- **Cosmic hyper zoom:** `cosmic hyper zoom, space to street`
- **Lentes y dispositivos:** `fisheye lens`, `macro lens`, `infrared camera`
- **Primera persona (POV):** `first-person POV shot of a character running through a trench in World War I`
- **Combinación de movimientos:** `close-up shot on the character's face, then the camera pulls back to reveal her riding on a horse`, `slow crane shot behind the female character walking up the steps of an ancient castle. Then the camera flies above and slowly tilts down to reveal the entire castle.`
- **Static mode (Runway):** Activar para mantener la cámara completamente fija. (Wade McMaster — jJHDJLzuwa8.md)
- **Parámetros de cámara en Runway Gen 3:** Horizontal pan, Tilt, Vertical (desplazamiento vertical), Roll, Zoom in/out. (Wade McMaster — jJHDJLzuwa8.md)

(Fuente principal: Dom the AI Tutor — zQI_pWw9qWo.md; complementos: Tao Prompts — fvV95J0LiOE.md; Wade McMaster — jJHDJLzuwa8.md)

## 4) Consistencia de Personaje/Identidad

- **Descripción extremadamente detallada del personaje:** Usar misma descripción exacta en cada nuevo video, cambiando solo la escena. Incluir piel, cabello, ropa, accesorios, armas. Ejemplo: `A female warrior with pale skin and long white braided hair braided into two thick plates that hang over her shoulders. She wears a dark red cloak with loose white trousers and strap leather gear around her waist. She carries a short straight sword.` (Tao Prompts — fvV95J0LiOE.md)

- **Crear personaje en OpenArt:** Ir a "Character" → "Create Character" → "Start with a description". Usar modelo NanoBanana Pro y estilo "photorealistic". Generar, elegir mejor variante, hacer clic en "Build my character". Revisar las 4 vistas generadas (frontal, primer plano, cuerpo completo, espalda). (Youri van Hofwegen — h5kjDJrHw_g.md)

- **Crear personaje desde imágenes en OpenArt:** Subir entre 1 y 4 fotos (una obligatoria, 3 adicionales para diferentes ángulos: izquierda, derecha, espalda). (Youri van Hofwegen — h5kjDJrHw_g.md)

- **Etiquetar personajes con "@" en el prompt:** Ejemplo: `@Robin and @Leila at the ski center standing on the top of the ski mountain at image number one`. (Youri van Hofwegen — h5kjDJrHw_g.md)

- **Usar "image number X" en el prompt** para referenciar imágenes de outfit, pose o fondo subidas como referencia. (Youri van Hofwegen — h5kjDJrHw_g.md)

- **Crear personaje en Google Flow:** En sección "Character", usar plantilla o prompt propio. Subir imagen externa, asignar nombre (evitar nombres comunes o de famosos). Configurar voz personalizada. Rellenar "Character info" con personalidad, forma de hablar y reacciones. (AI Edge Mastery — oCcU1C8WilI.md)

- **Usar "Frames" en Google Flow** cuando necesites que el video comience desde una imagen exacta. Usar "Ingredients" cuando solo necesites consistencia sin fijar el primer frame. (AI Edge Mastery — oCcU1C8WilI.md)

- **Green screen hack (de Martin Nebolon):** Usar imagen del personaje con fondo verde. En "frames to video", subir la imagen. Prompt: `instantly jump/cut to on frame one` + descripción de la escena. Limitación: calidad inferior, contraste alto, no genera diálogo. (Tao Prompts — fvV95J0LiOE.md)

- **Consistencia con Flux Context AI:** Generar imágenes del personaje consistente usando Flux Context AI image generator (modelo "flux context max"). Subir imagen original al generador y pedir: `Create an image of this female character in a medieval tavern. Her appearance should stay the same. Cinematic film shot on a Sony camera.` Luego animar en Veo 3. (Tao Prompts — fvV95J0LiOE.md)

- **Usar misma foto de personaje como primer frame** en ambos modelos al comparar. (小V說 — wPP1RBLQhlU.md)

- **Seed (fijo):** No se menciona explícitamente en los textos, pero la consistencia se logra mediante descripción detallada repetida y uso de imágenes de referencia.

## 5) Image-to-Video y First/Last Frame

- **Flujo principal: image-to-video siempre** en lugar de text-to-video para mantener consistencia de personaje y escena entre múltiples tomas. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Workflow completo:** Generar imagen de alta calidad como primer frame → animarla con Veo 3.1, Kling 2.6 o Pixverse. Costo: hasta $1 por video de 8 segundos con Veo 3.1. (Tao Prompts — utnLVMzxX4U.md; Youri van Hofwegen — h5kjDJrHw_g.md)

- **Start and end frames en Kling AI:** Subir dos imágenes (primera y última). Añadir prompt que describa la transformación o movimiento. Ejemplo: `el oso sacude la cabeza y se transforma en el niño elfo`. Útil para transiciones y movimientos de cámara exactos (ej: órbita de 180° alrededor del personaje). (Tao Prompts — utnLVMzxX4U.md)

- **Frame interpolation en Veo 2:** En "frames to video", subir primer frame (ej: close-up del rostro) y último frame (ej: bird's eye view). Prompt: `the camera pulls back`. Limitación: solo Veo 2, sin sonido. (Tao Prompts — fvV95J0LiOE.md)

- **End-to-end frame en Seedance 2.0 y Kling 3.0:** Subir foto del personaje como primer frame, foto del entorno como último frame. Añadir prompt descriptivo. Activar opción de sonido (check box "sound"). (小V說 — wPP1RBLQhlU.md)

- **Crear video consistente en OpenArt:** Generar fotograma inicial y fotograma final. Descargar ambos. Ir a "Video mode" → "Image to video". Seleccionar modelo con etiqueta "end frame" (Google Veo 3.1, Kling 2.6, Pixverse). Configurar duración a 10 segundos y calidad máxima. Subir fotograma inicial como "starting frame" y final como "end frame". (Youri van Hofwegen — h5kjDJrHw_g.md)

- **Extender video en Google Flow (Omni Flash):** Guardar último frame del video, arrastrarlo al área de prompt, escribir nuevo prompt para siguiente escena, mencionar personaje con "@", generar nuevo clip. Regresar al primer video y añadir nuevo clip a la línea de tiempo. Recortar partes para naturalidad. (AI Edge Mastery — oCcU1C8WilI.md)

- **Video a video (video-to-video):** Usar Wan Animate con herramienta "AI avatar" + "photo animate". Necesitas: imagen del personaje AI + video de acción real de hasta 15 segundos. Alternativa: Luma Labs con función "modify". (Tao Prompts — utnLVMzxX4U.md)

- **Ingredientes a video en Google AI Video Studio:** Subir hasta 3 imágenes (personajes + paisaje). Prompt: describir la interacción. Limitación: resultados menos dinámicos que imagen a video. (Tao Prompts — utnLVMzxX4U.md)

- **Motion Sketch en Runway Gen 4.5:** Subir imagen con capas definidas. Usar editor interno con herramientas: "draw paths" (trazos), "draw shapes" (áreas grandes), icono de etiqueta (texto directo que reemplaza prompt). Videos generados duran 5 segundos, resolución 1280×720. Usar "export sketch" (NO la X) para conservar imagen anotada. (AI. Now Y'Know — hZHy0f7Uy-s.md)

- **Ejemplos de instrucciones en sketch (verbatim):**
  - `"crash zoom inside the house"` (sobre ventana)
  - `"both people shake hands and laugh"` (círculo alrededor de personas)
  - `"a white horse enters from the left, dolly camera move"`
  - `"a group of armored soldiers enters from the right, people run to the left"`
  - Secuencia causal: `"First, he walks to the wooden cart, picks up the rope, turns toward the woman, and throws the rope in her direction. Second, the woman turns toward the man and catches the rope."`
  - Secuencia por colores: `"Step one, the door of the building opens and a man slowly steps outside. Step two, the woman turns toward the building. Step three, the man laughs."`
  (AI. Now Y'Know — hZHy0f7Uy-s.md)

- **Chat to edit en Runway ML:** Menú "apps" → opciones predefinidas: cambiar clima, hora del día, iluminación, fondo. También eliminar elementos. Solo funciona con primeros 5 segundos del video. (Tao Prompts — utnLVMzxX4U.md)

## 6) Errores Comunes, Límites y Negative Prompts

- **Subtítulos aleatorios en Veo 3:** Ocurren al usar comillas en el diálogo o apóstrofes en el prompt. Solución: eliminar comillas y apóstrofes, usar `dialogue:` sin puntuación extra. Negative prompt: `no subtitles`. (Arca Artificial by Lordwind Enrique — oodW_W15rLY.md; Tao Prompts — fvV95J0LiOE.md)

- **Sin audio generado en Veo 3:** Ocurre cuando el personaje parece un niño (ej: "childlike facial expressions"). La IA no genera audio para personajes con apariencia infantil. (Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)

- **Intercambio de diálogo entre personajes:** La IA cambia quién habla primero si das instrucciones contradictorias. Solución: estructurar el orden explícitamente. (Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)

- **Text-to-video:** El 90% de principiantes lo usa y abandona porque cada generación es diferente (personajes, iluminación, entorno cambian). Usar image-to-video siempre. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Prompts demasiado largos en video:** Escribir descripciones enormes de motion/emotion/action confunde al modelo. Usar pre-built options + inglés simple. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Generar imágenes promedio y esperar video cinematográfico:** La calidad del video depende directamente de la calidad de la imagen inicial. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Sujeto siempre centrado:** Los principiantes colocan al sujeto en el centro; los profesionales usan regla de tercios. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Ignorar la emoción antes de generar:** Si no defines qué debe sentir el espectador, las decisiones técnicas serán aleatorias. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Regenerar sin control:** Hacer clic en "generate" repetidamente sin ajustar parámetros quema créditos. (Youri van Hofwegen — gY9KTfMGauU.md)

- **Inconsistencia de personaje con texto a video:** Pequeñas variaciones en ropa, estructura facial, posición de accesorios entre videos. (Tao Prompts — fvV95J0LiOE.md)

- **Green screen hack:** Calidad inferior, contraste alto, no permite diálogo. (Tao Prompts — fvV95J0LiOE.md)

- **"Ingredients to video" y "add to scene":** Solo funcionan con Veo 2, calidad inferior, sin sonido. (Tao Prompts — fvV95J0LiOE.md)

- **Fast mode en Veo 3:** No genera diálogo. (Tao Prompts — fvV95J0LiOE.md)

- **Movimientos de cámara complejos:** Pueden causar saltos de escena no deseados. (Tao Prompts — fvV95J0LiOE.md)

- **Estilo videojuego persiste:** A veces incluso con `muted colors, cinematic film`; cambiar prompt por completo. (Tao Prompts — fvV95J0LiOE.md)

- **Upscaling a 1080p:** Calidad aceptable pero con granulosidad y detalles faciales limitados. (Tao Prompts — fvV95J0LiOE.md)

- **Lip sync externa (Design):** No es solución ideal comparada con generación nativa de diálogo. (Tao Prompts — fvV95J0LiOE.md)

- **Motion Sketch en Runway Gen 4.5:** Color blanco único para anotaciones (invisible en áreas blancas). Runway fuerza movimiento innecesario en personajes. Secuencias complejas de causa-efecto no se ejecutan correctamente. Objetos aparecen desde el centro ignorando dirección indicada. Personajes se atraviesan entre sí. Marcadores de color a veces permanecen visibles. Morphing es el problema más grave (manos se convierten en masas fundidas). Vehículos carecen de física básica. Resultados no cumplen expectativas del tráiler promocional. (AI. Now Y'Know — hZHy0f7Uy-s.md)

- **Camera Control en Runway Gen 3:** No es ciencia exacta; resultado visual puede no coincidir con lo ajustado. Prompts demasiado creativos o contradictorios empeoran el resultado. Modelo tiene dificultades para "mirar hacia otro lado" cuando sujeto está centrado. A veces es mejor no usar prompt y solo confiar en ajustes de cámara. (Wade McMaster — jJHDJLzuwa8.md)

- **Omni Flash no soporta extensión directa de video:** Usar método manual de guardar último frame y crear nuevo clip. (AI Edge Mastery — oCcU1C8WilI.md)

- **Nombres de personaje comunes o de famosos:** El modelo puede contaminar el resultado con conocimiento previo. (AI Edge Mastery — oCcU1C8WilI.md)

- **Video a video (Wan Animate):** Fondo inestable (paredes se mueven, luces parpadean). (Tao Prompts — utnLVMzxX4U.md)

- **Video a video (Luma modify):** Menos desarrollado; requiere cara del personaje claramente visible y evita movimientos muy rápidos. (Tao Prompts — utnLVMzxX4U.md)

- **Lip sync (Dreamina):** Manos se deforman o cambian varias veces durante el video. (Tao Prompts — utnLVMzxX4U.md)

- **Ingredientes a video:** Resultados lentos y poco dinámicos; no recomendado para escenas de acción. (Tao Prompts — utnLVMzxX4U.md)

- **Chat to edit (Runway):** Solo funciona con primeros 5 segundos; al cambiar hora del día, uniforme y cara del personaje pueden alterarse; al eliminar objetos, pueden quedar residuos. (Tao Prompts — utnLVMzxX4U.md)

- **Sora 2:** Muy censurado y limitado en comparación con Veo 3.1. (Tao Prompts — utnLVMzxX4U.md)

- **Costo:** Veo 3.1 cuesta hasta $1 por video de 8 segundos. (Tao Prompts — utnLVMzxX4U.md)

- **Kling 3.0:** Movimiento de cámara más simple y limitado que Seedance 2.0; tomas tienden a ser planos medios de seguimiento. (小V說 — wPP1RBLQhlU.md)

- **Seedance 2.0:** Tiempos de generación más largos en sitio oficial; usar LitVideo para optimizar velocidad. (小V說 — wPP1RBLQhlU.md)

- **No usar modo "full model" en Seedance 2.0:** Resulta en videos de menor calidad y detalle. (小V說 — wPP1RBLQhlU.md)

- **Función de sonido en end-to-end frame:** Debe activarse manualmente (check box); no está activada por defecto. (小V說 — wPP1RBLQhlU.md)

- **No todas las generaciones serán perfectas:** La creación cinematográfica con IA requiere iteración constante (probar, regenerar, refinar). (Dom the AI Tutor — zQI_pWw9qWo.md)

- **Algunos movimientos como POV walk pueden no funcionar en todos los modelos:** Se necesita repromptear varias veces. (Dom the AI Tutor — zQI_pWw9qWo.md)