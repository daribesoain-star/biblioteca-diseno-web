## DOCTRINA ACCIONABLE: Generación de Video con IA

### 1. Selección de modelo (Veo/Kling/Seedance/Runway/Sora/Wan/Hailuo)

- **Google Veo 3 / 3.1:** Usar cuando necesites diálogos de personajes, alto seguimiento de prompts, y escenas con audio nativo. Ideal para vlogs, entrevistas callejeras, y narrativa con diálogo. V3 fast para 720p (20 créditos), V3 quality con beta audio para máxima calidad. Fortaleza: estructura JSON para resultados cinematográficos. *(Sebastien Jefferies — https://youtu.be/6LhkvHfpjAY; Tao Prompts — fvV95J0LiOE.md; Tao Prompts — utnLVMzxX4U.md)*
- **Google Veo 2:** Usar para frame interpolation (first/last frame) y funciones legacy como "ingredients to video" y "add to scene". No genera audio. *(Tao Prompts — fvV95J0LiOE.md)*
- **Kling 3.0:** Usar para animaciones largas con personajes consistentes, control preciso de movimiento con start/end frame, y escenas continuas. Fortaleza: permite múltiples referencias y multishot con prompts independientes. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Kling AI (1.0-1.6):** Usar para image-to-video, motion brush (versiones ≤1.1), lip sync, y virtual try-on. Kling 1.6 para máxima calidad y adherencia a prompts en image-to-video. Duración recomendada: 5 segundos. Modo: "Professional mode". Slider de creatividad: 0.5. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0; Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Kling 2.5:** Usar para control preciso de cámara con image-to-video. Subir slider "creativity and relevance" para mayor fidelidad. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Seedance 2.0 (Higgsfield/OpenArt):** Usar para cortometrajes, animación, anuncios de producto y sincronización labial (máx. 13s de audio). Fortaleza: agente multigrilla para storyboard coherente, audio integrado (diálogo, efectos, mood). *(Joy — https://youtu.be/9HY76YLO-M8; Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Runway Gen-4 / Gen-3:** Usar Gen-4 para mejor consistencia de personajes y fuerte alineación con referencias. Gen-3 Alpha Turbo para ahorrar créditos con keyframes y Camera Control. Fortaleza: sistema de @referencias, Act Two para transferencia de gestos, lip sync. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Runway Gen 4.5 Motion Sketch:** Usar para anotaciones dibujadas sobre imagen con control de movimiento por trazos. *(AI. Now Y'Know — hZHy0f7Uy-s.md)*
- **Sora 2 / Sora 2 Pro (en Artlist):** Usar para narrativas con múltiples cortes, diálogos y efectos de sonido. Fortaleza: fórmula `scene intent + shot composition + lighting and tone`, character library para consistencia. *(Noble Goose — https://youtu.be/7tAwOtVTNlE; AI Master — https://youtu.be/H8szjl6KwXs; Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Wan 2.5 / Wan Animate:** Usar para video-to-video con máximo control sobre movimientos y diálogo. Requiere imagen del personaje + video de acción real de hasta 15 segundos. *(Tao Prompts — utnLVMzxX4U.md)*
- **Hailuo (MiniMax):** Alternativa para generación de video con start/end frame. No tiene audio nativo. *(Fuente: "Veo 3 vs Kling vs Hailuo vs Runway" — XEF9KR_B6no; Tao Prompts — utnLVMzxX4U.md)*
- **NanoBanana Pro:** Usar para máxima calidad y realismo en imágenes y videos dentro de OpenArt. *(Youri van Hofwegen — h5kjDJrHw_g.md)*

### 2. Estructura del prompt

- **Fórmula universal Seedance 2.0:** `[the] + [acción] + [setting] + [cámara] + [estilo]`. Ejemplo: *"Medium tracking shot of our kid grooving down a New York sidewalk golden hour"*. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Fórmula Sora 2:** `Scene intent + Shot composition + Lighting and tone`. Siempre en ese orden. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*
- **Fórmula Sora 2 (AI Master):** `[ubicación/escena] + [movimiento de cámara] + [estilo visual o estado de ánimo]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula producto Sora 2:** `[nombre del producto] + [entorno/superficie] + [comportamiento de cámara] + [estética/ambiente]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula narrativa Sora 2:** Usar "cut to" para múltiples tomas. Ejemplo: *"Real estate agent walks through a luxury home. Cut to kitchen closeup. Cut to living room wide shot. Bright natural light. Modern interior design"*. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula perspectiva Sora 2:** `[ángulo de cámara/POV] + [sujeto y acción] + [entorno y ambiente]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula procesos Sora 2:** `[proceso/transformación] + [ángulo de cámara] + [ritmo y ambiente]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Estructura de 8 componentes para Veo 3:**
  1. Formato inicial (ej: "street interview style", "selfie video", "realistic cinematic scene")
  2. Sujeto/personaje
  3. Acción/verbo
  4. Entorno/fondo
  5. Estilo visual
  6. Perspectiva y movimiento de cámara
  7. Iluminación y atmósfera
  8. Sonido y música (siempre al final del prompt)
  *(Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)*
- **Estructura prompt imagen Kling:** Sujeto + ubicación + detalles. Ejemplo: *"a realistic Captain America in his iconic suit, but his head is a Labrador puppy standing on a New York City rooftop in the evening"*. *(Cem Eygi Media — https://youtu.be/17YPqat8aDE)*
- **Estructura prompt video Kling:** Sujeto + movimiento + escena + estilo de cámara + iluminación. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Estructura prompt imagen-a-video Kling:** Sujeto + movimiento + background. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Orden de capas (Kling 1.6):** Sujeto + acción + movimiento de cámara + iluminación/atmósfera + efectos especiales. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Estructura prompt Runway:** "Describe main subject, how it moves, its actions, any mood, and camera movement. Then describe scene or background. Then define style (cinematic, realistic, cartoon, 3D animation)." *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Estructura prompt imagen Nanobanana:** `[estilo] [personaje] [acción] [entorno] [iluminación] [estilo de animación]`. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Estructura VERBATIM (timeline prompt, Sora 2):**
  ```
  [ESTILO] gritty medieval cinematic realism style
  [CÁMARA] 50mm to 85mm prime lens, slow dolly gently moving across the scene
  [HOOK - primeros 3 segundos] tight profile close-up shot, slow dolly, wind hissing, capturing metal and chain mail shimmer
  [CONTEXTO - siguiente shot] focus on parchment map, camera tilting down as fingers trace the route
  [CLÍMAX] over the shoulder medium shot
  [RESOLUCIÓN] knight marching into empty battlefield
  ```
  *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Estructura VERBATIM (horror VHS, Sora 2):**
  ```
  [ESTILO] horror style VHS realism, eerie and analog aesthetic
  [CÁMARA] VHS recorder with handheld shakiness, zoom glitches, interlaced flicker, tracking errors
  [INICIO] close-up of a VHS recorder
  [SEGUNDO SHOT] handheld view from behind
  [TERCER SHOT] medium shot
  [FINAL] video heavily distorting, alien appears in front of camera
  ```
  *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Estructura VERBATIM (Veo 3 con narración):** `"a cinematic slow motion shot of freshly baked chocolate chip cookies being pulled out of the oven"` + `"in a cozy sunlit kitchen"` + `"warm lighting"` + `"steam rising"` + `"...and this is the narration: "History is being made. The Kevin Cookie Company unveils the world's largest chocolate chip cookie."` *(Fuente: "Google Veo 3 Tutorial" — IjF5Uun2jrM)*
- **Estructura VERBATIM (multi-shot simple, Kling 3.0):**
  Shot 1: `man says in brackets [Hollywood is officially cooked]`
  Shot 2: `change angle to side profile and man says [because now you can have multi-shot videos]`
  Shot 3: `change angle to a front closeup of the man and he says [from a single image]`
  *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Prompt VERBATIM para vlog selfie:**
  `self camera angle shot from an extended arm. A Yeti with wife holding up a fish. He's in an icy landscape. Dialogue: "Welcome back to Yeti Adventures. Today, we're learning how to go ice fishing."`
  *(Tao Prompts — fvV95J0LiOE.md)*
- **Prompt VERBATIM para entrevista callejera:**
  `man on the street interview. Inside Gotham City, a young female reporter asked a young man what he thinks about Batman. The young man is unhappy with how many problems Batman causes. Dialogue reporter: "What are your thoughts on Batman?" Dialogue man: "Honestly, he causes more problems than he solves."`
  *(Tao Prompts — fvV95J0LiOE.md)*
- **Diálogo sin comillas en Veo 3:** Usar `dialogue:` seguido de dos puntos, sin comillas ni apóstrofes. Ejemplo: `dialogue: Hi, how are you?` *(Arca Artificial by Lordwind Enrique — oodW_W15rLY.md)*
- **Regla de longitud:** Mantener prompts enfocados, menos de 50 palabras, una idea clara por generación. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Regla de motion prompt:** Describir solo el movimiento, no la apariencia del personaje. No reescribir cara, pelo, outfit porque rompe la consistencia. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Conversión a JSON:** Usar herramienta gratuita *videoprompt.studio* para convertir cada prompt de texto plano a JSON antes de pegarlo en el generador. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*

### 3. Control de cámara y movimiento

- **Static shot:** "static shot" + plano (close-up, medium, wide, extreme close-up). Cámara no se mueve. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Pan / Whip pan:** "pan left to right" o "whip pan". Trípode quieto, cámara gira horizontalmente. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Tilt up / Tilt down:** "tilt up" o "tilt down". Movimiento vertical. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Slow zoom in / Slow zoom out:** "slow zoom in" o "slow zoom out". Construye tensión o distancia emocional. No confundir con dolly. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Fast zoom in:** "fast zoom in". Cambio rápido de lente para acercar al sujeto. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Crash zoom in / Crash zoom out:** "crash zoom in" o "crash zoom out". Efecto agresivo, cómico o de shock repentino. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Dolly in / Dolly out:** "dolly in" o "dolly out". Cámara se mueve físicamente, el lente no cambia. Sensación realista de acercarse o alejarse. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Truck shot:** "truck shot" o "truck left/right". Cámara se mueve lateralmente en línea recta, paralela al sujeto. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Pedestal up / Pedestal down:** "pedestal up" o "pedestal down". Cámara sube o baja verticalmente sin inclinarse. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Slider shot:** "slider shot". Deslizamiento corto y controlado en espacios reducidos. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Push past / Pass by shot:** "push past" o "pass by shot". Cámara avanza pasando un obstáculo para revelar algo oculto. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Arc shot:** "arc shot". Cámara se desplaza en arco alrededor del personaje. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Orbit shot:** "orbit shot" o "360 orbit". Giro completo de 360° alrededor del sujeto. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Tracking shot:** "tracking shot". Cámara se mueve físicamente siguiendo al personaje a la misma velocidad. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Follow shot / Over-the-shoulder:** "follow shot" o "over-the-shoulder tracking". Cámara detrás del hombro del personaje. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Reverse tracking:** "reverse tracking". Cámara retrocede al mismo ritmo que el personaje avanza. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Side tracking:** "side tracking". Cámara paralela al sujeto mientras corre o camina. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Low tracking shot:** "low tracking shot". Cámara apunta por debajo del cinturón. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Vehicle tracking:** "vehicle tracking". Seguimiento de vehículos a alta velocidad. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Chase shot:** "chase shot". Cámara agresiva y desordenada que intenta seguir acción impredecible. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Handheld shot:** "handheld shot" o "slight shakiness". Cámara tiembla ligeramente. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Body mounted / Snorricam:** "body mounted camera" o "snorricam". Cámara fija al torso del actor. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Crane up / Crane down:** "crane up" o "crane down". Brazo mecánico levanta o baja la cámara verticalmente. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Drone shots:** "drone flyover", "drone push in", "drone pull back", "drone orbit". Movimientos aéreos suaves. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Helicopter shot:** "helicopter shot". Similar a dron pero más gradual y estable. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **First-person view (FPV):** "first-person view". Lente en los ojos del personaje. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Tilt shift:** "tilt shift". Desenfoque en parte superior e inferior del cuadro. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Infinite zoom:** "infinite zoom". Zoom continuo hacia adentro sin detenerse. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Earth zoom out:** "earth zoom out". Cámara se eleva rápidamente desde un objeto hasta el mundo. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Time lapse:** "time lapse". Cámara fija grabando el mismo lugar por largo tiempo, luego acelerado. *(Dan Kieft — https://youtu.be/7GWd4PV3hoA)*
- **Vertigo effect (zolly):** `vertigo effect` o `zolly` — cámara retrocede físicamente mientras el lente hace zoom in simultáneamente. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Snap zoom / crash zoom:** `snap zoom, crash zoom, sudden extremely rapid zoom directly into subject's eyes`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Dutch angle / roll:** `dutch angle, camera permanently tilted sideways on its Z axis`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Leading shot / backward tracking:** `leading shot, subject walks forward toward camera at steady pace, camera moves backward at exact same speed`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Following shot / forward tracking:** `following shot, subject walks away from camera, camera follows behind at exact same speed`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **POV walk:** `POV walk, first person walk, camera moves forward with slight bobbing and swaying motion of a person walking approaching subject`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **FPV drone dive:** `FPV drone, aggressive drone dive`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Top down / God's eye view:** `top down drone shot, camera positioned directly overhead pointing straight down, slowly twisting`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Handheld documentary style:** `handheld documentary style camera movement`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Reveal from behind / wipe:** `camera starts blocked by a wall, then slides laterally to reveal subject`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Fly-through aperture:** `camera goes through the window to the subject's face`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Reveal from blur fade in:** `video starts completely out of focus bokeh, lens slowly pulls focus until subject is razor sharp`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Rack focus:** `shot begins with subject in sharp focus and background blurry, halfway through focus shifts, subject becomes blurry and background becomes sharp`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Over-the-shoulder (OTS):** `over the shoulder shot` — cámara montada detrás del hombro de un sujeto. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Fish-eye / peephole lens:** `extreme wide angle distortion, fish eye lens, peephole view`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Extreme macro zoom:** `extreme macro zoom, face body to micro`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Cosmic hyper zoom:** `cosmic hyper zoom, space to street`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Lentes y dispositivos:** `fisheye lens`, `macro lens`, `infrared camera`. *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Combinación de movimientos:** `close-up shot on the character's face, then the camera pulls back to reveal her riding on a horse`, `slow crane shot behind the female character walking up the steps of an ancient castle. Then the camera flies above and slowly tilts down to reveal the entire castle.` *(Dom the AI Tutor — zQI_pWw9qWo.md)*
- **Camera Control (Runway Gen-3 Alpha Turbo):** Activar "Camera Control" para añadir panning o tilting. "These camera settings apply to the entire video, not just a single keyframe." *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Parámetros de cámara en Runway Gen 3:** Horizontal pan, Tilt, Vertical (desplazamiento vertical), Roll, Zoom in/out. *(Wade McMaster — jJHDJLzuwa8.md)*
- **Static mode (Runway):** Activar para mantener la cámara completamente fija. *(Wade McMaster — jJHDJLzuwa8.md)*
- **Motion Brush (Kling ≤1.1):** Opción "draw motions" para asignar movimientos por áreas segmentadas automáticamente. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Control de velocidad:** Usar `fast` como palabra clave cuando los movimientos por defecto sean demasiado lentos. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Lente y apertura (Higgsfield/Cinema Studio):** Cámara: `Film`, Lente: `Anamorphic 35mm`, Apertura: `F 1.4`, Aspect ratio: `21:9`. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*

## 4. Consistencia de personaje/identidad

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

## 5. Image-to-video y first/last frame

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

## 6. Errores comunes, límites y negative prompts

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