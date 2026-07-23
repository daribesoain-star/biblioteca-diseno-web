# camera movement gimbal dolly crane drone cinematography technique tutorial
**Fuente:** esc_movcam | https://youtu.be/camera movement gimbal dolly crane drone cinematography technique tutorial

## Que enseña (2-3 líneas)
Cómo reemplazar un gimbal con un monopie y cabezal fluido para lograr 7 movimientos cinematográficos clásicos (follow, side track, jib, drone, crawl, slider, vertical pivot) sin estabilizadores costosos. Enfatiza técnica corporal, elección de equipo y post-estabilización opcional para resultados casi idénticos.

## Lecciones accionables

### Equipo base para prompts
- **Monopié** con mecanismo twist-lock (ej. iFootage Cobra 2)
- **Cabezal fluido** (ej. iFootage K5)
- **Adaptador de inclinación 90°** (ej. Manfrotto 234) – clave para la mayoría de movimientos
- **Monitor externo** (ej. Atomos Ninja V) – obligatorio para ángulos extremos
- **Cámara con IBIS + lente con estabilización óptica** (ej. Sony a7S III + Sigma 24-70mm f/2.8)

### Movimientos y prompts técnicos

**1. Forward Follow (seguimiento frontal)**
- **Técnica:** Monopié inclinado 90° con adaptador, brazo derecho en cabezal fluido, monopié bajo antebrazo izquierdo. Caminar heel-to-toe.
- **Focal:** 24-35mm (wide-medium)
- **Ángulo:** Low angle (contrapicado)
- **Prompt sugerido:** `"camera movement: forward tracking shot, low angle, 28mm lens, smooth heel-to-toe walk, subject walking away from camera, organic handheld feel, cinematic stabilization"`

**2. Over-the-Shoulder Follow**
- **Técnica:** Monopié sobre hombro como shoulder rig, brazo izquierdo libre para zoom/focus, brazo derecho controla pan/tilt. Permite dolly in/out deslizando sobre hombro.
- **Focal:** 35-50mm (medium close)
- **Prompt:** `"over-the-shoulder tracking shot, medium close frame, shoulder rig style, subtle dolly in, organic handheld movement, subject walking forward"`

**3. Arc Follow (seguimiento en arco)**
- **Técnica:** Caminar en diagonal manteniendo cámara fija en sujeto. Exagera paralaje.
- **Focal:** 24-35mm (wide)
- **Prompt:** `"arc tracking shot, diagonal movement, exaggerated parallax effect, wide angle 24mm, subject in center frame, background reveals environment"`

**4. Side Track (trackeo lateral)**
- **Técnica:** Caminar junto al sujeto mirando al frente, cámara en perfil. Misma sujeción underarm.
- **Focal:** 35-50mm
- **Truco:** Occlusion wipe con árboles para transición loop
- **Prompt:** `"side tracking shot, profile framing, 35mm lens, smooth lateral movement, subject walking, foreground occlusion transition"`

**5. Crane/Jib (grúa)**
- **Técnica:** Twist-lock para desbloquear, gravedad controlada. Frenar al final.
- **Focal:** 24-35mm
- **Prompt:** `"crane down shot, controlled gravity descent, twist-lock monopod, slow stop at end, subject to object transition, 28mm lens"`

**6. Drone Move (vista aérea)**
- **Técnica:** Monopié extendido al máximo, brazo en punto medio, caminar heel-to-toe. Monitor externo obligatorio.
- **Focal:** 24mm (wide) – estira distancias, simula altura mayor
- **Altura real:** ~4 pies sobre cabeza del sujeto
- **Prompt:** `"bird's eye view tracking shot, monopod extended full height, 24mm wide lens, subject small in vast environment, smooth heel-to-toe walk, cinematic establishing shot"`

**7. Crawl Move (cámara al suelo)**
- **Técnica:** Invertir el monopié (cabeza abajo). Monitor externo en clamp.
- **Focal:** 24mm
- **Prompt:** `"low angle crawl shot, camera inverted monopod, ground level tracking, 24mm lens, subject feet entering frame, tilt up reveal, smooth heel-to-toe"`

**8. Slider Move (deslizamiento)**
- **Técnica:** Monopié apoyado en hombro, antebrazo en pierna, balanceo lateral. Cuerpo y monopié como una unidad.
- **Focal:** 35-50mm
- **Prompt:** `"slider movement, monopod on shoulder, lateral sway, foreground out of focus, subject in background, smooth horizontal tracking, 50mm lens"`

**9. Hero Moment / Vertical Pivot**
- **Técnica:** Monopié fijo en suelo como pivote. Combinación de jib down + dolly in + tilt up simultáneo.
- **Focal:** 35-50mm
- **Movimiento:** Arco de cámara desde shoulder height a chest level, con tilt up
- **Prompt:** `"vertical pivot shot, monopod pivot point, dolly in arc, tilt up from low key to high key, subject transformation, slow final movement, 35mm lens, cinematic hero reveal"`

### Parámetros de post-estabilización
- **Final Cut Pro:** Estabilización incorporada (reduce bounce, mantiene handheld feel)
- **Premiere Pro:** Warp Stabilizer (más potente)
- **Sony Catalyst Browse:** Estabilización giroscópica (usa metadatos gyro)

## Reglas para el director de fotografía IA

1. **Usa "heel-to-toe walk" en prompts** cuando necesites movimiento de cámara estable en terreno irregular – es el estándar de DPs reales.
2. **Para no alucinar en video IA, especifica la focal exacta** (24mm, 35mm, 50mm) – los modelos tienden a distorsionar sin referencia.
3. **Usa "organic handheld feel" vs "gimbal stabilized"** para diferenciar estilos – el video IA tiende a sobre-estabilizar por defecto.
4. **Incluye "monopod technique" en el prompt** cuando quieras movimientos que imiten grúa o drone sin equipo real – el modelo entenderá la limitación física.
5. **Especifica "twist-lock mechanism" o "gravity descent"** para movimientos de jib/crane – evita que la IA genere movimientos imposibles.
6. **Para parallaje exagerado, usa "arc movement" + "wide angle"** – la IA necesita ambos términos para generar el efecto correcto.
7. **Incluye "external monitor reference"** en prompts de ángulos extremos (crawl, drone) – ayuda a la IA a entender la perspectiva del operador.
8. **Usa "shoulder rig style" en lugar de "shoulder mount"** – el primero implica movimiento orgánico, el segundo puede generar rigidez.

## Errores comunes que evita o menciona

- **No asumir que gimbal es siempre mejor:** El monopié ofrece movimientos más orgánicos y menos sintéticos que el gimbal.
- **No ignorar la post-estabilización:** Incluso con buena técnica, el footage raw tiene micro-vibraciones que requieren corrección.
- **No usar lentes sin estabilización óptica:** Combinar IBIS + OIS elimina micro-jitter; solo IBIS no es suficiente.
- **No caminar con paso normal en terreno irregular:** El heel-to-toe es obligatorio para absorber impacto; caminar normal genera bounce.
- **No extender el monopié sin control:** En el crane/jib, frenar al final es crítico para evitar movimientos bruscos.
- **No usar el monitor de la cámara en ángulos extremos:** En crawl y drone, la pantalla queda inaccesible; monitor externo es obligatorio.
- **No intentar el vertical pivot sin práctica:** Requiere coordinar 3 movimientos simultáneos (jib down + dolly in + tilt up); el monopié simplifica pero no elimina la curva de aprendizaje.
- **No sobre-estabilizar en post:** El objetivo es eliminar bounce pero mantener el handheld feel orgánico; la sobre-estabilización da aspecto sintético.