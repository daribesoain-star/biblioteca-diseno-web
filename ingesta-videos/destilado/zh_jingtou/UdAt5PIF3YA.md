# 【拍摄教程】分镜干货，电影导演7分钟讲解景别与镜头类别 Everything About Shot Types and Shot Sizes in 7 Min
**Fuente:** zh_jingtou | https://youtu.be/UdAt5PIF3YA

## Que ensena (2-3 lineas)
El video desglosa la jerarquía completa de planos cinematográficos (shot sizes) y tipos de lente (shot types) que todo director de fotografía debe dominar. Explica cómo cada elección de encuadre —desde un Extreme Close-Up hasta un Establishing Shot— cumple una función narrativa específica, y cómo la distancia focal (focal length) y el movimiento de cámara modifican la percepción emocional de la escena. Esencial para traducir intención dramática a prompts de video IA.

## Lecciones accionables
- **Extreme Long Shot / Establishing Shot:** Usa `wide angle lens, 14mm-24mm` para situar al personaje en un entorno vasto. Prompt: *"Extreme wide shot of a lone figure walking across a salt flat at sunset, anamorphic lens, cinematic lighting, 8k"*.
- **Long Shot / Full Shot:** Muestra al personaje de cuerpo entero. Focal: `35mm` para mantener proporciones naturales. Prompt: *"Full body shot of a detective entering a rain-soaked alley, 35mm lens, shallow depth of field, neon sign reflections"*.
- **Medium Shot (MS):** De cintura para arriba. Ideal para diálogos. Usa `50mm` para una perspectiva neutral. Prompt: *"Medium shot of two actors arguing in a diner, 50mm lens, over-the-shoulder angle, warm tungsten light"*.
- **Close-Up (CU):** Rostro completo. Focal: `85mm` para compresión favorecedora. Prompt: *"Close-up of a woman's face, tears streaming, 85mm lens, soft key light, bokeh background"*.
- **Extreme Close-Up (ECU):** Ojos, boca, manos. Focal: `100mm macro` o superior. Prompt: *"Extreme close-up of a finger pulling a trigger, macro lens, slow motion, dust particles in shaft of light"*.
- **Shot Types:**
    - **POV (Point of View):** Prompt: *"First person POV looking through binoculars, shaky cam, 200mm telephoto lens, heat haze"*.
    - **Over-the-Shoulder (OTS):** Prompt: *"Over-the-shoulder shot of a hacker typing, focus on the screen, 35mm lens, blue ambient light"*.
    - **Dutch Angle / Canted:** Prompt: *"Dutch angle shot of a man in a tilted room, 24mm lens, claustrophobic, unsettling green light"*.
- **Movimiento de cámara:** Especifica en el prompt `dolly in`, `tracking shot`, `crane up`, `handheld`. Ejemplo: *"Dolly zoom on a woman screaming, 50mm lens, vertigo effect"*.

## Reglas para el director de fotografia IA
- **Usa shot size + focal length + lens type** en cada prompt: `"Medium close-up, 85mm, anamorphic lens"` para que la IA entienda el encuadre exacto.
- **Para no alucinar en video IA, evita** cambios abruptos de plano dentro de un mismo clip; la IA tiende a mutar la escena si pides un zoom de ECU a Wide Shot en un solo generado. Mejor genera clips separados y edítalos.
- **Define el depth of field** explícitamente: `"shallow depth of field"` para CU, `"deep focus"` para Establishing Shots.
- **Usa términos de iluminación** como `"three-point lighting"`, `"Rembrandt light"`, `"chiaroscuro"` para controlar el mood.
- **Para movimientos, sé específico:** `"slow dolly in"` no es lo mismo que `"handheld tracking shot"`. La IA interpreta el ritmo del movimiento.

## Errores comunes que evita o menciona
- **No mezclar shot sizes en un solo prompt:** Pedir `"close-up of a car driving through a city"` confunde a la IA; el auto será enorme o el encuadre será incorrecto. Especifica `"wide shot of a car driving"` o `"close-up of the car's headlight"`.
- **Evitar "zoom" sin contexto:** En video IA, `"zoom"` a menudo produce un warp digital feo. Prefiere `"dolly zoom"` o `"camera push in"` para un efecto cinematográfico realista.
- **No usar "cinematic" como muleta:** Sin parámetros de cámara (focal, lente, luz), la IA interpreta "cinematic" como un filtro genérico. Sé técnico: `"shot on Arri Alexa, 35mm lens, T2.8, 24fps"`.
- **Cuidado con el "Dutch angle" excesivo:** La IA puede inclinar toda la escena de forma no intencionada. Úsalo solo cuando el guión lo requiera.