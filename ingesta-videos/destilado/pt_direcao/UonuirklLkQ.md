# Quais são os Ângulos e Movimentos de Câmera - Guia do Cinema
**Fuente:** pt_direcao | https://youtu.be/UonuirklLkQ

## Que enseña (2-3 lineas)
Guía completa de ángulos y movimientos de cámara como herramientas narrativas en cine. Explica cómo cada posición y desplazamiento de cámara modifica la percepción emocional del espectador, desde la neutralidad del ángulo normal hasta el vértigo del zoom combinado con dolly. Aplica directamente a la creación de prompts para video IA donde el movimiento y ángulo definen la intención dramática.

## Lecciones accionables

### Ángulos de cámara (Camera Angles)
- **Eye Level / Normal Angle**: Cámara a la altura de los ojos del personaje. Perspectiva neutral, natural. Usar en prompts: `"eye level shot"`, `"neutral camera angle"`. Focal recomendada: 35-50mm.
- **High Angle / Plano Picado**: Cámara por encima del personaje mirando hacia abajo. Lo hace ver pequeño, inferior. Prompt: `"high angle shot"`, `"camera looking down"`. Focal: 24-35mm.
- **Low Angle / Contrapicado**: Cámara debajo de los ojos mirando hacia arriba. Personaje amenazante, poderoso. Prompt: `"low angle shot"`, `"camera looking up"`. Focal: 16-24mm.
- **Dutch Angle / Ángulo Oblicuo**: Línea del horizonte inclinada. Sensación de locura, desequilibrio, tensión. Prompt: `"dutch angle"`, `"canted angle"`, `"tilted horizon"`.
- **Overhead / Cenital**: Cámara apuntando completamente hacia abajo. Prompt: `"top-down shot"`, `"bird's eye view"`, `"overhead angle"`.
- **Ground Level / Contraplano**: Cámara a nivel del suelo. Prompt: `"ground level shot"`, `"worm's eye view"`.
- **Frontal / 45° / 3/4 / Profile**: Ángulos laterales del sujeto. Prompt: `"front view"`, `"45 degree angle"`, `"three-quarter view"`, `"profile shot"`.

### Movimientos de cámara (Camera Movements)
- **Tilt (Tilt Up / Tilt Down)**: Movimiento vertical sobre eje. Presentar personaje con grandeza o guiar atención. Prompt: `"camera tilting up"`, `"slow tilt down"`. Velocidad: `"slow tilt"` o `"whip tilt"` para caos.
- **Pan (Pan Left / Pan Right)**: Movimiento horizontal sobre eje. Revelar entorno, seguir acción. Prompt: `"panning shot"`, `"camera panning right"`. Rápido: `"whip pan"` para transiciones caóticas.
- **Pedestal (Pedestal Up / Pedestal Down)**: Cámara completa sube o baja sobre eje vertical. Diferente al tilt. Prompt: `"pedestal up"`, `"pedestal down"`.
- **Zoom (Zoom In / Zoom Out)**: Cambio de distancia focal. Prompt: `"zoom in"`, `"zoom out"`. Nota: considerado cliché en cine moderno, pero Tarantino lo usa.
- **Rack Focus / Focus Pull**: Cambio de enfoque entre puntos de interés. Prompt: `"rack focus"`, `"focus pull from foreground to background"`.
- **Dolly (Dolly In / Dolly Out)**: Cámara sobre rieles, movimiento físico hacia adelante/atrás. Prompt: `"dolly shot"`, `"camera dolly in"`, `"tracking dolly"`.
- **Dolly Zoom / Vértigo Effect**: Zoom y dolly en direcciones opuestas. Sensación de vértigo, revelación del personaje. Prompt: `"dolly zoom effect"`, `"vertigo effect"`, `"Hitchcock zoom"`.
- **Truck / Tracking (Truck Left / Truck Right)**: Movimiento horizontal lateral. Seguir personaje en movimiento. Prompt: `"tracking shot"`, `"camera trucking left"`, `"side tracking"`.
- **Arc / Circular Movement**: Cámara se mueve en arco alrededor del sujeto. Prompt: `"arc shot"`, `"circular camera movement"`, `"orbiting shot"`.
- **Crane / Jib**: Movimientos con grúa, combinación de ejes. Prompt: `"crane shot"`, `"jib arm movement"`, `"camera rising up"`.
- **Aerial / Drone**: Tomas aéreas para establecer ubicaciones. Prompt: `"aerial shot"`, `"drone shot"`, `"helicopter view"`.

### Parámetros técnicos para prompts IA
- **Focales**: `"wide angle 16mm"`, `"standard 35mm"`, `"portrait 50mm"`, `"telephoto 85mm"`, `"long lens 200mm"`
- **Velocidad de movimiento**: `"slow camera movement"`, `"fast whip pan"`, `"smooth tracking"`, `"jerky handheld movement"`
- **Estabilización**: `"steady cam"`, `"handheld"`, `"gimbal stabilized"`, `"tripod locked off"`
- **Profundidad de campo**: `"shallow depth of field"`, `"deep focus"`, `"rack focus"`

## Reglas para el director de fotografía IA

1. **Usa ángulo normal (eye level) cuando** la escena requiera neutralidad narrativa o diálogos informativos; evita dramatizar innecesariamente.
2. **Usa low angle cuando** quieras que el personaje domine la escena o genere inseguridad en el espectador; combínalo con gran angular (16-24mm) para exagerar la perspectiva.
3. **Usa high angle cuando** el personaje deba verse vulnerable, pequeño o derrotado; evítalo si buscas empoderamiento.
4. **Usa dutch angle solo cuando** la escena requiera desorientación, locura o tensión psicológica; no lo uses en escenas neutrales o informativas.
5. **Para no alucinar en video IA**, especifica la dirección del movimiento en el prompt: `"camera slowly pans right"` en lugar de solo `"pan"`; los modelos IA necesitan dirección explícita.
6. **Usa dolly zoom (vértigo) cuando** el personaje experimente una revelación o crisis interna; es un efecto poderoso pero debe tener motivación narrativa.
7. **Combina movimientos con intención**: no muevas la cámara solo por dinamismo; cada tilt, pan o dolly debe responder a la emoción o acción del personaje.
8. **Para tomas de seguimiento**, especifica si es tracking lateral (`"camera trucks left following character"`) o dolly frontal (`"camera dollies forward following character"`).
9. **Usa rack focus para** cambiar la atención del espectador entre dos puntos de interés; en prompts IA, especifica: `"focus shifts from foreground object to background character"`.
10. **Para transiciones**, usa whip pan o whip tilt rápido; en prompts: `"fast whip pan transition"`, `"rapid camera tilt"`.

## Errores comunes que evita o menciona

- **Movimiento sin motivación narrativa**: el video advierte que mover la cámara solo por dinamismo es un error; cada movimiento debe responder a la emoción o trayectoria del personaje.
- **Zoom como cliché**: el zoom fue considerado anticuado y pasado de moda en cine; solo úsalo si tiene intención estilística (como Tarantino).
- **Confundir tilt con pedestal**: el tilt rota la cámara sobre su eje; el pedestal sube o baja la cámara completa. En prompts IA, especifica cuál.
- **Abusar del dutch angle**: usado sin justificación narrativa, resulta forzado y confunde al espectador.
- **No especificar velocidad en prompts IA**: los modelos necesitan `"slow"`, `"fast"`, `"smooth"` o `"jerky"` para interpretar correctamente el movimiento.
- **Olvidar la focal**: el mismo ángulo con 16mm vs 85mm produce efectos dramáticos completamente diferentes; especifica siempre la focal en el prompt.