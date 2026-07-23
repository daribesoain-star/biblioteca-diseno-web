# Camera Movement 카메라 무브먼트 11 종류
**Fuente:** ko_cine | https://youtu.be/fHvfR3f0Jyw

## Que ensena (2-3 lineas)
Desglosa 11 tipos de movimiento de cámara (static, pan, tilt, push-in, pull-out, roll, tracking, trucking, arc, boom, random) con ejemplos cinematográficos. Enseña cómo cada movimiento sirve a la narrativa: revelar información, generar tensión, reflejar estados emocionales o crear dinamismo en escenas estáticas.

## Lecciones accionables

### Movimientos y prompts para video IA

**Static Shot (Plano Fijo)**
- **Término prompt:** `static shot`, `locked off camera`, `tripod shot`
- **Uso:** diálogos, composiciones pictóricas, sensación de atrapamiento
- **Prompt ejemplo:** `Static shot, locked off camera on tripod, precise painterly composition, character trapped in frame, cinematic lighting, 35mm lens`

**Pan (Paneo horizontal)**
- **Término prompt:** `pan left`, `pan right`, `slow pan`, `whip pan`
- **Uso:** seguir acción, revelar información, transiciones energéticas
- **Prompt ejemplo:** `Slow pan right revealing the environment, cinematic 24fps, anamorphic lens, warm color grade`

**Tilt (Inclinación vertical)**
- **Término prompt:** `tilt up`, `tilt down`, `vertical tilt`
- **Uso:** capturar verticalidad, mostrar dominancia/vulnerabilidad
- **Prompt ejemplo:** `Tilt up from ground to character's face, revealing scale, dramatic lighting, 50mm prime lens`

**Push In (Aproximación)**
- **Término prompt:** `push in`, `dolly in`, `camera moves towards subject`
- **Uso:** dirigir atención, capturar proceso mental
- **Prompt ejemplo:** `Slow push in on character's face, intensifying emotion, shallow depth of field, 85mm lens`

**Pull Out (Alejamiento)**
- **Término prompt:** `pull out`, `dolly out`, `camera pulls away`
- **Uso:** de-enfatizar sujeto, mostrar contexto, sensación de abandono
- **Prompt ejemplo:** `Slow pull out from character, revealing isolation, wide shot, negative space, anamorphic`

**Roll (Giro sobre eje)**
- **Término prompt:** `camera roll`, `Dutch angle roll`, `rotating camera`
- **Uso:** desorientación, pánico, conflicto
- **Prompt ejemplo:** `Camera roll matching character panic, disorienting movement, handheld feel, dutch angle`

**Tracking Shot (Seguimiento)**
- **Término prompt:** `tracking shot`, `following subject`, `camera moves with subject`
- **Uso:** seguir personajes en movimiento
- **Prompt ejemplo:** `Tracking shot following character walking through corridor, steady cam movement, 24mm wide lens`

**Trucking Shot (Movimiento lateral)**
- **Término prompt:** `truck left`, `truck right`, `lateral camera movement`
- **Uso:** movimiento lateral paralelo al sujeto
- **Prompt ejemplo:** `Truck right alongside character, maintaining distance, cinematic parallax, 40mm lens`

**Arc Shot (Orbital)**
- **Término prompt:** `arc shot`, `orbit around subject`, `circular camera movement`
- **Uso:** dinamismo en personajes estáticos, hero shot
- **Prompt ejemplo:** `Arc shot orbiting around hero, 360 degree movement, epic scale, dramatic lighting, slow motion`

**Boom Shot (Movimiento vertical con grúa)**
- **Término prompt:** `boom up`, `boom down`, `crane shot`, `jib move`
- **Uso:** revelar información, seguir acción vertical
- **Prompt ejemplo:** `Boom up from ground to reveal entire scene, crane shot, epic reveal, wide establishing shot`

**Random Movement (Movimiento caótico)**
- **Término prompt:** `handheld camera`, `camera shake`, `documentary style`, `chaotic movement`
- **Uso:** efecto subjetivo, realismo documental
- **Prompt ejemplo:** `Handheld camera shake, documentary aesthetic, incidental zoom, gritty texture, 16mm film grain`

### Combinaciones avanzadas para prompts
- `Whip pan transitioning between characters, LA LA LAND style, energetic, jazz rhythm`
- `Push in combined with arc shot, intensifying focus on subject, cinematic orbit`
- `Boom down from crane shot into tracking shot, seamless camera movement, one take`

## Reglas para el director de fotografia IA

1. **Usa Static Shot** cuando necesites composiciones precisas o diálogos; evita movimiento innecesario que distraiga.
2. **Usa Whip Pan** para transiciones energéticas entre personajes o escenas; funciona mejor en video IA con motion blur activado.
3. **Usa Push In** para intensificar emociones; en IA, combínalo con `slow` para evitar aceleraciones no deseadas.
4. **Usa Pull Out** para mostrar aislamiento o contexto; en Runway/Veo, especifica `slow pull out` para controlar velocidad.
5. **Usa Roll** solo en momentos de pánico o conflicto; en Kling, añade `subtle roll` para evitar exageración.
6. **Usa Arc Shot** para dar dinamismo a personajes estáticos; en Veo 3, especifica `orbit 180 degrees` para controlar el arco.
7. **Usa Boom Up** para revelaciones épicas; en IA, define `crane shot slow boom up` para suavidad.
8. **Usa Random Movement** para efecto documental; en Runway, activa `handheld` y `camera shake` como parámetros separados.
9. **Para no alucinar en video IA:** evita movimientos compuestos complejos (tracking + arc + boom simultáneos); divídelos en segmentos.
10. **Para no alucinar:** especifica siempre la focal (`35mm`, `50mm`, `85mm`) para mantener consistencia espacial.
11. **Para no alucinar:** en movimientos de cámara, usa `smooth` o `steady` para evitar vibraciones artificiales no deseadas.

## Errores comunes que evita o menciona

- **Confundir Tracking con Trucking:** tracking sigue al sujeto hacia adelante/atrás; trucking es movimiento lateral puro.
- **Whip Pan sin contexto:** en video IA, un whip pan rápido puede generar artefactos; úsalo solo con motion blur y transiciones claras.
- **Roll excesivo:** en IA, el roll tiende a exagerarse; especifica `subtle roll` o `slight rotation` para control.
- **Push In sin propósito narrativo:** no muevas la cámara solo por moverla; cada movimiento debe servir a la historia.
- **Combinar movimientos opuestos:** push in + pull out simultáneo confunde al modelo; secuencia los movimientos.
- **Ignorar el estado emocional:** el movimiento debe reflejar el estado del personaje (caótico para pánico, suave para calma).
- **Olvidar la focal:** en IA, sin especificar focal, el modelo puede cambiar la perspectiva abruptamente durante el movimiento.