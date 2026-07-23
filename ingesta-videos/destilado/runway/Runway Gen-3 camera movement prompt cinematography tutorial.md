# Runway Gen-3 camera movement prompt cinematography tutorial
**Fuente:** runway | https://youtu.be/Runway Gen-3 camera movement prompt cinematography tutorial

## Que ensena (2-3 lineas)
Este tutorial desglosa los movimientos de cámara clásicos del cine (static shot, dolly, pan, tilt, handheld, tracking, leading, crane, aerial, POV, snorricam) y cómo traducirlos a prompts precisos para Runway Gen-3, Veo 3 y Kling. Enseña a controlar la dirección, velocidad y estilo del movimiento de cámara en video IA, combinando teoría cinematográfica con sintaxis de prompting.

## Lecciones accionables

### Regla de oro del prompting en Runway
- **Siempre empezar con el tipo de movimiento de cámara** + descripción del evento en la escena. No describas la imagen estática, solo la acción y el movimiento.
- Usa **"cinematic"** al inicio del prompt de imagen para base visual fílmica.
- Para minimizar alucinaciones: añade **"sharp focus"** en el prompt de imagen inicial.

### Static Shot
- **Prompt Runway:** `static shot natural movement` (movimiento sutil) o `static shot dynamic movement` (más movimiento en frame).
- **Imagen inicial:** Usa `close-up shot` + `sharp focus`. Recomienda Flux para generar la imagen (menos errores anatómicos).
- **Tip:** Para escenas de naturaleza o vida cotidiana, añade `documentary photography` al prompt de imagen.

### Dolly Shot (Dolly In / Dolly Out)
- **Dolly In:** `camera slowly zooms in` o `camera slowly pulls in`. Opcional: `camera slowly zooms to her face`.
- **Dolly Out:** `camera slowly pulls back` o `camera slowly pulls out`.
- **Imagen inicial:** Si no sabes qué shot type usar, escribe `cinematography dolly in` en Flux y él elegirá el encuadre más cercano.
- **Añadir vida:** Agrega `natural movement` al final del prompt.

### Pan Shot
- **Prompt Runway:** `pan camera right` o `pan camera left` (especificar dirección).
- **Duración recomendada:** 5 segundos. Si usas 10s, especifica la segunda parte del plano: `camera pans left, a beautiful sunrise scene`.
- **Imagen inicial:** Usa `off-center shot`, `rule of thirds shot` o `cinematography pan shot`.

### Tilt Shot
- **Tilt Up:** `camera tilts up` (para revelar altura, grandeza).
- **Tilt Down:** `camera tilts down` (para crear suspense, detalle contextual).
- **Uso:** Ideal para revelar escala o generar sorpresa.

### Handheld Shot
- **Prompt Runway:** `handheld shot`.
- **Problema:** Runway a veces pierde coherencia. Usa el **mini video editor** de Runway para recortar inicio/fin.
- **Post-producción:** Acelera el footage al menos **25%** (Runway renderiza más lento de lo natural). Puedes invertir el video (tilt up → tilt down).

### Tracking Shot
- **Prompt Runway:** `tracking shot`, `tracking right shot`, `tracking left shot`. Si especificas dirección, el sujeto se moverá en esa dirección y la cámara lo seguirá.
- **Imagen inicial:** `full body shot` o `over the shoulder shot`. En Flux: `cinematography tracking shot`.

### Leading Shot
- **Prompt Runway:** `leading shot` al inicio del prompt.
- **Efecto:** La cámara va delante del sujeto, guiando al espectador.

### Crane Up Shot
- **Prompt Runway:** `aerial drone shot, camera moves up` o `high angle crane`.
- **Importante:** Usar `aerial drone shot` + `camera moves up` para evitar que Runway lo interprete como tilt.
- **Imagen inicial:** `establishing shot`, `rule of thirds` o `cinematography crane shot`.

### Crane Down Shot
- **Prompt Runway:** `aerial drone shot, camera moves down`.
- **Nota:** Puede requerir varios intentos (reruns).

### Action Shot
- **Técnica clave:** Primero generar en **slow motion** (`slow motion action shot`), luego acelerar en el editor nativo de Runway. Esto produce movimientos más fluidos.
- **Imagen inicial:** `full body shot` del sujeto en movimiento.

### Aerial Drone Shot
- **Prompt Runway:** `aerial drone shot, wide angle establishing shot, showcasing its vast landscape and surroundings`.
- **Imagen inicial:** `landscape photography`. Añade hora del día o clima para mood.

### POV Shot
- **Prompt Runway:** `POV` o `first person view`.
- **Imagen inicial:** `POV` o `first person view`.

### SnorriCam
- **Prompt Runway:** `snor cam she is running fast` o `snor cam disorienting background blur`.
- **Imagen inicial:** `GoPro selfie shot`.

### Key Frames (Runway Gen-3 Turbo)
- Técnica avanzada: Seleccionar **primer frame y último frame** de la escena. Runway renderiza la transición creativamente. Útil para resultados inesperados e interesantes.

## Reglas para el director de fotografia IA

- **Usa "cinematic" al inicio del prompt de imagen** cuando quieras estética fílmica profesional.
- **Usa "sharp focus" en el prompt de imagen** para minimizar áreas borrosas que Runway alucina (añade caras o elementos extraños).
- **Usa Flux para generar la imagen inicial** si buscas menos errores anatómicos (dedos, rostros).
- **Usa "documentary photography" en el prompt de imagen** para escenas de naturaleza, personajes o detalles cotidianos.
- **Para no alucinar en video IA, especifica siempre el tipo de movimiento de cámara primero** en el prompt de Runway, no la descripción de la escena.
- **Para crane shots, usa "aerial drone shot" + "camera moves up/down"** para evitar que Runway lo interprete como tilt.
- **Para action shots, renderiza primero en slow motion y luego acelera** para obtener movimientos más fluidos.
- **Para pan shots de 10s, especifica la segunda parte del plano** para minimizar elementos extraños.
- **Acelera el footage final al menos 25%** porque Runway renderiza más lento que el movimiento natural.
- **Usa el mini video editor de Runway** para recortar inicios/finales problemáticos y para invertir movimientos (tilt up → tilt down).
- **Para dolly shots, si no sabes el shot type, deja que Flux lo decida** escribiendo "cinematography dolly in" en el prompt de imagen.

## Errores comunes que evita o menciona

- **No describir la imagen en el prompt de Runway** (solo el movimiento y la acción). Si describes la imagen, Runway ignora el movimiento o lo mezcla mal.
- **No usar "zoom" cuando quieres dolly** (zoom es óptico, dolly es físico). Runway entiende "camera slowly zooms in" como dolly in.
- **No usar pan shots de 10s sin especificar la segunda parte** porque generan resultados extraños.
- **No confiar en que Runway entienda "crane" sin "aerial drone shot"** porque lo interpreta como tilt.
- **No renderizar action shots directamente a velocidad normal** porque los movimientos salen entrecortados; siempre usar slow motion primero.
- **No dejar áreas borrosas en la imagen inicial** porque Runway intenta "rellenarlas" con elementos alucinados (caras, objetos).
- **No asumir que Runway entiende dirección sin especificarla** (pan left/right, tracking left/right).
- **No usar el footage a velocidad original** porque Runway renderiza más lento; acelerar al menos 25% mejora el dinamismo.