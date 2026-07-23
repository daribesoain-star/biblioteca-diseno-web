# 7 Cinematic GIMBAL moves... WITHOUT the GIMBAL
**Fuente:** esc_movcam | https://youtu.be/GsuqeDVu9Ys

## Que ensena (2-3 lineas)
El video demuestra cómo un monopie con cabezal fluido y adaptador de inclinación puede reemplazar un gimbal para 7 movimientos cinematográficos clásicos. Enseña técnicas de estabilización corporal (agarre, postura, caminata ninja) y cómo combinar estabilización en cámara (IBIS + OIS) con post-producción para lograr resultados casi idénticos a un gimbal, incluso en terreno irregular.

## Lecciones accionables

### Equipo esencial para prompts y setup
- **Monopie + cabezal fluido**: Ifootage Cobra 2 + Ifootage K5 (o cualquier combo similar)
- **Adaptador de inclinación 90°**: Manfrotto 234 (permite inclinar el cabezal 90° en ambos sentidos)
- **Monitor externo**: Atomos Ninja 5 (crítico para encuadres a distancia)
- **Cámara con IBIS + lente con OIS**: Sony a7S III + Sigma 24-70mm f/2.8 Art (IBIS + estabilización óptica eliminan micro-vibraciones)
- **Post-estabilización opcional**: Warp Stabilizer (Premiere Pro) o estabilización nativa Final Cut; en Sony, Catalyst Browse para estabilización giroscópica

### Movimientos y prompts de cámara

**1. Forward Follow (Seguimiento frontal)**
- **Técnica**: Monopie inclinado 90° con adaptador, brazo izquierdo como punto de contacto bajo el antebrazo, mano derecha en el mango del cabezal
- **Focal**: 24-35mm
- **Ángulo**: Ligeramente contrapicado (low angle)
- **Prompt**: `camera following subject from behind, medium wide shot, 24mm lens, low angle, smooth forward tracking, handheld organic movement, cinematic, natural light, forest path`

**2. Over-the-Shoulder Follow**
- **Técnica**: Monopie sobre el hombro como shoulder rig, mano izquierda libre para zoom/foco, mano derecha en cabezal para paneo/tilt
- **Focal**: 35-50mm
- **Movimiento adicional**: Dolly sutil deslizando el monopie sobre el hombro, jib up/down
- **Prompt**: `over the shoulder shot, following subject, medium close-up, 35mm lens, subtle dolly in, organic handheld smooth movement, cinematic, shallow depth of field`

**3. Reverse Follow (Seguimiento inverso)**
- **Técnica**: Igual que forward follow pero caminando hacia atrás
- **Focal**: 24mm (gran angular para revelar fondo)
- **Efecto**: Acelerar alejándose del sujeto para revelar más entorno
- **Prompt**: `reverse tracking shot, walking backwards, subject walking towards camera, 24mm wide lens, revealing background, low angle, cinematic, smooth handheld`

**4. Arc Follow (Seguimiento en arco)**
- **Técnica**: Caminar en diagonal manteniendo cámara fija en sujeto
- **Efecto**: Parallax exagerado entre sujeto y fondo
- **Focal**: 24-35mm
- **Prompt**: `arc tracking shot, camera moving diagonally around subject, parallax effect, medium wide shot, 28mm lens, dynamic movement, cinematic, forest background`

**5. Crane / Jib (Grúa)**
- **Técnica**: Monopie extendido, destrabar mecanismo twist-lock, dejar caer controladamente por gravedad
- **Focal**: 35-50mm
- **Movimiento**: Desacelerar al final hasta detenerse completamente
- **Prompt**: `crane down shot, camera descending smoothly from eye level to low angle, 35mm lens, slow movement, cinematic, subject reading book, natural light`

**6. Drone Move (Vista aérea)**
- **Técnica**: Monopie extendido a máxima altura, brazo izquierdo en punto medio, caminata ninja (heel-to-toe)
- **Focal**: 24mm (gran angular estira distancias, da ilusión de mayor altura)
- **Monitor externo**: Obligatorio para encuadre
- **Prompt**: `bird's eye view tracking shot, camera 4 feet above subject, 24mm wide lens, following subject from above, cinematic, forest environment, smooth aerial-like movement`

**7. Crawl Move (Suelo)**
- **Técnica**: Monopie invertido (cámara abajo), mano derecha en monopie, izquierda en cabezal
- **Focal**: 24mm
- **Monitor**: Clamp en monopie para ver encuadre
- **Prompt**: `low angle ground tracking shot, camera at ground level, 24mm lens, following subject's feet, tilt up to reveal, cinematic, organic movement, forest floor`

**8. Slider Move (Deslizamiento lateral)**
- **Técnica**: Monopie apoyado en hombro, antebrazo en pierna, balanceo lateral del cuerpo
- **Focal**: 50-85mm (para detalles en primer plano desenfocados)
- **Efecto**: Foreground out of focus, sujeto en fondo
- **Prompt**: `slider tracking shot, camera moving left to right, foreground out of focus, subject in background, 50mm lens, shallow depth of field, cinematic, smooth lateral movement`

**9. Hero Moment / Vertical Pivot (Pivote vertical)**
- **Técnica**: Monopie fijo en el suelo como pivote, dolly in + tilt up simultáneo
- **Focal**: 35-50mm
- **Movimiento**: Jib down + dolly in + tilt up, desacelerar al final
- **Prompt**: `vertical pivot shot, camera arcs from low angle to eye level, dolly in, tilt up, 35mm lens, dramatic reveal, cinematic, subject looking down then up, emotional turning point`

## Reglas para el director de fotografía IA

- **Usa "handheld organic smooth" en prompts** cuando quieras el look de monopie: no es gimbal perfecto, tiene micro-vibraciones naturales que dan vida al plano.
- **Para no alucinar en video IA, especifica la focal exacta** (24mm, 35mm, 50mm) y el tipo de movimiento (tracking, dolly, crane, arc). Sin focal, la IA puede generar distorsiones o encuadres inconsistentes.
- **Usa "heel-to-toe walk" o "ninja walk" en prompts** para movimientos de seguimiento: la IA entiende mejor la intención de absorción de impacto.
- **Cuando quieras parallax exagerado**, usa "arc tracking" + "foreground/background separation" + "wide lens 24mm". La IA necesita saber que el fondo se mueve más rápido que el sujeto.
- **Para movimientos de grúa/jib**, especifica "gravity-assisted descent" o "controlled fall" para que la IA no genere aceleraciones antinaturales.
- **En planos aéreos con monopie**, usa "camera 4 feet above subject" en vez de "drone shot": la IA alucinará menos altura y mantendrá la perspectiva correcta.
- **Para el vertical pivot**, desglosa el movimiento en tres acciones simultáneas: "dolly in + tilt up + camera lowering". Si solo pones "vertical pivot", la IA puede generar un paneo vertical simple.
- **Usa "slow down at end"** en prompts de movimientos que requieren detenerse suavemente (crane, pivot). La IA tiende a cortar el movimiento abruptamente si no se especifica.
- **Especifica "rough terrain" o "uneven ground"** cuando quieras que la IA genere micro-vibraciones realistas en lugar de estabilización perfecta.
- **Para planos over-the-shoulder**, usa "shoulder rig simulation" + "three points of contact" para que la IA entienda la estabilización corporal.

## Errores comunes que evita o menciona

- **No asumir que el monopie reemplaza al gimbal en movimientos largos**: el dolly in del vertical pivot tiene alcance limitado por el arco del monopie; en IA, no pidas tracking de más de 3-4 metros con esta técnica.
- **No olvidar el adaptador de inclinación 90°**: sin él, no se pueden lograr los agarres bajo el brazo o sobre el hombro; en prompts, especifica "camera tilted 90 degrees on monopod" si replicas la técnica.
- **No confiar solo en IBIS**: el video muestra que IBIS + OIS + técnica manual + post-estabilización es el combo completo; en IA, no pidas "smooth gimbal" si solo usas un monopie en el prompt.
- **No caminar normal en terreno irregular**: el "heel-to-toe" (o "toe-to-heel" para reversa) es obligatorio; en prompts, incluye "ninja walk" para que la IA genere el movimiento amortiguado correcto.
- **No usar monitor externo en planos aéreos o de suelo**: sin monitor, el encuadre es imposible; en IA, si pides "camera at maximum height", asegúrate de que el prompt incluya "external monitor for framing".
- **No acelerar el movimiento al final**: en crane downs y pivots, la desaceleración es clave para el impacto dramático; en prompts, siempre añade "slow down at end" o "decelerate to stop".
- **No pensar que el monopie es solo para seguimiento**: el video muestra que también funciona como slider, jib, shoulder rig y drone; en IA, experimenta con "monopod as slider" o "monopod as crane" para variar movimientos.
- **No ignorar la post-estabilización**: el video la usa como opcional pero recomienda Warp Stabilizer o Catalyst Browse; en IA, si el resultado tiene micro-vibraciones excesivas, añade "post-stabilized" al prompt o edita en post.