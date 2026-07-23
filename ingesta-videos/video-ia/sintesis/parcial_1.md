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
- **Negative Prompts (Kling):** Sección para indicar qué NO debe aparecer. Ejemplo: evitar deformaciones, objetos no deseados. *(Arca Artificial — https://youtu.be/1wRX1V5qGn0)*