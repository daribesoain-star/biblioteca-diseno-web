# DOCTRINA ACCIONABLE: Generación de Video con IA

## 1. Selección de modelo (Veo/Kling/Seedance/Runway/Sora/Wan/Hailuo)

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

## 2. Estructura del prompt

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

## 3. Control de cámara y movimiento

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