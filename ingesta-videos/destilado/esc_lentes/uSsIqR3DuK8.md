# Ultimate Guide to Camera Lenses — Every Type of Camera Lens Explained [Shot List Ep. 7]
**Fuente:** esc_lentes | https://youtu.be/uSsIqR3DuK8

## Que enseña (2-3 lineas)
Este video desglosa los seis tipos de lentes más usados en cinematografía (extreme wide-angle, wide-angle, standard, telephoto, macro, tilt-shift) y cómo cada focal length y tipo de lente impacta la narrativa visual, la compresión espacial, la distorsión y la intimidad con el personaje. Esencial para elegir el lente correcto en prompts de video IA.

## Lecciones accionables

### 1. Focal Length y Angle of View (para prompts)
- **Extreme Wide-Angle (18-24mm):** Captura close-ups y paisajes simultáneamente. Distorsión tipo fisheye si está cerca del sujeto. Usar para perspectivas surrealistas o caóticas.
- **Wide-Angle (24-35mm):** Sin distorsión notable. Agranda espacios, acentúa movimiento (trucking shots). Ideal para interiores pequeños o crear distancia entre personajes.
- **Standard / Normal (35-50mm):** Similar al ojo humano. Natural, neutral, sin artificio. Perfecto para diálogos íntimos y narrativa realista.
- **Telephoto (70mm+):** Comprime espacio, aplana la imagen, aísla sujetos en multitudes. Sensación voyeurista, de observación distante. Útil para persecuciones o momentos de soledad.
- **Macro (cualquier focal, 1:1 a 5:1 magnification):** Extreme close-up con detalle quirúrgico. Para objetos, pistas, detalles de evidencia. Requiere especificar minimum focusing distance.
- **Tilt-Shift:** Desplaza el plano de enfoque. Efecto miniatura (aerial shots) o look vintage/dreamy (como el Deakinizer).

### 2. Prime vs Zoom (para decisiones de prompt)
- **Prime:** Apertura más grande (más luz, shallow depth of field), imagen más nítida, menos elementos. Prompt: `shot on 50mm prime lens, f/1.4, shallow depth of field`.
- **Zoom:** Flexibilidad de focal sin cambiar lente. Prompt: `zoom lens, 24-70mm, variable focal length`.

### 3. Movimientos y Lente (para prompts de video IA)
- **Wide-angle + trucking:** Acentúa el movimiento. Prompt: `wide-angle lens trucking through grocery aisle, fast movement`.
- **Telephoto + running:** Comprime distancia, hace que correr parezca desesperado. Prompt: `telephoto lens, character running, compressed space, futile motion`.

### 4. Prompts VERBATIM (basados en ejemplos del video)
- `extreme wide-angle lens, subtle fisheye distortion, intimate surreal look` (Birdman)
- `standard 35mm lens, natural perspective, grounded, no distortion` (Call Me By Your Name)
- `telephoto lens, voyeuristic, observing from afar, compressed space` (Captain Phillips)
- `macro lens, extreme close-up, 1:1 magnification, sharp detail, clue` (Zodiac)
- `tilt-shift lens, miniature effect, aerial shot, board game aesthetic` (Game Night)

## Reglas para el director de fotografía IA

1. **Usa wide-angle (24-35mm) cuando quieras que el espectador se sienta presente en la escena** y necesites que el fondo sea parte de la historia. No uses si quieres intimidad.

2. **Usa telephoto (70mm+) cuando quieras aislar al sujeto del fondo** o crear una sensación de vigilancia/observación. Para no alucinar en video IA, especifica `compressed background` y evita que el sujeto se mueva rápido si la cámara está muy lejos.

3. **Usa standard (35-50mm) para diálogos neutros y realistas.** Es la focal más segura para evitar distorsiones no deseadas en IA. Prompt: `shot on 40mm lens, natural look, no distortion`.

4. **Para no alucinar en video IA con macro:** Especifica `extreme close-up, macro lens, sharp detail, 1:1 magnification`. Si el objeto es muy pequeño, añade `minimum focusing distance: close` para evitar que la IA genere desenfoque.

5. **Tilt-shift en IA:** Si buscas efecto miniatura, usa `aerial tilt-shift, miniature effect`. Si buscas look vintage, usa `tilt-shift lens, color fringing, vignette, dreamy` (inspirado en el Deakinizer).

6. **Evita mezclar wide-angle con movimiento rápido de cámara** si no quieres distorsión exagerada. Si lo haces, especifica `smooth movement, no distortion`.

## Errores comunes que evita o menciona

- **Usar extreme wide-angle para diálogos íntimos:** Crea distancia no deseada y distorsión facial (como en Fear and Loathing). Solo funciona si la narrativa lo justifica (surrealismo, caos).
- **Asumir que telephoto siempre es para objetos lejanos:** También comprime espacio y aplana la imagen, lo que puede hacer que un personaje corriendo parezca no avanzar (The Graduate).
- **Olvidar que el standard lens (35-50mm) es el más versátil para IA:** Muchos prompts fallan por usar wide o telephoto sin necesidad. Si no sabes qué lente usar, empieza con 35mm.
- **No especificar magnification ratio en macro:** La IA puede generar un close-up normal en lugar de un verdadero macro. Siempre añade `1:1 magnification` o `5:1 magnification`.
- **Confundir tilt-shift con solo desenfoque:** El tilt-shift desplaza el plano de enfoque, no solo desenfoca el fondo. Para IA, usa `tilt-shift lens, shifted focus plane` para evitar un bokeh genérico.