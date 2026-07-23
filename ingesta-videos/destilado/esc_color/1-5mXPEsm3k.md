# Create Your Film Grade in DaVinci Resolve – The Ultimate Cinematic Color Grading Tutorial
**Fuente:** esc_color | https://youtu.be/1-5mXPEsm3k

## Que ensena
Enseña un flujo de trabajo completo de etalonaje cinematográfico sin LUTs ni plugins, desde la corrección técnica (exposición, contraste, balance de blancos) hasta la gradación creativa (adaptación cromática, split toning, bleach bypass). Destaca cómo lograr color rico y natural sin tocar el control de saturación, usando herramientas nativas de DaVinci Resolve como HDR wheels, curvas Hue vs Luminance y Color Slice.

## Lecciones accionables
- **Orden de corrección obligatorio:** Exposure → Contrast → White Balance. No alteres este orden o falsearás correcciones.
- **Exposición con HDR wheels:** Usa Global para overall exposure, Shadows/Dark para sombras profundas, Light para midtones (protege piel), Highlight/Specular para cielos o ventanas. Verifica con waveform: piel debe estar entre 40-70 IRE. Usa false color: verde/gris/salmón = piel correctamente expuesta.
- **Contraste con Pivot:** En DaVinci Wide Gamut, pivot default es 0.336 (middle gray). Aumenta contraste para separar tonos y mejorar saturación sin tocar saturation knob. No subas saturation antes del contraste o el color se verá plástico y clipará canales.
- **White Balance con offset:** Usa offset control para shifts globales, alinea highlights en RGB parade. Temperatura/Tint sliders imitan white balance de cámara. White balance picker: haz clic en un gris neutro (gray card, camisa blanca, pared neutra).
- **Secondary color con Hue vs Luminance:** Baja la luminance de un color sin subir saturation para lograr “subtractive saturation”. Ejemplo: oscurecer tonos cálidos en midtones (piel, tela) da profundidad lujosa sin saturar. Ideal para “Hero Zone” (midtones donde vive el sujeto).
- **Chromatic Adaptation Transform (CAT):** Inserta en nodo serial después de secondary corrections. Usa CAT02 como método, source illuminant D65, target illuminant D50 (más cálido) o D75 (más frío). Para sutileza, usa D60. Esto unifica temperatura entre tomas.
- **Split Toning con curvas:** Define pivot point con DCTL gratuito. En editable splines: para warm highlights sube curva roja, baja azul; para cool shadows baja roja, sube azul. Ajusta con green curve. Usa key output gain para atenuar efecto. Combínalo con CAT para diferentes moods.
- **Bleach Bypass:** Crea nodo serial + layer node. En nodo inferior: RGB mixer → monochrome. Layer mixer composite mode = overlay. Baja key output gain a ~0.3 para desaturación dramática y alto contraste.
- **Saturation vs Saturation curve:** Úsala como polish final para reducir áreas sobresaturadas sin afectar neutros, o boostear colores apagados sin tocar vibrantes.

## Reglas para el director de fotografia IA
- **Usa “log footage” como base en prompts de video IA** (ej: “log profile, flat color, wide dynamic range”) para tener margen de gradación posterior. No generes imágenes con contraste y saturación ya aplicados.
- **Para no alucinar en video IA, especifica “skin tones at 40-70 IRE”** en prompts de personajes. Si la IA genera piel fuera de ese rango, el color se verá sintético.
- **Usa “false color monitor” como referencia visual** en prompts de cámara: “false color heat map, green and salmon on skin, no clipping”. Esto fuerza a la IA a respetar exposición correcta.
- **Cuando pidas split toning en IA, usa términos exactos:** “warm highlights, cool shadows, split toning, filmic look, soft roll-off”. No digas solo “cinematic”.
- **Para bleach bypass en video IA, promptea:** “bleach bypass look, high contrast, desaturated, monochrome overlay, grungy mood, key output gain 0.3”. Especifica “overlay composite mode” si la IA lo soporta.
- **Evita prompts genéricos como “cinematic color”** sin especificar técnica. En su lugar: “chromatic adaptation transform, D65 to D50, warm white point, CAT02 method”.

## Errores comunes que evita o menciona
- **No subir saturation antes de contraste:** “sin contraste, saturation empuja color a zonas no naturales, se ve plástico y clipa canales en Wide Gamut”.
- **No hacer white balance antes de exposición y contraste:** “corregirías un color cast que no existe realmente”.
- **No usar Color Warper sin cualificar selección:** “puedes romper la armonía de la imagen si no delimitas bien el rango”.
- **No ignorar el waveform y false color:** “el waveform es tu herramienta más precisa; false color da mapa de calor en tiempo real”.
- **No aplicar split toning sin definir pivot point:** “sin pivot, no separas correctamente highlights de shadows”.
- **No olvidar verificar clipping en parade y vectorscope:** “revisa que nada esté unintentionally clipped antes de entregar”.