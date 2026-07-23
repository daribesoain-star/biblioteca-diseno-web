# color grading cinema color theory LUT film look DaVinci tutorial
**Fuente:** esc_color | https://youtu.be/color grading cinema color theory LUT film look DaVinci tutorial

## Que ensena
Cinco secretos profesionales de etalonaje digital para lograr el look cinematográfico: control preciso de saturación sin dañar luminancia, curvas suaves con splines editables, reemplazo de color con la herramienta Color Slice, uso de nodos en capa para aislar ajustes, y la ubicación correcta del LUT en el árbol de nodos para preservar el rango dinámico del material original.

## Lecciones accionables

1. **Saturación HSV en lugar de saturación global**
   - En DaVinci: clic derecho > Color Space > HSV
   - Luego: clic derecho > Channels > desactivar channel 1 (hue) y channel 3 (value)
   - Usar Gain slider para saturar solo las partes más ricas de la imagen
   - La waveform muestra que highlights y midtones no se alteran
   - *Prompt equivalente para IA:* `saturation boost applied only to midtones, luminance preserved, skin tones natural`

2. **Editable Splines para S-curve cremoso**
   - Curves > tres puntos > activar "editable splines"
   - Levantar shadows y bajar highlights para comprimir la imagen
   - Añadir contraste suave sin perder detalle en sombras
   - Resultado: sombras "milky", suaves, con información recuperada
   - *Prompt equivalente para IA:* `soft milky shadows, compressed highlights, creamy contrast, filmic S-curve, no crushed blacks`

3. **Color Slice para reemplazo de color sin máscaras**
   - Ir a pestaña Color Slice
   - Seleccionar el color objetivo (ej: yellow para una chaqueta)
   - Arrastrar slider para cambiar a cualquier tono (ej: red)
   - Ajustar saturation y brightness con sliders dedicados
   - Sin masking, sin efectos adicionales
   - *Prompt equivalente para IA:* `color replacement, yellow jacket turned to deep red, precise hue isolation, no spill on skin tones`

4. **Layered Nodes para aislar ajustes**
   - Añadir nuevo node (Option S en Mac)
   - Añadir layer node (Option L)
   - En el node inferior: keyear un elemento (ej: skin tones), ajustar highlights/contrast
   - En el node superior (layer detrás): hacer ajustes que NO afecten lo keyeado
   - Equivalente a máscara automática alrededor del elemento aislado
   - *Prompt equivalente para IA:* `isolated skin tone grade, background adjusted independently, layered color treatment, no color contamination`

5. **LUT siempre en el último node**
   - Error común: aplicar LUT en el primer node y luego ajustar
   - Correcto: node tree con LUT al final
   - Ajustes previos (white balance, contraste) se hacen sobre el material original (S-Log 3)
   - El color warper muestra: con LUT al inicio, colores "chokeados" al máximo; con LUT al final, espacio de trabajo completo
   - *Prompt equivalente para IA:* `LUT applied as final grade, preserving dynamic range of S-Log3 source, color space transform at end of pipeline`

## Reglas para el director de fotografia IA

- **Usa saturación HSV** cuando quieras añadir color sin alterar luminancia ni matices; en video IA, evita saturaciones globales que quiebran pieles.
- **Usa editable splines** para obtener sombras cremosas y altos comprimidos; en Runway/Veo, pide "soft filmic contrast" en lugar de "high contrast".
- **Usa Color Slice** cuando necesites cambiar un color específico sin máscaras; en prompts, especifica "hue shift isolated to [color] only".
- **Usa layered nodes** para separar ajustes de piel y fondo; en IA, pide "skin tone grade independent from background grade".
- **Aplica LUT al final** siempre; en prompts, indica "LUT as final node, all corrections on raw log footage".
- **Para no alucinar en video IA:** especifica siempre el orden de operaciones (primero corrección, luego LUT); evita prompts que mezclen "film look" con ajustes de contraste sin orden lógico.
- **Usa términos de cámara en inglés** en prompts: `S-Log3`, `color space transform`, `waveform monitor`, `luminance values`, `gain slider`, `spline curves`, `node tree`.

## Errores comunes que evita o menciona

- **Añadir saturación global** con el slider de saturación estándar: daña luminance values y hues, especialmente en pieles.
- **Aplicar LUT en el primer node**: reduce el rango dinámico disponible para correcciones posteriores; los colores quedan "chokeados" al máximo desde el inicio.
- **No usar editable splines**: las curvas tradicionales aplastan sombras y pierden detalle; el S-curve queda duro y no "milky".
- **Hacer máscaras manuales** para cambiar un color: Color Slice lo hace automáticamente sin spill ni bordes duros.
- **Ajustar todo en un solo node**: sin layered nodes, cualquier cambio posterior afecta lo keyeado anteriormente; no hay separación entre elementos.