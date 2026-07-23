# Achieve Color Grading Mastery in DaVinci Resolve (my philosophy)
**Fuente:** esc_color | https://youtu.be/IBwLq8vtfJ4

## Que enseña (2-3 lineas)
Filosofía de etalonaje cinematográfico basada en dos pilares: Correcciones (exposición, balance, contraste) y Desarrollo de Look (separación de color, emulación fílmica). Enfatiza trabajar fotométricamente dentro del espacio de color más amplio posible (DaVinci Wide Gamut) usando un "sándwich" de Color Space Transform, y prioriza la intención narrativa sobre la complejidad técnica.

## Lecciones accionables

**Configuración de Proyecto (Parámetros Clave para Prompts):**
- Timeline Color Space: DaVinci Wide Gamut / DaVinci Intermediate
- Output Color Space: Rec.709 Gamma 2.2 (optimizado para YouTube/móviles, no Gamma 2.4)
- 3D LUT Interpolation: **Tetrahedral** (nunca Trilinear, evita banding)
- Gamut Mapping: Siempre activado (Saturation Compression)

**Workflow "Sándwich" de Color Space Transform (CST):**
1. **CST de entrada:** Input (ej: Red Wide Gamut RGB / Log3G10) → Output (DaVinci Wide Gamut / DaVinci Intermediate)
2. **Nodos intermedios:** Todas las correcciones creativas en DaVinci Wide Gamut (espacio más amplio que cualquier cámara)
3. **CST de salida:** Input (DaVinci Wide Gamut / DaVinci Intermediate) → Output (Rec.709 Gamma 2.2)
- Esto permite trabajar con cualquier cámara (Sony S-Gamut3/S-Log3, Canon C-Log2/AWG3) solo cambiando el CST de entrada

**Correcciones Fundamentales (en orden):**
1. **Exposición (HDR Global Wheel):** Usar HDR tab → Global wheel, NO usar Offset wheel. El HDR Global ancla los negros y da rolloff suave en altas luces. El Offset levanta todo uniformemente destruyendo el contraste.
2. **Balance Lineal (Linear Balance):** Gamma set a "Linear" en primaries. Ajustar solo el **Gain** (no Temp/Tint slider). Esto evita comprimir datos de color. Técnica de Cullen Kelly.
3. **Contraste (Pivot Point):** Pivot por defecto en **336** (middle gray en log). Desaturar la imagen antes de ajustar contraste (los ojos engañan con color). El contraste dirige la mirada del espectador al punto más intenso.

**Desarrollo de Look (Look Development):**
- **Saturación:** Preferir **Color Slice tool** sobre el saturation knob de primaries (el primero es más natural y profundo). Color Boost es aditivo (vibrance), Saturation es multiplicativo.
- **Matrix (RGB Mixer):** Usar DCTL gratuito (Tetra interpolation) en lugar del RGB mixer nativo. Ideal para corrección de piel (Red vs Red, Red vs Blue para abrir magentas en piel).
- **Split Toning:** Se logra en Curvas RGB. Anclar middle gray con DCTL (Mono Nodes Middle Gray) antes de tocar curvas. Prefiere usar **LUTs de emulación fílmica** (Kodak 2383) en lugar de split tonear manualmente.
- **LUTs de Emulación Fílmica:** Buscar LUTs 2383 gratuitos. Preferir versiones que no levanten los negros (low-end retention). Ejemplo: "Terra" (adaptación propia de 2383 con perfil bajo en sombras).
- **HSV DCTL:** Ajuste granular de Hue/Saturation/Value post-LUT. Más suave que Hue vs Hue curves (evita banding).
- **HK DCTL (Nani HK):** Corrección de luminancia perceptual (el ojo humano percibe ciertas saturaciones como más luminosas). Aplicar al final.
- **Textura:** Film grain sutil (35mm 400T, opacity baja, reducir noise en highlights/midtones). Contrast Pop como alternativa (detalle sin grano).

**Node Tree Mínimo Eficiente (5 nodos):**
1. CST Input (a DaVinci Wide Gamut)
2. HDR Exposure
3. Linear Balance (Gain)
4. Contrast (Pivot 336)
5. LUT de look (con CST de salida incluido o nodo separado)
- Opcional: Saturation (Color Slice), HSV DCTL, HK DCTL, Post-Contrast (Log wheels)

**Prompts VERBATIM (técnicas mencionadas):**
- "Color Space Transform sandwich" (workflow)
- "HDR Global wheel" (exposición)
- "Linear balance with Gain only" (balance)
- "Pivot point at 336" (contraste)
- "Color Slice tool saturation" (saturación)
- "Tetrahedral interpolation" (LUTs)
- "Middle gray anchor" (split toning)
- "Kodak 2383 emulation LUT" (look)
- "Nani HK DCTL" (luminancia perceptual)

## Reglas para el director de fotografía IA

- **Usa "DaVinci Wide Gamut" como espacio de trabajo intermedio** cuando generes prompts que requieran etalonaje posterior; es el espacio más amplio y maleable para cualquier cámara.
- **Para no alucinar en video IA, especifica "Rec.709 Gamma 2.2"** como output en prompts de cámara; es el estándar para visualización en web/móvil (no Gamma 2.4 que es para cine).
- **Usa "Tetrahedral interpolation"** en cualquier mención de LUTs o transformaciones de color; evita banding y compresión.
- **Para prompts de cámara, incluye el par "color space / log curve"** exacto del sensor (ej: "Red Wide Gamut RGB / Log3G10", "S-Gamut3 / S-Log3", "Canon Log 2 / AWG3") para que la IA entienda la captura raw.
- **Usa "HDR Global exposure" en lugar de "offset"** cuando quieras control de exposición que preserve negros y altas luces; el offset destruye el contraste en IA.
- **Para prompts de look cinematográfico, referencia "Kodak 2383 emulation"** como base de split toning (cálido en altas, frío en sombras).
- **Especifica "middle gray anchor at 336"** cuando trabajes con contraste o curvas; evita que la IA desplace el punto neutro.
- **Para textura fílmica en video IA, usa "35mm 400T film grain, subtle, highlights clean"**; el grano debe ser más presente en sombras.
- **No uses "Temp/Tint sliders"** para balance de color en prompts; prefiere "Gain adjustment in linear gamma" para evitar compresión de datos.
- **Para prompts de separación de color, usa "Color Slice saturation"** en lugar de "saturation boost"; el primero es aditivo y natural, el segundo multiplicativo y agresivo.

## Errores comunes que evita o menciona

- **Usar Offset wheel para exposición:** Levanta todo uniformemente, destruye el contraste y pierde datos en altas/sombras. Usar HDR Global wheel.
- **No convertir log a display state:** Aplicar contraste y saturación directo sobre log sin CST. Resultado: imagen comprimida, colores incorrectos.
- **Trabajar en Rec.709 Gamma 2.4 para web:** Estándar de cine, pero para YouTube/móviles se optimiza con Gamma 2.2.
- **Dejar 3D LUT Interpolation en Trilinear:** Causa banding y compresión. Cambiar a Tetrahedral.
- **Usar Temp/Tint para balance:** Comprime datos de color. Preferir Gain en gamma linear.
- **Ajustar contraste con color presente:** Los ojos se engañan. Desaturar antes de tocar contraste.
- **Split tonear sin anclar middle gray:** Desplaza el punto neutro y tiñe toda la imagen. Usar DCTL de middle gray primero.
- **Aplicar LUTs de emulación fílmica que levantan negros:** Pierde detalle en sombras. Preferir versiones con low-end retention o ajustar post-LUT.
- **Usar Hue vs Hue curves para ajustes finos:** Causa banding. Preferir HSV DCTL o Matrix.
- **Sobrecargar de nodos:** 5-7 nodos bien estructurados son más efectivos que 30.000 nodos sin propósito.
- **No entender que contraste y saturación son herramientas separadas:** El contraste dirige la mirada, la saturación intensifica; no confundir sus funciones.