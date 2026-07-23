# Ultimate Guide to Camera Movement — Every Camera Movement Technique Explained [The Shot List Ep6]
**Fuente:** en_dp2 | https://youtu.be/IiyBo-qLDeM

## Que ensena (2-3 lineas)
Este video desglosa cada tipo de movimiento de cámara en cine, explicando su propósito narrativo y psicológico. Desde el static shot hasta el random movement, enseña cómo cada movimiento cuenta una historia, genera tensión, revela información o refleja el estado mental de un personaje. Esencial para entender el lenguaje visual que debemos traducir a prompts de video IA.

## Lecciones accionables

### Static Shot (Plano Fijo)
- **Término para prompt:** `static shot`, `locked off camera`, `tripod shot`
- **Uso:** Diálogos, composiciones pictóricas precisas, actuación del actor, sensación de impotencia/atrapamiento
- **Focal sugerida:** 35mm-50mm para neutralidad
- **Prompt ejemplo:** `static shot, locked off camera on tripod, character trapped in frame, cold neutral perspective, 50mm lens`

### Pan (Paneo Horizontal)
- **Término para prompt:** `pan left`, `pan right`, `whip pan`, `slow pan`
- **Uso:** Seguir acción, revelar información, construir anticipación (slow pan), energizar escena (whip pan)
- **Parámetros:** Velocidad del pan (slow/rapid)
- **Prompt ejemplo:** `slow pan right revealing character, building anticipation, cinematic 24fps`

### Tilt (Inclinación Vertical)
- **Término para prompt:** `tilt up`, `tilt down`, `camera tilt`
- **Uso:** Capturar verticalidad, mostrar dominancia (tilt up) o vulnerabilidad (tilt down), revelar escala
- **Prompt ejemplo:** `tilt up revealing massive scale, awe-inspiring architecture, wide angle lens`

### Push In (Avance hacia el sujeto)
- **Término para prompt:** `push in`, `dolly in`, `camera moves towards subject`
- **Uso:** Enfatizar momento importante, conflicto interno, tensión creciente
- **Focal sugerida:** 50mm-85mm para intimidad
- **Prompt ejemplo:** `slow push in on character's face, internal conflict, tension building, 85mm lens, shallow depth of field`

### Pull Out (Alejamiento del sujeto)
- **Término para prompt:** `pull out`, `dolly out`, `camera pulls away`
- **Uso:** De-enfatizar sujeto, revelar contexto, sensación de abandono/aislamiento
- **Prompt ejemplo:** `camera pulls out revealing isolation, character becomes smaller in frame, emotional detachment`

### Zoom (Zoom óptico)
- **Término para prompt:** `zoom in`, `zoom out`, `crash zoom`, `slow zoom`
- **Uso:** Revelar contexto (zoom out), crear inquietud (slow zoom), efecto cómico/dramático (crash zoom)
- **Nota técnica:** No tiene equivalente en experiencia humana — se siente artificial
- **Prompt ejemplo:** `slow zoom in on character, growing unease, horror atmosphere, unnatural movement`

### Dolly Zoom (Efecto vértigo)
- **Término para prompt:** `dolly zoom`, `vertigo effect`, `Hitchcock zoom`
- **Técnica:** Dolly in + zoom out (fondo crece, sujeto igual) O dolly out + zoom in (sujeto domina fondo)
- **Uso:** Conflicto interno/externo, relación entre sujetos, efecto psicológico
- **Focal sugerida:** Gran angular (wide) para el efecto máximo
- **Prompt ejemplo:** `dolly zoom effect, camera moves in while zooming out, background distorts, psychological tension, wide lens`

### Camera Roll (Rotación sobre eje óptico)
- **Término para prompt:** `camera roll`, `Dutch angle roll`, `rotating camera`
- **Uso:** Desorientación, desequilibrio, inversión de poder, pánico
- **Prompt ejemplo:** `camera roll 180 degrees, disorienting, character upside down, power reversal, unsettling`

### Tracking Shot (Seguimiento lateral/horizontal)
- **Término para prompt:** `tracking shot`, `steadicam tracking`, `following subject`, `long take tracking`
- **Uso:** Seguir personaje en movimiento, inmersión, tensión sostenida
- **Parámetros:** Handheld (documental) vs Steadicam (fluido)
- **Prompt ejemplo:** `smooth steadicam tracking shot following character through corridor, building dread, long take, 24fps`

### Trucking Shot (Movimiento lateral puro)
- **Término para prompt:** `truck left`, `truck right`, `lateral camera movement`
- **Uso:** Establecer mundo y personajes, estilo narrativo (Wes Anderson)
- **Prompt ejemplo:** `truck right, lateral movement following character, storybook framing, symmetrical composition`

### Arc Shot (Orbita alrededor del sujeto)
- **Término para prompt:** `arc shot`, `orbit shot`, `camera orbits subject`, `circular movement`
- **Uso:** Dinamismo con personajes estáticos, hero shot, tensión, intimidad
- **Parámetros:** Velocidad del arco (slow para intimidad, fast para vértigo)
- **Prompt ejemplo:** `camera arcs around character, 180 degree orbit, hero shot, dynamic tension, 35mm lens`

### Boom Shot (Movimiento vertical con grúa/jib)
- **Término para prompt:** `boom up`, `boom down`, `crane shot`, `jib shot`, `vertical camera movement`
- **Uso:** Revelar información arriba/abajo, seguir acción vertical, mostrar mundo
- **Prompt ejemplo:** `boom up revealing character at top, crane shot, single take, vertical reveal`

### Random Camera Movement (Movimiento caótico/incidental)
- **Término para prompt:** `handheld camera`, `camera shake`, `documentary style`, `incidental zoom`, `chaotic movement`
- **Uso:** Sensación de realidad, tiempo real, subjetividad, estilo documental
- **Prompt ejemplo:** `handheld camera, slight camera shake, documentary aesthetic, real-time feel, intimate subjective POV`

## Reglas para el director de fotografia IA

1. **Usa static shot cuando** necesites que la IA se enfoque en la actuación o composición sin distracciones — evita alucinaciones de movimiento no deseado.
2. **Usa pan/tilt lento cuando** quieras revelar información gradualmente; la IA tiende a hacerlos muy rápidos si no especificas `slow pan`.
3. **Para no alucinar en video IA**, especifica siempre la velocidad del movimiento: `slow`, `smooth`, `rapid`, `subtle`.
4. **Usa dolly zoom solo en clips cortos** (2-3 segundos) porque la IA puede distorsionar el sujeto si el movimiento es muy largo.
5. **Combina movimientos con precaución**: la IA alucina más con 2+ movimientos simultáneos. Prioriza un movimiento principal y uno secundario sutil.
6. **Para tracking shots largos**, usa prompts que describan el camino: `camera follows character through hallway, past door, into room`.
7. **Usa términos de lente** (focal length) para controlar la profundidad: `35mm` para contexto, `85mm` para intimidad, `wide angle` para distorsión.
8. **Para random movement**, especifica `slight camera shake` en lugar de `handheld` solo, porque la IA puede interpretar handheld como movimiento suave.
9. **Usa `locked off`** cuando quieras cero movimiento — la IA tiende a añadir micro-movimientos si no lo especificas.
10. **Para arc shots**, define el ángulo: `180 degree arc`, `360 degree orbit`, `partial arc left`.

## Errores comunes que evita o menciona

- **Confundir push in con zoom**: El push in es movimiento físico (dolly), el zoom es cambio de focal. La IA los trata diferente — usa `dolly in` para movimiento físico, `zoom in` para efecto óptico.
- **Usar whip pan sin contexto**: La IA puede generar un pan tan rápido que el cuadro se vuelva borroso ilegible. Especifica `whip pan with motion blur` o `rapid pan`.
- **Dolly zoom mal ejecutado**: Si no especificas la dirección (dolly in + zoom out vs dolly out + zoom in), la IA puede hacer lo opuesto. Sé explícito.
- **Camera roll excesivo**: La IA puede interpretar `roll` como rotación completa de 360° cuando solo necesitas 45°. Especifica grados: `camera roll 45 degrees`.
- **Tracking shot sin dirección clara**: `tracking shot` solo puede hacer que la IA mueva la cámara sin rumbo. Añade `following subject` o `leading subject`.
- **Mezclar estilos de cámara en una misma escena**: Como en Seven (controlado vs caótico), la IA necesita entender qué plano es cuál. Separa en clips distintos.
- **Olvidar el propósito narrativo**: La IA genera movimiento vacío si no le das intención. Siempre añade el "por qué": `to reveal`, `to build tension`, `to show isolation`.