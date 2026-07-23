# Qué son los MM en los lentes y cual es la diferencia?
**Fuente:** esc_lentes_es | https://youtu.be/WjIYMRIjJI4

## Que ensena (2-3 lineas)
Explica que los milímetros en un lente representan la distancia focal: la distancia entre el centro del lente y el sensor. A mayor número de milímetros, más estrecho es el ángulo de visión y mayor el acercamiento (teleobjetivo); a menor número, más amplio es el campo de visión (gran angular). También cubre la diferencia entre sensores full-frame y crop (APS-C) y cómo el factor de multiplicación (1.6x en Canon) altera la focal efectiva.

## Lecciones accionables

- **Distancia focal (focal length):** Define el ángulo de visión. Usa `focal length` en prompts para controlar la compresión y el encuadre.
- **Full-frame vs. Crop (APS-C):** En una cámara crop, multiplica la focal del lente por 1.6 (Canon) o 1.5 (Nikon/Sony) para obtener la focal efectiva. Ejemplo: un lente de 50mm en crop equivale a 80mm en full-frame.
- **Para simular 50mm en full-frame usando una cámara crop:** Divide 50mm entre 1.6 = 31.25mm → usa un lente de 35mm.
- **Movimientos de cámara recomendados en el video:** Cámara fija en trípode, solo cambio de lentes para mostrar diferencia de ángulo. En prompts IA, usa `static shot, tripod, lens change` para consistencia.
- **Prompt técnico derivado:** `"wide angle shot, 20mm lens, full-frame sensor, expansive background, subject centered"` o `"telephoto shot, 400mm lens, compressed perspective, distant subject, shallow depth of field"`.
- **Parámetros clave para prompts:** `focal length`, `sensor size`, `field of view`, `angle of view`, `crop factor`.

## Reglas para el director de fotografia IA

- **Usa `focal length` como parámetro principal** en prompts de Veo 3 / Kling / Runway para controlar el encuadre: `"focal length: 50mm"` para un look natural, `"focal length: 20mm"` para gran angular, `"focal length: 85mm"` para retratos con compresión.
- **Especifica `sensor size: full-frame` o `sensor: APS-C`** en el prompt para evitar que la IA alucine la perspectiva. Si no se especifica, asume full-frame.
- **Para no alucinar en video IA:** No combines `focal length` con `crop factor` sin aclarar el sensor. Si usas `"crop sensor, 50mm"`, la IA puede generar un ángulo incorrecto. Mejor escribe: `"APS-C camera, 35mm lens, equivalent to 50mm on full-frame"`.
- **Usa `field of view` como alternativa** si la IA no entiende `focal length`: `"wide field of view"` o `"narrow field of view"`.
- **Para simular teleobjetivo en IA:** Usa `"compressed perspective, distant subject, shallow depth of field, 200mm"`. Para gran angular: `"expansive background, deep focus, 16mm"`.
- **Evita movimientos de cámara bruscos** si cambias la focal en medio de un clip; la IA puede generar transiciones no realistas. Mejor: corta entre tomas con diferentes focales.

## Errores comunes que evita o menciona

- **Confundir milímetros con tamaño físico del lente:** Los mm indican distancia focal, no el diámetro del lente.
- **Ignorar el factor de recorte (crop factor):** Un lente de 50mm en una cámara crop (APS-C) no da el mismo ángulo que en full-frame; da un ángulo más estrecho (equivalente a 80mm en Canon).
- **Asumir que todos los sensores crop tienen el mismo factor:** Canon usa 1.6x; Nikon/Sony/Fuji usan 1.5x. Especifica la marca en el prompt si es relevante.
- **Usar un lente diseñado para full-frame en una cámara crop sin ajustar la focal:** El ángulo será más cerrado, no más abierto.
- **Pensar que la distancia focal cambia la perspectiva por sí sola:** La perspectiva cambia por la distancia al sujeto, no por los mm. Los mm solo afectan el encuadre. En IA, si mueves la cámara y cambias la focal, la perspectiva puede alucinar.