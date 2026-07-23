# 【拍摄教程】分镜干货，电影导演7分钟讲解景别与镜头类别 Everything About Shot Types and Shot Sizes in 7 Min
**Fuente:** esc_zh | https://youtu.be/UdAt5PIF3YA

## Que ensena (2-3 lineas)
Este tutorial desglosa la taxonomía completa de planos cinematográficos: desde el **Extreme Long Shot** (establecer contexto) hasta el **Extreme Close-Up** (intimidad máxima), pasando por los **Shot Types** (plano/contraplano, POV, over-the-shoulder) y los movimientos de cámara (pan, tilt, dolly, crane). Enseña a elegir el tamaño y tipo de plano según la intención narrativa y emocional de cada escena publicitaria.

## Lecciones accionables

**1. Jerarquía de Shot Sizes (para prompts de IA)**
- **Extreme Long Shot (ELS) / Establishing Shot:** Usa `wide angle lens, 14mm, extreme wide shot, establishing shot, vast landscape, tiny subject in frame`. Ideal para abrir un spot y mostrar locación.
- **Long Shot (LS) / Full Shot:** `full body shot, subject from head to toe, environmental context`. Para presentar al personaje en su entorno.
- **Medium Long Shot (MLS) / ¾ Shot:** `medium long shot, knees up, cowboy shot`. Transición entre contexto y acción.
- **Medium Shot (MS):** `medium shot, waist up, two hands visible`. El plano conversacional por excelencia. Usa `50mm lens` para perspectiva natural.
- **Medium Close-Up (MCU):** `medium close-up, chest up`. Para diálogos con énfasis emocional.
- **Close-Up (CU):** `close-up shot, face filling frame, 85mm or 100mm lens, shallow depth of field`. Para capturar microexpresiones y detalle del producto.
- **Extreme Close-Up (ECU):** `extreme close-up, macro shot, detail shot, texture visible`. Para texturas de producto, ojos, manos.

**2. Shot Types (ángulos y relaciones)**
- **Over-the-Shoulder (OTS):** `over the shoulder shot, 35mm lens, foreground blur, subject in focus`. Para diálogos y tensión.
- **Point of View (POV):** `first person point of view, handheld camera, subjective shot`. Para inmersión del espectador.
- **Two-Shot:** `two shot, both subjects in frame, medium shot`. Para mostrar relación entre personajes.
- **Low Angle:** `low angle shot, looking up, wide lens, heroic perspective`. Para poder o amenaza.
- **High Angle:** `high angle shot, looking down, vulnerable subject`. Para fragilidad o control.
- **Dutch Angle / Canted Angle:** `dutch angle, tilted horizon, uneasy composition`. Para desorientación o conflicto.

**3. Movimientos de cámara (para prompts de video IA)**
- **Pan:** `panning shot, horizontal camera movement, slow pan`. Para revelar paisaje o seguir acción lateral.
- **Tilt:** `tilt up shot, camera tilting upward, revealing height`. Para revelar escala.
- **Dolly / Tracking:** `dolly in shot, camera moving forward, push in, intensifying emotion`. O `dolly out, pull back, revealing context`.
- **Crane / Boom:** `crane shot, camera rising, aerial reveal`. Para transiciones espectaculares.
- **Handheld:** `handheld camera, slight camera shake, documentary style, vérité`. Para realismo y urgencia.
- **Steadicam:** `steadicam shot, smooth gliding movement, following subject`. Para fluidez narrativa.

**4. Focales clave para prompts**
- **14-24mm (Ultra Wide):** `ultra wide angle, 16mm lens, exaggerated perspective, distortion`. Para ELS y planos dramáticos.
- **35mm (Wide):** `35mm lens, environmental portrait`. Para OTS y planos con contexto.
- **50mm (Standard):** `50mm lens, natural perspective, neutral`. Para MS y diálogos.
- **85mm (Short Tele):** `85mm lens, flattering portrait, soft background`. Para CU y MCU.
- **135-200mm (Telephoto):** `telephoto lens, 200mm, compressed perspective, shallow depth of field`. Para ECU y planos íntimos desde lejos.

## Reglas para el director de fotografia IA

- **Usa ELS / Establishing Shot al inicio de cada escena** para que la IA entienda el espacio geográfico y evite alucinaciones de entorno.
- **Usa MS o MCU para diálogos** porque la IA mantiene mejor la consistencia facial en planos medios que en ECU extremos.
- **Para no alucinar en video IA, evita ECU de rostro en movimiento rápido**; la IA tiende a deformar facciones. Prefiere ECU de objetos o texturas estáticas.
- **Combina shot size + movimiento en un solo prompt** para que la IA genere coherencia: ej. `dolly in from medium shot to close-up, 85mm lens, shallow depth of field`.
- **Usa `camera angle` explícito** en prompts: `low angle shot, 24mm lens, looking up at subject` para evitar que la IA genere plano neutro por defecto.
- **Para transiciones suaves, usa `camera movement` + `shot size change`** en el mismo clip: `crane down from extreme long shot to medium shot, revealing subject`.
- **En Runway/Veo 3, especifica `lens` y `focal length`** para controlar la compresión de fondo y la profundidad de campo.

## Errores comunes que evita o menciona

- **No mezclar shot sizes sin transición lógica:** pasar de ECU a ELS sin un plano intermedio rompe la continuidad espacial. La IA lo interpreta como corte brusco.
- **No usar zoom digital en post-producción** si el prompt no especificó `dolly in`; la IA genera artefactos. Siempre prefiere movimiento de cámara real en el prompt.
- **Evitar `handheld` para planos de producto** porque introduce inestabilidad no deseada. Usa `tripod shot, locked off camera` para texturas y detalles.
- **No abusar de `shallow depth of field` en ELS** porque la IA desenfoca todo el fondo y pierde el contexto geográfico. Reserva bokeh para CU y MCU.
- **Cuidado con `POV` en movimientos rápidos:** la IA puede generar mareo o desenfoque excesivo. Prefiere `POV, slow walking pace, stabilized`.
- **No usar `crane shot` sin especificar dirección:** la IA puede generar un movimiento aleatorio. Siempre di `crane up` o `crane down`.