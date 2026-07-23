# How to MASTER the FILM LOOK as a beginner
**Fuente:** esc_color | https://youtu.be/676Yn7cabx4

## Que enseña
Explica que el "film look" no se logra solo con una cámara digital, sino mediante emulación del proceso químico del cine. Introduce el concepto de *film emulation* como la única alternativa accesible al celuloide real, y presenta un power grade con LUT que simula grano, compresión de altas luces, densidad de color y halación.

## Lecciones accionables

- **Usa un power grade con Color Space Transform (CST)** para que la emulación funcione con cualquier perfil de cámara (log, raw, rec709).
- **Aplica en orden:** primero CST para normalizar el espacio de color, luego LUT de emulación, después ajustes secundarios (grano, halación, rolloff de highlights).
- **Parámetros clave para prompts de video IA:**
  - *Film grain* (grano visible, 16mm o 35mm)
  - *Highlight compression* (altas luces suaves, sin clipping duro)
  - *Color density* (colores profundos, no sobresaturados)
  - *Halation* (halo rojo/anaranjado alrededor de luces brillantes)
- **Focales recomendadas para el look fílmico:** 35mm, 50mm, 85mm (equivalentes a full frame).
- **Movimientos de cámara:** lentos, suaves, con *dolly* o *pan* pausados; evitar zooms digitales rápidos.
- **Prompt ejemplo (Runway/Veo 3/Kling):** *"35mm film grain, highlight rolloff, halation around bright lights, shallow depth of field, cinematic color grade, warm tones, 24fps"*

## Reglas para el director de fotografía IA

- **Usa "film grain" + "highlight compression"** cuando quieras suavizar el aspecto digital y dar textura orgánica.
- **Para no alucinar en video IA:** evita prompts con "film look" genérico; sé específico: *"Kodak 2383 emulation, 16mm grain, halation, color density"*.
- **Aplica CST en postproducción** si la IA no respeta el espacio de color; corrige con LUTs de emulación después de generar.
- **Usa "shallow depth of field"** solo si la escena lo permite; en planos abiertos, prefiere *"deep focus with film grain"* para evitar artefactos.
- **Controla la halación** con *"soft halation, red/orange glow on highlights"*; demasiada halación causa blooming no deseado.

## Errores comunes que evita o menciona

- **Creer que el film look se logra solo con un LUT:** el video advierte que la emulación requiere capas (grano, compresión, densidad) y no un solo filtro.
- **Usar emulación sin CST:** si el perfil de cámara no está normalizado, el LUT aplica mal y el color se ve artificial.
- **Confundir "film look" con "vintage" o "desaturado":** el look fílmico tiene color denso, no necesariamente bajo contraste o sepia.
- **Aplicar grano excesivo:** el grano debe ser visible pero no dominar; en video IA, demasiado grano puede confundir al modelo y generar ruido digital.
- **Ignorar la halación:** es el detalle que diferencia una emulación barata de una profesional; sin ella, las luces se ven planas.