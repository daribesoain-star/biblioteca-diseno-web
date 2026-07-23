# Turn your DRONE into a Camera Dolly / Slider / Jib Crane
**Fuente:** esc_movcam | https://youtu.be/z2QNjg0jDcA

## Que enseña
Técnicas para convertir un monopie en un estabilizador multipropósito (dolly, slider, jib, grúa, drone) sin usar gimbal. Demuestra 7 movimientos cinematográficos clásicos logrados con equipo mínimo, técnica corporal y estabilización en postproducción, aplicables a cualquier cámara con IBIS o estabilización óptica.

## Lecciones accionables

### Configuración de equipo para prompts IA
- **Monopié + cabezal fluido** (ifootage Cobra 2 + K5) + **adaptador de inclinación 90°** (Manfrotto 234). En prompts: `fluid head`, `tilt adapter`, `monopod rig`
- **Cámara con IBIS + lente con estabilización óptica**: elimina micro-vibraciones. Prompt: `in-body stabilization`, `optical stabilization`, `gyro metadata`
- **Monitor externo** (Atomos Ninja V) para encuadres a distancia. Prompt: `external monitor`, `field monitor`

### Movimientos y prompts de cámara para IA

1. **Forward Follow (seguimiento frontal)**
   - Técnica: monopié inclinado 90°, brazo izquierdo como punto de contacto, cabezal fluido en mano derecha
   - Prompt: `forward tracking shot, low angle, 24-35mm lens, subject walking away, camera following at same speed, medium wide shot, establishing environment`
   - Focal: 24-35mm

2. **Over-the-Shoulder Follow**
   - Técnica: monopié sobre hombro como shoulder rig, mano izquierda libre para enfoque/zoom
   - Prompt: `over-the-shoulder tracking shot, shoulder rig style, subtle dolly in/out, organic handheld feel, medium close frame`
   - Movimiento: `dolly in`, `jib up/down`

3. **Reverse Follow (seguimiento inverso)**
   - Prompt: `reverse tracking shot, walking backwards, revealing subject, low wide angle, speeding up to reveal background`
   - Focal: 24mm

4. **Arc Follow (arco diagonal)**
   - Prompt: `arc tracking shot, diagonal movement, parallax effect, subject fixed in frame, dynamic background reveal, medium to wide shot`
   - Efecto: `parallax`, `exaggerated depth`

5. **Side Track (seguimiento lateral)**
   - Técnica: perfil del sujeto, caminar paralelo
   - Prompt: `side tracking shot, profile framing, walking parallel to subject, foreground occlusion wipe transition`
   - Truco: `occlusion wipe` para transiciones

6. **Crane / Jib (grúa)**
   - Técnica: twist lock, gravedad controlada, desacelerar al final
   - Prompt: `jib down shot, controlled descent, gravity move, slow stop at end, transition between subjects`
   - Parámetro: `slow motion near end`

7. **Drone Move (vista aérea)**
   - Técnica: monopié extendido al máximo, brazos separados del cuerpo, caminata heel-to-toe
   - Prompt: `bird's eye view tracking shot, high angle, wide lens 24mm, subject small in frame, vast environment, drone eye view, heel-to-toe walk`
   - Focal: 24mm (efecto de distancia exagerada)

8. **Crawl Move (cámara baja)**
   - Técnica: monopié invertido, monitor externo, caminata heel-to-toe
   - Prompt: `low angle tracking shot, ground level, unconventional perspective, tilt up reveal, subject feet entering frame, dynamic opening shot`
   - Movimiento: `tilt up reveal`

9. **Slider Move (deslizamiento lateral)**
   - Técnica: monopié apoyado en pierna y hombro, balanceo lateral
   - Prompt: `slider shot, lateral sway, foreground close-up, subject out of focus background, shallow depth of field, smooth horizontal movement`
   - Composición: `foreground detail`, `background blur`

10. **Vertical Pivot / Hero Moment (pivote vertical)**
    - Técnica: monopié como pivote, combinación de jib down + dolly in + tilt up
    - Prompt: `vertical pivot shot, hero reveal, jib down dolly in tilt up simultaneously, arc movement, low key to high key transition, slow motion at end`
    - Transición: `dark to light`, `vulnerability to empowerment`

### Parámetros técnicos para prompts
- **Estabilización post**: `warp stabilizer` (Premiere), `built-in stabilization` (Final Cut), `gyro stabilization` (Sony Catalyst Browse)
- **Caminata estabilizadora**: `heel-to-toe walk`, `ninja walk`, `shock absorber knees`
- **Puntos de contacto**: `three-point contact rig`, `underarm grip`, `shoulder rig position`

## Reglas para el director de fotografía IA

- **Usa `heel-to-toe walk`** cuando generes tracking shots en terreno irregular; simula absorción de impacto.
- **Usa `organic handheld feel`** en lugar de `perfectly stabilized` para evitar el look sintético de gimbal en IA.
- **Para no alucinar en video IA**: especifica `slow stop at end` en movimientos de grúa/jib; la IA tiende a acelerar o cortar abruptamente.
- **Usa `24mm wide lens`** para efectos de distancia exagerada en tomas aéreas; la IA respeta mejor las distorsiones de gran angular.
- **Especifica `three-point contact`** en prompts de cámara en movimiento; la IA necesita entender la sujeción física para evitar flotación irreal.
- **Usa `parallax effect`** en arcos para que la IA genere profundidad entre sujeto y fondo.
- **Para transiciones narrativas**: `low key to high key` + `tilt up reveal` funcionan mejor que cortes directos en IA.
- **Especifica `shallow depth of field`** en slider shots para que la IA mantenga el foco en primer plano y fondo desenfocado.

## Errores comunes que evita o menciona

- **No confiar solo en IBIS**: la combinación IBIS + estabilización óptica del lente elimina micro-vibraciones que la IA no puede corregir.
- **No caminar normal en terreno irregular**: usa heel-to-toe con rodillas flexionadas como amortiguadores; la IA genera bounce si no se especifica.
- **No acelerar al final del jib**: desacelerar gradualmente evita el corte brusco que la IA tiende a alucinar.
- **No usar monitor pequeño a distancia**: el monitor externo es crítico para encuadres aéreos y rasantes; la IA necesita referencia de framing.
- **No ignorar la estabilización post**: incluso con buena técnica, la post (warp stabilizer / gyro) elimina el 20% restante de vibración.
- **No asumir que el monopié reemplaza al gimbal**: el monopié tiene limitación de distancia en el dolly in (arco limitado); la IA debe saber cuándo usar cada herramienta.
- **No olvidar el adaptador de inclinación 90°**: sin él, los movimientos de hombro y brazo son imposibles; la IA necesita entender la geometría del rig.