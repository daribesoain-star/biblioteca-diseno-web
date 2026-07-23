# ALL Camera Movement Prompts in AI Filmmaking (38 Cinematic Moves)
**Fuente:** sora | https://youtu.be/zQI_pWw9qWo

## Que ensena
Este video es una masterclass completa de 38 movimientos de cámara aplicados a la producción de video con IA (Veo 3, Kling, Runway). Enseña a separar en el prompt el movimiento de cámara del sujeto y del entorno para evitar alucinaciones, y cubre desde dolly clásicos hasta efectos ópticos, drones y tracking shots.

## Lecciones accionables

### Dolly Moves
- **Slow dolly in:** `"slow dolly in towards the subject"` — cámara avanza lentamente hacia el sujeto.
- **Slow dolly out:** `"slow dolly out from the subject"` — cámara retrocede lentamente.
- **Fast dolly in (rush):** `"fast dolly in, rush towards the subject's face"` — movimiento rápido que genera urgencia.
- **Vertigo effect / Zolly:** `"camera physically moves backward while lens zooms in simultaneously"` — efecto de vértigo (Hitchcock).

### Infinite Scale Continuity
- **Extreme macro zoom:** `"extreme macro zoom, face to body to micro"` — zoom desde rostro hasta nivel microscópico.
- **Cosmic hyper zoom:** `"cosmic hyper zoom, space to street"` — zoom desde el espacio hasta una calle.

### Character-Mounted Framing
- **Over-the-shoulder (OTS):** `"over-the-shoulder shot, foreground subject blurred, background subject in focus"` — cámara montada sobre el hombro.
- **Fish-eye / Peephole lens:** `"extreme wide-angle distortion, fish-eye lens, like looking through a peephole"` — distorsión angular extrema.

### Obstacle & Environmental Interaction
- **Reveal from behind / Wipe:** `"camera starts blocked by a foreground object (wall/pillar), slides laterally to reveal subject"` — cámara se desliza lateralmente desde detrás de un objeto.
- **Fly-through aperture shot:** `"camera flies through a window/aperture towards the subject's face"` — cámara atraviesa una abertura.

### Focus & Lens Manipulation
- **Reveal from blur fade in:** `"video starts completely out of focus (bokeh), lens slowly pulls focus until subject is razor sharp"` — desenfoque inicial que se aclara.
- **Rack focus foreground to background:** `"shot begins with subject sharp, background blurry; halfway focus shifts, subject blurs, background sharpens"` — cambio de foco entre planos.

### Tripod Moves
- **Tilt up:** `"tilt up from legs to eyes of the subject"` — cámara inclina hacia arriba.
- **Tilt down:** `"tilt down from head to feet of the subject"` — cámara inclina hacia abajo.

### Slider Moves
- **Camera truck left:** `"camera truck left, lateral movement on track"` — cámara se desplaza lateralmente a la izquierda.
- **Camera truck right:** `"camera truck right, lateral movement on track"` — cámara se desplaza lateralmente a la derecha.

### Orbital Movements
- **Orbit 180 (half circle):** `"camera orbits 180 degrees around the subject, half circle"` — semicírculo alrededor del sujeto.
- **Fast 360 orbit (spin):** `"fast 360 spin around the subject"` — giro completo rápido.
- **Slow cinematic arc:** `"camera moves in a gentle wide curve around the subject, revealing side profile slowly"` — arco lento y amplio.

### Vertical Movements (Crane / Pedestal)
- **Pedestal down:** `"pedestal down, camera body lowers vertically from eye level to waist level"` — cámara baja verticalmente.
- **Pedestal up:** `"pedestal up, camera rises vertically from waist level to eye level"` — cámara sube verticalmente.
- **Crane up / High angle reveal:** `"crane up, camera rises revealing high angle"` — grúa ascendente.
- **Crane down / Landing:** `"crane down, camera descends slowly"` — grúa descendente.

### Optical Lens Effects
- **Smooth optical zoom in:** `"smooth optical zoom in towards the subject"` — zoom óptico suave.
- **Smooth optical zoom out:** `"smooth optical zoom out, background becomes blurry"` — zoom óptico hacia afuera.
- **Snap zoom / Crash zoom:** `"sudden extremely rapid zoom directly into the subject's eyes"` — zoom violento a los ojos.

### Drone & Aerial Views
- **Drone flyover:** `"high altitude drone flyover over subjects towards sea and mountains"` — sobrevuelo de dron.
- **Epic drone reveal (pedestal + tilt):** `"pedestal up combined with tilt down, epic drone reveal"` — pedestal + tilt.
- **Large scale drone orbit:** `"massive sweeping aerial circle around the subject showing immense scale of environment"` — órbita aérea amplia.
- **Top down / God's eye view:** `"top down drone shot, camera directly overhead pointing straight down, slowly twisting"` — vista cenital.
- **FPV drone dive:** `"FPV drone aggressive dive towards the subject"` — inmersión estilo FPV.

### Stylized & Dynamic Movements
- **Handheld documentary style:** `"handheld camera movement, slight shake, documentary style"` — cámara en mano con vibración.
- **Whip pan:** `"camera whips violently to the left with extreme directional motion blur"` — paneo violento con blur.
- **Dutch angle / Roll:** `"camera permanently tilted sideways on its Z axis, dramatic effect"` — cámara inclinada en eje Z.

### Subject Tracking (Requiere movimiento del sujeto)
- **Leading shot / Backward tracking:** `"subject walks forward toward camera, camera moves backward at same speed"` — cámara retrocede mientras sujeto avanza.
- **Following shot / Forward tracking:** `"subject walks away from camera, camera follows behind at same speed"` — cámara sigue detrás.
- **Side tracking / Parallel:** `"subject walks left to right, camera tracks alongside at same speed"` — cámara se mueve en paralelo.
- **POV walk:** `"first-person walk, camera moves forward with slight bobbing and swaying of a person walking"` — caminata en primera persona.

## Reglas para el director de fotografia IA
- **Separa siempre en el prompt:** cámara, sujeto y entorno por separado. Ejemplo: `"slow dolly in towards the subject, subject is a woman, environment is a studio"`. Si no separas, el modelo puede alucinar y mover al sujeto en lugar de la cámara.
- **Usa slow dolly in** cuando quieras intimidad o revelación gradual; **fast dolly in (rush)** para urgencia o impacto.
- **Usa vertigo effect (zolly)** para transmitir desorientación o tensión psicológica; combina `"camera moves backward"` + `"lens zooms in"`.
- **Para rack focus**, asegúrate de que el sujeto y el fondo estén claramente separados en profundidad; de lo contrario, la IA no podrá ejecutar el cambio de foco.
- **En whip pan**, el motion blur es crítico; si no aparece, añade `"extreme directional motion blur"` al prompt.
- **Para drone orbit**, especifica `"massive sweeping"` y `"immense scale"` para que la IA genere el entorno amplio; de lo contrario, el movimiento será pequeño.
- **En POV walk**, el bobbing y swaying son difíciles de lograr; itera varias veces y usa `"slight bobbing and swaying of a person walking"`.
- **Para evitar alucinaciones en video IA**, no combines movimientos complejos en un solo prompt; genera cada movimiento por separado y luego edita.
- **Usa duración de video corta (5s)** para movimientos rápidos como spin o crash zoom; para movimientos lentos, usa 10s o más.

## Errores comunes que evita o menciona
- **No separar cámara, sujeto y entorno en el prompt:** el modelo mueve al sujeto en lugar de la cámara, generando resultados no deseados.
- **Esperar que cada generación sea perfecta:** el video IA requiere iteración constante; prueba, regenera y refina.
- **Usar movimientos complejos sin especificar dirección:** por ejemplo, `"orbit"` sin `"180"` o `"360"` puede generar un arco incompleto.
- **No especificar la velocidad:** `"slow"` vs `"fast"` cambia completamente la intención narrativa; sé explícito.
- **Confundir zoom óptico con dolly:** el zoom óptico no cambia la perspectiva; el dolly sí. Si quieres cambio de perspectiva, usa dolly, no zoom.
- **No considerar la duración del video:** movimientos como spin de 360° necesitan al menos 5s para completarse; si el video es más corto, el movimiento se corta.
- **Usar handheld sin especificar el estilo:** `"handheld documentary style"` es diferente de `"handheld shaky cam"`; sé preciso para evitar vibraciones no deseadas.