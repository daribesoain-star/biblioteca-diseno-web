# ⚪️TODO sobre LENTES/Objetivos - Guía Completa, Usos y Diferencias
**Fuente:** esc_lentes_es | https://youtu.be/yAK7HWUevfs

## Que ensena
Explica la relación entre distancia focal (mm) y ángulo de visión, apertura (f-stop) y profundidad de campo, y la diferencia entre lentes prime (fijos) vs zoom, manual vs automático, y apertura constante vs variable. Enseña a leer especificaciones de lentes para entender su comportamiento visual.

## Lecciones accionables

### Distancia Focal (Focal Length) para Prompts
- **7.5mm – 18mm (Ultra Wide / Fisheye):** Máxima distorsión, gran angular extremo. Usar en prompts como `ultra wide angle lens, 7.5mm, fisheye distortion, exaggerated perspective`
- **18mm – 30mm (Wide Angle):** Angular pero menos distorsión. Prompt: `wide angle lens, 18mm, expansive field of view, deep focus`
- **50mm – 56mm (Standard / Normal):** Visión natural, similar al ojo humano. Prompt: `50mm prime lens, natural perspective, standard field of view`
- **75mm – 135mm (Short Telephoto):** Compresión suave, ideal para retratos. Prompt: `85mm portrait lens, shallow depth of field, background compression`
- **200mm (Telephoto):** Máxima compresión, fondo muy cercano. Prompt: `200mm telephoto lens, extreme compression, flat perspective, isolated subject`

### Apertura (Aperture / f-stop) para Prompts
- **f/1.4 – f/2.8 (Wide Open):** Mínima profundidad de campo, fondo muy borroso (bokeh). Prompt: `shot at f/1.4, shallow depth of field, creamy bokeh, subject isolation`
- **f/8 – f/16 (Stopped Down):** Todo enfocado, máxima profundidad de campo. Prompt: `shot at f/16, deep focus, everything in sharp focus, hyperfocal distance`
- **Apertura Variable en Zooms:** Ej: 28-70mm f/3.5-5.6 → a 28mm la apertura máxima es f/3.5, a 70mm es f/5.6. Para prompts: `variable aperture zoom, 28mm at f/3.5, 70mm at f/5.6`

### Tipos de Lente para Prompts
- **Prime (Fijo):** `prime lens, fixed focal length, sharp optics`
- **Zoom:** `zoom lens, 70-200mm, constant aperture f/4`
- **Macro:** `macro lens, 30mm, extreme close-up, 1:1 magnification`
- **Manual Focus:** `manual focus lens, focus pull, rack focus transition`
- **Auto Focus:** `auto focus lens, smooth autofocus tracking`

### Movimientos de Cámara Asociados
- **Focus Pull (Rack Focus):** Cambiar enfoque de un objeto a otro. Prompt: `rack focus from foreground to background, manual focus pull`
- **Dolly Zoom (Vertigo Effect):** Zoom mientras la cámara se mueve. Prompt: `dolly zoom effect, camera moves back while zooming in, vertigo effect`

## Reglas para el director de fotografia IA

1. **Usa `prime lens` cuando quieras nitidez máxima y apertura constante** – Los zooms variables (f/3.5-5.6) pierden luz al telephoto, los prime mantienen la misma apertura en toda la focal.

2. **Para no alucinar en video IA, especifica la apertura en el prompt** – Si no pones `f/1.4` o `shallow depth of field`, la IA puede generar todo enfocado (deep focus) aunque quieras bokeh. Sé explícito.

3. **Usa `wide angle lens` (18-35mm) para planos generales y establecer locaciones** – Evita distorsión facial; para retratos usa `85mm` o `135mm` para compresión natural.

4. **Para no alucinar en video IA, evita cambios bruscos de focal en un mismo clip** – Si el prompt dice `zoom from 18mm to 200mm`, la IA puede generar transiciones irreales. Mejor usa `dolly zoom` o `zoom in` como movimiento separado.

5. **Usa `macro lens` solo para objetos muy cercanos (menos de 30cm)** – Si pones `macro lens` para un plano general, la IA alucinará enfoque imposible.

6. **Para no alucinar en video IA, especifica `manual focus` si quieres rack focus** – Si no lo aclaras, la IA puede generar auto focus que no controlas.

7. **Usa `constant aperture f/2.8` para zooms profesionales** – Los zooms de apertura variable (f/3.5-5.6) son más económicos pero menos luminosos en telephoto.

## Errores comunes que evita o menciona

- **Confundir "más mm = más zoom" con "más mm = más cerrado"** – El video aclara: 200mm es más cerrado (telephoto), 7.5mm es más abierto (angular). En prompts, no digas "zoom in" si quieres angular.
- **Pensar que apertura variable es igual a constante** – Un zoom 28-70mm f/3.5-5.6 no mantiene la misma apertura en todo el rango. En prompts, especifica la focal y apertura exacta.
- **Usar lente manual sin especificar el enfoque** – Los lentes manuales no tienen comunicación con la cámara; en IA, si no dices `manual focus`, puede generar auto focus no deseado.
- **Ignorar el tamaño del filtro (62mm, 55mm, etc.)** – No afecta el prompt visual, pero sí la compatibilidad con filtros físicos si usas referencias reales.
- **Creer que "macro" significa solo "cerca"** – Macro es 1:1 de aumento; en IA, usa `macro lens` solo para detalles extremos, no para planos medios.