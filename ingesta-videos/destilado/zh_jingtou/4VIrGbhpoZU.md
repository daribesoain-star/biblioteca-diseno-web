# 【电影和运镜】9 环移镜头
**Fuente:** zh_jingtou | https://youtu.be/4VIrGbhpoZU

## Que ensena
El video enseña el **"环移镜头" (circular tracking shot / orbit shot)** , un movimiento de cámara que rodea al sujeto en un arco semicircular o completo. Explica cómo este movimiento, combinado con un cambio de foco o encuadre, revela información narrativa, crea tensión o enfatiza la transformación de un personaje. Se centra en la ejecución práctica con equipos de cine real (dolly, steadicam) y su aplicación en storytelling visual.

## Lecciones accionables
- **Término de cámara para prompts:** `circular tracking shot`, `orbit shot`, `arc shot`, `180-degree orbit`, `camera orbits subject`.
- **Movimiento:** La cámara se desplaza en un arco alrededor del sujeto, manteniendo la distancia focal constante. En video IA, usa `camera orbits around the character` o `camera moves in a semicircle around the subject`.
- **Focal y distancia:** Se recomienda una focal media (35mm-50mm en full frame) para mantener la relación espacial natural. En prompts: `shot on 50mm lens`.
- **Combinación con foco:** El video muestra un rack focus durante el movimiento. Prompt: `circular tracking shot with rack focus from foreground to background`.
- **Eje de acción:** El movimiento circular debe respetar el **180-degree rule** para no confundir al espectador. En IA, especifica `camera stays on one side of the axis` si el sujeto interactúa con otro.
- **Velocidad:** El movimiento debe ser suave y constante. Prompt: `slow, smooth orbit shot` o `fast whip pan orbit` para energía.
- **Ejemplo de prompt completo:** `Cinematic circular tracking shot, camera orbits around a woman standing in a rainy street at night, neon lights reflecting on wet pavement, 50mm lens, shallow depth of field, slow motion, cinematic lighting, volumetric fog.`

## Reglas para el director de fotografia IA
- **Usa `circular tracking shot` o `orbit shot`** cuando quieras revelar el entorno o el estado emocional del personaje girando a su alrededor.
- **Para no alucinar en video IA:** Especifica la dirección del movimiento: `camera orbits clockwise around the subject` o `camera arcs from left to right`. Si no se define, la IA puede generar un movimiento errático o un zoom.
- **Combínalo con un cambio de iluminación:** `lighting shifts as camera orbits` para simular el cambio de ángulo de luz natural.
- **Usa `steady cam` o `gimbal shot`** en el prompt para que el movimiento sea fluido y sin vibraciones.
- **Para sujetos en movimiento:** `camera orbits while tracking the subject walking` para un efecto más dinámico.
- **Controla la duración:** En Kling o Runway, un orbit shot completo de 180° puede requerir 4-5 segundos. Ajusta la duración del clip o usa `slow orbit` para que el movimiento sea legible.

## Errores comunes que evita o menciona
- **No romper el eje de 180°:** Si el sujeto mira hacia la izquierda, la cámara no debe cruzar al lado derecho en medio del movimiento, o el espectador se desorienta. En IA, especifica `camera orbits without crossing the eyeline`.
- **Movimiento demasiado rápido:** Un orbit shot muy veloz pierde la narrativa y parece un error técnico. Usa `smooth, slow orbit` para escenas dramáticas.
- **Falta de motivación narrativa:** El video advierte que el movimiento circular debe tener un propósito (revelar algo, cambiar el poder del personaje). No lo uses solo por estética.
- **Olvidar el rack focus:** Si el fondo es importante, un rack focus durante el orbit shot añade profundidad. Sin él, la IA puede mantener todo enfocado y plano.
- **Sujeto estático y cámara perfecta:** En IA, un orbit shot alrededor de un sujeto completamente quieto puede verse artificial. Añade `subject breathing slightly` o `hair moving in wind` para dar vida.