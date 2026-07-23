# 기본인데 진짜 중요한 촬영 방법 7가지 / 카메라 핵심 움직임
**Fuente:** ko_cine | https://youtu.be/OYHdZyIuor0

## Que ensena (2-3 lineas)
Este video desglosa los 7 movimientos de cámara esenciales en cinematografía, explicando su función narrativa y emocional. Enseña a elegir el movimiento correcto según la intención del plano: desde la quietud del trípode para focalizar en el personaje, hasta el dolly y la grúa para crear profundidad o épica. Es una guía práctica para directores de fotografía que buscan intencionalidad en cada toma.

## Lecciones accionables

### 1. Static Shot (Trípode fijo)
- **Término en inglés:** Static Shot / Locked-off Shot
- **Uso:** Entrevistas, diálogos, planos de reacción. La cámara no se mueve; el ojo humano se enfoca en el cambio (el actor) porque el fondo es estático.
- **Prompt sugerido:** `Static camera, locked-off tripod shot, no camera movement, subject centered, shallow depth of field, cinematic lighting, 50mm lens, neutral color grade.`
- **Focal recomendada:** 50mm o 85mm para retrato; 35mm para contexto.

### 2. Panning (Pan)
- **Término en inglés:** Pan Left / Pan Right / Fast Pan (Whip Pan)
- **Uso:** Presentar un nuevo entorno (como girar la cabeza), transición de tono (de tranquilo a acción), o seguir un objeto en movimiento.
- **Prompt sugerido:** `Slow pan right, camera fixed on tripod, revealing a vast landscape, golden hour light, cinematic 24fps, 24mm wide lens.`
- **Para acción:** `Fast whip pan, abrupt camera movement, high energy, action scene, 35mm lens, motion blur.`
- **Nota:** No existe “pan up” o “pan down”; eso es Tilt.

### 3. Tilt (Tilt Up / Tilt Down)
- **Término en inglés:** Tilt Up / Tilt Down
- **Uso:** Revelar un sujeto vertical (edificio, persona de pies a cabeza), mostrar poder (tilt up) o vulnerabilidad (tilt down).
- **Prompt sugerido:** `Slow tilt up from ground to subject's face, revealing strength, low angle, dramatic lighting, 50mm lens.`
- **Prompt sugerido:** `Tilt down from subject's face to hands, showing weakness or defeat, high angle, soft light, 85mm lens.`

### 4. Zoom (Zoom In / Zoom Out)
- **Término en inglés:** Zoom In / Zoom Out / Crash Zoom
- **Uso:** Énfasis dramático (zoom in rápido), revelación de contexto o tema (zoom out lento). No es un movimiento humano natural, por lo que se siente artificial y estilizado.
- **Prompt sugerido:** `Slow zoom out, revealing the subject in a vast empty space, feeling of isolation, anamorphic lens, 35mm equivalent.`
- **Prompt sugerido:** `Crash zoom in on subject's eyes, intense emotion, fast lens movement, 50mm, high contrast.`

### 5. Push / Pull (Dolly In / Dolly Out)
- **Término en inglés:** Push In / Pull Out / Dolly In / Dolly Out
- **Uso:** La cámara se mueve físicamente hacia adelante (push) o hacia atrás (pull). Ideal para presentar un producto, un lugar, o transmitir soledad (pull out de un personaje).
- **Prompt sugerido:** `Dolly push in, camera moving forward towards subject, smooth tracking, cinematic, 24mm wide lens, shallow depth of field.`
- **Prompt sugerido:** `Dolly pull out, camera moving backwards, revealing the character's isolation in a large room, slow movement, 35mm lens.`
- **Diferencia clave con Zoom:** El push/pull cambia la perspectiva (efecto parallax); el zoom comprime/expande el espacio.

### 6. Tracking Shot (Follow / Dolly Track)
- **Término en inglés:** Tracking Shot / Dolly Follow / Side Tracking
- **Uso:** Seguir a un personaje mientras camina. Muestra el entorno y la emoción del personaje de forma dinámica.
- **Prompt sugerido:** `Tracking shot, camera follows subject walking, side tracking, smooth dolly movement, urban environment, cinematic 24fps, 35mm lens.`
- **Prompt sugerido:** `Dolly track, camera moves parallel to subject, revealing environment details, slow motion, golden hour, anamorphic.`

### 7. Parallax / Arc Shot (Circular Dolly)
- **Término en inglés:** Arc Shot / Circular Dolly / Parallax Shot
- **Uso:** La cámara rodea al sujeto en un arco. Añade profundidad 3D a una imagen 2D. Si se hace desde un ángulo bajo, realza el heroísmo.
- **Prompt sugerido:** `Arc shot, camera circles around subject, slow movement, cinematic depth, 50mm lens, dramatic lighting, low angle for heroic feel.`
- **Prompt sugerido:** `Parallax dolly, camera moves in an arc around the subject, creating depth and dimension, 35mm lens, shallow focus.`

### Bonus: Crane / Jib / Handheld
- **Crane/Jib:** Movimiento vertical amplio, para tomas épicas o de revelación.
- **Handheld:** Sensación de realismo, caos o documental.

## Reglas para el director de fotografia IA

- **Usa Static Shot cuando** el foco debe estar 100% en la actuación o el diálogo. En video IA, evita movimiento si el modelo tiende a alucinar fondos; un plano fijo reduce errores de coherencia.
- **Para no alucinar en video IA:** En movimientos complejos (arc, dolly), usa prompts que especifiquen **velocidad** (`slow`, `fast`) y **dirección exacta** (`camera moves left to right`, `camera pushes in`). No dejes ambigüedad.
- **Usa Panning para** transiciones de escena o revelación de paisajes. En Runway/Veo, un pan lento es más estable que un whip pan, que puede generar artefactos.
- **Usa Tilt para** mostrar altura o poder. En Kling, combínalo con `low angle` o `high angle` para reforzar la intención.
- **Usa Zoom con cuidado:** En video IA, el zoom digital (no óptico) puede verse artificial. Prefiere Push/Pull si el modelo lo soporta.
- **Usa Tracking Shot para** seguir a un personaje. Especifica `smooth dolly` o `steadycam` para evitar vibraciones no deseadas.
- **Usa Arc Shot para** dar profundidad. En Veo 3, un arco lento alrededor de un objeto estático funciona mejor que alrededor de un personaje en movimiento (menos alucinaciones).
- **Parámetros clave en prompts:** `24fps`, `cinematic`, `shallow depth of field`, `anamorphic lens`, `golden hour`, `motion blur` (si aplica).
- **Focales recomendadas:** 24-35mm para movimiento y contexto; 50-85mm para retrato y detalle; 100mm+ para compresión y zoom.

## Errores comunes que evita o menciona

- **Confundir Pan con Tilt:** El video aclara que “pan up” no existe; es tilt up. En prompts, usa `tilt up` o `tilt down` para movimientos verticales.
- **Usar Zoom cuando se necesita Dolly:** El zoom no cambia la perspectiva; el dolly sí. Para un efecto cinematográfico real, prefiere `dolly in` sobre `zoom in`.
- **Movimiento sin intención:** No muevas la cámara solo por moverla. Cada movimiento debe tener una razón narrativa (revelar, enfatizar, transicionar).
- **Ignorar el Static Shot:** En video IA, a veces un plano fijo es más poderoso que un movimiento complejo. No subestimes su efectividad.
- **Velocidad incorrecta:** Un pan o tilt demasiado rápido puede marear; demasiado lento puede aburrir. Especifica `slow`, `medium` o `fast` en el prompt.
- **Olvidar el parallax:** El arc shot es la mejor herramienta para dar profundidad 3D en video IA. No lo reemplaces con un simple pan.