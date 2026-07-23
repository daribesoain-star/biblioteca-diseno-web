# 3分钟学会电影级运镜 油管大神都在用 丰富你的视频画面 | 摄影实战12
**Fuente:** zh_jingtou | https://youtu.be/cNKYmnGLYp4

## Que ensena (2-3 lineas)
El video enseña técnicas de cámara cinematográfica de Hollywood, enfocándose en el **lenguaje de cámara** para crear narrativa visual. Explica cómo usar movimientos como **dolly zoom**, **panning** y **tracking** para evocar emociones específicas y guiar la atención del espectador, aplicable tanto a rodajes reales como a prompts de IA generativa.

## Lecciones accionables
- **Dolly Zoom (Efecto Trombón / Vertigo Effect):** Para transmitir desorientación, sorpresa o un cambio emocional drástico. En el prompt, especifica: *“dolly zoom in on subject, background stretches away, 35mm lens, vertigo effect, cinematic lighting”*. La clave es que la cámara se mueve hacia adelante/atrás mientras el zoom hace lo opuesto.
- **Panning (Barrido) Rápido:** Para transiciones violentas o revelar un nuevo elemento de golpe. Prompt: *“fast whip pan from character A to character B, motion blur, 24fps, handheld camera feel”*. En IA, usa `whip pan` o `rapid pan` para evitar que la cámara se mueva suavemente.
- **Tracking Shot (Seguimiento Lateral):** Para acompañar a un personaje en movimiento y mostrar el entorno. Prompt: *“tracking shot, camera moves parallel to subject walking, 50mm lens, shallow depth of field, steadycam”*. Especifica la dirección: `camera moves left to right` o `camera follows subject from the side`.
- **Low Angle Shot (Contrapicado):** Para hacer que un sujeto se vea poderoso o amenazante. Prompt: *“low angle shot, camera looking up at character, wide angle lens 24mm, dramatic sky background, heroic composition”*.
- **High Angle Shot (Picado):** Para mostrar vulnerabilidad o una vista general. Prompt: *“high angle shot, camera looking down at subject, bird’s eye view, 70mm lens, subject isolated in frame”*.
- **Dutch Angle (Cámara Inclinada):** Para crear tensión o inestabilidad. Prompt: *“dutch angle, camera tilted 15 degrees, claustrophobic alleyway, harsh shadows, noir style”*.
- **Rack Focus (Cambio de Enfoque):** Para redirigir la atención entre dos objetos. Prompt: *“rack focus from foreground object to background character, shallow depth of field, 85mm lens, cinematic”*. En IA, usa `focus shift` o `depth of field change` para que el modelo entienda el cambio.
- **Crane Shot (Grúa / Jib):** Para movimientos verticales dramáticos. Prompt: *“crane shot, camera rises from ground level to high angle, revealing a vast landscape, epic scale, golden hour”*.

## Reglas para el director de fotografia IA
- **Usa `camera movement` como palabra clave principal** en el prompt para que la IA active el motion. Sin ella, el modelo tiende a generar una imagen estática.
- **Para no alucinar en video IA, especifica la velocidad del movimiento:** usa `slow dolly in`, `fast whip pan`, `smooth tracking shot`. La IA tiende a suavizar todo por defecto; si quieres brusquedad, sé explícito.
- **Define la lente (focal length) siempre:** `24mm` para gran angular y sensación de espacio; `50mm` para visión natural; `85mm` para compresión y primeros planos; `200mm` para teleobjetivo y aplanar la perspectiva.
- **Combina movimiento con emoción:** No solo digas “camera moves”, di “camera slowly pushes in to reveal character’s anxiety”. La IA interpreta mejor la intención narrativa.
- **Usa `one continuous shot` o `long take`** si quieres que la IA genere un plano secuencia sin cortes. Esto fuerza a la IA a mantener la coherencia espacial.
- **Para evitar parpadeos o artefactos en movimientos complejos**, limita el prompt a un solo movimiento principal. No combines dolly zoom con crane shot en el mismo clip; hazlo en dos generaciones separadas.

## Errores comunes que evita o menciona
- **No mezclar movimientos opuestos en un solo clip:** La IA se confunde y genera un resultado tembloroso o estático. Separa `dolly in` y `crane up` en dos prompts distintos.
- **Evitar que la cámara “flote” sin motivo:** Si no hay un sujeto claro, la IA genera un movimiento errático. Siempre ancla el movimiento a un personaje u objeto: `camera follows the protagonist`.
- **No usar zoom digital en post-producción:** El video menciona que el zoom debe ser óptico (real) para mantener la calidad. En IA, si pides `zoom in`, asegúrate de que sea parte del movimiento de cámara, no un recorte posterior.
- **Cuidado con la iluminación inconsistente:** Si el prompt describe un movimiento de cámara largo, la IA puede cambiar la luz a mitad del clip. Usa `consistent lighting` o `golden hour light throughout` para evitarlo.
- **No olvidar el “breathing room” (espacio de respiración):** En un tracking shot, la cámara no debe estar pegada al sujeto. Especifica `camera maintains 2 meters distance` para que la IA no genere un plano claustrofóbico.