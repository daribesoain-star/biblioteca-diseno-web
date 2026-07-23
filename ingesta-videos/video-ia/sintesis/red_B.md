# 4. Consistencia de personaje/identidad

- **Descripción extremadamente detallada del personaje:** Usar misma descripción exacta en cada nuevo video, cambiando solo la escena. Incluir piel, cabello, ropa, accesorios, armas. Ejemplo: `A female warrior with pale skin and long white braided hair braided into two thick plates that hang over her shoulders. She wears a dark red cloak with loose white trousers and strap leather gear around her waist. She carries a short straight sword.` *(Tao Prompts — fvV95J0LiOE.md)*

- **Character sheet (Nanobanana):** Crear una imagen que muestre al personaje desde frente, lado y espalda. Prompt: *"A high school student around 16 with a rounded afro and white earphones"* + pedir "shots from the front, the side, and the back all in one image". *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Crear personaje en OpenArt:** Ir a "Character" → "Create Character" → "Start with a description". Usar modelo NanoBanana Pro y estilo "photorealistic". Generar, elegir mejor variante, hacer clic en "Build my character". Revisar las 4 vistas generadas (frontal, primer plano, cuerpo completo, espalda). *(Youri van Hofwegen — h5kjDJrHw_g.md)*

- **Crear personaje desde imágenes en OpenArt:** Subir entre 1 y 4 fotos (una obligatoria, 3 adicionales para diferentes ángulos: izquierda, derecha, espalda). *(Youri van Hofwegen — h5kjDJrHw_g.md)*

- **Etiquetar personajes con "@" en el prompt:** Ejemplo: `@Robin and @Leila at the ski center standing on the top of the ski mountain at image number one`. *(Youri van Hofwegen — h5kjDJrHw_g.md)*

- **Usar "image number X" en el prompt** para referenciar imágenes de outfit, pose o fondo subidas como referencia. *(Youri van Hofwegen — h5kjDJrHw_g.md)*

- **Elements (Higgsfield/Kling 3.0):** Arrastrar 1-3 imágenes del personaje (close-up, cuerpo completo, perfil). Nombrar (ej. "Seb"). Usar prompt `briefly describe the man in this image` → copiar descripción → pegar en campo de descripción → Generate. Invocar con `@nombre` en todos los prompts futuros. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Personajes icónicos:** Usar `@nombre` directamente (Deadpool, Margot Robbie) – Kling ya tiene datos de referencia. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Guardar como elemento reutilizable (Higgsfield):** Tras generar, hacer clic en *Save as Element*, asignar nombre. Invocar con `@nombre` en cualquier prompt futuro. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Personaje entrenado (OpenArt):** Click en "character" → "create character" → "start from an image". Subir foto frontal o 3/4. Nombrar. Se genera tag único (`@Isa`). Incluir ese tag en TODOS los prompts de generación posteriores. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Imagen de cuerpo completo con vestuario:** Generar imagen en 16:9 con el tag del personaje + descripción de vestuario. Usar como referencia visual adicional (el tag fija el rostro pero NO el vestuario). *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Hoja de referencia (Nano Banana):** Crear en modo "Create Image", 16:9, añadir foto original como "reference image". Usar como ingrediente en TODAS las generaciones de video, incluso si ya tienes una start image derivada de ella. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Múltiples personajes en una escena:** Subir ambas hojas de referencia como ingredientes separados. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Mismo estilo en TODOS los prompts:** Usar el mismo estilo de animación (ej. "3D animation", "Disney Pixar style") en todos los prompts de personajes. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Character library (Sora 2):** Crear un personaje una vez y reutilizarlo en múltiples videos. El personaje mantiene diseño, estilo y apariencia idénticos en diferentes escenas. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Referencias con @ (Runway):** Subir hasta 3 imágenes de referencia, nombrarlas (ej: "Lion", "JaguarPattern"), y en el prompt usar "@Nombre" para referenciarlas. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Referencias etiquetadas (Seedance):** Al usar múltiples referencias (imagen + video con audio), etiquetar en el prompt para que el AI sepa para qué sirve cada una. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Referencias etiquetadas (Runway Gen-4):** Subir referencia de locación y otra de modelo. Etiquetarlas (ej. "model 2", "location 2") y escribir: *"show me at model 2 in location 2"*. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

- **Múltiples referencias en una imagen (Nanobanana):** Subir hasta 3 imágenes (character sheets + objetos/escenas). Usar etiquetas (@image2) en el prompt. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Agente multigrilla (Seedance 2.0):** Usar para generar storyboard de 9, 16 o 25 paneles con el mismo personaje. Luego subir una imagen como referencia en Higgsfield. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **First frame + Elements (Kling 3.0):** Arrastrar imagen como first frame, habilitar multi-shot, agregar Elements para cada personaje. Usar `@start frame` para referenciar la imagen inicial. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Contexto de escena (Kling 2.5):** No solo pedir el movimiento, sino especificar hacia dónde mira la cámara y qué muestra. Ej: `camera zooms in on his eyes` obliga al personaje a girarse. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*

- **Descripción persistente (Sora 2):** Describir exactamente qué ocurre en cada segmento temporal, sin dejar ambigüedad. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Crear personaje en Google Flow:** En sección "Character", usar plantilla o prompt propio. Subir imagen externa, asignar nombre (evitar nombres comunes o de famosos). Configurar voz personalizada. Rellenar "Character info" con personalidad, forma de hablar y reacciones. *(AI Edge Mastery — oCcU1C8WilI.md)*

- **Usar "Frames" en Google Flow** cuando necesites que el video comience desde una imagen exacta. Usar "Ingredients" cuando solo necesites consistencia sin fijar el primer frame. *(AI Edge Mastery — oCcU1C8WilI.md)*

- **Green screen hack (de Martin Nebolon):** Usar imagen del personaje con fondo verde. En "frames to video", subir la imagen. Prompt: `instantly jump/cut to on frame one` + descripción de la escena. Limitación: calidad inferior, contraste alto, no genera diálogo. *(Tao Prompts — fvV95J0LiOE.md)*

- **Consistencia con Flux Context AI:** Generar imágenes del personaje consistente usando Flux Context AI image generator (modelo "flux context max"). Subir imagen original al generador y pedir: `Create an image of this female character in a medieval tavern. Her appearance should stay the same. Cinematic film shot on a Sony camera.` Luego animar en Veo 3. *(Tao Prompts — fvV95J0LiOE.md)*

- **Usar misma foto de personaje como primer frame** en ambos modelos al comparar. *(小V說 — wPP1RBLQhlU.md)*

- **Regla de props mínimos:** Cuantos menos accesorios tenga el personaje, menos glitches. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Imágenes de referencia sin estilizar:** Mantenerlas naturales, con iluminación uniforme, sin sombras fuertes, sin gafas de sol, sin fondos recargados. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

- **Vestimenta e iluminación consistentes:** En todas las subidas para mejores resultados. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

# 5. Image-to-video y first/last frame

- **Flujo principal: image-to-video siempre** en lugar de text-to-video para mantener consistencia de personaje y escena entre múltiples tomas. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Workflow completo:** Generar imagen de alta calidad como primer frame → animarla con Veo 3.1, Kling 2.6 o Pixverse. Costo: hasta $1 por video de 8 segundos con Veo 3.1. *(Tao Prompts — utnLVMzxX4U.md; Youri van Hofwegen — h5kjDJrHw_g.md)*

- **Workflow general (Kling 1.6):** Cargar imagen de alta calidad → escribir prompt detallado con cámara, iluminación y atmósfera → duración 5 segundos → modo Professional → creatividad 0.5. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Start and End Frame (Kling 3.0):** Editar imagen base, subir imagen editada como start frame y original como end frame. Prompt describe movimiento de entrada/salida. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Start and end frames en Kling AI:** Subir dos imágenes (primera y última). Añadir prompt que describa la transformación o movimiento. Ejemplo: `el oso sacude la cabeza y se transforma en el niño elfo`. Útil para transiciones y movimientos de cámara exactos (ej: órbita de 180° alrededor del personaje). *(Tao Prompts — utnLVMzxX4U.md)*

- **Scene Continuation (Kling 3.0):** Tomar último frame del video generado, descargarlo. Usarlo como start frame en Kling 3.0. Subir imagen nueva de siguiente escena como end frame. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Kling 3.0 Omni Multishot:** Activar "multishot". Subir múltiples elementos. Definir hasta 3 shots con prompts independientes y duraciones distintas. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Frame interpolation en Veo 2:** En "frames to video", subir primer frame (ej: close-up del rostro) y último frame (ej: bird's eye view). Prompt: `the camera pulls back`. Limitación: solo Veo 2, sin sonido. *(Tao Prompts — fvV95J0LiOE.md)*

- **End-to-end frame en Seedance 2.0 y Kling 3.0:** Subir foto del personaje como primer frame, foto del entorno como último frame. Añadir prompt descriptivo. Activar opción de sonido (check box "sound"). *(小V說 — wPP1RBLQhlU.md)*

- **Crear video consistente en OpenArt:** Generar fotograma inicial y fotograma final. Descargar ambos. Ir a "Video mode" → "Image to video". Seleccionar modelo con etiqueta "end frame" (Google Veo 3.1, Kling 2.6, Pixverse). Configurar duración a 10 segundos y calidad máxima. Subir fotograma inicial como "starting frame" y final como "end frame". *(Youri van Hofwegen — h5kjDJrHw_g.md)*

- **First/Last frame (Runway Gen-3 Alpha Turbo):** Definir primer keyframe (imagen), luego agregar hasta dos más (central y final). "Define one image as the first keyframe and then add two more if you want." Las imágenes deben tener contenido similar para transiciones suaves. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Image-to-video (Runway Gen-4):** Subir imagen como referencia obligatoria (Gen-4 Turbo) u opcional (Gen-4). Usar "Input for Video" para seleccionar imagen. Recortar si es necesario. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Image-to-video (Sora 2):** Subir foto de producto, ubicación o escena como referencia. Sora 2 basa el video en esa imagen. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Image-to-video (Sora 2 con transición):** En lugar de "the woman walks", usar *"the woman gently shifts her weight, then begins walking a few slow steps towards the fence down the path"* para animación natural desde el frame inicial. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Image-to-video workflow (Seedance):** Generar imagen primero con Nano Banana Pro, luego usar esa imagen como referencia fija en Seedance para animar. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Image-to-video con contexto de escena (Kling 2.5):** Subir imagen de referencia + prompt de movimiento. Subir slider "creativity and relevance" para mayor fidelidad. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*

- **Image-to-video con timeline prompting (Sora 2):** Subir imagen (ej: de Midjourney) a Sora 2, luego aplicar timeline prompt. Da más control que text-to-video. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Image-to-image (Higgsfield):** Generar primera imagen del personaje en la locación. Para añadir segundo personaje, usar la imagen generada como referencia y prompt: `"[descripción de la segunda persona añadida a la escena]"`. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Timeline prompting (Seedance):** Dividir el clip en segmentos de tiempo. Ejemplo: "0 to 5 seconds: he struts and sings down the sidewalk. 5 to 10: he spins and stomps in a puddle right on the beat. 10 to 15: the camera lifts up into that beautiful overhead shot as he dances in the golden light." *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Timestamped prompting (Google AI Studio):** Desglosar video de 8 segundos en segmentos. Ejemplo: `primeros 3 segundos: estudia la tableta brillante y aparece un holograma de nave espacial; siguientes 3 segundos: zoom a primer plano de ceño fruncido, expresión de preocupación; últimos 2 segundos: un retumbo bajo sacude el hábitat, las luces parpadean, la astronauta se estabiliza`. *(Tao Prompts — utnLVMzxX4U.md)*

- **Transiciones entre clips (OpenArt/SeaDance 2.0):** A partir del segundo clip, NO subir la ubicación. Subir como referencias: imagen del personaje vestido + video anterior como referencia de video. Esto fuerza al modelo a continuar la escena en lugar de reiniciarla. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Workflow completo (OpenArt):**
  1. Crear personaje consistente (tag `@Nombre`)
  2. Generar imagen de cuerpo completo con vestuario (16:9, incluir `@Nombre`)
  3. Generar imagen de ubicación (16:9)
  4. Clip 1: SeaDance 2.0, referencias = imagen personaje + imagen ubicación, 15 segundos
  5. Clip 2: referencias = imagen personaje + video 1
  6. Clip 3: referencias = imagen personaje + video 2
  7. Editar en CapCut, agregar música de fondo
  *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Extender video en Google Flow (Omni Flash):** Guardar último frame del video, arrastrarlo al área de prompt, escribir nuevo prompt para siguiente escena, mencionar personaje con "@", generar nuevo clip. Regresar al primer video y añadir nuevo clip a la línea de tiempo. Recortar partes para naturalidad. *(AI Edge Mastery — oCcU1C8WilI.md)*

- **Video a video (video-to-video):** Usar Wan Animate con herramienta "AI avatar" + "photo animate". Necesitas: imagen del personaje AI + video de acción real de hasta 15 segundos. Alternativa: Luma Labs con función "modify". *(Tao Prompts — utnLVMzxX4U.md)*

- **Ingredientes a video en Google AI Video Studio:** Subir hasta 3 imágenes (personajes + paisaje). Prompt: describir la interacción. Limitación: resultados menos dinámicos que imagen a video. *(Tao Prompts — utnLVMzxX4U.md)*

- **Motion Sketch en Runway Gen 4.5:** Subir imagen con capas definidas. Usar editor interno con herramientas: "draw paths" (trazos), "draw shapes" (áreas grandes), icono de etiqueta (texto directo que reemplaza prompt). Videos generados duran 5 segundos, resolución 1280×720. Usar "export sketch" (NO la X) para conservar imagen anotada. *(AI. Now Y'Know — hZHy0f7Uy-s.md)*

- **Ejemplos de instrucciones en sketch (verbatim):**
  - `"crash zoom inside the house"` (sobre ventana)
  - `"both people shake hands and laugh"` (círculo alrededor de personas)
  - `"a white horse enters from the left, dolly camera move"`
  - `"a group of armored soldiers enters from the right, people run to the left"`
  - Secuencia causal: `"First, he walks to the wooden cart, picks up the rope, turns toward the woman, and throws the rope in her direction. Second, the woman turns toward the man and catches the rope."`
  - Secuencia por colores: `"Step one, the door of the building opens and a man slowly steps outside. Step two, the woman turns toward the building. Step three, the man laughs."`
  *(AI. Now Y'Know — hZHy0f7Uy-s.md)*

- **Chat to edit en Runway ML:** Menú "apps" → opciones predefinidas: cambiar clima, hora del día, iluminación, fondo. También eliminar elementos. Solo funciona con primeros 5 segundos del video. *(Tao Prompts — utnLVMzxX4U.md)*

- **Color grading pre-video (Higgsfield):** Abrir panel *Color Grading*, seleccionar preset *Black and White Film*, mantener *Film Grain* activado. Aplicar el mismo grade a todas las imágenes de referencia antes de generar video. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Workflow de batching (Sora 2):** Escribir 5-10 prompts por adelantado, encolarlos, dejar que se generen mientras se trabaja en otra cosa, luego revisar y descargar. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Generar todos los stills primero (Runway Gen-4):** Para consistencia entre tomas múltiples, generar todas las imágenes fijas primero, luego animarlas una por una. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

# 6. Errores comunes, límites y negative prompts

- **Error: No especificar cámara.** Sin dirección de cámara, el AI elige ángulo y movimiento al azar. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Error: Redescribir apariencia en motion prompt.** Si usas character board pero escribes otra vez cara, pelo y outfit, el primer frame se ve raro y rompe consistencia. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Error: Demasiado movimiento rápido.** Pedir breakdance a velocidad completa causa glitches, piernas dobladas, manos derretidas. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Error: Meter muchas acciones en un clip corto.** Seedance limita a ~15 segundos. Máximo 2-3 acciones simples por clip. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

- **Error: Confundir zoom con dolly.** El zoom cambia el lente sin mover la cámara; el dolly mueve la cámara físicamente. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*

- **Error: Prompts demasiado vagos.** Escribir "a person walking" da resultados aleatorios. Añadir ángulo de cámara, iluminación, movimiento, entorno y ambiente. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Error: Sobrecargar el prompt.** Prompts de 150 palabras con 10 instrucciones hacen que el AI ignore la mitad. Mantener bajo 50 palabras. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Error: No usar imágenes de referencia.** Sin referencia visual, el AI genera interpretaciones genéricas. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Error: No añadir detalles de iluminación.** Puede generar mezclas extrañas de estilos (personajes 3D con fondos realistas). *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: Generar videos sin storyboard.** Las imágenes son baratas, los videos caros. Hacer storyboard primero. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: No especificar cortes ni timestamps en Sora 2.** Sora necesita dirección explícita para usar los 10-12 segundos completos. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Error: Mezclar diálogos con sonidos ambientales.** El diálogo va en el corte, los sonidos de fondo en lighting and tone. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Error: Ignorar relación de aspecto.** Generar todo en una relación y luego recortar pierde calidad. Seleccionar antes de generar. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Error: Saltar planificación narrativa.** Saltar directamente a generar videos sin planificar la historia produce clips desconectados, personajes incorrectos, diálogos que no coinciden y locaciones inconsistentes. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: Prompts genéricos.** Usar "woman moves" produce movimiento genérico que no sirve. Especificar acción, dirección y estilo. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Error: No incluir instrucciones de cámara.** Resulta en movimiento impredecible y poco profesional. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Error: Confiar solo en el tag del personaje.** El tag fija el rostro pero NO el vestuario, peinado ni estilo general. Se necesita imagen de cuerpo completo como referencia adicional. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Error: Usar misma imagen de ubicación en todos los clips.** Cada clip reinicia el entorno desde cero. Solución: reemplazar ubicación por video anterior a partir del segundo clip. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Error: Subir frame rate a 60 fps.** Arruina el look cinematográfico y da aspecto de transmisión en vivo. Mantener en 30 fps. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: Confiar en escribir "blanco y negro" en el prompt.** Es menos fiable que aplicar color grading directamente a las imágenes de referencia antes de generar movimiento. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: No complicar el prompting en multi-shot.** Se puede hacer de forma simple sin estructuras complejas. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: No subestimar Elements.** "No one's talking about it, but if you want realistic cinematic looking videos with consistency, you need to be using elements". *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: No usar first frame sin Elements.** El video con first frame + Elements es más realista que solo first frame. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: Prompts vagos (Sora 2).** "A knight is looking at the map, he puts it away, and then he starts marching forward" da poco contexto y resultados pobres. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Error: Pensar que escribir prompts manualmente es habilidad valiosa.** El creador argumenta que es falso; la habilidad real es articular tu idea y visión creativa. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Error: Text-to-video.** El 90% de principiantes lo usa y abandona porque cada generación es diferente (personajes, iluminación, entorno cambian). Usar image-to-video siempre. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Error: Prompts demasiado largos en video.** Escribir descripciones enormes de motion/emotion/action confunde al modelo. Usar pre-built options + inglés simple. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Error: Generar imágenes promedio y esperar video cinematográfico.** La calidad del video depende directamente de la calidad de la imagen inicial. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Error: Sujeto siempre centrado.** Los principiantes colocan al sujeto en el centro; los profesionales usan regla de tercios. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Error: Ignorar la emoción antes de generar.** Si no defines qué debe sentir el espectador, las decisiones técnicas serán aleatorias. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Error: Regenerar sin control.** Hacer clic en "generate" repetidamente sin ajustar parámetros quema créditos. *(Youri van Hofwegen — gY9KTfMGauU.md)*

- **Límite: Kling 3.0 lip sync deficiente.** Problemas en diálogos largos; requiere ajuste manual del audio en edición. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Límite: Seedance 2.0 audio máx. 13s.** Solo acepta clips de hasta 13 segundos para sincronización labial. Cortar audio previamente. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Límite: Runway Gen-4 movimiento artístico.** Su movimiento tiende a ser más "artístico" que preciso, a veces flotante o abstracto. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

- **Límite: Sora 2 física compleja.** Lucha con líquidos, simulaciones de tela o acciones que desafían la gravedad. Mantener interacciones simples. *(AI Master — https://youtu.be/H8szjl6KwXs)*

- **Límite: Veo 3 fast solo 720p.** Requiere upscaling externo para 1080p/4K. *(Sebastien Jefferies — https://youtu.be/6LhkvHfpjAY)*

- **Límite: Runway videos siempre 720p.** Incluso con imagen de referencia en 4K. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Límite: Watermark obligatorio en Kling gratuito.** Solo se elimina con pago. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*

- **Límite: Subtítulos no deseados en Seedance.** Incluso añadiendo `全程无字幕、无水印`, en raras ocasiones la IA sigue generando subtítulos. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Límite: Color saturation (Kling 2.5).** El AI añade cambios bruscos de color hacia el final del video. Solución: `muted colors`, pero se pierde estilo neón. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*

- **Límite: Fixed lens no siempre funciona.** A veces hay movimiento residual al final; reintentar varias veces. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*

- **Límite: Inconsistencia al alejarse.** Cuanto más te alejes del contenido de la imagen original, menos consistente es el video. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*

- **Límite: Censura en Sora.** "Sam, please allow us to do a bit more uncensored stuff on Sora". *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Límite: Sora 2 Pro es caro.** "The most expensive tool on the market right now". *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Límite: Glitches no deseados.** En ejemplo VHS, Sora 2 Pro generó "glitching a little bit too much" sin instrucción explícita. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*

- **Límite: Duraciones mayores a 5 segundos (Kling 1.6).** Reducen la consistencia del video. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*

- **Límite: Modelos de video que generan solo 5-10 segundos.** Fuerzan a usar más clips, multiplicando puntos de ruptura de consistencia. SeaDance 2.0 con 15 segundos reduce ese riesgo. *(Joy — https://youtu.be/9HY76YLO-M8)*

- **Límite: Versión gratuita de LLM olvida documento.** El modelo olvida el documento subido cuanto más largo sea el chat. Usar chat nuevo por proyecto. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*

- **Límite: Subtítulos aleatorios en Veo 3.** Ocurren al usar comillas en el diálogo o apóstrofes en el prompt. Solución: eliminar comillas y apóstrofes, usar `dialogue:` sin puntuación extra. Negative prompt: `no subtitles`. *(Arca Artificial by Lordwind Enrique — oodW_W15rLY.md; Tao Prompts — fvV95J0LiOE.md)*

- **Límite: Sin audio generado en Veo 3.** Ocurre cuando el personaje parece un niño (ej: "childlike facial expressions"). La IA no genera audio para personajes con apariencia infantil. *(Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)*

- **Límite: Intercambio de diálogo entre personajes.** La IA cambia quién habla primero si das instrucciones contradictorias. Solución: estructurar el orden explícitamente. *(Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)*

- **Límite: Inconsistencia de personaje con texto a video.** Pequeñas variaciones en ropa, estructura facial, posición de accesorios entre videos. *(Tao Prompts — fvV95J0LiOE.md)*

- **Límite: Green screen hack.** Calidad inferior, contraste alto, no permite diálogo. *(Tao Prompts — fvV95J0LiOE.md)*

- **Límite: "Ingredients to video" y "add to scene".** Solo funcionan con Veo 2, calidad inferior, sin sonido. *(Tao Prompts — fvV95J0LiOE.md)*

- **Límite: Fast mode en Veo 3.** No genera diálogo. *(Tao Prompts — fvV95J0