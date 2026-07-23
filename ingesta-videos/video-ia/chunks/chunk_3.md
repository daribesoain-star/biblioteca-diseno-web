

===== fvV95J0LiOE.md =====
# 30 Tips To Create Mindblowing Videos With Google VEO 3 (Become a Pro)
**Fuente:** Tao Prompts | https://youtu.be/fvV95J0LiOE

## Qué enseña
Este tutorial enseña 30 técnicas prácticas para dominar la generación de video con Google Veo 3, desde vlogs con personajes parlantes hasta escenas de acción cinematográficas. Cubre control de diálogos, acentos, tono de voz, sonidos ambientales, consistencia de personajes, movimientos de cámara y trucos para evitar limitaciones del modelo.

## Técnicas accionables

- **Vlog estilo selfie:** Usa el prompt exacto `self camera angle shot from an extended arm` + descripción del personaje + diálogo entre comillas. Ejemplo: `self camera angle shot from an extended arm. A Yeti with wife holding up a fish. He's in an icy landscape. Dialogue: "Welcome back to Yeti Adventures. Today, we're learning how to go ice fishing."`
- **Vlog con selfie stick:** Prompt: `holding up a vlog cam on a selfie stick. He is talking to the vlog cam.` + diálogo.
- **Ángulo de cámara vlog:** Prompt: `Shot from a vlog camera` para perspectiva gran angular completa.
- **Entrevista "man on the street":** Inicia el prompt con `man on the street interview` + ubicación + descripción de reportero y entrevistado + diálogo específico para cada personaje usando comillas. Ejemplo: `man on the street interview. Inside Gotham City, a young female reporter asked a young man what he thinks about Batman. The young man is unhappy with how many problems Batman causes. Dialogue reporter: "What are your thoughts on Batman?" Dialogue man: "Honestly, he causes more problems than he solves."`
- **Diálogo por personaje:** Atribuye el diálogo exacto a cada personaje en el prompt. Ejemplo: `For the Stormtrooper reporter, tell him to say: "Are the rumors about the war in the Outer Rim true?" And for the male Sith, tell him to say: "The Outer Rim is ripe for conquest. The Empire always expands."`
- **Eliminar subtítulos (workaround):** Usa un editor de video para recortar la parte inferior donde aparecen los subtítulos (zoom out + aumentar tamaño del video). Alternativa: usa AI subtitle remover como V-Make (sube el video, procesa, previsualiza 5 segundos en versión gratuita; divide el video en partes si es necesario).
- **Acentos:** El acento debe ser plausible en el entorno. Ejemplo: un personaje en un monasterio medieval puede tener acento británico. Un brasileño en Nueva York sonará estadounidense; un brasileño en una playa de Río de Janeiro puede cambiar incluso el idioma.
- **Tono de voz:** Usa adverbios como `aggressively shout`, `nervous, stuttering, and unsure of himself`, `whispering`. Funciona mejor sin guion específico, solo describiendo la idea general de lo que habla.
- **Sonidos ambientales:** Agrega en el prompt frases como `sound of waves at the beach`, `sound of a creek running by`, `sounds of wind rustling and cars honking in the background`.
- **Música de fondo:** Especifica el tipo de música e instrumentos. Ejemplo: `suspenseful and thrilling music`, `relaxed piano playing in the background`, `a guzheng playing in the background` (instrumento chino tradicional).
- **Upscaling a 1080p:** En Veo 3, ve al botón de descarga y selecciona "upscaled version". Convierte de 720p a 1080p gratis con suscripción. La calidad es aceptable pero puede tener granulosidad.
- **Inspiración con Flow TV:** Dentro de la interfaz de Veo, ve a "Flow TV" → "show prompt" para ver el prompt exacto usado en videos de ejemplo (son de Veo 2, no Veo 3). Usa la vista de cuadrícula para explorar.
- **Videos verticales:** Toma una imagen vertical, gírala 90° para que sea apaisada. Súbela a "frames to video" en Veo 3. Usa un prompt descriptivo. Veo 3 anima la imagen rotada. Luego rota el video resultante de vuelta a vertical.
- **Consistencia de personaje con texto a video:** Usa una descripción extremadamente detallada del personaje (piel, cabello, ropa, accesorios, armas). Pega la misma descripción exacta en cada nuevo video, cambiando solo la escena. Ejemplo: `A female warrior with pale skin and long white braided hair braided into two thick plates that hang over her shoulders. She wears a dark red cloak with loose white trousers and strap leather gear around her waist. She carries a short straight sword.` Luego agrega: `It is snowing. Close-up shot on her face as she quietly whispers about trying to find her sister again. Dialogue: "I will find my sister. I have to find her again."` Limitación: pequeñas inconsistencias en ropa, estructura facial, posición de trenzas.
- **Consistencia con green screen hack (de Martin Nebolon):** Usa una imagen del personaje con fondo verde. Ve a "frames to video", sube la imagen. Prompt: `instantly jump/cut to on frame one` + descripción de la escena. Ejemplo: `instantly jump/cut to on frame one. She walks next to a huge white direwolf in an icy landscape. It is snowing.` Limitación: calidad inferior, contraste alto, no genera diálogo.
- **Consistencia con "ingredients to video":** Sube múltiples imágenes (personaje, otro personaje, paisaje) en "ingredients to video". Prompt: `The female warrior walks next to the orc on the rocky landscape.` Limitación: solo funciona con Veo 2 (modelo antiguo), calidad baja, sin sonido.
- **Consistencia con image-to-video (mejor método):** Genera imágenes del personaje consistente usando Flux Context AI image generator (ej. en Open Art, con el modelo "flux context max"). Sube la imagen original al generador y pide: `Create an image of this female character in a medieval tavern. Her appearance should stay the same. Cinematic film shot on a Sony camera.` Luego en Veo 3, usa "frames to video" con esa imagen generada. Prompt: `walk forward and raise her sword`.
- **Frame interpolation (first/last frame):** En "frames to video", sube un primer frame (ej. close-up del rostro) y un último frame (ej. bird's eye view). Prompt: `the camera pulls back`. Veo 2 genera el video entre ambos frames. Limitación: solo Veo 2, sin sonido.
- **Lip sync externo:** Usa la web "Design" (herramienta de lip sync). Sube el video generado en Veo 3 y un archivo de audio. La herramienta sincroniza los labios. Limitación: no es ideal, es un workaround.
- **Consistencia de objetos/productos:** Genera imágenes del producto con Flux Context AI. Ejemplo: `Create a side profile photo of a young Canadian man wearing the blue headphones. The gold patterns on the headphones should remain the same. On a street in Montreal. Shot on a Sony camera.` Luego anima la imagen en Veo 3.
- **Escenas de pelea:** Usa `kung fu fight scene` en el prompt. Para personajes específicos, describe su apariencia exacta en el prompt. Las escenas empiezan lentas y se vuelven dinámicas.
- **Fast mode:** Activa "fast text to video" en Veo 3. Cuesta 1/3 del modelo regular. Calidad alta pero movimientos menos dinámicos. Limitación: no genera diálogo.
- **Tipos de plano:** Usa `close-up shot`, `full body shot`, `side profile shot`, `extreme long shot`. Ejemplo: `close-up shot of the character focusing on his face. Dialogue: "We were a proud people, but under Roman rule, our traditions are mocked."`
- **Ángulos de cámara:** `low angle shot` (personaje se ve más grande/poderoso), `high angle shot` (más pequeño/débil), `bird's eye view overhead shot` (vista objetiva del entorno).
- **Estilo fotorrealista vs. videojuego:** Si el personaje se ve como de videojuego, agrega `muted colors, cinematic film` al prompt. Ejemplo: `muted colors, cinematic film. Life under Roman rule is unbearable.` No siempre funciona; si persiste el estilo videojuego, cambia el prompt.
- **Movimientos de cámara:** `tilt up from the female character to reveal an eagle flying in the sky`, `pan from the female character and show an abandoned monastery far in the distance`, `zoom in on her face during the battle`. Puede causar saltos de escena.
- **Combinación de movimientos:** `close-up shot on the character's face, then the camera pulls back to reveal her riding on a horse`, `slow crane shot behind the female character walking up the steps of an ancient castle. Then the camera flies above and slowly tilts down to reveal the entire castle.`
- **Lentes y dispositivos:** `fisheye lens` (gran angular distorsionado), `macro lens` (extreme close-up de sujetos pequeños), `infrared camera`.
- **Primera persona (POV):** `first-person POV shot` + descripción. Ejemplo: `first-person POV shot of a character running through a trench in World War I.`
- **Género cinematográfico:** Agrega `horror movie`, `comedy movie`, `sci-fi movie` al prompt para cambiar iluminación y colores. El género al inicio del prompt tiene más peso.
- **Estilos de animación:** Pon el estilo al inicio del prompt. Ejemplo: `2D anime` + descripción. También: `3D Pixar style`, `cinematic video style`. Veo 3 pondera más las palabras al inicio.
- **Iluminación y paletas de color:** `soft sunlight beaming through the trees`, `harsher moonlight casting down`, `light shining on him from a fire`. Paletas: `cool blue color tones` (frío/deprimente), `warmer colors` (suave/acogedor), `desaturated colors` (gritty, estilo Saving Private Ryan), `monochromatic color schemes` (un solo tono, ej. verde para sensación inquietante), `light pastel color tones` (rosas y azules suaves).
- **Videos en bucle infinito:** En un editor de video (ej. CapCut), duplica el clip. Al segundo clip, aplica "reverse". Coloca los dos clips uno tras otro. Apila más pares para un bucle más largo.
- **Previsualización con image generator:** En "frames to video", haz clic en "add an image" → "generate a photo". Prompt: `Photo of a panther in a jungle. Golden afternoon light and shadows. Green foliage. Shot on a Sony camera.` Elige una de las previsualizaciones. Luego úsala como referencia para el video: `He quietly stalks in the forest.`
- **Extender videos (add to scene):** Usa "add to scene" → "extend the video". Prompt: `The totems lapse onto the ground and break apart.` Limitación: solo funciona con Veo 2, calidad inferior, sin sonido. Debes agregar efectos de sonido manualmente después.

## Reglas para el erudito

- Usa `self camera angle shot from an extended arm` cuando quieras un vlog estilo selfie con personaje parlante.
- Usa `man on the street interview` al inicio del prompt para entrevistas callejeras con dos personajes.
- Usa comillas para el diálogo de cada personaje y atribúyelos explícitamente en el prompt.
- Usa `instantly jump/cut to on frame one` cuando uses green screen hack para consistencia de personaje.
- Usa `muted colors, cinematic film` cuando el personaje se vea como de videojuego y quieras fotorrealismo.
- Pon el estilo o género al INICIO del prompt para que Veo 3 lo pondere más.
- Usa descripciones extremadamente detalladas del personaje (piel, cabello, ropa, accesorios) para consistencia con texto a video.
- Usa Flux Context AI image generator (modelo "flux context max") para crear imágenes consistentes antes de animarlas en Veo 3.
- Usa frame interpolation (first/last frame) cuando quieras controlar el movimiento de cámara entre dos puntos específicos.
- Usa fast mode para ahorrar costos en tomas de alta calidad que no requieran diálogo.
- Usa un editor de video externo (CapCut) para crear bucles infinitos invirtiendo el segundo clip.
- Usa V-Make o similar para eliminar subtítulos cuando el recorte no sea viable.

## Errores comunes / limitaciones que menciona

- Los subtítulos automáticos aparecen frecuentemente y no se eliminan de forma confiable con prompts como `no subtitles` o evitando comillas. La solución de recorte o AI remover es un workaround imperfecto.
- Los acentos solo funcionan si son plausibles en el entorno; de lo contrario, el personaje habla sin acento o cambia de idioma.
- El tono de voz funciona mejor sin un guion específico; con guion detallado, el control tonal se pierde.
- La consistencia de personaje con texto a video tiene pequeñas variaciones (ropa, estructura facial, posición de accesorios) entre videos.
- El green screen hack produce calidad inferior, contraste alto y no permite diálogo.
- "Ingredients to video" y "add to scene" (extender video) solo funcionan con Veo 2, no con Veo 3, resultando en menor calidad y sin sonido.
- Fast mode no genera diálogo.
- Los movimientos de cámara complejos (ej. zoom in durante una pelea) pueden causar saltos de escena no deseados.
- El estilo videojuego persiste a veces incluso con `muted colors, cinematic film`; en ese caso, cambia el prompt por completo.
- El upscaling a 1080p tiene calidad aceptable pero con granulosidad y detalles faciales limitados.
- La lip sync externa (Design) no es una solución ideal comparada con la generación nativa de diálogo.

===== gY9KTfMGauU.md =====
# How to Start Making AI Videos in 2026 - Full Course
**Fuente:** Youri van Hofwegen | https://youtu.be/gY9KTfMGauU

## Qué enseña
Curso completo para principiantes que enseña a crear videos cinematográficos con IA en menos de 15 minutos, priorizando el flujo image-to-video sobre text-to-video. Explica cinco principios cinematográficos (iluminación, profundidad, composición, emoción, color) y cómo aplicarlos en plataformas como Higgsfield con Cinema Studio 2.5/3.0 y C Dance 2.0.

## Técnicas accionables
- **Flujo principal: image-to-video** – Genera primero una imagen de alta calidad como primer frame, luego anímala. Evita text-to-video porque cada generación empieza desde cero y los personajes cambian.
- **Creación de personaje consistente en Higgsfield (Cinema Studio):** Usa la sección "character" con 8 categorías: género (14 opciones: action, drama, horror, war, etc.), presupuesto en millones (ej. 250M), era (ej. 2020s), arquetipo (ej. hero), género, identidad (female, Asian, athletic), altura, color de ojos, peinado (brown hair, fringe, wavy texture), outfit, tatuajes. Genera y guarda.
- **Creación de locación:** En "image section" > "location", escribe prompt detallado. Ejemplo usado: *"Rooftop over a war-torn city. Tension and urgency. Warm tones like orange and red in the sunset light that creates dramatic shadows."* Guarda como nueva locación.
- **Combinación personaje + locación:** En "image section" > "scenes", selecciona personaje y locación guardados. Resolución: 4K. Composición: coloca al sujeto en el tercio izquierdo del frame con líneas guía (ruinas). Profundidad: añade un objeto desenfocado en primer plano (ej. escombros), sujeto nítido en plano medio, fondo lejano.
- **Color grading:** Usa presets (natural, split tone, cinematic) o ajustes manuales: temperature, hue, saturation, contrast, bloom (brillo suave), halation (brillo rojo en altas luces), film grain. Herramienta "relight" para cambiar dirección de luz sin regenerar.
- **Animación (single shot):** En "video section" > "single shot", sube la imagen como starting frame. Configura: emotion (hope, anger, fear, tense but focused), genre (action), camera movement (slow cinematic push, dolly, 360 roll, zoom in), motion prompt en inglés simple (ej. *"She scans the horizon"*), speed ramp (auto, slow para tensión, fast para urgencia). Duración: 4 segundos.
- **Animación multi-shot:** En "multi shot manual mode", hasta 6 escenas por generación. Cada escena con su propio prompt, cámara y duración. Ejemplo de 3 escenas:
  - Escena 1: zoom in, speed ramp lento, 4s.
  - Escena 2: *"She raises her rifle"*, zoom in mientras rastrea objetivo, speed ramp alerta.
  - Escena 3: *"Impact happens"*, hero mode en speed, 3s.
- **C Dance 2.0 (video-to-video):** Toma un video completo como referencia y genera uno nuevo manteniendo estructura y movimiento. Prompt usado: *"Rebuilds your video in a completely new way while keeping the same structure and motion"* (el prompt exacto no se muestra, pero se usa para cambiar estilo, estado de ánimo o realismo).

## Reglas para el erudito
- **Usa image-to-video siempre** en lugar de text-to-video para mantener consistencia de personaje y escena entre múltiples tomas.
- **Aplica los 5 principios cinematográficos** antes de generar: iluminación direccional con sombras, profundidad (foreground desenfocado + midground nítido + background), composición con regla de tercios y líneas guía, emoción definida previamente, y paleta de color coherente (tonos cálidos para tensión/pasión, fríos para calma/aislamiento).
- **No mezcles tonos cálidos y fríos** en una misma escena; decide la emoción primero para saber qué dirección de color usar.
- **Usa pre-built options** en lugar de prompts largos para motion: emotion, genre, camera movement y speed ramp controlan el resultado mejor que descripciones extensas.
- **Configura el presupuesto en millones** al crear personajes (ej. 250M) para obtener pulido visual más refinado.
- **Guarda locación y personaje por separado** antes de combinarlos en escenas, para no desperdiciar créditos regenerando.
- **Usa "relight"** para corregir dirección de luz después de generar la imagen, sin perder detalles.

## Errores comunes / limitaciones que menciona
- **Text-to-video:** El 90% de principiantes lo usa y abandona porque cada generación es diferente (personajes, iluminación, entorno cambian). Imposible crear múltiples escenas coherentes.
- **Prompts demasiado largos en video:** Escribir descripciones enormes de motion/emotion/action confunde al modelo y da resultados inesperados. Usa pre-built options + inglés simple.
- **Generar imágenes promedio y esperar video cinematográfico:** La calidad del video depende directamente de la calidad de la imagen inicial. Sin los 5 principios, el resultado será plano.
- **Sujeto siempre centrado:** Los principiantes colocan al sujeto en el centro; los profesionales usan regla de tercios (sujeto en una de las líneas verticales).
- **Ignorar la emoción antes de generar:** Si no defines qué debe sentir el espectador, las decisiones técnicas (luz, color, composición) serán aleatorias y el resultado se sentirá de baja calidad.
- **Regenerar sin control:** Hacer clic en "generate" repetidamente esperando un resultado diferente sin ajustar parámetros quema créditos y no resuelve problemas de consistencia.

===== h5kjDJrHw_g.md =====
# How to Actually Make 100% Consistent AI Characters
**Fuente:** Youri van Hofwegen | https://youtu.be/h5kjDJrHw_g

## Qué enseña
El tutorial explica cómo crear personajes de IA consistentes usando OpenArt, desde la generación inicial hasta la animación en video. Cubre la creación de personajes por descripción o imágenes, el uso de múltiples personajes en una misma escena, control de poses con editor 3D, posicionamiento preciso en composiciones, y la conversión de imágenes a video con fotogramas de inicio y fin.

## Técnicas accionables

- **Crear personaje desde descripción:** En OpenArt, ve a "Character" → "Create Character" → "Start with a description". Escribe prompt como: *"A natural portrait shot of an Asian woman in her 20s. She looks like a 20-year-old Gen Z influencer, beautiful, natural looking with professional studio lighting"*. Selecciona modelo (ej. NanoBanana Pro) y estilo (ej. "photorealistic"). Genera, elige la mejor variante, haz clic en "Build my character". Revisa las 4 vistas generadas (frontal, primer plano, cuerpo completo, espalda) y regenera las que no te gusten. Pon nombre y backstory opcional (ej. *"Robin is a 20-year-old influencer. She is very interested in sports and skiing..."*).

- **Crear personaje desde imágenes:** Sube entre 1 y 4 fotos (una obligatoria, 3 adicionales para diferentes ángulos: izquierda, derecha, espalda). Nombra el personaje y añade backstory.

- **Generar imagen con personajes:** Dentro del personaje, haz clic en "Create". En el prompt, etiqueta personajes con "@" (ej. *"@Robin and @Leila at the ski center standing on the top of the ski mountain at image number one"*). Sube imágenes de referencia y etiquétalas como "image number X" en el prompt. Para outfits: *"@Robin is wearing this ski outfit at image two"*. Selecciona resolución (hasta 4K) y modelo (Auto o NanoBanana Pro). Genera.

- **Control de pose con editor 3D:** En el campo de imagen de referencia, haz clic en "3D editor". Selecciona animación de la librería (ej. "sprinting animation"). Ajusta cámara, piernas y brazos para la pose deseada (ej. posición de crouch para esquiar). Posiciona la cámara exacta para el ángulo final. Haz clic en "Update pose". Etiqueta la imagen 3D en el prompt.

- **Posicionamiento preciso en escena:** En el prompt, describe la escena. Sube una imagen de fondo y haz clic en "position". Aparecerá un cuadrado que puedes mover y redimensionar para indicar dónde debe aparecer el personaje. Haz clic en "Save placement". Etiqueta la imagen de posición en el prompt.

- **Crear video consistente:** Genera un fotograma inicial (ej. Robin bajando la montaña) y un fotograma final (ej. Robin parada al fondo). Para el final, usa prompt como: *"Robin is standing at the bottom of the ski tracks after she just got off the mountain at image number one. Super happy. Wearing these exact clothes at image two"*. Descarga ambos fotogramas. Ve a "Video mode" → "Image to video". Selecciona modelo con etiqueta "end frame" (recomendados: Google Veo 3.1, Kling 2.6, Pixverse). Configura duración a 10 segundos y calidad máxima. Sube el fotograma inicial como "starting frame" y el final como "end frame". Haz clic en "Create".

- **Uso alternativo:** Usa el personaje como imagen de referencia en "element to video" para generar videos sin necesidad de fotograma inicial, o en la función "story" para videos más largos.

## Reglas para el erudito

- Usa **NanoBanana Pro** cuando quieras la máxima calidad y realismo en imágenes y videos.
- Usa **modelo Auto** cuando no tengas preferencia y quieras que la IA decida el mejor modelo para el prompt.
- Usa **Kling 2.6** para videos con fotograma de inicio y fin cuando necesites duración de 10 segundos y alta consistencia.
- Usa **Google Veo 3.1** o **Pixverse** como alternativas a Kling 2.6 para videos con end frame.
- Usa **4K resolution** cuando crees contenido para plataformas que requieran alta calidad visual.
- Usa **backstory** siempre que tengas tiempo, para dar contexto al personaje y mejorar la coherencia en las generaciones.
- Usa **etiquetas "@"** en el prompt para referenciar directamente a personajes guardados, sin reexplicar quiénes son.
- Usa **"image number X"** en el prompt para referenciar imágenes de outfit, pose o fondo subidas como referencia.
- Usa **3D editor** cuando necesites una pose específica que no encuentres en imágenes de referencia online.
- Usa **position feature** cuando quieras controlar exactamente dónde aparece el personaje dentro de la composición de la escena.
- Usa **4 imágenes de referencia** (frontal, izquierda, derecha, espalda) al crear un personaje desde imágenes para mejor entrenamiento del modelo.
- Usa **NanoBanana** o **SeaDream** como modelos alternativos si NanoBanana Pro no está disponible o no se ajusta al estilo deseado.

## Errores comunes / limitaciones que menciona

- **Problema con métodos tradicionales:** Estar atascado buscando la imagen de referencia perfecta y tener que reexplicar qué imagen usar cada vez que cambias pose, ropa o entorno.
- **Dificultad con múltiples personajes:** Poner varios personajes en la misma escena es "toda otra pesadilla" con métodos convencionales.
- **Inconsistencia al cambiar elementos:** Al modificar pose, vestimenta o ambiente, los métodos antiguos obligan a regenerar y reexplicar referencias constantemente.
- **Limitación de poses:** Sin el editor 3D, estás limitado a las poses que encuentres online; el editor 3D resuelve esto permitiendo crear poses personalizadas.
- **Riesgo de inconsistencia en vestimenta:** Si no se referencia explícitamente la ropa en el prompt del fotograma final, la IA puede cambiar la vestimenta en el video.

===== hZHy0f7Uy-s.md =====
# Runway Gen 4.5 Motion Sketch – Image to Video: Beginners Guide
**Fuente:** AI. Now Y'Know | https://youtu.be/hZHy0f7Uy-s

## Qué enseña
Uso de la función Motion Sketch en Runway Gen 4.5 para convertir imágenes fijas en video mediante anotaciones dibujadas directamente sobre la imagen. Explica el flujo completo: preparación de imagen base, dibujo de trayectorias/áreas/texto en el editor, y evaluación de resultados con sus limitaciones prácticas.

## Técnicas accionables
- **Imagen base:** Usar Runway Gen 4 (8 créditos/imagen) o Nano Banana Pro (20 créditos/imagen) como generador interno; alternativas externas: Midjourney, Image01, Google Flow. La imagen debe tener capas claras: primer plano (grupo de personas), segundo plano (carro de mano), tercer plano (taberna a la izquierda), cuarto plano (paisaje amplio a la derecha).
- **Acceso a Motion Sketch:** En navegación izquierda, clic en "app" → seleccionar "Motion Sketch" → "Draw motion path" bajo "Explore Gen 4.5". Alternativa: clic en "Motion Sketch" en el teaser derecho y luego en el video inferior.
- **Preparación del sketch:** Hacer clic en icono de reset (esquina superior derecha) para eliminar presets existentes. Usar Photoshop para dibujar anotaciones sobre la imagen, guardar y subir; o subir imagen sin editar y usar el editor interno de Runway.
- **Editor Motion Sketch:** Colores disponibles: solo blanco. Herramientas: icono de agarrar (mover paths/shapes/texto), "draw paths" (trazos), "draw shapes" (áreas grandes), icono de etiqueta (texto directo que reemplaza prompt). Undo/redo disponibles.
- **Exportar sketch:** Usar botón "export sketch" en esquina inferior derecha (NO presionar X en superior derecha, eso borra todo).
- **Parámetros técnicos:** Todos los videos generados con Motion Sketch duran 5 segundos, resolución 1280×720 píxeles.
- **Upscale:** Presionar icono de tres puntos debajo del video → seleccionar "upscale" del menú desplegable. La resolución sube a 4960×2340 píxeles. Usa Topaz AI upscaler integrado (cuesta 10 créditos). Alternativa: usar bundle Topaz AI (Video AI, Astra, Gigapixel) localmente.
- **Ejemplos de instrucciones en sketch (verbatim):**
  - "crash zoom inside the house" (sobre ventana)
  - "both people shake hands and laugh" (círculo rojo alrededor de personas)
  - "a white horse enters from the left, dolly camera move"
  - "a group of armored soldiers enters from the right, people run to the left"
  - Secuencia causal: "First, he walks to the wooden cart, picks up the rope, turns toward the woman, and throws the rope in her direction. Second, the woman turns toward the man and catches the rope."
  - Secuencia por colores (timestamp prompting): "Step one, the door of the building opens and a man slowly steps outside. Step two, the woman turns toward the building. Step three, the man laughs."
  - "an armored desert hauler emerges from behind the building, stops next to the people, and a raccoon steps out"

## Reglas para el erudito
- Usa una imagen con capas bien definidas (foreground, midground, background) cuando quieras probar interacciones entre elementos.
- Usa Photoshop para preparar anotaciones cuando necesites precisión milimétrica en la ubicación de instrucciones.
- Usa el editor interno de Runway (sketch mode) cuando quieras iterar rápido sin salir de la plataforma.
- Usa "export sketch" (NO la X) cuando quieras conservar la imagen anotada para generación.
- Usa colores diferentes en las anotaciones cuando definas secuencias de acciones múltiples (timestamp prompting).
- Usa el upscale integrado (Topaz AI) solo si aceptas 10 créditos extra; si tienes Topaz bundle local, procesa fuera de Runway para mayor control.
- Usa múltiples generaciones (hasta 10 intentos) cuando busques reducir morphing en interacciones complejas.
- Consulta el Runway Help Center para documentación sobre Gen 4.5, prompting, shot sizes, framing, camera angles, composition, camera movements y focus techniques.

## Errores comunes / limitaciones que menciona
- El color blanco es el único disponible para anotaciones; si la imagen tiene áreas blancas, las anotaciones se vuelven invisibles.
- La parte izquierda de los edificios cambia de apariencia entre generaciones (inconsistencia visual).
- Runway fuerza movimiento innecesario en los personajes incluso cuando la instrucción no lo pide (manos que se derriten, movimientos forzados).
- Las secuencias complejas de causa-efecto (caminar → tomar cuerda → girar → lanzar) no se ejecutan correctamente, incluso tras múltiples intentos.
- Los objetos aparecen desde el centro de la imagen ignorando la dirección indicada en el sketch (ej: caballo que debía entrar desde la izquierda aparece desde el centro).
- Los personajes se atraviesan entre sí (falta de detección de colisiones).
- Los marcadores de color del sketch a veces permanecen visibles en el video final.
- El morphing es el problema más grave: manos que se convierten en masas fundidas, rostros que se deforman.
- Los vehículos carecen de física básica (vehículo blindado sobre dos ruedas sin volcar).
- Los resultados no cumplen las expectativas del tráiler promocional de Runway; las demostraciones del sitio web no funcionan de forma confiable.
- Cada generación consume créditos sin importar el resultado; no hay reembolsos por resultados insatisfactorios.
- El soporte de Runway AI no ofrece documentación específica para Motion Sketch; recomienda "experimentar" como mejor práctica.

===== jJHDJLzuwa8.md =====
# How to use Runway Gen 3 Camera Control for Better AI Videos!
**Fuente:** Wade McMaster - Creator Impact | https://youtu.be/jJHDJLzuwa8

## Qué enseña
Este tutorial enseña a usar la función **Camera Control** de **Runway Gen 3** para dirigir el movimiento de cámara en videos generados por IA, partiendo de una imagen fija. Explica cómo ajustar parámetros como paneo, inclinación, rotación y zoom mediante un control visual interactivo, y cómo combinar estos movimientos con prompts descriptivos para obtener tomas más dinámicas y controladas.

## Técnicas accionables
- **Acceder a Camera Control:** Dentro de Runway, ve a **Generative Session** y selecciona la pestaña **Camera Control**.
- **Cargar imagen base:** Usa **Select from Assets** para elegir una imagen; luego haz doble clic para cargarla.
- **Estructura de prompt VERBATIM usada:**
  - `"a woman surrounded by burning temples looking around at the fire"`
  - `"smiling"` (añadido a la escena anterior para probar expresión facial)
  - `"a dog in a post-apocalyptic city panning away to look at the buildings"`
  - `"tilt up to the sky to see jellyfish flying upward woods"`
- **Parámetros de cámara disponibles (control visual con guía interactiva):**
  - **Horizontal pan (Paneo horizontal):** mueve la cámara a izquierda/derecha.
  - **Tilt (Inclinación):** inclina la cámara hacia arriba/abajo (ej. mirar hacia el suelo o el cielo).
  - **Vertical (Desplazamiento vertical):** sube o baja la cámara.
  - **Roll (Balanceo):** rota la cámara sobre su eje (ej. un ligero roll para efecto dinámico).
  - **Zoom in/out:** acerca o aleja la vista.
- **Ajuste fino de posición:** Puedes arrastrar el área de la imagen directamente para reposicionar el encuadre (ej. zoom in al rostro y luego mover el punto de vista).
- **Static mode (Modo estático):** Actívalo para mantener la cámara completamente fija; útil para evitar movimiento no deseado.
- **Duración del video:** Se usaron 10 segundos y 5 segundos en ejemplos.
- **Comparación de resultados:** Se generaron dos versiones (una con cámara en movimiento y otra estática) para mostrar la diferencia.
- **Experimento sin prompt:** Se generó un video solo con ajustes de cámara (sin texto) para ver cómo Runway interpreta el movimiento por sí mismo.

## Reglas para el erudito
- **Usa Camera Control** cuando quieras dirigir el movimiento de la cámara en lugar de dejarlo al azar; el control visual te permite previsualizar el encuadre.
- **Activa Static mode** cuando necesites que la cámara no se mueva en absoluto (ej. para retratos o escenas donde el movimiento resta calidad).
- **Combina ajustes de cámara con prompts descriptivos** para guiar tanto el movimiento como el contenido; pero si el prompt genera resultados no deseados, **prueba sin prompt** solo con los controles de cámara.
- **Experimenta con movimientos extremos** (zoom muy cercano, roll pronunciado, inclinaciones forzadas) para explorar los límites del modelo, pero reconoce que no es una ciencia exacta.
- **Usa duraciones cortas (5 segundos)** para pruebas rápidas y ahorrar tiempo de generación.

## Errores comunes / limitaciones que menciona
- **El control de cámara no es una ciencia exacta:** el resultado visual puede no coincidir perfectamente con lo ajustado en la guía.
- **Prompts demasiado creativos o contradictorios** pueden empeorar el resultado (ej. pedir "smiling" en una escena apocalíptica generó un efecto "creepy").
- **El modelo tiene dificultades para "mirar hacia otro lado"** cuando el sujeto principal está centrado; a veces mantiene el foco en la imagen original aunque se intente un paneo.
- **Añadir prompt puede producir elementos no deseados** (ej. al pedir "jellyfish flying upward" apareció una medusa en medio de la escena, no en el cielo).
- **A veces es mejor no usar prompt** y solo confiar en los ajustes de cámara para obtener resultados más naturales.

===== oCcU1C8WilI.md =====
# How To Use Google Flow to Create Consistent AI Characters & Videos 
**Fuente:** AI Edge Mastery | https://youtu.be/oCcU1C8WilI

## Qué enseña
Cómo crear personajes IA consistentes (rostro, voz, identidad) usando Google Flow y reutilizarlos en múltiples escenas de video e imagen. Cubre desde la creación del personaje hasta la generación de videos con el modelo Omni Flash, incluyendo técnicas de consistencia multi-toma.

## Técnicas accionables
- **Crear personaje desde plantilla:** en la sección "Character", haz clic en cualquier template; Flow genera automáticamente un prompt y un personaje nuevo.
- **Crear personaje con prompt propio:** usa un "skill" de Claude (sistema que enseña a la IA a construir prompts). Describe el personaje en Claude, deja que genere el prompt, revísalo, cópialo y pégalo en Flow.
- **Crear personaje desde imagen de proyecto:** sube una imagen desde tu proyecto actual u otro proyecto, luego haz clic en "Add to character".
- **Crear personaje subiendo imagen externa:** sube una imagen de personaje ya creada, asígnale un nombre (evita nombres comunes o de famosos para no contaminar el resultado).
- **Configurar voz personalizada:** selecciona una voz base, asígnale nombre, describe cómo quieres que suene, añade una línea de muestra para que la IA la lea, genera la voz y ajústala si es necesario. Guarda como "new voice".
- **Rellenar "Character info":** describe personalidad, forma de hablar y reacciones habituales para mejorar la consistencia entre escenas.
- **Editar personaje (peinado/color):** haz clic en "+" para que Flow genere automáticamente un prompt para una "character sheet" (vistas adicionales del personaje). Alternativamente, crea la character sheet externamente: proporciona la imagen original y una plantilla a ChatGPT (modelo de imagen) para generar vistas coincidentes. Sube el resultado a Flow.
- **Usar personaje en generación de imagen:** escribe `@` y selecciona el personaje desde la sección "Character". Puedes importar personajes de otros proyectos.
- **Generar video desde imagen (método 1):** arrastra la imagen al cuadro de prompt, escribe un prompt describiendo la escena, menciona al personaje con `@`. Usa el modelo **Omni Flash** (el más reciente). Genera videos de 4 a 10 segundos.
- **Tipos de referencia para video:** "Ingredients" mantienen consistencia de personajes/objetos pero no fijan el primer frame. "Frames" sí fijan la imagen exacta de inicio.
- **Generar video desde texto (método 2):** usa un "multi-shot prompt". Menciona al personaje con `@`. El modelo genera múltiples tomas basadas en el prompt.
- **Extender video (Omni Flash no soporta extensión directa):** guarda el último frame del video, arrástralo al área de prompt, escribe un nuevo prompt para la siguiente escena, vuelve a mencionar al personaje, genera el nuevo clip. Luego regresa al primer video y añade el nuevo clip a la línea de tiempo. Recorta partes para naturalidad. Al presionar "Done", Flow guarda todos los clips como un solo video en la sección "Scene".

## Reglas para el erudito
- Usa nombres de personaje no comunes ni vinculados a famosos para evitar que el modelo tire de conocimiento existente y afecte el resultado.
- Crea primero el personaje en la sección "Character" antes de saltar a generación de video.
- Usa "Frames" cuando necesites que el video comience desde una imagen exacta; usa "Ingredients" cuando solo necesites consistencia sin fijar el primer frame.
- Para extender videos con Omni Flash, guarda el último frame y úsalo como inicio del siguiente clip; no intentes extender directamente.
- Añade la character sheet (vistas múltiples) para mejorar la consistencia del personaje en diferentes imágenes y videos.

## Errores comunes / limitaciones que menciona
- Omni Flash no soporta extender videos generados directamente; hay que usar el método manual de guardar último frame y crear nuevo clip.
- Si usas nombres de personaje demasiado comunes o de famosos, el modelo puede contaminar el resultado con conocimiento previo.
- La opción "Ingredients" no fija el primer frame de la imagen; si necesitas que el video empiece exactamente desde una imagen, debes usar "Frames".

===== oodW_W15rLY.md =====
# GOOGLE VEO 3: THE DEFINITIVE GUIDE FROM SCRATCH TO VIRAL VIDEOS AND PROMPTS
**Fuente:** Arca Artificial by Lordwind Enrique | https://youtu.be/oodW_W15rLY

## Qué enseña (2-3 líneas)
Guía completa para usar Google Veo 3 desde cero: cómo acceder a través de Google Flow (dentro de Google Labs), estructura de prompts optimizada para video, y técnicas para crear videos virales en formatos como entrevistas callejeras, vlogs, ASMR y escenas cinematográficas. Incluye solución de bugs comunes y métodos para convertir videos horizontales a verticales usando Runway.

## Técnicas accionables
- **Acceso a Veo 3:** Suscríbete al plan Google AI Pro (€22/mes, 1000 créditos/mes en Flow) o Google AI Ultra (€140 primeros 3 meses, luego €274, 12,500 créditos/mes, primer mes gratis). Entra a one.google.com, no desde Gemini. Cancela antes del mes para no pagar.
- **Plataforma Flow:** Ve a "Plow" en Google Labs → "crear" → "new project". Opciones: text-to-video, single frame-to-video. Modelos disponibles: Veo 2 (sin audio), Veo 3 quality (100 tokens), Veo 2 fast, Veo 3 Fast (20 tokens, por defecto). Hasta 4 generaciones simultáneas.
- **Estructura de prompt para Veo 3 (8 componentes):**
  1. **Formato inicial:** Define el formato viral al inicio (ej: "street interview style", "selfie video", "realistic cinematic scene")
  2. **Sujeto/personaje:** Siempre al menos un personaje (persona, auto, perro, etc.)
  3. **Acción/verbo:** Qué hace (corre, habla, camina)
  4. **Entorno/fondo:** Escenario que da contexto
  5. **Estilo visual:** Cinematográfico, animado, etc.
  6. **Perspectiva y movimiento de cámara:** Usa términos exactos (pan left, dolly shot, close-up, etc.)
  7. **Iluminación y atmósfera:** Golden hour, noche, estudio fotográfico, etc.
  8. **Sonido y música:** Siempre al final del prompt. Especifica música ambiental y efectos (crujido de puerta, rotura de vidrio, pasos)
- **Diálogo:** Escribe "dialogue:" seguido de dos puntos, sin comillas. Ejemplo: `dialogue: Hi, how are you?` No uses comillas ni apóstrofes (evita subtítulos aleatorios).
- **Diálogo entre personajes:** Especifica quién habla primero. Ejemplo: `After explaining the scene, the reporter speaks first. [diálogo del reportero]. Then the surgeon responds confidently while continuing with his work. [diálogo del cirujano].`
- **Negative prompt:** Añade "no subtitles" para evitar subtítulos no deseados.
- **Combinar movimiento de cámara con acción:** Describe ambos juntos. Ej: "The camera stays on the hand placing the cup on the table" mientras describes la acción.
- **Image-to-video:** Usa "single frame to video" en Flow.
- **Conversión a vertical:** Descarga el video horizontal de Veo 3 → ve a Runway → selecciona modelo "alpha turbo" → usa "expand video" → selecciona el video → elige orientación vertical → genera.
- **Mejora de resolución:** Al descargar, elige "improving resolution" (pasa de 720p a 1080p, sin costo de créditos). El video tendrá watermark.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- **Define el formato al inicio del prompt** cuando quieras un estilo viral específico (entrevista callejera, selfie, escena cinemática).
- **Usa "dialogue:" sin comillas ni apóstrofes** cuando quieras que un personaje hable; evita subtítulos aleatorios.
- **Especifica quién habla primero** cuando tengas diálogos entre dos personajes para evitar que la IA intercambie los roles.
- **Combina descripción de cámara con acción del personaje** cuando quieras mayor profundidad visual (ej: "dolly shot mientras el personaje deja caer la taza").
- **Escribe sonido y música siempre al final del prompt** para que complementen la escena sin saturarla.
- **Usa "no subtitles" como negative prompt** cuando no quieras subtítulos automáticos.
- **Usa Runway alpha turbo "expand video"** cuando necesites convertir un video horizontal de Veo 3 a formato vertical.
- **Usa Veo 3 Fast (20 tokens)** para pruebas y experimentación; reserva Veo 3 Quality (100 tokens) para proyectos finales.

## Errores comunes / limitaciones que menciona
- **Subtítulos aleatorios:** Ocurre cuando usas comillas en el diálogo o apóstrofes en el prompt. Solución: eliminar comillas y apóstrofes, usar "dialogue:" sin puntuación extra.
- **Intercambio de diálogo entre personajes:** La IA cambia quién habla primero si das instrucciones contradictorias (ej: "el doctor habla" pero también "mientras el doctor habla, las luces parpadean"). Solución: estructurar el orden explícitamente.
- **Sin audio generado:** Ocurre cuando el personaje parece un niño (ej: "childlike facial expressions"). La IA no genera audio para personajes con apariencia infantil.
- **Sin opción nativa vertical:** Veo 3 solo genera horizontal. Necesitas Runway u otras herramientas (Luma, Capcut) para convertir a vertical.
- **Watermark en descargas:** Todos los videos descargados tienen marca de agua de Google.
- **Créditos limitados:** Veo 3 Fast gasta 20 tokens por generación; Veo 3 Quality gasta 100 tokens. El plan Pro da 1000 créditos/mes, el Ultra da 12,500.
- **Calidad base 720p:** Los videos se generan en 720p; puedes mejorar a 1080p sin costo extra pero con watermark.

===== utnLVMzxX4U.md =====
# Every Way to Make an AI Video (Which is Best?)
**Fuente:** Tao Prompts | https://youtu.be/utnLVMzxX4U

## Qué enseña
Desglosa seis métodos para generar video con IA (texto a video, imagen a video, video a video, lip sync, ingredientes a video y chat para editar), explicando cuándo usar cada uno según el nivel de control deseado, la consistencia del personaje y el presupuesto. Compara modelos específicos (Veo 3.1, Kling 2.5, Sora 2, Wan, Hailuo, Dreamina, Luma) y sus fortalezas/limitaciones.

## Técnicas accionables

- **Texto a video (text-to-video):** Usa Google Veo 3.1 para diálogos de personajes y seguimiento de prompts. Estructura el prompt con: escenario + personajes + secuencia temporal de acciones (ej: "una batalla espacial dentro de un invernadero en una colonia de Marte; la astronauta se esconde tras una planta, dispara su bláster láser a un robot invasor, el robot se rompe con chispas y se desmorona"). Alternativas: Wan 2.5, Sora 2 (realista pero más censurado y limitado).

- **Imagen a video (image-to-video):** Sube una imagen de referencia + prompt. Para personajes consistentes: genera múltiples tomas del mismo personaje en diferentes escenas con Nano Banana (IA de imágenes), luego anímalas con Veo 3.1. Costo: hasta $1 por video de 8 segundos. Alternativa económica: Kling 2.5 turbo.

- **Timestamped prompting (prompt con marcas de tiempo):** En Google AI Studio, selecciona "frames to video". Desglosa un video de 8 segundos en segmentos: "primeros 3 segundos: estudia la tableta brillante y aparece un holograma de nave espacial; siguientes 3 segundos: zoom a primer plano de ceño fruncido, expresión de preocupación; últimos 2 segundos: un retumbo bajo sacude el hábitat, las luces parpadean, la astronauta se estabiliza".

- **Start and end frames (primer y último fotograma):** En Kling AI, sube dos imágenes (primera y última). Añade prompt que describa la transformación o movimiento (ej: "el oso sacude la cabeza y se transforma en el niño elfo"). Útil para transiciones y movimientos de cámara exactos (ej: órbita de 180° alrededor del personaje).

- **Video a video (video-to-video):** Usa Wan Animate (modelo Wan) con la herramienta "AI avatar" + "photo animate". Necesitas: una imagen del personaje AI + un video de acción real de hasta 15 segundos (si es más largo, divídelo). Alternativa: Luma Labs con la función "modify": sube tu video, extrae el primer fotograma, genera una imagen AI en la misma pose con Nano Banana, luego úsala como start frame para transferir movimiento. Recomendación: mantén la cara del personaje visible y evita movimientos muy rápidos.

- **Lip sync (sincronización de labios):** Sube un archivo de audio (voz o canción) para animar un personaje AI. Opciones: Hunyuan Avatar 4 (movimientos faciales realistas, postura y ademanes), Dreamina Omnihuman 1.5 (personaje camina y habla simultáneamente). En Dreamina: sube foto del avatar + audio + descripción de movimientos (ej: "señala con el dedo mientras mira hacia un lado, recordando una historia pasada"). Si hay múltiples personajes, especifica cuál habla (ej: "ella es el personaje 2").

- **Ingredientes a video (ingredients-to-video):** En Google AI Video Studio, selecciona "ingredients to video". Sube hasta 3 imágenes (personajes + paisaje). Prompt: describe la interacción (ej: "escena de pelea entre la guerrera femenina y el orco en el paisaje; están en un duelo de espadas"). Limitación: resultados menos dinámicos que imagen a video.

- **Chat to edit (edición por chat):** En Runway ML, menú "apps" → opciones predefinidas: cambiar clima (ej: tormenta de nieve), hora del día (ej: mediodía, noche), iluminación (ej: luz cálida de hora dorada), fondo. También puedes eliminar elementos (ej: "elimina el carro de madera del fondo"). Solo funciona con los primeros 5 segundos del video.

## Reglas para el erudito

- Usa **Veo 3.1** cuando necesites diálogos de personajes y alto seguimiento de prompts; es la mejor opción para texto a video e imagen a video.
- Usa **Kling AI con start/end frames** cuando quieras control exacto de la apariencia del personaje y el movimiento de cámara en toda la escena.
- Usa **Wan Animate (video a video)** cuando necesites máximo control sobre movimientos, diálogo y habla; es más inestable con fondos complejos.
- Usa **Dreamina Omnihuman 1.5** para lip sync con movimiento corporal (caminar y hablar); usa **Hunyuan Avatar 4** para lip sync estático con expresiones faciales realistas.
- Usa **imagen a video con timestamped prompting** cuando necesites una secuencia de acciones precisa segundo a segundo.
- Usa **ingredientes a video** solo para prototipos rápidos; para resultados dinámicos, primero combina los elementos en una sola imagen con Nano Banana y luego anímalos con imagen a video.
- Usa **Runway ML chat to edit** para cambios ambientales (clima, hora, iluminación) en videos existentes; acepta resultados imperfectos.

## Errores comunes / limitaciones que menciona

- **Video a video (Wan Animate):** Fondo inestable (paredes se mueven, luces parpadean); difícil mantener fondos complejos estables.
- **Video a video (Luma modify):** Menos desarrollado que texto a video o imagen a video; requiere que la cara del personaje sea claramente visible y evita movimientos muy rápidos.
- **Lip sync (Dreamina):** Manos se deforman o cambian varias veces durante el video (ej: manos de la caballera cambian 3 veces mientras habla).
- **Ingredientes a video:** Resultados lentos y poco dinámicos; no recomendado para escenas de acción o ritmo rápido.
- **Chat to edit (Runway):** Solo funciona con los primeros 5 segundos; al cambiar hora del día, el uniforme y la cara del personaje pueden alterarse; al eliminar objetos, pueden quedar residuos (ej: bloques de madera no eliminados, niebla sin sentido).
- **Sora 2:** Muy censurado y limitado en comparación con Veo 3.1.
- **Costo:** Veo 3.1 cuesta hasta $1 por video de 8 segundos.

===== wPP1RBLQhlU.md =====
# 【別再吹 Seedance 了】Seedance 2.0 vs Kling 3.0：哪個AI影片模型更強？結果真的意外！
**Fuente:** 小V說 | https://youtu.be/wPP1RBLQhlU

## Qué enseña (2-3 líneas)
Comparación directa entre Seedance 2.0 y Kling 3.0 en generación de video con IA, evaluando realismo, movimiento de cámara, control de escena y consistencia de personaje. Muestra cómo usar una plataforma multi-modelo (LitVideo) para generar simultáneamente con ambos modelos y optimizar el flujo de trabajo. Revela que Seedance 2.0 es superior en narrativa y movimiento de cámara, mientras Kling 3.0 destaca en expresiones sutiles y realismo.

## Técnicas accionables
- **Modelos exactos usados:** Seedance 2.0 (modo "full model" para mayor detalle y calidad) y Kling 3.0 (modo "all-round").
- **Plataforma recomendada:** LitVideo (integra ambos modelos, permite cambiar entre ellos sin recargar, generación más rápida que en sitios oficiales).
- **Estructura de prompt VERBATIM (texto a video con imagen de referencia):**
  - Prompt: `70's retro-style couple dance clips`
  - Duración: 15 segundos
  - Subir misma imagen de referencia a ambos modelos para comparación directa.
- **Técnica de generación paralela:** Mientras Seedance 2.0 genera, cambiar inmediatamente a Kling 3.0 con la misma imagen, mismo prompt y misma duración para obtener dos resultados simultáneamente.
- **Función "end-to-end frame" (fotograma inicial y final):**
  - Subir foto del personaje como primer frame.
  - Subir foto del entorno como último frame.
  - Añadir prompt descriptivo de la escena.
  - Activar opción de sonido (check box "sound").
  - Aplicar mismos parámetros en ambos modelos.
- **Términos de cámara/lente/movimiento observados:**
  - Seedance 2.0: plano medio explicando ubicación de personajes, panorámica de seguimiento mostrando entorno, enfoque en expresiones de interacción, cámara lenta final para realzar atmósfera, final elegante.
  - Kling 3.0: movimiento de cámara más simple, mayormente plano medio de seguimiento, pero en comerciales mostró "lens propulsion" (propulsión de lente) y control de escena estable.
- **Truco de consistencia de personaje:** Usar la misma foto de personaje como primer frame en ambos modelos para mantener identidad visual.
- **Image-to-video:** Subir imagen de referencia directamente en la interfaz de LitVideo, seleccionando el modelo antes de generar.
- **Parámetros clave:** Duración fija en 15 segundos para todas las pruebas comparativas; modo "full model" en Seedance 2.0 para mayor detalle.

## Reglas para el erudito (imperativas)
- **Usa Seedance 2.0** cuando necesites narrativa cinematográfica, movimiento de cámara rico y planos variados (medio, panorámico, close-up, cámara lenta).
- **Usa Kling 3.0** cuando priorices realismo en expresiones faciales, control de luz y sombra natural, y estabilidad en escenas de producto o comerciales.
- **Usa LitVideo** como plataforma multi-modelo para generar con Seedance 2.0 y Kling 3.0 simultáneamente, ahorrando tiempo y evitando cambiar entre sitios web.
- **Activa el modo "full model" en Seedance 2.0** para obtener videos más detallados y de mayor calidad.
- **Usa la función "end-to-end frame"** cuando quieras controlar el primer y último fotograma de la escena, subiendo foto de personaje y foto de entorno.
- **Mantén el mismo prompt, misma imagen de referencia y misma duración** al comparar modelos para obtener resultados comparables.
- **Aprovecha descuentos por tiempo limitado** (ej. oferta de San Valentín 2026 con hasta 70% de descuento en planes anuales de LitVideo, ~$7.50/mes) para reducir costos.

## Errores comunes / limitaciones que menciona
- **Kling 3.0** tiene movimiento de cámara más simple y limitado en comparación con Seedance 2.0; sus tomas tienden a ser planos medios de seguimiento sin variedad narrativa.
- **Seedance 2.0** puede tener tiempos de generación más largos en su sitio oficial, pero LitVideo optimiza la velocidad y estabilidad.
- **Ambos modelos** pueden fallar en mantener consistencia de personaje si no se usa la misma imagen de referencia como primer frame.
- **No usar el modo "full model" en Seedance 2.0** resulta en videos de menor calidad y detalle.
- **Generar en sitios oficiales separados** es ineficiente; se recomienda una plataforma integrada como LitVideo para flujo de trabajo ágil.
- **La función de sonido** debe activarse manualmente (check box) en la interfaz de end-to-end frame; no está activada por defecto.

===== zQI_pWw9qWo.md =====
# Tech Tutor Zones
**Fuente:** Dom the AI Tutor | https://youtu.be/zQI_pWw9qWo

## Qué enseña
Tutorial completo de 38 movimientos de cámara para generar videos cinematográficos con IA. Cubre desde dolly shots y efectos ópticos hasta tomas con drones y movimientos estilizados, explicando cómo estructurar prompts para que los modelos de IA interpreten correctamente cada técnica.

## Técnicas accionables

- **Dolly in (lento):** prompt: *"slow dolly in"* – cámara montada en plataforma con ruedas que avanza hacia el sujeto
- **Dolly out (lento):** prompt: *"slow dolly out"* – cámara se aleja del sujeto lentamente
- **Fast dolly in (rush):** prompt: *"fast dolly in"* – cámara avanza rápidamente hacia el rostro del sujeto, creando urgencia
- **Vertigo effect (zolly):** prompt: *"vertigo effect"* o *"zolly"* – cámara retrocede físicamente mientras el lente hace zoom in simultáneamente
- **Extreme macro zoom:** prompt: *"extreme macro zoom, face body to micro"* – zoom desde rostro/cuerpo a nivel microscópico
- **Cosmic hyper zoom:** prompt: *"cosmic hyper zoom, space to street"* – zoom desde el espacio hasta nivel callejero
- **Over-the-shoulder (OTS):** prompt: *"over the shoulder shot"* – cámara montada detrás del hombro de un sujeto, con el primer plano desenfocado y el segundo sujeto nítido (ejemplo creado en Seedance)
- **Fish-eye / peephole lens:** prompt: *"extreme wide angle distortion, fish eye lens, peephole view"* – distorsión de ojo de pez, como mirar por una mirilla
- **Reveal from behind / wipe:** prompt: *"camera starts blocked by a wall, then slides laterally to reveal subject"* – cámara comienza bloqueada por objeto en primer plano y se desliza lateralmente
- **Fly-through aperture:** prompt: *"camera goes through the window to the subject's face"* – cámara atraviesa una abertura (ventana, puerta) hacia el sujeto
- **Reveal from blur fade in:** prompt: *"video starts completely out of focus bokeh, lens slowly pulls focus until subject is razor sharp"* – comienza borroso, el foco se ajusta hasta que el sujeto queda nítido
- **Rack focus (foreground to background):** prompt: *"shot begins with subject in sharp focus and background blurry, halfway through focus shifts, subject becomes blurry and background becomes sharp"* – cambio de foco del sujeto al fondo
- **Tilt up:** prompt: *"tilt up"* – cámara se inclina hacia arriba, desde piernas hasta ojos
- **Tilt down:** prompt: *"tilt down"* – cámara se inclina hacia abajo, desde cabeza hasta pies
- **Truck left:** prompt: *"camera truck left"* – cámara se mueve lateralmente hacia la izquierda sobre un riel
- **Truck right:** prompt: *"camera truck right"* – cámara se mueve lateralmente hacia la derecha sobre un riel
- **Orbit 180:** prompt: *"orbit 180, half circle around subject"* – cámara rodea al sujeto en semicírculo
- **Fast 360 orbit (spin):** prompt: *"fast 360 orbit spin"* – giro completo rápido alrededor del sujeto (duración recomendada: 5 segundos)
- **Slow cinematic arc:** prompt: *"slow cinematic arc, camera moves in a gentle wide curve around subject, revealing side profile slowly"* – arco amplio y suave alrededor del sujeto
- **Pedestal down:** prompt: *"pedestal down"* – cámara baja verticalmente desde el nivel de los ojos al de la cintura
- **Pedestal up:** prompt: *"pedestal up, camera body rises vertically straight up from waist level to eye level"* – cámara sube verticalmente desde la cintura a los ojos
- **Crane up / high angle reveal:** prompt: *"crane up, high angle reveal"* – cámara asciende como en una grúa
- **Crane down / landing:** prompt: *"crane down, landing"* – cámara desciende lentamente como aterrizando
- **Smooth optical zoom in:** prompt: *"smooth optical zoom in"* – zoom óptico suave hacia el sujeto
- **Smooth optical zoom out:** prompt: *"smooth optical zoom out"* – zoom óptico suave alejándose, fondo se vuelve borroso
- **Snap zoom / crash zoom:** prompt: *"snap zoom, crash zoom, sudden extremely rapid zoom directly into subject's eyes"* – zoom extremadamente rápido directo a los ojos
- **Drone flyover:** prompt: *"drone flyover, high altitude flyover over subjects to sea and mountains"* – sobrevuelo de dron a gran altitud
- **Epic drone reveal:** prompt: *"epic drone reveal, pedestal plus tilt"* – combinación de pedestal e inclinación para revelación épica
- **Large scale drone orbit:** prompt: *"large scale drone orbit, massive sweeping aerial circle around subject showing immense scale of environment"* – órbita aérea masiva alrededor del sujeto
- **Top down / God's eye view:** prompt: *"top down drone shot, camera positioned directly overhead pointing straight down, slowly twisting"* – cámara directamente sobre el sujeto apuntando hacia abajo, girando lentamente
- **FPV drone dive:** prompt: *"FPV drone, aggressive drone dive"* – inmersión agresiva estilo dron en primera persona
- **Handheld documentary style:** prompt: *"handheld documentary style camera movement"* – cámara se mueve como sostenida a mano, estilo documental
- **Whip pan:** prompt: *"whip pan, camera whips violently to the left with extreme directional motion blur"* – giro violento de cámara con desenfoque de movimiento extremo
- **Dutch angle / roll:** prompt: *"dutch angle, camera permanently tilted sideways on its Z axis"* – cámara permanentemente inclinada sobre su eje Z para efecto dramático
- **Leading shot / backward tracking:** prompt: *"leading shot, subject walks forward toward camera at steady pace, camera moves backward at exact same speed"* – sujeto camina hacia la cámara mientras ésta retrocede a igual velocidad
- **Following shot / forward tracking:** prompt: *"following shot, subject walks away from camera, camera follows behind at exact same speed"* – cámara sigue al sujeto que se aleja
- **Side tracking / parallel:** prompt: *"side tracking, subject walks from left to right, camera tracks alongside at same speed"* – cámara se mueve paralela al sujeto mientras camina
- **POV walk:** prompt: *"POV walk, first person walk, camera moves forward with slight bobbing and swaying motion of a person walking approaching subject"* – caminata en primera persona con ligero balanceo

## Reglas para el erudito

- Separa en el prompt el movimiento de cámara del sujeto y del entorno para evitar que el modelo de IA malinterprete la acción
- Usa image-to-video cuando quieras mantener un sujeto específico y controlar exactamente el punto de partida visual
- Especifica la duración del video (ej. 5 segundos) cuando necesites que un movimiento completo se ejecute dentro del tiempo de generación
- Usa Seedance para over-the-shoulder shots y otros encuadres con relación cámara-sujeto específica
- Aplica "reveal from blur fade in" cuando quieras una transición dramática desde desenfoque total a nitidez
- Usa "rack focus" cuando necesites cambiar la atención del espectador entre primer plano y fondo
- Emplea "whip pan" para transiciones rápidas con desenfoque de movimiento extremo
- Usa "Dutch angle" para escenas que requieran tensión o efecto dramático
- Aplica "leading shot" o "following shot" cuando el sujeto esté en movimiento y necesites mantener la distancia constante
- Usa "POV walk" solo cuando el modelo lo soporte; puede requerir múltiples intentos

## Errores comunes / limitaciones que menciona

- No todas las generaciones serán perfectas; la creación cinematográfica con IA requiere iteración constante (probar, regenerar, refinar)
- El modelo puede malinterpretar el prompt si no se separa claramente el movimiento de cámara del sujeto y el entorno
- Algunos movimientos como POV walk pueden no funcionar en todos los modelos de video; se necesita repromptear varias veces
- La calidad del video puede variar según el modelo usado (ej. Seedance slow model no produce calidad "de otro mundo")
- Movimientos como "epic drone reveal" pueden no salir místicos o dramáticos a la primera; a veces hay que repromptear para obtener el resultado deseado
- El "fast 360 orbit" puede no completar el giro completo si la duración del video es muy corta (recomienda 5 segundos)