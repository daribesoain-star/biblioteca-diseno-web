# DOCTRINA ACCIONABLE: Generación de Video con IA

## 1) Selección de Modelo

- **Kling 3.0:** Usar para animaciones largas con personajes consistentes, control preciso de movimiento con start/end frame, y escenas continuas. Fortaleza: permite múltiples referencias y multishot con prompts independientes. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Kling AI (1.0-1.6):** Usar para image-to-video, motion brush (versiones ≤1.1), lip sync, y virtual try-on. Fortaleza: versátil para imagen y video, con control de movimiento por áreas. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Seedance 2.0 (Higgsfield):** Usar para cortometrajes, animación, anuncios de producto y sincronización labial (máx. 13s de audio). Fortaleza: agente multigrilla para storyboard coherente, audio integrado (diálogo, efectos, mood). *(Joy — https://youtu.be/9HY76YLO-M8)*
- **Runway Gen-4 / Gen-3:** Usar Gen-4 para mejor consistencia de personajes y fuerte alineación con referencias. Gen-3 Alpha Turbo para ahorrar créditos con keyframes y Camera Control. Fortaleza: sistema de @referencias, Act Two para transferencia de gestos, lip sync. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Google Veo 3:** Usar para anuncios publicitarios profesionales con JSON prompting. V3 fast para 720p (20 créditos), V3 quality con beta audio para máxima calidad. Fortaleza: estructura JSON para resultados cinematográficos. *(Sebastien Jefferies — https://youtu.be/6LhkvHfpjAY)*
- **Sora 2:** Usar para narrativas con múltiples cortes, diálogos y efectos de sonido. Fortaleza: fórmula `scene intent + shot composition + lighting and tone`, character library para consistencia. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*
- **Sora 2 (AI Master):** Usar para contenido viral, publicidad, tráilers. Fortaleza: 5 fórmulas de prompt, botón "Enhance prompt", batching. *(AI Master — https://youtu.be/H8szjl6KwXs)*

## 2) Estructura del Prompt

- **Fórmula universal Seedance 2.0:** `[the] + [acción] + [setting] + [cámara] + [estilo]`. Ejemplo: *"Medium tracking shot of our kid grooving down a New York sidewalk golden hour"*. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Fórmula Sora 2:** `Scene intent + Shot composition + Lighting and tone`. Siempre en ese orden. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*
- **Fórmula Sora 2 (AI Master):** `[ubicación/escena] + [movimiento de cámara] + [estilo visual o estado de ánimo]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula producto Sora 2:** `[nombre del producto] + [entorno/superficie] + [comportamiento de cámara] + [estética/ambiente]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula narrativa Sora 2:** Usar "cut to" para múltiples tomas. Ejemplo: *"Real estate agent walks through a luxury home. Cut to kitchen closeup. Cut to living room wide shot. Bright natural light. Modern interior design"*. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula perspectiva Sora 2:** `[ángulo de cámara/POV] + [sujeto y acción] + [entorno y ambiente]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Fórmula procesos Sora 2:** `[proceso/transformación] + [ángulo de cámara] + [ritmo y ambiente]`. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Estructura prompt imagen Kling:** Sujeto + ubicación + detalles. Ejemplo: *"a realistic Captain America in his iconic suit, but his head is a Labrador puppy standing on a New York City rooftop in the evening"*. *(Cem Eygi Media — https://youtu.be/17YPqat8aDE)*
- **Estructura prompt video Kling:** Sujeto + movimiento + escena + estilo de cámara + iluminación. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Estructura prompt imagen-a-video Kling:** Sujeto + movimiento + background. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Estructura prompt Runway:** "Describe main subject, how it moves, its actions, any mood, and camera movement. Then describe scene or background. Then define style (cinematic, realistic, cartoon, 3D animation)." *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Estructura prompt imagen Nanobanana:** `[estilo] [personaje] [acción] [entorno] [iluminación] [estilo de animación]`. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Regla de longitud:** Mantener prompts enfocados, menos de 50 palabras, una idea clara por generación. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Regla de motion prompt:** Describir solo el movimiento, no la apariencia del personaje. No reescribir cara, pelo, outfit porque rompe la consistencia. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*

## 3) Control de Cámara y Movimiento

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
- **Camera Control (Runway Gen-3 Alpha Turbo):** Activar "Camera Control" para añadir panning o tilting. "These camera settings apply to the entire video, not just a single keyframe." *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Motion Brush (Kling ≤1.1):** Opción "draw motions" para asignar movimientos por áreas segmentadas automáticamente. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*

## 4) Consistencia de Personaje/Identidad

- **Character sheet (Nanobanana):** Crear una imagen que muestre al personaje desde frente, lado y espalda. Prompt: *"A high school student around 16 with a rounded afro and white earphones"* + pedir "shots from the front, the side, and the back all in one image". *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Mismo estilo en TODOS los prompts:** Usar el mismo estilo de animación (ej. "3D animation", "Disney Pixar style") en todos los prompts de personajes. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Character library (Sora 2):** Crear un personaje una vez y reutilizarlo en múltiples videos. El personaje mantiene diseño, estilo y apariencia idénticos en diferentes escenas. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Referencias con @ (Runway):** Subir hasta 3 imágenes de referencia, nombrarlas (ej: "Lion", "JaguarPattern"), y en el prompt usar "@Nombre" para referenciarlas. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Referencias etiquetadas (Seedance):** Al usar múltiples referencias (imagen + video con audio), etiquetar en el prompt para que el AI sepa para qué sirve cada una. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Referencias etiquetadas (Runway Gen-4):** Subir referencia de locación y otra de modelo. Etiquetarlas (ej. "model 2", "location 2") y escribir: *"show me at model 2 in location 2"*. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*
- **Múltiples referencias en una imagen (Nanobanana):** Subir hasta 3 imágenes (character sheets + objetos/escenas). Usar etiquetas (@image2) en el prompt. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Agente multigrilla (Seedance 2.0):** Usar para generar storyboard de 9, 16 o 25 paneles con el mismo personaje. Luego subir una imagen como referencia en Higgsfield. *(Joy — https://youtu.be/9HY76YLO-M8)*
- **Regla de props mínimos:** Cuantos menos accesorios tenga el personaje, menos glitches. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Imágenes de referencia sin estilizar:** Mantenerlas naturales, con iluminación uniforme, sin sombras fuertes, sin gafas de sol, sin fondos recargados. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*
- **Vestimenta e iluminación consistentes:** En todas las subidas para mejores resultados. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

## 5) Image-to-Video y First/Last Frame

- **Start and End Frame (Kling 3.0):** Editar imagen base, subir imagen editada como start frame y original como end frame. Prompt describe movimiento de entrada/salida. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Scene Continuation (Kling 3.0):** Tomar último frame del video generado, descargarlo. Usarlo como start frame en Kling 3.0. Subir imagen nueva de siguiente escena como end frame. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Kling 3.0 Omni Multishot:** Activar "multishot". Subir múltiples elementos. Definir hasta 3 shots con prompts independientes y duraciones distintas. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **First/Last frame (Runway Gen-3 Alpha Turbo):** Definir primer keyframe (imagen), luego agregar hasta dos más (central y final). "Define one image as the first keyframe and then add two more if you want." Las imágenes deben tener contenido similar para transiciones suaves. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Image-to-video (Runway Gen-4):** Subir imagen como referencia obligatoria (Gen-4 Turbo) u opcional (Gen-4). Usar "Input for Video" para seleccionar imagen. Recortar si es necesario. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Image-to-video (Sora 2):** Subir foto de producto, ubicación o escena como referencia. Sora 2 basa el video en esa imagen. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Image-to-video (Sora 2 con transición):** En lugar de "the woman walks", usar *"the woman gently shifts her weight, then begins walking a few slow steps towards the fence down the path"* para animación natural desde el frame inicial. *(Noble Goose — https://youtu.be/7tAwOtVTNlE)*
- **Image-to-video workflow (Seedance):** Generar imagen primero con Nano Banana Pro, luego usar esa imagen como referencia fija en Seedance para animar. *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Timeline prompting (Seedance):** Dividir el clip en segmentos de tiempo. Ejemplo: "0 to 5 seconds: he struts and sings down the sidewalk. 5 to 10: he spins and stomps in a puddle right on the beat. 10 to 15: the camera lifts up into that beautiful overhead shot as he dances in the golden light." *(Mira AI — https://youtu.be/1JkmT6L2CmA)*
- **Workflow de batching (Sora 2):** Escribir 5-10 prompts por adelantado, encolarlos, dejar que se generen mientras se trabaja en otra cosa, luego revisar y descargar. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Generar todos los stills primero (Runway Gen-4):** Para consistencia entre tomas múltiples, generar todas las imágenes fijas primero, luego animarlas una por una. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*

## 6) Errores Comunes, Límites y Negative Prompts

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
- **Límite: Kling 3.0 lip sync deficiente.** Problemas en diálogos largos; requiere ajuste manual del audio en edición. *(Dan Kieft — https://youtu.be/0CjArtUh_Wg)*
- **Límite: Seedance 2.0 audio máx. 13s.** Solo acepta clips de hasta 13 segundos para sincronización labial. Cortar audio previamente. *(Joy — https://youtu.be/9HY76YLO-M8)*
- **Límite: Runway Gen-4 movimiento artístico.** Su movimiento tiende a ser más "artístico" que preciso, a veces flotante o abstracto. *(Justin Serran — https://youtu.be/5zYUNcyRcUc)*
- **Límite: Sora 2 física compleja.** Lucha con líquidos, simulaciones de tela o acciones que desafían la gravedad. Mantener interacciones simples. *(AI Master — https://youtu.be/H8szjl6KwXs)*
- **Límite: Veo 3 fast solo 720p.** Requiere upscaling externo para 1080p/4K. *(Sebastien Jefferies — https://youtu.be/6LhkvHfpjAY)*
- **Límite: Runway videos siempre 720p.** Incluso con imagen de referencia en 4K. *(Skills Factory — https://youtu.be/FqYRkl12ON8)*
- **Límite: Watermark obligatorio en Kling gratuito.** Solo se elimina con pago. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*
- **Límite: Subtítulos no deseados en Seedance.** Incluso añadiendo `全程无字幕、无水印`, en raras ocasiones la IA sigue generando subtítulos. *(Joy — https://youtu.be/9HY76YLO-M8)*
- **Negative Prompts (Kling):** Sección para indicar qué NO debe aparecer. Ejemplo: evitar deformaciones, objetos no deseados. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*# DOCTRINA ACCIONABLE: Generación de Video con IA

## 1) Selección de Modelo

- **Veo 3 (Google/DeepMind):** Usar cuando necesites audio sincronizado generado por IA junto al video. Acceso mediante Gemini (plan pago con 1 mes gratis). No requiere estructura compleja de prompt, pero incluir detalles de ubicación, iluminación, foco y efectos atmosféricos. *(Fuente: "Google Veo 3 Tutorial: Make Cinematic AI Videos with Just a Prompt" — IjF5Uun2jrM)*
- **Kling 3.0 (en Higgsfield):** Usar para multi-shot narratives con lip sync y consistencia de personaje mediante Elements. Soporta hasta 6 shots, duración hasta 15 segundos, aspectos 16:9, 9:16, 1:1. Versiones: Kling 3.0, Kling 3.0 Omni (OmniEdit), Kling 2.6. *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Kling 1.6:** Usar para máxima calidad y adherencia a prompts en image-to-video. Duración recomendada: 5 segundos. Modo: "Professional mode". Slider de creatividad: 0.5. No incluye first/last frame (sí en 1.5). *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Kling 2.5:** Usar para control preciso de cámara con image-to-video. Subir slider "creativity and relevance" para mayor fidelidad. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **SeaDance 2.0 (en OpenArt):** Usar cuando necesites clips de hasta 15 segundos con múltiples planos y audio integrado. Ningún otro modelo maneja esa duración con consistencia narrativa. *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Sora 2 / Sora 2 Pro (en Artlist):** Usar para timeline prompting con control de escena, cámara y narrativa. 16:9, 12 segundos, 1080p. Más caro del mercado. *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Runway (Gen-3 Alpha):** No tiene audio nativo. Comparar con mismo prompt exacto entre generadores. *(Fuente: "Veo 3 vs Kling vs Hailuo vs Runway" — XEF9KR_B6no)*
- **Hailuo (MiniMax):** No tiene audio nativo. *(Fuente: "Veo 3 vs Kling vs Hailuo vs Runway" — XEF9KR_B6no)*
- **Nano Banana:** Usar para crear hojas de referencia de personaje consistentes a partir de una sola foto. Soporta "ingredients" o "elements". *(Fuente: "Consistent Character Sheets in Nano Banana" — f4HcdR3cd4M)*

## 2) Estructura del Prompt

- **Orden de capas (Kling 1.6):** Sujeto + acción + movimiento de cámara + iluminación/atmósfera + efectos especiales. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Estructura VERBATIM (image-to-video, Kling 1.6):** `"woman gracefully turns as the camera slowly pans from left to right"` *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Estructura VERBATIM (paisaje, Kling 1.6):** `"camera smoothly glides forward along a winding dirt path through rolling green hills gradually revealing a panoramic view of distant forests and mountains under a soft golden evening light"` *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Estructura VERBATIM (text-to-video, Kling 1.6):** `"an elegant woman in a flowing red dress walks confidently through a bustling Tokyo street at night neon signs reflecting off rain slick pavements as the camera smoothly tracks alongside her"` *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Estructura VERBATIM (movimiento complejo, Kling 1.6):** `"camera starts at street level slowly rising in a smooth vertical movement revealing the full scale of the cityscape as it tracks the character's movement through the crowd"` *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Estructura VERBATIM (expresión facial, Kling 1.6):** `"maintains neutral expression while turning head subtle smile forms gradually"` *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
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
- **Longitud:** Para Kling 1.6, duración recomendada de 5 segundos para mejor consistencia. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Conversión a JSON:** Usar herramienta gratuita *videoprompt.studio* para convertir cada prompt de texto plano a JSON antes de pegarlo en el generador. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*

## 3) Control de Cámara y Movimiento

- **Dolly:**
  - `slow dolly in` / `slow dolly out`: Movimientos lentos de acercamiento o alejamiento. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `fast dolly in`: Acelerar movimiento de entrada. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Zoom:**
  - `zoom in` + opcional `fast`: Acercamiento. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `camera pullback` + opcional `fast`: Alejamiento. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `smooth optical zoom in` / `smooth optical zoom out`: Zoom óptico suave. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `snap zoom`: Zoom brusco y rápido estilo documental. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `extreme macro zoom`: Acercamiento extremo microscópico. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `cosmic hypers zoom`: Zoom hiperrápido a escala cósmica. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Pan/Tilt:**
  - `tilt up` / `tilt down`: Inclinación vertical hacia arriba o abajo. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `camera pans to reveal`: Revelar nuevas partes de la escena. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Orbit/Rotación:**
  - `rotating lens`: Arco consistente alrededor del sujeto (casi siempre funciona). *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `orbit 180`: Semicírculo alrededor del sujeto. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `fast 360 orbit`: Rotación completa rápida. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `slow cinematic arc`: Arco lento cinematográfico. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Crane/Pedestal:**
  - `pedestal down` / `pedestal up`: Movimientos verticales de pedestal. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `crane up` / `crane down`: Movimientos de grúa. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `camera pulls back` + `fly above overhead`: Crane shot de nivel de ojo a overhead. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Tracking/Seguimiento:**
  - `tracking shot`: Cámara sigue al sujeto mientras se mueve. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `follow`: Cuando el sujeto está de espaldas y se aleja. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `subject tracking leading shot` / `backward tracking`: Cámara sigue al sujeto desde adelante o desde atrás. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `following shot forward tracking` / `side tracking parallel`: Seguimiento frontal o lateral paralelo. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Efectos especiales:**
  - `vertigo effect`: Efecto Dolly Zoom. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `bullet time`: Efecto Matrix de tiempo congelado con cámara rotando. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `barrel roll` / `vortex` / `inception shot`: Giro de barril, vórtice o rotación de escenario. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `whip pan`: Giro brusco horizontal. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `dutch angle`: Ángulo inclinado para tensión. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Perspectivas:**
  - `fpv` (first person view): Para vuelos sobre paisajes. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `fly above` + `bird's eye view`: Vista cenital. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `top down God's eye view`: Vista cenital divina. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `worm's eye tracking` / `ground level`: Cámara a nivel del suelo mirando hacia arriba. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `POV walk` / `first person walk`: Caminata en primera persona. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Estilos de cámara:**
  - `handheld documentary style`: Movimiento orgánico e inestable. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `fixed lens`: Cero movimiento de cámara (reintentar si falla). *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
  - `character mounted framing`: Cámara montada en el personaje (POV corporal). *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
  - `over the shoulder`: Plano por encima del hombro para diálogos. *(Fuente: "Mastering AI Video: 42 Camera Movement Vocabulary" — HOjCT6TxlHM)*
- **Lente y apertura (Higgsfield/Cinema Studio):** Cámara: `Film`, Lente: `Anamorphic 35mm`, Apertura: `F 1.4`, Aspect ratio: `21:9`. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*
- **Combinación de movimientos:** `camera pull back and then tilt up` para revelar lo que hay en el cielo. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Control de velocidad:** Usar `fast` como palabra clave cuando los movimientos por defecto sean demasiado lentos. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*

## 4) Consistencia de Personaje/Identidad

- **Elements (Higgsfield/Kling 3.0):** Arrastrar 1-3 imágenes del personaje (close-up, cuerpo completo, perfil). Nombrar (ej. "Seb"). Usar prompt `briefly describe the man in this image` → copiar descripción → pegar en campo de descripción → Generate. Invocar con `@nombre` en todos los prompts futuros. *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Personajes icónicos:** Usar `@nombre` directamente (Deadpool, Margot Robbie) – Kling ya tiene datos de referencia. *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Guardar como elemento reutilizable (Higgsfield):** Tras generar, hacer clic en *Save as Element*, asignar nombre. Invocar con `@nombre` en cualquier prompt futuro. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*
- **Personaje entrenado (OpenArt):** Click en "character" → "create character" → "start from an image". Subir foto frontal o 3/4. Nombrar. Se genera tag único (`@Isa`). Incluir ese tag en TODOS los prompts de generación posteriores. *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Imagen de cuerpo completo con vestuario:** Generar imagen en 16:9 con el tag del personaje + descripción de vestuario. Usar como referencia visual adicional (el tag fija el rostro pero NO el vestuario). *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Hoja de referencia (Nano Banana):** Crear en modo "Create Image", 16:9, añadir foto original como "reference image". Usar como ingrediente en TODAS las generaciones de video, incluso si ya tienes una start image derivada de ella. *(Fuente: "Consistent Character Sheets in Nano Banana" — f4HcdR3cd4M)*
- **Múltiples personajes en una escena:** Subir ambas hojas de referencia como ingredientes separados. *(Fuente: "Consistent Character Sheets in Nano Banana" — f4HcdR3cd4M)*
- **First frame + Elements (Kling 3.0):** Arrastrar imagen como first frame, habilitar multi-shot, agregar Elements para cada personaje. Usar `@start frame` para referenciar la imagen inicial. *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Contexto de escena (Kling 2.5):** No solo pedir el movimiento, sino especificar hacia dónde mira la cámara y qué muestra. Ej: `camera zooms in on his eyes` obliga al personaje a girarse. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Descripción persistente (Sora 2):** Describir exactamente qué ocurre en cada segmento temporal, sin dejar ambigüedad. *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Seed:** No se menciona explícitamente en los tutoriales.

## 5) Image-to-Video y First/Last Frame

- **Workflow general (Kling 1.6):** Cargar imagen de alta calidad → escribir prompt detallado con cámara, iluminación y atmósfera → duración 5 segundos → modo Professional → creatividad 0.5. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **First/last frame:** No disponible en Kling 1.6 (sí en 1.5). En 1.6 se compensa con mayor calidad general. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Image-to-video con contexto de escena (Kling 2.5):** Subir imagen de referencia + prompt de movimiento. Subir slider "creativity and relevance" para mayor fidelidad. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Image-to-video con timeline prompting (Sora 2):** Subir imagen (ej: de Midjourney) a Sora 2, luego aplicar timeline prompt. Da más control que text-to-video. *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Image-to-image (Higgsfield):** Generar primera imagen del personaje en la locación. Para añadir segundo personaje, usar la imagen generada como referencia y prompt: `"[descripción de la segunda persona añadida a la escena]"`. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*
- **Transiciones entre clips (OpenArt/SeaDance 2.0):** A partir del segundo clip, NO subir la ubicación. Subir como referencias: imagen del personaje vestido + video anterior como referencia de video. Esto fuerza al modelo a continuar la escena en lugar de reiniciarla. *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Workflow completo (OpenArt):**
  1. Crear personaje consistente (tag `@Nombre`)
  2. Generar imagen de cuerpo completo con vestuario (16:9, incluir `@Nombre`)
  3. Generar imagen de ubicación (16:9)
  4. Clip 1: SeaDance 2.0, referencias = imagen personaje + imagen ubicación, 15 segundos
  5. Clip 2: referencias = imagen personaje + video 1
  6. Clip 3: referencias = imagen personaje + video 2
  7. Editar en CapCut, agregar música de fondo
  *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Color grading pre-video (Higgsfield):** Abrir panel *Color Grading*, seleccionar preset *Black and White Film*, mantener *Film Grain* activado. Aplicar el mismo grade a todas las imágenes de referencia antes de generar video. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*

## 6) Errores Comunes, Límites y Negative Prompts

- **Error: Saltar planificación narrativa.** Saltar directamente a generar videos sin planificar la historia produce clips desconectados, personajes incorrectos, diálogos que no coinciden y locaciones inconsistentes. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*
- **Error: Prompts genéricos.** Usar "woman moves" produce movimiento genérico que no sirve. Especificar acción, dirección y estilo. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Error: No incluir instrucciones de cámara.** Resulta en movimiento impredecible y poco profesional. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Error: Confiar solo en el tag del personaje.** El tag fija el rostro pero NO el vestuario, peinado ni estilo general. Se necesita imagen de cuerpo completo como referencia adicional. *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Error: Usar misma imagen de ubicación en todos los clips.** Cada clip reinicia el entorno desde cero. Solución: reemplazar ubicación por video anterior a partir del segundo clip. *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Error: Subir frame rate a 60 fps.** Arruina el look cinematográfico y da aspecto de transmisión en vivo. Mantener en 30 fps. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*
- **Error: Confiar en escribir "blanco y negro" en el prompt.** Es menos fiable que aplicar color grading directamente a las imágenes de referencia antes de generar movimiento. *(Fuente: "The Complete Guide to Making Cinematic AI Videos" — HMVSCEh72n4)*
- **Error: No complicar el prompting en multi-shot.** Se puede hacer de forma simple sin estructuras complejas. *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Error: No subestimar Elements.** "No one's talking about it, but if you want realistic cinematic looking videos with consistency, you need to be using elements". *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Error: No usar first frame sin Elements.** El video con first frame + Elements es más realista que solo first frame. *(Fuente: "This Is How To Use Kling 3.0 Like A PRO" — HTBfxEqDCdU)*
- **Error: Prompts vagos (Sora 2).** "A knight is looking at the map, he puts it away, and then he starts marching forward" da poco contexto y resultados pobres. *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Error: Pensar que escribir prompts manualmente es habilidad valiosa.** El creador argumenta que es falso; la habilidad real es articular tu idea y visión creativa. *(Fuente: "The Secret to Better AI Videos: Stop Writing Prompts" — cGTBzed4S4w)*
- **Límite: Color saturation (Kling 2.5).** El AI añade cambios bruscos de color hacia el final del video. Solución: `muted colors`, pero se pierde estilo neón. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Límite: Fixed lens no siempre funciona.** A veces hay movimiento residual al final; reintentar varias veces. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Límite: Inconsistencia al alejarse.** Cuanto más te alejes del contenido de la imagen original, menos consistente es el video. *(Fuente: "EVERY Camera Movement Prompt in Kling 2.5" — cHpgSf7LKEE)*
- **Límite: Censura en Sora.** "Sam, please allow us to do a bit more uncensored stuff on Sora". *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Límite: Sora 2 Pro es caro.** "The most expensive tool on the market right now". *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Límite: Glitches no deseados.** En ejemplo VHS, Sora 2 Pro generó "glitching a little bit too much" sin instrucción explícita. *(Fuente: "Timeline Prompting in Sora 2 is CRAZY" — KWH46O99oLE)*
- **Límite: Duraciones mayores a 5 segundos (Kling 1.6).** Reducen la consistencia del video. *(Fuente: "NEW Kling AI 1.6 Image to Video Tutorial" — SPjKodmPGIo)*
- **Límite: Modelos de video que generan solo 5-10 segundos.** Fuerzan a usar más clips, multiplicando puntos de ruptura de consistencia. SeaDance 2.0 con 15 segundos reduce ese riesgo. *(Fuente: "How to Make Long AI Videos with Consistent Characters" — dOmKYJoRboE)*
- **Límite: Versión gratuita de LLM olvida documento.** El modelo olvida el documento subido cuanto más largo sea el chat. Usar chat nuevo por proyecto. *(Fuente: "The Secret to Better AI Videos: Stop Writing Prompts" — cGTBzed4S4w)*
- **Negative prompts:** No se mencionan en ninguno de los tutoriales analizados.# DOCTRINA ACCIONABLE: Generación de Video con IA

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