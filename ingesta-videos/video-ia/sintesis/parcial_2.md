# DOCTRINA ACCIONABLE: Generación de Video con IA

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
- **Negative prompts:** No se mencionan en ninguno de los tutoriales analizados.