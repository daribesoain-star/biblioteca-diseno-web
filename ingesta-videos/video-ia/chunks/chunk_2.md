

===== HMVSCEh72n4.md =====
# The Complete Guide to Making Cinematic AI Videos (2026)
**Fuente:** Roboverse | https://youtu.be/HMVSCEh72n4

## Qué enseña (2-3 líneas)
Flujo completo para crear cortometrajes cinematográficos con IA: desde la planificación narrativa en Claude hasta la generación de video con control de cámara, lente y color grading en Higgsfield, más edición final en CapCut y upscaling a 4K con Topaz Video AI. El método clave es guardar personajes como "elementos" reutilizables para mantener consistencia visual entre tomas.

## Técnicas accionables

- **Planificación narrativa:** pegar en Claude este prompt: *"Create a detailed cinematic short film plan. Include: character list (age, build, face, wardrobe), locations, scene breakdown in exact generation order, dialogue, aesthetic direction, and color grading directions. Fill in brackets with my ideas: [personajes, locaciones, género, tono]"*.

- **Generación de character sheets (Higgsfield → Cinema Studio):** seleccionar modo *Image*, modelo *GPT Image 2*, aspect ratio *16:9*, calidad *High*. Prompt para personaje masculino: *"A three-part character sheet of our main male character. He's standing in two different poses, one from the front and one from the back. And right next to them, a detailed close-up of his face."* Repetir con descripción femenina.

- **Guardar personajes como elementos reutilizables:** tras generar, hacer clic en *Save as Element*, asignar nombre. Luego invocar con *@nombre* en cualquier prompt futuro.

- **Generación de locación:** mismo modelo y ajustes, prompt: *"A very dark and misty park at night, cinematic"*.

- **Composición de escena (image-to-image):** generar primera imagen del personaje en la locación con prompt: *"He's sitting alone on one side of the bench with his coffee held in both hands. The lamp post is right behind him, and the rest of the bench is empty."* Para añadir segundo personaje, usar la imagen generada como referencia y prompt: *"[descripción de la segunda persona añadida a la escena]"*.

- **Color grading pre-video:** abrir panel *Color Grading* en Higgsfield, seleccionar preset *Black and White Film*, mantener *Film Grain* activado. Aplicar el mismo grade a todas las imágenes de referencia antes de generar video.

- **Configuración de cámara para video (Cinema Studio → Video mode):**
  - Cámara: *Film*
  - Lente: *Anamorphic 35mm*
  - Apertura: *F 1.4*
  - Género: *Noir*
  - Aspect ratio: *21:9* (ultra-wide cinematográfico)

- **Estructuración de prompts en JSON:** usar herramienta gratuita *videoprompt.studio* para convertir cada prompt de texto plano a JSON antes de pegarlo en el generador.

- **Generación de video:** cargar las imágenes con color grading como referencia, pegar el JSON prompt, ajustar duración por toma.

- **Edición en CapCut:** importar los 3 videos, ordenar en timeline, recortar frames donde el personaje "toma el camino equivocado" o aparecen objetos sin explicación (ej: taza de café sin que se vea colocarla).

- **Upscaling a 4K con Topaz Video AI:** modelo *Starlight Precise* (especializado para video generado por IA), frame rate *30 fps* (no 60 fps, que da aspecto de transmisión en vivo).

## Reglas para el erudito

- Usa Claude para planificar toda la narrativa (personajes, locaciones, diálogos, orden de escenas, dirección de color) antes de abrir cualquier generador.
- Guarda cada personaje como "elemento" con nombre en Higgsfield inmediatamente después de generarlo; invócalo con @nombre en todos los prompts futuros para mantener consistencia.
- Genera la locación por separado de los personajes, luego combínalos en una sola imagen antes de animar.
- Aplica el color grading (blanco y negro, grano) a las imágenes de referencia antes de generar video, no en el prompt de video.
- Usa aspect ratio 21:9 y apertura F 1.4 con lente anamórfica 35mm para lograr look cinematográfico.
- Convierte cada prompt a JSON usando videoprompt.studio antes de pegarlo en el generador de video.
- Mantén el frame rate final en 30 fps; no subas a 60 fps.
- Usa el modelo Starlight Precise de Topaz Video AI para upscaling de video generado por IA.

## Errores comunes / limitaciones que menciona

- Saltar directamente a generar videos sin planificar la historia produce clips desconectados, personajes incorrectos en escenas equivocadas, diálogos que no coinciden y locaciones inconsistentes.
- Los modelos de IA siempre cometen pequeños errores (ej: personaje toma el camino equivocado y desaparece, objetos aparecen sin explicación). No se pueden evitar; deben corregirse en edición recortando frames.
- Subir el frame rate a 60 fps arruina el look cinematográfico y da aspecto de transmisión en vivo o deportiva.
- Confiar en escribir "blanco y negro" en el prompt de video es menos fiable que aplicar el color grading directamente a las imágenes de referencia antes de generar el movimiento.

===== HOjCT6TxlHM.md =====
# Mastering AI Video: 42 Camera Movement Vocabulary for Prompts (Visual Guide) Motion Examples
**Fuente:** AI Shot Studio | https://youtu.be/HOjCT6TxlHM

## Qué enseña
Este tutorial cataloga y visualiza 42 términos específicos de movimiento de cámara para prompts de video con IA, organizados por categorías. Muestra cómo cada comando es interpretado por los modelos, permitiendo controlar la generación de movimiento con precisión en lugar de usar términos genéricos.

## Técnicas accionables
- **Slow dolly in / Slow dolly out**: Usa exactamente esos términos en el prompt para movimientos lentos de acercamiento o alejamiento.
- **Fast dolly in**: Especifica "fast" para acelerar el movimiento de entrada de cámara.
- **Vertigo effect**: Prompt exacto para el efecto Dolly Zoom (cámara se aleja mientras el zoom se acerca o viceversa).
- **Infinite Scale / Continuity**: Para transiciones de escala continua sin corte.
- **Extreme Macro Zoom**: Acercamiento extremo a nivel microscópico.
- **Cosmic Hypers Zoom**: Zoom hiperrápido a escala cósmica.
- **Character mounted framing**: Cámara montada en el personaje (POV corporal).
- **Over the shoulder**: Plano por encima del hombro, clásico para diálogos.
- **Fish eye / People lens**: Lente ojo de pez o lente gran angular para personas.
- **Obstacle and environmental interaction**: La cámara interactúa con obstáculos del entorno.
- **Reveal from behind**: Revelación desde detrás de un objeto/personaje.
- **White movement through shot**: Movimiento que atraviesa un espacio blanco/luminoso.
- **Fly through**: Vuelo a través de un espacio (interior o exterior).
- **Aperture focus and lens manipulation**: Manipulación de apertura y enfoque de lente.
- **Reveal from blur**: Revelación partiendo de un desenfoque inicial.
- **Fade in**: Fundido de entrada desde negro.
- **Rack focus foreground to background**: Transición de enfoque del primer plano al fondo.
- **Tilt up / Tilt down**: Inclinación vertical de cámara hacia arriba o abajo.
- **Camera truck left / lateral truck right**: Desplazamiento lateral (trucking) izquierdo o derecho.
- **Orbit 180 / Fast 360 orbit / Slow cinematic arc**: Órbita alrededor del sujeto a 180°, 360° rápida o arco lento cinematográfico.
- **Pedestal down / Pedestal up / Crane up / Crane down**: Movimientos verticales de pedestal o grúa.
- **High angle reveal / Crane down landing**: Revelación desde ángulo alto con descenso de grúa.
- **Smooth optical zoom in / Smooth optical zoom out**: Zoom óptico suave (no digital).
- **Snap zoom**: Zoom brusco y rápido (estilo documental).
- **Drone flyover / Epic drone reveal / Large scale drone orbit**: Movimientos de dron: sobrevuelo, revelación épica, órbita a gran escala.
- **Top down God's eye view**: Vista cenital divina.
- **FPV Drone / Aggressive drone dive**: Vuelo en primera persona de dron con picado agresivo.
- **Handheld documentary style**: Cámara en mano estilo documental (movimiento orgánico).
- **Whip pan**: Giro brusco horizontal de cámara.
- **Dutch angle**: Ángulo inclinado (holandés) para tensión.
- **Subject tracking leading shot / backward tracking**: Cámara sigue al sujeto desde adelante (leading) o desde atrás (backward).
- **Following shot forward tracking / Side tracking parallel**: Seguimiento frontal o lateral paralelo.
- **POV walk / First person walk**: Caminata en primera persona.
- **Hyperlapse / Moving time lapse**: Time-lapse con movimiento de cámara.
- **Bullet time**: Efecto Matrix de tiempo congelado con cámara rotando.
- **Barrel roll / Vortex / Inception shot**: Giro de barril, vórtice o efecto Inception (rotación de escenario).
- **Worm's eye tracking / Ground level**: Cámara a nivel del suelo mirando hacia arriba.

## Reglas para el erudito
- Usa "slow dolly in" cuando necesites acercamiento suave y cinematográfico; usa "fast dolly in" para impacto o urgencia.
- Usa "vertigo effect" exactamente cuando quieras el efecto Dolly Zoom; no lo reemplaces por "zoom in" genérico.
- Usa "rack focus foreground to background" para transiciones de enfoque narrativas entre planos.
- Usa "orbit 180" para semicírculo alrededor del sujeto; "fast 360 orbit" para rotación completa rápida.
- Usa "handheld documentary style" para movimiento orgánico e inestable; "smooth optical zoom" para tomas estables.
- Usa "bullet time" para congelar la acción con cámara rotante; "barrel roll" para giro completo de cámara sobre su eje.
- Usa "worm's eye tracking" para perspectiva desde el suelo; "top down God's eye view" para cenital absoluto.
- Usa "hyperlapse" para time-lapse con desplazamiento; "moving time lapse" para time-lapse en movimiento continuo.

## Errores comunes / limitaciones que menciona
- Usar términos genéricos como "camera moves forward" produce resultados impredecibles (dolly, zoom o hyperlapse aleatorio).
- No todos los modelos interpretan igual los términos; es necesario probar cada comando para ver cómo reacciona la IA.
- El tutorial no especifica modelos concretos (Veo/Kling/Seedance/Runway/Sora/Wan/Hailuo) ni parámetros numéricos; solo lista el vocabulario de movimiento.
- No se mencionan técnicas de consistencia de personaje, image-to-video, first/last frame ni negative prompts.
- La efectividad de cada término depende del modelo de IA utilizado y su entrenamiento específico en lenguaje cinematográfico.

===== HTBfxEqDCdU.md =====
# This Is How To Use Kling 3.0 Like A PRO (The Only Guide You Need)
**Fuente:** Sebastien Jefferies | https://youtu.be/HTBfxEqDCdU

## Qué enseña
Tutorial completo para dominar Kling 3.0 en Higsfield, cubriendo desde multi-shot narratives con lip sync hasta edición avanzada con OmniEdit (relighting, swapping de objetos, reencuadre). Incluye flujos para consistencia de personaje mediante Elements y generación de ángulos múltiples con Angles 2.0.

## Técnicas accionables
- **Modelos exactos:** Kling 3.0, Kling 3.0 Omni (OmniEdit), Kling 3.0 (estándar), Kling 2.6 (versión anterior). Acceso desde Higsfield: hover a Video → Model → Kling → seleccionar versión.
- **Estructura de prompt para multi-shot (simple):**  
  Shot 1: `man says in brackets [Hollywood is officially cooked]`  
  Shot 2: `change angle to side profile and man says [because now you can have multi-shot videos]`  
  Shot 3: `change angle to a front closeup of the man and he says [from a single image]`  
- **Estructura de prompt para multi-shot (complejo con Elements):**  
  Shot 1: `windy day on the mountain in, male lead says with irresistible smile [Kling 3.0 can generate multi-shot scenes in one go]`  
  Shot 2: `camera pans to reveal second character, Margot Robbie says [Wait, you're telling me this is just from one image?] cinematic quality, handheld camera feel`  
  Shot 3: `pans back to @Deadpool saying [Guys, come on. I don't have all day.]`  
- **Uso de @ para referenciar personajes:** `@Seb`, `@Margot`, `@Deadpool` (Kling reconoce personajes icónicos sin elemento). Para personajes propios, crear Elements con imágenes de referencia.
- **Creación de Elements:** Arrastrar 1-3 imágenes del personaje (recomienda: close-up, full body shot, side profile). Nombrar (ej. "Seb"). Usar prompt `briefly describe the man in this image` → copiar descripción generada → pegar en campo de descripción → Generate.
- **Generación de ángulos múltiples:** En Elements, subir imagen base → botón "Generate from 12 best angles" (cuesta 2.4 créditos). O usar Nano Banana Pro GPT con prompt: `take the framing and start from image one and replace the man to be the one from image two`.
- **Parámetros de video:** Duración hasta 15 segundos. Aspect ratios: 16:9, 9:16, 1:1. Resolución ajustable (hasta 1080p). Multi-shot: hasta 6 shots (reduciendo a 2 segundos por shot).
- **Cálculo de timing para multi-shot:** Decir las frases en voz alta para medir duración. Ejemplo: "Hollywood is officially cooked" ≈ 4s, "because now you can have multi-shot videos" ≈ 3s, "from a single image" ≈ 2s. O usar ChatGPT: pegar guion y preguntar duración estimada por frase.
- **OmniEdit (Kling 3.0 Omni):** Subir video → prompt `restyle @video but change the background to be a snowy mountain` (dejar settings en Auto). Para más control: generar imagen de referencia con Nano Banana Pro → en Omni, prompt `restyle @video with the style of @image`.
- **Image-to-video simple (sin multi-shot):** Subir imagen → deshabilitar multi-shot → prompt `man bends down, looks into the camera and says [All right, listen up dummies because this is how movies get made now]`.
- **First frame + Elements:** Arrastrar imagen como first frame, habilitar multi-shot, agregar Elements para cada personaje. Usar `@start frame` para referenciar la imagen inicial.
- **GPTs recomendados:**  
  - Para imágenes: Nano Banana Pro (en ChatGPT Explore GPTs). Ejemplo de uso: `Give me a prompt recreate this exact same image, but change the woman to Margot Robbie`.  
  - Para videos: "Kling 3.0 prompt generator" (enlace en descripción). Ejemplo: `take this image and mimic the emotion that the man has, probably shouting, and then describe what I want to say`.

## Reglas para el erudito
- **Usa Elements siempre que quieras consistencia de personaje y movimientos de cámara realistas** – Kling tiene más datos para trabajar y replica movimientos de cámara reales.
- **Usa @nombre cuando el personaje sea icónico** (Deadpool, Margot Robbie) – Kling ya tiene datos de referencia, no necesitas crear elemento.
- **Usa 3 imágenes por elemento** (close-up, cuerpo completo, perfil) – son las más importantes según pruebas extensas.
- **Usa el cálculo de timing oral** para multi-shot – di las frases en voz alta para determinar segundos por shot.
- **Usa "Generate from 12 best angles"** en Elements para obtener múltiples ángulos sin escribir prompts.
- **Usa OmniEdit con imagen de referencia** para mayor control sobre relighting, swapping de objetos, reencuadre y limpieza de video.
- **Usa Nano Banana Pro GPT** para generar prompts de imagen con estructura detallada (cinematic, wardrobe, top frame, environment, lighting, camera lens, style).
- **Usa el Kling 3.0 prompt generator GPT** para prompts de video optimizados.

## Errores comunes / limitaciones que menciona
- **No complicar el prompting en multi-shot** – se puede hacer de forma simple sin estructuras complejas.
- **No olvidar ajustar la duración** – aunque Kling analiza el texto y entiende cambios de shot, es mejor definir timings exactos.
- **No subestimar Elements** – "no one's talking about it, but if you want realistic cinematic looking videos with consistency, you need to be using elements".
- **No usar solo first frame sin Elements** – el video con first frame + Elements es más realista que solo first frame.
- **En early access, tiempos de espera largos** – se acelerarán a partir del 10 de febrero según los desarrolladores.
- **No esperar que Kling reconozca personajes no icónicos sin elemento** – para personajes propios, crear Elements con imágenes de referencia.

===== IjF5Uun2jrM.md =====
# Google Veo 3 Tutorial: Make Cinematic AI Videos with Just a Prompt
**Fuente:** Kevin Stratvert | https://youtu.be/IjF5Uun2jrM

## Qué enseña (2-3 líneas)
Cómo usar Google Veo 3 (modelo de DeepMind) para generar videos cinematográficos con audio sincronizado desde un solo prompt de texto. Cubre escritura de prompts detallados, activación de narración por voz, y uso de Gemini como asistente para refinar prompts. Incluye el proceso de suscripción, generación y descarga en MP4.

## Técnicas accionables
- **Modelo usado:** Google Veo 3 (acceso mediante Gemini, plan pago con 1 mes gratis)
- **Estructura de prompt VERBATIM (ejemplo de cookies):**  
  `"a cinematic slow motion shot of freshly baked chocolate chip cookies being pulled out of the oven"` + `"in a cozy sunlit kitchen"` + `"warm lighting"` + detalles de foco y efectos atmosféricos como `"steam rising"`
- **Para añadir narración:** incluir el texto a narrar entre comillas dobles al final del prompt, ej:  
  `"...and this is the narration: "History is being made. The Kevin Cookie Company unveils the world's largest chocolate chip cookie."`
- **Activación de Veo 3:** en la interfaz de Gemini, hacer clic en el botón "video" en la parte inferior del campo de prompt
- **Descarga:** pasar el cursor sobre el video generado → clic en icono de descarga (esquina superior derecha) → obtienes archivo MP4
- **Refinamiento de prompts con Gemini:** escribir en el mismo chat algo como `"can you help me write a cinematic video prompt about a team of bakers making the world's largest cookie?"` → Gemini devuelve versiones mejoradas con ángulos de cámara, iluminación, música de fondo y ritmo
- **Historial de videos:** en la barra lateral izquierda de Gemini, sección "Recent", aparecen todos los chats previos con sus videos asociados

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa comillas dobles dentro del prompt cuando quieras que Veo 3 genere narración de voz con ese texto exacto
- Incluye siempre detalles de ubicación, iluminación, foco y efectos atmosféricos (como "steam rising") para que el resultado se ajuste a tu visión
- Cuando no sepas cómo redactar un prompt cinematográfico, pídele ayuda a Gemini en el mismo chat antes de generar el video
- Usa el plan de pago (con mes de prueba gratis) para acceder a Veo 3; ambos planes incluyen el generador de video

## Errores comunes / limitaciones que menciona
- El modelo puede generar imperfecciones visuales: en el ejemplo de las cookies, algunos chips de chocolate aparecieron completamente derretidos sobre la galleta sin razón aparente
- No se mencionan limitaciones de duración, resolución máxima, ni restricciones de contenido en el tutorial

===== KWH46O99oLE.md =====
# Timeline Prompting in Sora 2 is CRAZY for Cinematic AI Videos
**Fuente:** Dan Kieft | https://youtu.be/KWH46O99oLE

## Qué enseña
Enseña la técnica de "timeline prompting" en Sora 2 (accesible vía Artlist) para generar videos cinematográficos con control de escena, cámara y narrativa. Explica cómo estructurar prompts por segmentos temporales (hook, contexto, clímax, resolución) y cómo usar image-to-video para mayor consistencia de personajes y estilo.

## Técnicas accionables
- **Modelo usado:** Sora 2 (estándar) y Sora 2 Pro en Artlist. Para imágenes base se usa Midjourney (ejemplo: dragón).
- **Estructura de timeline prompt (VERBATIM del tutorial):**
  ```
  [ESTILO] gritty medieval cinematic realism style
  [CÁMARA] 50mm to 85mm prime lens, slow dolly gently moving across the scene
  [HOOK - primeros 3 segundos] tight profile close-up shot, slow dolly, wind hissing, capturing metal and chain mail shimmer
  [CONTEXTO - siguiente shot] focus on parchment map, camera tilting down as fingers trace the route
  [CLÍMAX] over the shoulder medium shot
  [RESOLUCIÓN] knight marching into empty battlefield
  ```
- **Otro ejemplo de prompt (text-to-video, horror VHS):**
  ```
  [ESTILO] horror style VHS realism, eerie and analog aesthetic
  [CÁMARA] VHS recorder with handheld shakiness, zoom glitches, interlaced flicker, tracking errors
  [INICIO] close-up of a VHS recorder
  [SEGUNDO SHOT] handheld view from behind
  [TERCER SHOT] medium shot
  [FINAL] video heavily distorting, alien appears in front of camera
  ```
- **Parámetros:** 16:9, 12 segundos, 1080p (en Sora 2 Pro).
- **Image-to-video:** Subir imagen (ej: de Midjourney) a Sora 2, luego aplicar timeline prompt. Da más control que text-to-video.
- **Consistencia de personaje:** Se logra describiendo exactamente qué ocurre en cada segmento temporal, sin dejar ambigüedad.
- **Uso de ChatGPT:** Se creó un "timeline prompter" personalizado (GPT) que genera el prompt completo a partir de una idea o imagen.
- **JSON prompting:** Mencionado como formato alternativo más complicado, pero no se detalla.

## Reglas para el erudito
- Usa image-to-video cuando quieras máximo control sobre estilo, personajes y objetos; text-to-video es más aleatorio.
- Usa timeline prompting (no JSON prompting) para dar contexto temporal detallado: hook (0-3s), contexto, clímax, resolución.
- Especifica siempre el estilo al inicio del prompt (ej: "gritty medieval cinematic realism style").
- Define lente y movimiento de cámara exactos (ej: "50mm to 85mm prime lens, slow dolly").
- Describe cada cambio de shot con tipo de plano (close-up, over the shoulder, medium shot) y acción específica.
- Usa ChatGPT para generar el prompt si no sabes redactarlo, pero revisa y ajusta manualmente los segmentos.
- Genera múltiples veces para obtener resultados distintos; no esperas replicación exacta en prompts complejos.

## Errores comunes / limitaciones que menciona
- **Prompts vagos:** "A knight is looking at the map, he puts it away, and then he starts marching forward" da poco contexto y resultados pobres.
- **Censura en Sora:** "Sam, please allow us to do a bit more uncensored stuff on Sora" — el creador señala que Sora puede censurar contenido (ej: dragón siendo derribado).
- **Falta de control total:** "You cannot replicate exactly what you want if you're doing these kind of complex prompts" — incluso con timeline prompting, resultados varían entre generaciones.
- **Sora 2 Pro es caro:** "The most expensive tool on the market right now" — aunque produce mejor calidad, el costo es alto.
- **Glitches no deseados:** En el ejemplo VHS, Sora 2 Pro generó "glitching a little bit too much" sin instrucción explícita.

===== SPjKodmPGIo.md =====
# NEW Kling AI 1.6 Image to Video Tutorial - Insane AI Video Generator
**Fuente:** Roboverse | https://youtu.be/SPjKodmPGIo

## Qué enseña
Tutorial paso a paso para transformar imágenes estáticas en videos profesionales usando Kling AI 1.6, cubriendo desde la carga de imagen, estructura de prompts, configuración de parámetros (duración, modo, creatividad) hasta técnicas avanzadas como lip sync y especificación de estilos visuales. Enfatiza las mejoras en adherencia a prompts, calidad de movimiento y consistencia de detalles frente a versiones anteriores.

## Técnicas accionables
- **Modelo exacto:** Kling AI 1.6 (seleccionar en el menú desplegable superior, versión 1.6)
- **Estructura de prompt VERBATIM (image-to-video):** "woman gracefully turns as the camera slowly pans from left to right" — orden: sujeto + acción + movimiento de cámara + iluminación/atmósfera + efectos especiales
- **Estructura de prompt VERBATIM (paisaje):** "camera smoothly glides forward along a winding dirt path through rolling green hills gradually revealing a panoramic view of distant forests and mountains under a soft golden evening light"
- **Estructura de prompt VERBATIM (text-to-video):** "an elegant woman in a flowing red dress walks confidently through a bustling Tokyo street at night neon signs reflecting off rain slick pavements as the camera smoothly tracks alongside her"
- **Estructura de prompt VERBATIM (movimiento de cámara complejo):** "camera starts at street level slowly rising in a smooth vertical movement revealing the full scale of the cityscape as it tracks the character's movement through the crowd"
- **Estructura de prompt VERBATIM (expresión facial):** "maintains neutral expression while turning head subtle smile forms gradually"
- **Parámetros:** duración recomendada = 5 segundos (mejor consistencia que duraciones más largas); modo = "Professional mode" (máxima calidad); slider de creatividad = 0.5 (resultados balanceados)
- **Truco de consistencia de personaje:** usar imagen de alta resolución como punto de partida; especificar expresiones exactas en el prompt (ej: "maintains neutral expression while turning head")
- **Image-to-video:** cargar imagen de alta calidad; escribir prompt detallado con cámara, iluminación y atmósfera
- **First/last frame:** no disponible en 1.6 (solo en 1.5); en 1.6 se compensa con mayor calidad general
- **Lip sync:** generar video base con mínimo movimiento de boca → hacer clic en botón "Add lip sync" en panel de edición → subir archivo de audio propio o usar texto a voz de Kling → el IA analiza audio y anima labios manteniendo consistencia facial
- **Estilos visuales:** añadir referencias de estilo en el prompt, ej: "rendered in a style reminiscent of Blade Runner meets Studio Ghibli"
- **Negative prompts:** no se mencionan en el tutorial

## Reglas para el erudito
- Usa Kling 1.6 en lugar de 1.5 cuando necesites máxima calidad y adherencia a prompts; reserva 1.5 solo si requieres explícitamente start/end frames
- Usa imágenes de partida de alta resolución para que Kling 1.6 mantenga detalles y texturas consistentes durante la animación
- Estructura los prompts en capas: primero sujeto y acción, luego movimiento de cámara, después iluminación/atmósfera, finalmente efectos especiales
- Especifica movimiento de cámara exacto (slow pan, smooth tracking shot, slow zoom in, vertical movement) para evitar movimientos impredecibles
- Incluye detalles de iluminación y atmósfera (soft ambient lighting, gentle shadows, golden evening light) para resultados más pulidos
- Usa duración de 5 segundos para mantener mejor consistencia que videos más largos
- Mantén el slider de creatividad en 0.5 para equilibrio entre fidelidad al prompt y creatividad
- Para lip sync, genera primero el video con mínimo movimiento de boca antes de aplicar la sincronización

## Errores comunes / limitaciones que menciona
- Usar prompts genéricos como "woman moves" produce movimiento genérico que no sirve; se necesita especificar acción, dirección y estilo
- No incluir instrucciones de cámara resulta en movimiento impredecible y poco profesional
- Versión 1.6 no incluye la funcionalidad de start y end frames que sí tiene 1.5 (aunque compensa con mayor calidad general)
- Duraciones mayores a 5 segundos reducen la consistencia del video
- En versiones anteriores (pre-1.6) la consistencia de detalles faciales era un desafío mayor; 1.6 lo maneja mucho mejor
- Para lip sync, versiones anteriores sufrían distorsiones incómodas o movimientos irreales; 1.6 mantiene consistencia facial mientras anima los labios

===== XEF9KR_B6no.md =====
# Veo 3 vs Kling vs Hailuo vs Runway — Which AI Makes the Best Cinematic Video?
**Fuente:** AI Video School | https://youtu.be/XEF9KR_B6no

## Qué enseña
Comparación práctica de cuatro generadores de video por IA (Veo 3, Kling, Hailuo, Runway) usando cinco prompts cinematográficos idénticos. Muestra resultados lado a lado y analiza diferencias en calidad visual, movimiento y capacidades como audio nativo (Veo 3).

## Técnicas accionables
- **Modelos comparados:** Veo 3 (Google), Kling (Kuaishou), Hailuo (MiniMax), Runway (Gen-3 Alpha)
- **Estructura de prompt usada:** Descripción cinematográfica completa con sujeto, acción, entorno y estilo visual (ej: "Get your fresh tomatoes here. Shoo. Shoo. Pigeons." — prompt de escena de mercado)
- **Términos de cámara/movimiento:** No se especifican términos técnicos de cámara en el video; los prompts son descriptivos de acción y diálogo
- **Parámetros:** No se detallan parámetros específicos (resolución, duración, fps) para cada modelo
- **Consistencia de personaje:** No se aborda en el video
- **Image-to-video:** No se menciona
- **First/last frame:** No se menciona
- **Negative prompts:** No se mencionan
- **Audio nativo:** Veo 3 genera audio sincronizado con el video; los otros modelos no tienen esta capacidad

## Reglas para el erudito
- Usa Veo 3 cuando necesites audio sincronizado generado por IA junto al video
- Compara siempre el mismo prompt exacto entre generadores para evaluar diferencias reales
- Muestra resultados lado a lado para que el espectador juzgue calidad visual y coherencia de movimiento
- No agregues música externa a modelos sin audio si comparas con uno que sí lo tiene (ventaja injusta)

## Errores comunes / limitaciones que menciona
- Agregar música a modelos sin audio nativo crea una ventaja injusta frente a Veo 3 que sí lo tiene
- No se mencionan limitaciones específicas de cada modelo más allá de la ausencia de audio en Kling, Hailuo y Runway

===== cGTBzed4S4w.md =====
# The Secret to Better AI Videos: Stop Writing Prompts
**Fuente:** AI Video School | https://youtu.be/cGTBzed4S4w

## Qué enseña
El tutorial revela que no debes escribir prompts manualmente para generación de video con IA. En su lugar, debes entrenar un GPT (o GEM) con la documentación oficial del modelo que uses, luego darle tu idea y dejar que él formatee el prompt optimizado para ese modelo específico. La clave es que el arte es tu idea, no el prompt; el prompting es solo un traductor.

## Técnicas accionables
- **Obtén la documentación oficial del modelo** desde estas ubicaciones exactas:
  - **Hailuo**: sitio oficial de Hailuo
  - **Kling**: sitio oficial de Kling
  - **Luma Dream Machine**: sitio oficial de Luma
  - **Veo**: DeepMind → "Build with Gemini" → Documentación → "Veo video generation" → "Prompt writing basics". Guarda como PDF simulando impresión.
  - **Runway**: documentación dispersa en múltiples lugares del sitio
- **Carga la documentación en un LLM** de una de estas formas:
  - **ChatGPT (plan pago)**: ve a "GPTs" → "Create" → sube el archivo en "Knowledge". En instrucciones escribe: "This provides optimized prompts for the user's ideas based on the documentation."
  - **Gemini (plan pago)**: abre el menú lateral → "Explore gems" → "New gem" → añade el conocimiento. Mismas instrucciones.
  - **Versión gratuita (ChatGPT, Gemini, DeepSeek)**: sube el PDF directamente al chat. Usa un chat nuevo por cada proyecto para evitar que el modelo olvide el documento.
- **Estructura de interacción con el GPT/GEM**: dale tu idea en lenguaje natural, no prompts técnicos. Ejemplo: "Quiero un closeup de su rostro y luego revelar lo que está mirando" o "Empezar en su rostro, hacer pull back y orbitar alrededor para ver su vista".
- **Iteración por descripción**: si el resultado no te gusta, describe qué falló. Ejemplo: "Se siente demasiado dramático y exagerado. Quiero algo más cinematográfico y emocionalmente contenido." El GPT reescribe el prompt automáticamente.
- **Placeholders para mejores prácticas**: en el prompt sidekick, usa placeholders como "outline the best practices" para que el GPT extraiga las reglas de la documentación subida.
- **Comparación entre modelos**: dale al GPT una idea y pídele: "I want model optimized prompts for Runway, Hailuo, Veo, Kling" para generar prompts específicos de cada modelo y luego comparar resultados.
- **Generar e iterar**: cuando obtengas un mal resultado, adjunta una captura de pantalla y explica qué salió mal y qué quieres diferente.

## Reglas para el erudito
- Usa un chat nuevo para cada proyecto cuando uses la versión gratuita, porque el modelo olvida el documento subido cuanto más largo sea el historial.
- Describe el movimiento de cámara en lenguaje natural ("closeup de su rostro, luego revelar lo que mira", "pull back y orbitar alrededor") y deja que el GPT lo traduzca a términos técnicos del modelo.
- Cuando un resultado no sea exactamente lo que buscas, vuelve al GPT y añade especificaciones como "que mire al barco al final" o "que sea más cinematográfico".
- Para escenas complejas con múltiples sujetos, describe la relación entre ellos: "un marinero solitario en el barco mirando hacia la costa donde la mujer es apenas visible".
- Prioriza expresar tu visión creativa y emocional ("cómo debería sentirse el espectador") sobre escribir sintaxis técnica de prompts.

## Errores comunes / limitaciones que menciona
- **Error común**: pensar que escribir prompts manualmente es una habilidad valiosa (el "prompt engineer" como trabajo del futuro). El creador argumenta que eso es falso; la habilidad real es articular tu idea y visión creativa.
- **Limitación de versión gratuita**: el modelo olvida el documento subido cuanto más largo sea el chat; por eso recomienda chat nuevo por proyecto.
- **Riesgo de resultados no deseados**: si el prompt generado se siente "demasiado dramático y exagerado", hay que iterar describiendo el tono deseado, no reescribiendo el prompt manualmente.
- **El prompt no es el arte**: el creador enfatiza que enfocarse en escribir prompts manualmente desvía energía creativa de lo importante: la idea, la perspectiva, la intención.

===== cHpgSf7LKEE.md =====
# EVERY Camera Movement Prompt in Kling 2.5 (in 6 Minutes)
**Fuente:** Tao Prompts | https://youtu.be/cHpgSf7LKEE

## Qué enseña (2-3 líneas)
Guía completa para controlar movimientos de cámara en Kling 2.5 usando prompts específicos, desde fijo hasta tracking avanzado, crane shots y tomas submarinas. Enfatiza el uso de image-to-video con contexto de escena para mantener consistencia visual y evitar cambios de color no deseados.

## Técnicas accionables
- **Modelo usado:** Kling 2.5 (función image-to-video: subir imagen de referencia + prompt de movimiento)
- **Ajuste clave:** Subir el slider "creativity and relevance" para que el AI siga los prompts más fielmente
- **Cámara fija:** `fixed lens` – funciona mejor en Kling 2.5, pero si hay movimiento residual al final, reintentar el prompt varias veces
- **Zoom in:** `zoom in` + opcional `fast` para acelerar el movimiento
- **Zoom out:** `camera pullback` + opcional `fast`
- **Arco/rotación alrededor del sujeto:** `rotating lens` – muy consistente, funciona casi siempre
- **Primera persona / drone:** `fpv` (first person view) para vuelos sobre paisajes
- **Vista cenital:** `fly above` + `bird's eye view`
- **Control de saturación de color:** `muted colors` – evita cambios bruscos de color hacia el final del video; si quieres neón, sacrifica consistencia
- **Seguimiento submarino:** `follow` + `underwater` – el personaje y escena se mantienen consistentes
- **Crane shot (de nivel de ojo a overhead):** `camera pulls back` + `fly above overhead` (como si la cámara subiera en una grúa)
- **Combinación de movimientos:** `camera pull back and then tilt up` para revelar lo que hay en el cielo
- **Tracking shot:** `tracking shot` – la cámara sigue al sujeto mientras se mueve
- **Seguimiento de sujeto que camina:** `follow` cuando el sujeto está de espaldas y se aleja
- **Estructura de prompt VERBATIM (ejemplos):**
  - `rotating lens, she has a panicking expression like she's terrified of something, camera pull back, reveal her holding up a weapon to defend herself`
  - `camera zooms in on the woman's eyes`
  - `camera pulls back to reveal her in a dress`
  - `he turns around and raises a pistol, camera zooms in` (problema: no gira completamente)
  - `he turns around and raises a pistol, camera zooms in on his eyes` (solución: fuerza el giro porque la cámara debe seguir los ojos)
  - `tilt up and look at the city through a glass ceiling` (con `muted colors` para evitar saturación)
  - `camera pans to reveal new parts of our characters` (ej: revelar que es un cyborg)
  - `camera goes overhead to show her standing on a geometric pattern`
- **Truco de consistencia de personaje:** Añadir contexto de escena – no solo pedir el movimiento, sino especificar hacia dónde mira la cámara y qué muestra (ej: "zoom in on his eyes" obliga al personaje a girarse)
- **First frame / last frame:** No se menciona explícitamente, pero el image-to-video usa la imagen subida como primer frame
- **Negative prompts:** No se mencionan

## Reglas para el erudito
- Usa `fixed lens` cuando quieras cero movimiento de cámara; si falla, reintenta varias veces
- Usa `rotating lens` cuando necesites un arco consistente alrededor del sujeto (casi siempre funciona)
- Usa `muted colors` cuando el AI añada saturación de color no deseada al final del video
- Usa `camera zooms in on [parte del cuerpo]` cuando quieras forzar al personaje a girarse hacia la cámara
- Usa `fast` como palabra clave cuando los movimientos por defecto sean demasiado lentos
- Usa image-to-video + slider de creatividad alto para que el AI siga los prompts de movimiento más fielmente
- Combina movimientos de cámara con contexto de escena: piensa hacia dónde se mueve la cámara y qué revela, no solo el tipo de movimiento
- Recuerda que cuanto más te alejes del contenido de la imagen original, menos consistente será el video

## Errores comunes / limitaciones que menciona
- **Color saturation:** El AI añade cambios bruscos de color (volviéndose más vibrante) hacia el final del video; se soluciona con `muted colors`, pero se pierde el estilo neón si se deseaba
- **Fixed lens no siempre funciona:** A veces hay movimiento residual al final; hay que reintentar el prompt varias veces
- **Falta de contexto en el prompt:** Pedir solo "camera zooms in" sin especificar qué mostrar hace que el personaje no se gire correctamente (ej: soldado levanta el arma pero sigue de espaldas)
- **Inconsistencia al alejarse:** Cuanto más te alejes del contenido de la imagen original (crane shot, overhead), menos consistente es el video resultante
- **Movimientos lentos por defecto:** A veces los movimientos son demasiado lentos; hay que añadir `fast` para acelerarlos

===== dOmKYJoRboE.md =====
# How to Make Long AI Videos with Consistent Characters (2026)
**Fuente:** Isa does AI | https://youtu.be/dOmKYJoRboE

## Qué enseña
Flujo completo para generar videos largos de IA (hasta ~1 minuto) con personaje y entorno consistentes, usando OpenArt como plataforma unificada. La clave es crear tres activos fijos (personaje entrenado, imagen de cuerpo completo con vestuario, y ubicación) antes de generar cualquier clip, y luego encadenar clips usando el video anterior como referencia en lugar de la ubicación.

## Técnicas accionables
- **Plataforma usada:** OpenArt (all-in-one: story, video, image, character, world, audio)
- **Paso 1 – Crear personaje consistente:** En OpenArt, click en "character" → "create character" → "start from an image". Subir foto frontal o 3/4. Nombrar (ej: "Isa"). El entrenamiento toma minutos. Se genera un tag único (ej: `@Isa`). Ese tag debe incluirse en TODOS los prompts de generación posteriores.
- **Paso 2 – Imagen de cuerpo completo con vestuario:** En OpenArt, click en "image". Modelo: `GPT image 2`. Aspect ratio: `16:9`. Prompt de estilo (ej: "Isa in jungle combat gear, full body shot, tactical vest, boots, backpack"). Incluir `@Isa` para que herede el rostro. Generar 2 variaciones, elegir la mejor. Esta imagen es la referencia visual de vestuario para todos los clips.
- **Paso 3 – Imagen de ubicación:** Mismo flujo de imagen, mismo modelo `GPT image 2`, mismo aspect ratio `16:9`. Prompt detallado (ej: "jungle temple interior, stone walls, overgrown vines, torch lighting, ancient carvings, cinematic"). Generar. Esta imagen ancla el entorno.
- **Paso 4 – Generar clip 1:** En OpenArt, click en "video". Modelo: `SeaDance 2.0`. Subir como referencias: **imagen 1** (personaje vestido) + **imagen 2** (ubicación). Duración: `15 seconds`. Prompt narrativo multi-shot (ej: "Isa pushes through dense jungle foliage towards the temple entrance, camera follows from behind, then cuts to a low angle shot of her stepping onto the stone steps, torchlight flickers on her face"). Generar.
- **Paso 5 – Generar clip 2:** En `SeaDance 2.0`, NO subir la ubicación. Subir como referencias: **imagen 1** (personaje vestido) + **video 1** (el clip anterior como referencia de video). Prompt narrativo que continúe la acción (ej: "Isa walks through the dark corridor, camera pans right to reveal hieroglyphics on the wall, she stops and looks around cautiously"). Generar.
- **Paso 6 – Generar clip 3:** Misma lógica: referencias = **imagen 1** + **video 2**. Prompt que lleve al clímax (ej: "Isa enters the inner sanctum, a glowing artifact on the pedestal, she reaches for it, camera zooms in slowly, dramatic lighting shift"). Generar.
- **Paso 7 – Edición final:** Usar cualquier editor (en el tutorial usan CapCut). Importar los 3 clips en orden. Agregar pista musical de fondo para unificar el audio (el audio de escena ya viene incluido en cada clip de SeaDance 2.0).

## Reglas para el erudito
- Usa `SeaDance 2.0` cuando necesites clips de hasta 15 segundos con múltiples planos y audio integrado; ningún otro modelo maneja esa duración con consistencia narrativa.
- Usa una imagen de referencia de personaje en **16:9** (mismo aspect ratio que los videos) para que el modelo traduzca la información visual sin distorsión.
- Usa el **video anterior como referencia** (no la ubicación) a partir del segundo clip; esto fuerza al modelo a continuar la escena en lugar de reiniciarla.
- Incluye el tag del personaje entrenado (`@Nombre`) en TODAS las generaciones de imagen y video para mantener el rostro.
- Genera la descripción de escena por escrito (en Claude o similar) ANTES de tocar cualquier herramienta de generación; eso unifica todas las decisiones creativas.

## Errores comunes / limitaciones que menciona
- **Error:** Abrir el generador de video y escribir un prompt directamente sin planificación previa. Resultado: personaje y entorno cambian en cada clip, el video final parece una colección aleatoria de escenas.
- **Error:** Confiar solo en el tag del personaje entrenado para mantener la consistencia. El tag fija el rostro pero NO el vestuario, peinado ni estilo general. Se necesita una imagen de cuerpo completo como referencia visual adicional.
- **Error:** Usar la misma imagen de ubicación como referencia en todos los clips. Esto hace que cada clip reinicie el entorno desde cero. La solución es reemplazar la ubicación por el video anterior a partir del segundo clip.
- **Limitación:** Modelos de video que generan solo 5-10 segundos por clip (como la mayoría) fuerzan a usar más clips, lo que multiplica los puntos de ruptura de consistencia. SeaDance 2.0 con 15 segundos reduce ese riesgo.
- **Limitación:** En escenas de acción intensa, SeaDance 2.0 puede tener "minor flaws" (pequeños errores visuales), pero el tutorial lo considera el mejor modelo disponible para este flujo.

===== f4HcdR3cd4M.md =====
# Consistent Character Sheets in Nano Banana (Prompts Included!)
**Fuente:** AI Video School | https://youtu.be/f4HcdR3cd4M

## Qué enseña (2-3 líneas)
Cómo generar una hoja de referencia de personaje consistente a partir de una sola foto usando Nano Banana, y luego emplear esa hoja como ingrediente (element/reference) para crear imágenes y videos con el mismo personaje, incluso cambiando su vestimenta o teniendo múltiples personajes en una escena.

## Técnicas accionables
- **Modelo usado:** Nano Banana (plataforma de generación de imágenes y video con soporte de "ingredients" o "elements" o "references").
- **Estructura de prompt para crear la hoja de referencia (VERBATIM):** El creador pega el prompt directamente desde la descripción del video. No se transcribe el prompt exacto en el video, pero se muestra que se usa en la sección "Create Image" de Nano Banana.
- **Parámetros para la hoja de referencia:**
  - Modo: "Create Image"
  - Relación de aspecto: 16:9
  - Outputs: 2 (elige la que mejor muestre al personaje en primer plano)
  - Se añade la foto original como "reference image" (clic en "+")
  - Se pega el prompt de la descripción
- **Proceso para generar una imagen de inicio (start image) con el personaje:**
  - En Nano Banana, añadir la hoja de referencia como "reference sheet"
  - Añadir un prompt descriptivo (ejemplo: "stand and spin completely around")
  - Configurar en modo "ingredients to video"
- **Proceso para generar video con personaje consistente:**
  - Usar la imagen de inicio (start image) generada
  - Añadir la hoja de referencia como ingrediente adicional (aunque ya se tenga la start image)
  - Prompt de ejemplo: "stand and then spin completely around"
  - Modo: "ingredients to video"
- **Técnica para múltiples personajes en una escena:**
  - Subir ambas hojas de referencia como ingredientes
  - Prompt de ejemplo: "Thanks for agreeing to be on my podcast. It's my first one from outer space. Happy to help. It's my first podcast."
- **Truco de consistencia:** Incluir SIEMPRE la hoja de referencia como ingrediente en cada generación de video, incluso si ya se tiene una start image generada a partir de ella.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa Nano Banana en modo "Create Image" con relación 16:9 cuando generes la hoja de referencia a partir de una foto.
- Usa la hoja de referencia como ingrediente (element/reference) en TODAS las generaciones de video, incluso si ya tienes una start image derivada de ella.
- Usa el modo "ingredients to video" cuando combines la start image con la hoja de referencia para generar video.
- Usa dos hojas de referencia como ingredientes separados cuando necesites dos personajes consistentes en una misma escena.

## Errores comunes / limitaciones que menciona
- No menciona errores explícitos, pero la técnica depende de que el generador soporte "ingredients", "elements" o "references" (no todos los generadores lo hacen).
- La hoja de referencia debe mostrar al personaje en primer plano y con buena visibilidad frontal para que funcione mejor en planos abiertos.
- No se especifica compatibilidad con otros modelos (Veo/Kling/Seedance/Runway/Sora/Wan/Hailuo); solo se demuestra en Nano Banana.