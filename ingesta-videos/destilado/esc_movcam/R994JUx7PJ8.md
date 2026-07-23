# Film Glossary: Shot Movement (Dolly, Crane, Track, Zoom, Tilt, Pan)
**Fuente:** esc_movcam | https://youtu.be/R994JUx7PJ8

## Que ensena (2-3 lineas)
Diferencia entre movimientos físicos de cámara (dolly, track, crane) y movimientos ópticos sin desplazamiento (zoom, pan, tilt). Explica cómo cada tipo altera la relación espacial entre sujeto y fondo, afectando la inmersión del espectador y la conexión emocional con la escena.

## Lecciones accionables
- **Dolly (desplazamiento físico hacia adelante/atrás):** La cámara se mueve físicamente hacia el sujeto. Las proporciones entre sujeto y fondo cambian en tiempo real. *Prompt: "dolly in shot, camera physically moving forward, background perspective shifting naturally"*
- **Zoom (movimiento óptico del lente):** El lente acerca o aleja sin mover la cámara. Todo en el encuadre aumenta/disminuye al mismo ritmo, creando un efecto "plano" y artificial. *Prompt: "zoom in, lens distortion, flat perspective, all elements scale uniformly"*
- **Crane (grúa, movimiento físico vertical):** La cámara se desplaza físicamente hacia arriba/abajo, cambiando las proporciones del fondo. *Prompt: "crane shot, camera physically rising, background proportions shifting, cinematic vertical movement"*
- **Tilt (inclinación vertical sin desplazamiento):** La cámara gira sobre su eje vertical (arriba/abajo) sin moverse. El sujeto mantiene proporciones estáticas. *Prompt: "tilt up shot, camera stationary, vertical rotation, subject proportions unchanged"*
- **Track (traveling lateral):** La cámara se mueve físicamente en paralelo al sujeto. El espectador se desplaza con el personaje, entrando en su mundo. *Prompt: "tracking shot, camera moving parallel to subject, immersive lateral movement, following character"*
- **Pan (panorámica horizontal):** La cámara gira sobre su eje horizontal sin desplazarse. El sujeto se mueve hacia/desde la cámara, creando una conexión más impersonal. *Prompt: "pan shot, camera rotating on axis, subject moving toward camera, impersonal connection"*
- **Focales sugeridas:** Dolly/track: 24-35mm para sensación de movimiento real; Zoom: 50-85mm para compresión; Crane: 16-24mm para amplitud.
- **Parámetros clave en prompts:** "physical camera movement", "lens distortion", "background perspective shift", "stationary camera", "axis rotation"

## Reglas para el director de fotografia IA
- Usa **dolly o track** cuando quieras que la IA genere una sensación de movimiento real y cambio de perspectiva entre sujeto y fondo; evita que el fondo se comprima artificialmente.
- Usa **zoom** solo cuando busques un efecto intencionalmente plano, documental o de "lente barato"; en video IA, el zoom tiende a alucinar bordes y distorsionar fondos.
- Para **crane shots**, especifica "camera physically moving up/down" para que la IA no confunda con tilt; el crane cambia la relación fondo-sujeto, el tilt no.
- Para **tracking shots**, indica "camera moving parallel to subject" y "background moving at different speed" para forzar paralaje realista.
- Para **pan**, usa "camera rotating on its axis" para evitar que la IA interprete un track lateral; el pan mantiene el fondo estático en relación al punto de giro.
- Para no alucinar en video IA: evita combinar zoom con dolly en el mismo prompt (efecto "vertigo" no intencional); especifica siempre si la cámara se mueve físicamente o solo rota.
- Cuando uses dolly/track, añade "parallax effect, foreground and background moving at different rates" para reforzar la profundidad realista.

## Errores comunes que evita o menciona
- **Confundir zoom con dolly:** El zoom escala todo uniformemente (fondo y sujeto al mismo ritmo), el dolly cambia las proporciones. En IA, un prompt de "zoom in" sin aclarar genera aplanamiento no deseado.
- **Confundir tilt con crane:** El tilt solo rota la cámara (sujeto mantiene proporciones), el crane desplaza físicamente la cámara (fondo cambia). En IA, "crane shot" mal prompteado produce tilt estático.
- **Confundir pan con track:** El pan gira sobre el eje (sujeto se mueve hacia/desde cámara, conexión impersonal), el track desplaza la cámara en paralelo (espectador se mueve con el sujeto). En IA, "pan" sin especificar "rotation" genera un track lateral no deseado.
- **Uso de zoom en IA sin control de lente:** El zoom digital de los modelos suele crear artefactos de escalado y pérdida de detalle; prefiere dolly para acercamientos orgánicos.