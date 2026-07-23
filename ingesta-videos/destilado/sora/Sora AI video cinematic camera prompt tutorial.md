# Sora AI video cinematic camera prompt tutorial
**Fuente:** sora | https://youtu.be/Sora AI video cinematic camera prompt tutorial

## Que ensena (2-3 lineas)
Enseña a usar un generador de prompts gratuito para Sora 2 que permite parametrizar ángulos de cámara, iluminación, movimiento y lentes para crear videos cinematográficos con IA. Cubre desde configuración básica hasta exportación de prompts en formatos Text, JSON y Markdown, con más de 50 plantillas profesionales.

## Lecciones accionables
- **Parámetros básicos del generador:** Scene Type, Subject, Action, Environment, Lighting, Mood, Camera Angle, Camera Movement, Lens, Aspect Ratio, Duration.
- **Términos de cámara para prompts:** Camera Angle (low angle, high angle, eye level, dutch angle, bird's eye view, over-the-shoulder, POV), Camera Movement (dolly in/out, pan left/right, tilt up/down, tracking shot, crane shot, handheld, steadicam, whip pan, zoom in/out).
- **Lentes recomendados:** 24mm (gran angular), 35mm (estándar narrativo), 50mm (retrato), 85mm (close-up), 135mm (telefoto comprimido), anamorphic (2.35:1 look).
- **Iluminación:** Golden hour, dramatic lighting, soft diffused, rim light, practical light, neon glow, volumetric lighting, chiaroscuro.
- **Mood keywords:** Cinematic, ethereal, gritty, nostalgic, futuristic, moody, vibrant, desaturated, high contrast.
- **Exportación:** Usar formato JSON para integración con APIs; Markdown para documentación visual; Text para copia directa a Sora, Runway o Kling.
- **Plantillas:** 50+ pre-built templates categorizadas por género (acción, drama, comercial, sci-fi, naturaleza, producto).
- **Prompt history:** Guardar y reutilizar prompts exitosos para mantener consistencia de estilo en campañas.

## Reglas para el director de fotografia IA
- Usa "Camera Movement: dolly in" cuando quieras acercamiento dramático al sujeto; evita "zoom" si buscas profundidad física real.
- Para no alucinar en video IA, especifica "Lens: 50mm" y "Aspect Ratio: 16:9" antes que cualquier descripción estética.
- Usa "Lighting: volumetric rays" solo si la escena tiene partículas visibles (polvo, humo, niebla); si no, la IA alucinará rayos sin fuente.
- Combina "Camera Angle: low angle" + "Camera Movement: tilt up" para revelar poder o escala del sujeto.
- Para producto en publicidad, usa "Lens: macro" + "Depth of field: shallow" + "Camera Movement: slow push in".
- Especifica "Duration: 5-10 seconds" para mantener coherencia temporal; más de 10s incrementa riesgo de deformación.
- Usa "Mood: cinematic" + "Color grade: teal and orange" para look blockbuster comercial.
- Para Kling/Runway, prefiere "Camera Movement: handheld" sobre "steadicam" porque manejan mejor el movimiento orgánico.

## Errores comunes que evita o menciona
- No mezclar "Camera Movement: dolly in" con "Lens: fisheye" — la IA genera distorsión inconsistente.
- Evitar "Camera Angle: bird's eye view" + "Camera Movement: tracking shot" — la mayoría de modelos fallan en mantener el eje vertical.
- No usar "Lighting: dramatic" sin especificar dirección ("key light from left") — la IA genera sombras planas.
- No olvidar "Subject" explícito en el prompt — sin sujeto definido, la IA rellena con elementos aleatorios.
- No usar "Duration: 30 seconds" en Sora 2 — el límite práctico es 10-15s para mantener calidad.
- Evitar "Camera Movement: whip pan" en tomas con mucho detalle de fondo — la IA produce motion blur artificial.