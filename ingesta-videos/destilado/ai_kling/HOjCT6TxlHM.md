# Mastering AI Video: 42 Camera Movement Vocabulary for Prompts (Visual Guide) Motion Examples
**Fuente:** ai_kling | https://youtu.be/HOjCT6TxlHM

## Que enseña (2-3 líneas)
Desglose visual de 42 movimientos de cámara específicos para prompts de video IA, organizados por categorías (dolly, grúa, órbita, lente, drone, POV). Muestra cómo la IA interpreta cada comando, desde movimientos básicos hasta efectos estilizados como vertigo effect, barrel roll, bullet time e inception shot.

## Lecciones accionables

### Movimientos Dolly y Zoom
- **Slow dolly in / slow dolly out:** `slow dolly in` / `slow dolly out` — velocidad controlada, cámara avanza/retrocede sobre rieles
- **Fast dolly in:** `fast dolly in` — movimiento abrupto hacia el sujeto
- **Vertigo effect (dolly zoom):** `vertigo effect` o `dolly zoom` — cámara se aleja mientras el lente zoom in, fondo se distorsiona
- **Infinite scale / continuity extreme macro zoom:** `infinite scale zoom` / `extreme macro zoom` — zoom continuo sin corte, escala microscópica
- **Cosmic hypers zoom:** `cosmic hypers zoom` — zoom ultrarrápido desde el espacio al sujeto

### Encuadres y Framing
- **Character mounted framing:** `character mounted framing` — cámara fija al cuerpo del personaje
- **Over the shoulder (OTS):** `over the shoulder` — sobre el hombro del sujeto
- **Fish eye / people lens:** `fish eye lens` — distorsión gran angular extrema
- **Obstacle and environmental interaction:** `obstacle interaction` — cámara choca/roza objetos en escena
- **Reveal from behind:** `reveal from behind` — cámara descubre al sujeto desde atrás
- **White movement through shot:** `white movement through shot` — movimiento limpio a través del encuadre
- **Fly through:** `fly through` — cámara atraviesa espacios (puertas, ventanas, túneles)

### Foco y Lente
- **Reveal from blur:** `reveal from blur` — desenfoque inicial que se aclara
- **Fade in:** `fade in` — fundido de entrada desde negro
- **Rack focus (foreground to background):** `rack focus foreground to background` — cambio de foco entre planos

### Trípode y Slider
- **Tilt up / tilt down:** `tilt up` / `tilt down` — inclinación vertical fija
- **Slider moves:** `camera truck left` / `lateral truck right` — desplazamiento lateral horizontal

### Orbitales y Arcos
- **Orbit 180:** `orbit 180` — semicírculo alrededor del sujeto
- **Fast 360 orbit:** `fast 360 orbit` — giro completo rápido
- **Slow cinematic arc:** `slow cinematic arc` — arco lento y suave

### Verticales (Grúa y Pedestal)
- **Pedestal down / pedestal up:** `pedestal down` / `pedestal up` — cámara sube/baja sin inclinar
- **Crane up / crane down:** `crane up` / `crane down` — movimiento de grúa con brazo
- **High angle reveal:** `high angle reveal` — descubre desde arriba
- **Crane down landing:** `crane down landing` — grúa desciende hasta el suelo

### Óptica y Zoom
- **Smooth optical zoom in / out:** `smooth optical zoom in` / `smooth optical zoom out` — zoom continuo sin saltos
- **Snap zoom:** `snap zoom` — zoom abrupto y rápido

### Drone y Aéreos
- **Drone flyover:** `drone flyover` — sobrevuelo horizontal
- **Epic drone reveal:** `epic drone reveal` — cámara se eleva y revela paisaje
- **Large scale drone orbit:** `large scale drone orbit` — órbita amplia desde dron
- **Top down / God's eye view:** `top down view` / `god's eye view` — cenital absoluto
- **FPV drone aggressive dive:** `FPV drone aggressive dive` — inmersión rápida estilo primera persona

### Estilizados y Dinámicos
- **Handheld documentary style:** `handheld documentary style` — cámara al hombro, temblor natural
- **Whip pan:** `whip pan` — giro horizontal ultrarrápido (barrido)
- **Dutch angle:** `dutch angle` — cámara inclinada (ángulo holandés)

### Seguimiento de Sujeto
- **Leading shot backward tracking:** `leading shot backward tracking` — cámara retrocede mientras sujeto avanza
- **Following shot forward tracking:** `following shot forward tracking` — cámara sigue al sujeto por detrás
- **Side tracking parallel:** `side tracking parallel` — cámara se mueve paralela al sujeto

### POV y Caminata
- **POV walk first person walk:** `POV walk` / `first person walk` — cámara como ojos del personaje

### Tiempo y Velocidad
- **Hyperlapse:** `hyperlapse` — time-lapse en movimiento
- **Moving time lapse:** `moving time lapse` — time-lapse con cámara en desplazamiento
- **Bullet time:** `bullet time` — cámara congela el tiempo mientras orbita
- **Frozen moment:** `frozen moment` — todo se detiene excepto cámara

### Orientación Extrema
- **Barrel roll:** `barrel roll` — cámara gira 360° sobre su eje horizontal
- **Vortex inception shot:** `vortex inception shot` — efecto de torbellino/plegado del espacio
- **Worm's eye tracking ground level:** `worm's eye tracking` / `ground level tracking` — cámara a ras del suelo

## Reglas para el director de fotografía IA

- **Usa `slow dolly in` cuando** necesites acercamiento suave y dramático; evita `fast dolly in` si la IA tiende a alucinar fondos borrosos
- **Usa `rack focus` cuando** quieras dirigir la atención entre dos sujetos; especifica `foreground to background` para evitar que la IA lo ignore
- **Usa `orbit 180` en lugar de `orbit 360`** si la IA suele perder al sujeto en giros completos
- **Usa `pedestal up` en vez de `crane up`** cuando no quieras movimiento de brazo visible; pedestal es vertical puro
- **Usa `handheld documentary style`** para dar realismo; combínalo con `slight camera shake` si la IA lo suaviza demasiado
- **Para no alucinar en video IA:** evita movimientos compuestos sin especificar orden (ej: `dolly in + tilt up` puede fallar); prefiere secuencias separadas
- **Para no perder al sujeto en órbitas:** usa `orbit 180` con `subject centered` en el prompt
- **Para zooms extremos:** especifica `continuous shot` o `no cut` para evitar cortes abruptos
- **Para bullet time:** añade `slow motion` + `frozen subject` + `camera rotates around`
- **Para FPV drone:** usa `FPV drone aggressive dive` + `first person perspective` + `fast speed`
- **Para vertigo effect:** escribe `vertigo effect` + `dolly out` + `zoom in simultaneously` para que la IA entienda la dualidad

## Errores comunes que evita o menciona

- **Confundir dolly con zoom:** `camera moves forward` puede generar zoom digital en lugar de dolly físico; usa `dolly in` para movimiento real
- **Órbitas incompletas:** `orbit` sin especificar grados (180/360) puede generar arcos parciales o erráticos
- **Movimientos compuestos sin jerarquía:** `crane up and orbit` puede fallar; prefiere `crane up` primero, luego `orbit`
- **Zoom sin control de velocidad:** `zoom in` puede ser instantáneo; usa `smooth optical zoom in` para transición suave
- **Handheld sin matiz:** `handheld` solo puede generar temblor excesivo; añade `documentary style` para control
- **Whip pan sin dirección:** `whip pan` puede girar en cualquier dirección; especifica `whip pan left` o `whip pan right`
- **Hyperlapse sin referencia temporal:** `hyperlapse` puede ser demasiado rápido; añade `day to night` o `clouds moving fast`
- **Barrel roll sin eje:** `barrel roll` puede confundirse con órbita; especifica `camera rolls on its own axis`
- **Inception shot sin contexto:** `vortex inception shot` puede generar distorsión aleatoria; añade `environment warps around subject`