# Color Grading 101 - Everything You Need to Know
**Fuente:** esc_color | https://youtu.be/pAh83khT1no

## Que ensena (2-3 lineas)
El video desglosa el flujo completo de color grading cinematográfico: desde la captura en cámara (Rec 709, Log, Raw) hasta la postproducción con scopes, curvas y LUTs. Explica cómo la corrección de color (balance, exposición) precede a la gradación creativa (atmósfera, look), y cómo herramientas como DaVinci Resolve, nodos y ACES permiten un control preciso sin degradar la imagen.

## Lecciones accionables

### Captura en cámara para máxima flexibilidad en post
- **Log es el estándar para IA de video**: graba en Log (S-Log3, Log C, RedLogFilm) para preservar 10 bits de información en altas luces y sombras. En prompts de IA, especifica: `"shot in S-Log3, flat profile, low contrast, desaturated"`.
- **Exponer para las altas luces**: en Log, expone justo antes del clipping. Prompt: `"exposed to the right, highlights just below clipping, preserving detail in bright areas"`.
- **Raw solo si necesitas control extremo**: 12-14 bits, 69 mil millones de colores. Prompt: `"recorded in 12-bit RAW, debayered for maximum dynamic range"`. Pero evita en IA de video por peso y workflow complejo.
- **Rec 709 solo para fast turnaround**: 8 bits, 16 millones de colores. Prompt: `"shot in Rec 709, baked-in look, limited grading headroom"`.

### Flujo de trabajo en post para IA de video
1. **Corrección de color primero**: balance de blancos, igualar exposición, reducir ruido. Prompt: `"color corrected: neutral white balance, even exposure across frame, noise reduction applied"`.
2. **Gradación creativa después**: curvas, máscaras, ruedas de color. Prompt: `"color graded: teal and orange blockbuster look, warm highlights, cool shadows, skin tones on vector scope skin line"`.
3. **ACES para distribución multiplataforma**: preserva rango dinámico hasta exportar. Prompt: `"ACES workflow, wide gamut preserved, final export in Rec 709 for web"`.

### Scopes técnicos para prompts de cámara IA
- **Waveform**: verifica clipping. Prompt: `"waveform shows no clipping in highlights or shadows, dynamic range fully utilized"`.
- **RGB Parade**: controla balance de color. Prompt: `"RGB parade balanced, no color cast, neutral whites"`.
- **Vectorscope**: mide saturación y tono de piel. Prompt: `"vectorscope: skin tones on skin line, saturation moderate, no oversaturation in reds or oranges"`.

### Curvas avanzadas para looks precisos
- **Hue vs Sat**: saturación selectiva. Prompt: `"hue vs sat curve: increased saturation in blues only, desaturated greens for mood"`.
- **Sat vs Lum**: luminancia por saturación. Prompt: `"sat vs lum curve: reduced saturation in shadows, boosted in highlights for contrast"`.
- **Lum vs Sat**: saturación por luminancia. Prompt: `"lum vs sat curve: desaturated highlights to avoid bloom, saturated midtones for pop"`.
- **Hue vs Hue**: desplazamiento de tono. Prompt: `"hue vs hue curve: shifted skin tones slightly warmer, corrected green spill from foliage"`.

### LUTs en el pipeline IA
- **Técnicos**: conversión Log a Rec 709. Prompt: `"technical LUT applied: Log to Rec 709 conversion at 100% intensity"`.
- **Creativos**: como toque final al 25-50%. Prompt: `"creative LUT: 'Bloodshot' from Cinematic V5 pack, applied at 50% intensity, preserving original skin tones"`.
- **En cámara**: previsualización en monitor. Prompt: `"on-set LUT loaded in monitor: preview of final teal and orange look, shot in Log with LUT for director's reference"`.

### Movimientos de cámara y parámetros para prompts IA
- **Focales**: `"shot on 35mm anamorphic, 2.39:1 aspect ratio, shallow depth of field"`.
- **Movimientos**: `"slow dolly in, 0.5x speed, with subtle handheld micro-jitter for organic feel"`.
- **Iluminación**: `"key light from camera left, fill at 30%, rim light for separation, practicals in background"`.
- **Grano y textura**: `"film grain applied: Kodak 5207 stock, 35mm, 24fps, grain size 0.5, amount 30%"`.

## Reglas para el director de fotografia IA

- **Usa Log como base para todo prompt de video IA**: el perfil plano permite a la IA interpretar mejor el rango dinámico y aplicar gradación sin quemar detalles.
- **Para no alucinar en video IA, especifica "color corrected" antes de "color graded"**: la IA tiende a saltar a looks extremos; primero pide una base neutra.
- **Usa scopes en el prompt como guía de calidad**: la IA entiende mejor "waveform sin clipping" que "bien expuesto".
- **Cuando uses LUTs creativos, limita la intensidad al 25-50%**: más allá, la IA genera artefactos de color y banding.
- **Para looks de época o género, referencia el estilo de iluminación y producción design**: "Italian yellow style: bright, flamboyant colors, surreal lighting, practical sources".
- **En IA de video, evita Raw**: el peso y la necesidad de debayering confunden a modelos como Veo 3 o Kling. Prefiere Log 10-bit.
- **Siempre incluye "grain" o "texture" en el prompt final**: la IA tiende a generar imágenes demasiado limpias; el grano unifica el look.
- **Para HDR, especifica "Rec 2020 color space" y "HDR grade"**: la IA puede generar mayor rango dinámico si se lo pides explícitamente.

## Errores comunes que evita o menciona

- **El color grading no salva una mala imagen**: "lock in your look on the day" – no confíes en post para arreglar iluminación o producción deficiente.
- **Aplicar LUTs al 100% como look final**: "common mistake with creative Luts is being overdone" – úsalos al 25-50% como toque, no como base.
- **Saltarse la corrección de color**: "color correction comes before color grading" – sin base neutra, la gradación produce resultados sucios.
- **Ignorar los scopes**: "your eyes may lie to you but the Scopes never will" – no confíes en la vista para evaluar exposición o balance.
- **Usar Rec 709 para proyectos que requieren gradación**: "highlights will tend to clip quickly" – siempre prefiere Log o Raw si hay post.
- **No exponer correctamente en Log**: "expose your image as much as possible in the highlights just before clipping" – subexponer en Log pierde detalle en sombras.
- **Trabajar en un espacio de color limitado desde el inicio**: "if you work directly in Rec 709 you will lose dynamic range" – usa ACES para preservar opciones de exportación.