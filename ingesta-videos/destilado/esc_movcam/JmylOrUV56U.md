# Directr's Notes: Camera Movements
**Fuente:** esc_movcam | https://youtu.be/JmylOrUV56U

## Que enseña
Explica los movimientos de cámara básicos del cine (tilt, pan, pedestal, tracking, handheld) y cómo aplicarlos narrativamente. Cada movimiento se asocia a una intención emocional o de seguimiento del sujeto, esencial para traducir a lenguaje de prompting de video IA.

## Lecciones accionables

- **Tilt:** Mover el lente hacia arriba/abajo manteniendo el eje horizontal. Úsalo para revelar verticalidad (ej: un personaje de pies a cabeza). En prompt: `camera tilts up slowly` o `camera tilts down`.
- **Pan:** Rotar la cámara horizontalmente (izquierda/derecha) manteniendo el eje vertical. Para seguir a un sujeto que cruza el encuadre. Prompt: `pan left to follow subject`, `pan right`.
- **Handheld:** Cámara en mano, sin trípode. Dramatiza, genera sensación de excitación o inquietud. Prompt: `handheld camera`, `shaky cam`, `cinematic handheld movement`.
- **Pedestal:** Subir o bajar la cámara sin cambiar ejes vertical/horizontal. Para mantener nivel de ojo del sujeto que se acerca. Prompt: `pedestal up`, `pedestal down`, `camera moves vertically`.
- **Tracking (Dolly):** Seguir al sujeto en su misma dirección y velocidad. Con dolly o handheld. Prompt: `tracking shot following subject`, `dolly forward`, `dolly backward`, `camera moves parallel to subject`.

**Parámetros técnicos para prompts:**
- Focales sugeridas: 24mm-35mm para tracking/pedestal; 50mm-85mm para tilt/pan.
- Movimiento: lento (`slow tilt`), suave (`smooth pan`), brusco (`jerky handheld`).
- Eje: mantener `horizontal axis` o `vertical axis` según el movimiento.

## Reglas para el director de fotografía IA

- **Usa tilt** cuando quieras revelar altura, poder o vulnerabilidad de un sujeto u objeto vertical.
- **Usa pan** para seguir un movimiento lateral rápido o para conectar dos puntos de interés en una misma escena.
- **Usa handheld** cuando necesites transmitir urgencia, caos o realismo documental; evítalo en tomas de producto o belleza.
- **Usa pedestal** para mantener el nivel de ojo del personaje mientras se acerca o aleja; evita tilt si el sujeto se mueve horizontalmente.
- **Usa tracking** para acompañar al sujeto en su trayectoria; en video IA, especifica `camera moves at same speed as subject` para evitar desincronización.
- **Para no alucinar en video IA:** define el movimiento en el prompt de forma explícita y secuencial (ej: `camera starts static, then slowly pans right`). Evita movimientos compuestos (tilt + pan simultáneo) si la IA no los maneja bien; prefiere un solo eje por clip.

## Errores comunes que evita o menciona

- **Confundir tilt con pedestal:** tilt rota el lente (cambia ángulo de visión), pedestal desplaza la cámara verticalmente (mantiene ángulo). En IA, si pides `tilt up` cuando necesitas `pedestal up`, la cámara se inclinará en vez de subir.
- **Pan sin eje fijo:** un pan debe mantener el eje vertical; si la IA lo combina con tilt, el encuadre se desvía. Especifica `maintain vertical axis` en el prompt.
- **Handheld excesivo:** usado sin intención narrativa, puede marear al espectador o verse amateur. En IA, `handheld` sin más puede generar vibración aleatoria; añade `slight handheld` o `cinematic handheld` para control.
- **Tracking sin referencia de velocidad:** si no indicas `same pace as subject`, la IA puede acelerar o frenar la cámara, rompiendo la continuidad.