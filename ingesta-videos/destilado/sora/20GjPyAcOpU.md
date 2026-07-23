# Free Sora 2 Prompt Generator - Create Cinematic AI Videos in Minutes | Complete Tutorial #sora2
**Fuente:** sora | https://youtu.be/20GjPyAcOpU

## Que ensena (2-3 lineas)
Tutorial sobre un generador gratuito de prompts para Sora 2 que permite controlar parámetros cinematográficos completos (ángulos de cámara, iluminación, movimiento) mediante plantillas profesionales. Enseña a estructurar prompts en formato texto, JSON y Markdown para obtener resultados cinematográficos en IA de video.

## Lecciones accionables

- **Estructura de prompt cinematográfico:** Usa la secuencia `[Subject] + [Action] + [Camera Angle] + [Lighting] + [Lens/Focal Length] + [Motion] + [Atmosphere]`
- **Parámetros de cámara clave:** `Camera Angle: low-angle, high-angle, eye-level, dutch angle, over-the-shoulder, POV`; `Lens: 24mm, 35mm, 50mm, 85mm, 135mm, anamorphic`; `Depth of Field: shallow DoF, deep focus, rack focus`
- **Movimientos de cámara:** `dolly in/out, tracking shot, pan left/right, tilt up/down, crane shot, handheld, steadicam, whip pan, orbit around subject`
- **Iluminación:** `cinematic lighting, golden hour, volumetric lighting, rim light, practical light source, moody low-key, high-key, soft diffused, hard shadows`
- **Formato de salida:** El generador exporta en `Text`, `JSON` (estructurado para APIs) y `Markdown` (para documentación)
- **Uso de plantillas:** Selecciona entre 50+ templates preconstruidas para escenarios específicos (comercial, drama, acción, producto)
- **Ajuste fino:** Modifica manualmente cada parámetro en la interfaz antes de generar el prompt final

## Reglas para el director de fotografia IA

- Usa `shallow depth of field` cuando quieras aislar al sujeto del fondo; la IA lo interpreta mejor que "desenfoque".
- Especifica `focal length` exacta (ej. `85mm`) para controlar compresión de perspectiva; la IA tiende a usar 24mm por defecto.
- Para no alucinar en video IA, limita los movimientos de cámara a UNO por prompt; combinar `dolly + pan + tilt` en un solo clip genera artefactos.
- Define `lighting` antes que `camera movement`; la iluminación es el ancla visual que la IA respeta más.
- Usa `cinematic color grading: teal and orange` o `desaturated with warm highlights` para forzar una paleta consistente.
- Cuando uses `tracking shot`, especifica la velocidad: `slow tracking shot` o `fast tracking shot` para evitar movimiento errático.
- Para planos de producto, usa `macro lens, 100mm, extreme close-up, shallow DoF, soft box lighting`.
- En escenas nocturnas, añade `practical light source` (ej. `neon sign, street lamp`) para darle a la IA un ancla lumínica.

## Errores comunes que evita o menciona

- **No usar términos genéricos:** "nice shot" o "beautiful camera" no funcionan; la IA necesita términos técnicos precisos como `low-angle dolly in`.
- **Olvidar la iluminación:** Un prompt sin `lighting` produce resultados planos y sin atmósfera; siempre incluye al menos un modificador lumínico.
- **Sobrecargar el movimiento:** Pedir `dolly in while panning and tilting` en un solo clip causa warping y morphing; divide en tomas separadas.
- **Ignorar el aspect ratio:** No especificar `16:9, 2.35:1, 9:16` hace que la IA elija por defecto, a menudo recortando la composición.
- **Prompts sin sujeto claro:** La IA alucina cuando el sujeto no está definido; usa `a woman in her 30s, wearing a red dress` no solo `a person`.
- **No usar el generador de prompts:** El tutorial muestra que escribir prompts manualmente sin estructura lleva a resultados inconsistentes; la herramienta fuerza la estructura correcta.