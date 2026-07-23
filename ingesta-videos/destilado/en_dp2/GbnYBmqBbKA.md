# Directing Camera Movement — Filmmaking Techniques for Directors: Ep4
**Fuente:** en_dp2 | https://youtu.be/GbnYBmqBbKA

## Que ensena
El video enseña que el movimiento de cámara no es decorativo: su propósito real es dirigir la atención del espectador (point of attention). Desglosa los movimientos básicos (pan, tilt, zoom, dolly, pedestal, crane, steadicam, handheld, rack focus) y muestra cómo combinarlos para crear energía, caos o revelación narrativa. La lección central: todo movimiento debe estar motivado por la historia, no por la tecnología.

## Lecciones accionables

**Movimientos básicos para prompts de video IA:**

- **Pan (Whip Pan / Slow Pan):** Equivalente a girar la cabeza rápido o lento. Usar `whip pan` para jolt of energy (ej. estilo Paul Thomas Anderson). Usar `slow pan` para revelar paisajes o dar tiempo al espectador.
- **Tilt:** Revela algo, redirige la atención. Prompt: `camera tilts up to reveal [elemento]`.
- **Zoom:** Punctuation súbita. Prompt: `sudden zoom in on [subject]`.
- **Dolly:** Movimiento suave sobre rieles. Prompt: `smooth dolly forward through [space]`.
- **Reverse Dolly Zoom (Vertigo effect):** Combina dolly y zoom en direcciones opuestas. Prompt: `reverse dolly zoom, camera pulls back while zooming in on [character]`.
- **Pedestal:** Cámara sube o baja verticalmente. Prompt: `pedestal up to reveal [stakes]`.
- **Crane / Boom:** Movimiento tridimensional con tilt. Prompt: `crane shot descending from [height] to [subject]`.
- **Steadicam / Gimbal:** Flota suavemente. Prompt: `steadicam glide through [space] following [subject]`.
- **Handheld:** Sacudido, ansiedad. Prompt: `handheld camera, shaky, chaotic movement`.
- **Rack Focus:** Cambia el foco de un plano a otro. Prompt: `rack focus from [foreground] to [background]`.

**Combinaciones avanzadas (para prompts complejos):**
- `crane shot lowering into handheld operator, then follows subject through [space]` (ej. Straight Outta Compton).
- `drone shot transitioning to steadicam glide` (ej. The Circle).

**Parámetros técnicos para prompts:**
- Focales: `wide angle`, `telephoto`, `50mm`, `anamorphic`.
- Movimiento: `smooth`, `jerky`, `slow push in`, `fast whip`.
- Transiciones: `handoff between operators`, `continuous shot`, `one take`.

## Reglas para el director de fotografía IA

- **Usa slow push in** cuando quieras que el espectador se enfoque en la emoción interna de un personaje; **no uses zoom** para eso (el zoom es punzante, el dolly es inmersivo).
- **Usa handheld** cuando la escena requiera ansiedad, caos o violencia; **no uses steadicam** en esas escenas (la suavidad quita tensión).
- **Usa rack focus** para redirigir la atención del espectador sin mover la cámara; **no abuses** o el espectador se confunde.
- **Para no alucinar en video IA:** Especifica la dirección del movimiento (forward, backward, left, right, up, down) y la velocidad (slow, fast, sudden). Si combinas movimientos (ej. dolly + zoom), escribe ambos explícitamente: `camera dollies back while zooming in`.
- **Regla de oro:** Pregúntate "¿hacia dónde mira el espectador en este fotograma?" y mueve la cámara para llevarlo allí. Si el movimiento no dirige la atención, es unmotivated camera move y el espectador mirará su teléfono.

## Errores comunes que evita o menciona

- **Mover la cámara sin motivo:** El peor error. Si el movimiento no apoya la historia, el espectador se desconecta.
- **Usar zoom como sustituto de dolly:** El zoom cambia la perspectiva (comprime/expande el espacio), el dolly cambia la posición física. No son intercambiables.
- **Ignorar el point of attention:** Si el espectador no sabe dónde mirar (caos no intencionado), pierde interés.
- **Combinar movimientos sin transición limpia:** En video IA, las transiciones abruptas entre steadicam y handheld pueden verse como errores de render. Especifica `handoff` o `transition` en el prompt.
- **No considerar el seguro:** Literal. No pongas a un operador en un drone sobre un acantilado sin cobertura. En IA, no generes movimientos físicamente imposibles sin aclarar que es un plano conceptual.