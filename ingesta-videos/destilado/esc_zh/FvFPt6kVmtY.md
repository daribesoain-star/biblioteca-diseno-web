# 光影 | 色彩 | 镜头语言「南门录像厅」
**Fuente:** esc_zh | https://youtu.be/FvFPt6kVmtY

## Que ensena (2-3 lineas)
Este video desglosa la **composición cinematográfica** como un arte de "emplatar" la luz y los elementos visuales. Enseña a usar **punto, línea, plano, forma y color** como herramientas de composición, y cómo organizar el espacio fílmico (primer plano, fondo, sujeto, objeto secundario) para lograr estilos narrativos específicos: **abierto/cerrado, equilibrado/desequilibrado, estático/dinámico**.

## Lecciones accionables
- **Usa "punto de fuga" y "líneas guía" en prompts:** Para dirigir la mirada, escribe `leading lines converging on subject, vanishing point composition`. Ejemplo: `cinematic shot, leading lines of a road converging on a lone figure, vanishing point at center, golden hour`.
- **Domina el "espacio negativo" para equilibrio:** Para composiciones minimalistas o de lujo, usa `negative space, subject placed on left third, breathing room`. Esto evita que la IA rellene el encuadre con ruido.
- **Aplica "color blocking" para impacto visual:** En prompts, especifica `color blocking, primary colors: deep red and teal, geometric shapes in frame`. Esto fuerza a la IA a generar contrastes cromáticos fuertes y limpios.
- **Controla la profundidad con "foreground / midground / background":** Para evitar planos chatos, estructura el prompt así: `foreground: blurred leaves, midground: subject walking, background: misty mountains, deep depth of field`.
- **Usa "frame within a frame" para enmarcar:** Prompt directo: `frame within a frame composition, subject seen through a doorway, window frame, or arch, cinematic lighting`.
- **Para movimiento de cámara en IA:** Especifica el tipo de movimiento al inicio del prompt. Ejemplo: `dolly zoom on subject, anamorphic lens flare, 35mm film grain`. Para Kling/Runway, el movimiento debe ser simple y sostenido; evita cambios bruscos de dirección.
- **Focales clave para prompts:**
    - **24mm:** `wide angle lens, distorted perspective, exaggerated scale` (para espacios pequeños o sensación de grandeza).
    - **50mm:** `standard lens, natural perspective, neutral composition` (para planos medios y retratos publicitarios).
    - **85mm:** `portrait lens, shallow depth of field, creamy bokeh` (para aislar producto o actor).
    - **135mm:** `telephoto lens, compressed perspective, flat background` (para planos detalle o fondos muy limpios).

## Reglas para el director de fotografia IA
- **Usa "high key lighting" cuando el producto sea alegre, limpio o juvenil.** Prompt: `high key lighting, soft diffused shadows, white seamless background, overexposed by 1 stop`.
- **Usa "low key lighting" para lujo, misterio o drama.** Prompt: `low key lighting, chiaroscuro, single hard light source from the left, deep shadows, rim light on subject`.
- **Para no alucinar en video IA, limita el movimiento de cámara a uno solo por clip.** No combines `pan` con `tilt` en el mismo prompt. Usa `static shot` si el movimiento no es esencial.
- **Para texturas realistas, añade al final del prompt:** `shot on Arri Alexa, Cooke S4 lenses, subtle film grain, 24fps, cinematic color grade, teal and orange`.
- **Para evitar que la IA "derrita" el producto o el rostro, usa "slow motion" o "time remapping" solo si es necesario.** El movimiento lento extremo (0.25x) suele generar artefactos. Prefiere `24fps, natural motion blur`.
- **Define el "aspect ratio" al inicio:** `16:9 cinematic, 2.35:1 anamorphic, 1:1 square` para que la IA no recorte mal.

## Errores comunes que evita o menciona
- **No satures el encuadre:** El video critica el "ruido visual". En IA, si pones demasiados objetos en el prompt, la IA los mezclará. Limita a 3-4 elementos clave.
- **No ignores el "punto de interés":** Si no defines un sujeto claro, la IA divaga. Siempre especifica `subject: [producto/persona]` al inicio.
- **No uses "shallow depth of field" sin razón:** Si todo el plano es desenfocado, la IA pierde coherencia. Úsalo solo para aislar un sujeto y define el fondo: `background: out of focus city lights`.
- **No confíes en "auto-color":** El video enseña que el color debe ser intencional. En prompts, no dejes el color al azar. Especifica la paleta: `monochromatic blue, desaturated, muted tones` o `vibrant, high saturation, complementary colors`.
- **No mezcles estilos de iluminación:** Si pides `soft light` y `hard shadows` en el mismo prompt, la IA genera una mezcla fea. Sé consistente.