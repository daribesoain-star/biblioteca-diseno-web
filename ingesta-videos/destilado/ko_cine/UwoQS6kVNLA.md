# [문화뉴딜] 영화를 만들기 위해 알아야 할 촬영과 편집 -카메라의움직임-
**Fuente:** ko_cine | https://youtu.be/UwoQS6kVNLA

## Que ensena (2-3 lineas)
El video desglosa los fundamentos del movimiento de cámara en cine: desde planos fijos (tripode) hasta movimientos complejos (dolly, grúa, steadicam), explicando cómo cada técnica afecta la narrativa y la psicología del espectador. También introduce el concepto de *mise-en-scène* (composición, color, frame ratio) como herramienta de dirección de arte. Esencial para entender qué tipo de movimiento y encuadre usar en prompts de video IA para transmitir emociones específicas.

## Lecciones accionables
- **Fixed Shot (Plano Fijo):** Cámara en trípode, sin movimiento. Usar en prompts: `"fixed shot, static camera on tripod, stable frame"`. Ideal para escenas de observación objetiva (tercera persona).
- **Tilt (Tilt Up / Tilt Down):** Cámara fija, movimiento vertical. Prompt: `"camera tilts up slowly revealing a tall building"` o `"tilt down to show the character's feet"`. Añade subjetividad (punto de vista de un personaje mirando arriba/abajo).
- **Pan (Pan Left / Pan Right):** Cámara fija, movimiento horizontal. Prompt: `"pan right following the character walking"` o `"quick pan (swish pan) for fast transition"`. Para mostrar continuidad espacial o velocidad.
- **Dolly (Dolly In / Dolly Out):** Cámara se mueve físicamente hacia adelante o atrás. Prompt: `"dolly in slowly towards the subject, revealing emotion"` o `"dolly out abruptly, creating a reveal or surprise"`. Diferencia clave con zoom: el dolly cambia la perspectiva (más natural, inmersivo).
- **Zoom (Zoom In / Zoom Out):** Movimiento óptico del lente, sin mover la cámara. Prompt: `"zoom in on the object to emphasize detail"` o `"zoom out to show the full environment"`. Útil para énfasis o contexto, pero menos natural que dolly.
- **Handheld (Handheld Shot):** Cámara en mano, movimiento inestable. Prompt: `"handheld camera, shaky, intense, first-person POV"`. Para tensión, caos, realismo documental.
- **Steadicam / Gimbal:** Movimiento suave y fluido, cámara estabilizada. Prompt: `"smooth steadicam shot following the character through the corridor"`. Para planos secuencia o seguimiento sin vibración.
- **Crane / Jib:** Cámara suspendida, movimientos aéreos. Prompt: `"crane shot rising from ground level to bird's eye view"`. Para tomas grandiosas o revelaciones de escenario.
- **Aspect Ratio (Frame):** Elegir según género. Prompt: `"shot in 2.35:1 aspect ratio, cinematic widescreen"` para épico; `"4:3 aspect ratio, intimate and static"` para drama psicológico.
- **Mise-en-scène (Color & Composition):** Usar colores con intención. Prompt: `"dominant red color palette, passionate and tense"` o `"cold blue tones, detached and cold"`. Composición: `"subject placed on left third, negative space on right"`.

## Reglas para el director de fotografia IA
- **Usa "dolly in" cuando quieras que la IA genere un acercamiento emocional o revelación lenta; evita "zoom" para lo mismo, pues el zoom aplana la perspectiva.**
- **Para no alucinar en video IA, especifica siempre el tipo de movimiento al inicio del prompt: "static camera, then slow pan right" o "handheld, shaky, following the action".**
- **Si necesitas un plano subjetivo (POV), usa "first-person perspective, handheld" o "tilt up as if character is looking up".**
- **Para planos de transición rápida, usa "swish pan" o "quick whip pan" – esto fuerza a la IA a generar un movimiento brusco y no un fundido.**
- **Cuando combines movimiento y personaje, especifica la relación: "camera dollies back as character walks forward, maintaining distance".**
- **Para evitar artefactos de movimiento, limita la velocidad: "slow dolly in over 5 seconds" o "gentle pan".**
- **Usa "fixed shot" para escenas donde la IA tiende a mover la cámara sin motivo; así la mantienes estable.**
- **Para mise-en-scène, incluye color y composición en el prompt: "wide shot, 2.35:1, subject centered, blue and white color palette, claustrophobic room".**

## Errores comunes que evita o menciona
- **Confundir zoom con dolly:** El zoom es óptico (cambia el ángulo de visión, aplana el fondo); el dolly es físico (cambia la perspectiva, más natural). En prompts, no uses "zoom in" cuando quieras un acercamiento realista.
- **Movimiento sin motivación narrativa:** El video enfatiza que la cámara se mueve para mostrar u ocultar algo. No añadas "camera moves randomly" – la IA lo interpretará como movimiento sin propósito.
- **Elegir aspect ratio sin considerar el contenido:** Un ratio muy ancho (2.35:1) en una escena vacía se ve hueco. En prompts, ajusta el ratio al tipo de escena: "16:9 for balanced indoor/outdoor", "4:3 for intimate static scenes".
- **Abusar del handheld sin contexto:** Handheld da tensión, pero si se usa en una escena tranquila, rompe la inmersión. Especifica el tono: "handheld for chaotic chase" vs "tripod fixed for calm dialogue".
- **Ignorar el color como herramienta narrativa:** El video muestra cómo el color (rosa, blanco, azul) se usa para simbolismo. En prompts, no solo digas "colorful", sino "dominant red for passion" o "muted green for unease".
- **No planificar la composición:** El video critica poner al sujeto siempre en el centro. En prompts, usa "rule of thirds", "subject on left", "negative space on right" para dar equilibrio.