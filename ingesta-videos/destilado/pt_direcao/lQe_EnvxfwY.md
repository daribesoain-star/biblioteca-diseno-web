# Planos e Enquadramentos no Cinema
**Fuente:** pt_direcao | https://youtu.be/lQe_EnvxfwY

## Que ensena (2-3 lineas)
Este video desglosa la nomenclatura y función de cada plano cinematográfico (desde el establishing shot hasta el extreme close-up) y cómo la distancia cámara-sujeto define el impacto emocional y narrativo de una escena. Enseña que la combinación de plano, altura, lado y ángulo construye el encuadre, y que la elección del punto de vista (personaje, narrador o espectador) guía tanto la filmación como el montaje.

## Lecciones accionables

**Terminología clave para prompts (inglés técnico):**
- **Establishing Shot / Aerial Shot:** Plano general aéreo para abrir secuencia o transición. Usar en prompts como: `"aerial establishing shot of a city at dawn, cinematic lighting"`
- **Extreme Wide Shot (EWS):** Sujeto pequeño en entorno vasto. Prompt: `"extreme wide shot, lone figure in desert, golden hour, anamorphic lens"`
- **Wide Shot / Full Shot:** Sujeto de cuerpo entero, entorno visible. Prompt: `"wide shot, character walking through market, 24mm lens, natural light"`
- **Medium Wide Shot / Cowboy Shot:** Desde la rodilla o muslo arriba. Prompt: `"american shot, cowboy adjusting holster, 35mm, dust motes in sunlight"`
- **Medium Shot (MS):** De cintura arriba. Prompt: `"medium shot, two characters in conversation, 50mm, shallow depth of field"`
- **Medium Close-Up (MCU):** De pecho arriba. Prompt: `"medium close-up, actor reacting, 85mm, soft key light"`
- **Close-Up (CU):** Rostro llena el encuadre. Prompt: `"close-up, intense eyes, 100mm macro, dramatic shadows"`
- **Extreme Close-Up (ECU):** Detalle (ojos, boca, manos). Prompt: `"extreme close-up, eye reflecting city lights, 135mm, sharp focus"`
- **Over-the-Shoulder (OTS):** Hombro del oyente visible. Prompt: `"over-the-shoulder shot, speaker in foreground blurred, 50mm f/1.8"`
- **Point-of-View (POV):** Lo que ve el personaje. Prompt: `"POV shot, looking through binoculars, handheld camera shake, 300mm telephoto"`
- **Sequence Shot / One-Take:** Plano secuencia sin cortes. Prompt: `"sequence shot, continuous tracking following character through corridor, Steadicam, no cuts"`

**Parámetros técnicos para prompts de video IA:**
- **Focales:** 24mm (gran angular para EWS), 35mm (full shot), 50mm (MS, OTS), 85mm (MCU, CU), 100-135mm (ECU)
- **Movimientos:** `"dolly in"` (acercamiento lento), `"dolly out"` (alejamiento), `"tracking shot"` (lateral), `"crane shot"` (vertical), `"handheld"` (inestabilidad orgánica)
- **Altura de cámara:** `"low angle"` (poder, amenaza), `"high angle"` (vulnerabilidad), `"eye level"` (neutralidad)
- **Lente:** `"anamorphic"` (flare, bokeh ovalado), `"spherical"` (nitidez estándar), `"fisheye"` (distorsión)

## Reglas para el director de fotografia IA

- **Usa Establishing Shot al inicio de cada secuencia** para que la IA entienda el contexto espacial antes de pasar a planos cerrados; evita alucinaciones de ubicación.
- **Para no alucinar en video IA, especifica la distancia cámara-sujeto en el prompt** (ej: `"full body visible"` para wide shot, `"face only fills frame"` para close-up). La IA tiende a acercarse o alejarse sin control si no defines el plano.
- **Combina plano + ángulo + movimiento en un solo prompt** para coherencia: `"low angle medium close-up, dolly in, dramatic tension"` — no separes los parámetros.
- **Usa OTS solo cuando haya dos personajes** en cuadro; si la IA genera un OTS sin el hombro del oyente, es alucinación. Añade `"listener's shoulder in foreground, out of focus"`.
- **Para POV, fuerza la cámara subjetiva** con `"first person view, camera as character's eyes"` y evita que la IA muestre al personaje desde fuera.
- **En Sequence Shot, limita la duración** (máximo 5-10 segundos en Runway/Kling) y usa `"continuous motion, no cuts"` para evitar que la IA corte abruptamente.
- **Para ECU de detalle**, especifica qué parte del cuerpo: `"extreme close-up, lips whispering, shallow depth of field"` — la IA puede enfocar el ojo si no lo aclaras.

## Errores comunes que evita o menciona

- **"Definir planos al azar solo por estética"** → El video advierte que elegir planos solo por "lo cool y bonito" genera confusión visual. En IA, prompts sin intención narrativa producen imágenes bonitas pero sin coherencia.
- **"No entender el punto de vista del drama"** → Si no defines si la escena es desde el personaje, narrador o espectador, la IA mezcla perspectivas. Especifica `"character's POV"` o `"omniscient camera"` para mantener consistencia.
- **"Usar nomenclaturas inconsistentes"** → El video menciona divergencias entre cine y TV. En prompts, usa siempre los términos ingleses estándar (CU, MS, EWS) para que la IA los interprete correctamente.
- **"Olvidar que el encuadre incluye altura, lado y ángulo"** → No basta con decir `"close-up"`. Añade `"eye level"` o `"low angle"` para que la IA no genere un plano genérico sin intención.
- **"No considerar el montaje al filmar"** → En video IA, si generas planos aislados sin pensar en la transición entre ellos, el resultado será inconexo. Planea la secuencia: `"cut from wide shot to close-up, match on action"`.