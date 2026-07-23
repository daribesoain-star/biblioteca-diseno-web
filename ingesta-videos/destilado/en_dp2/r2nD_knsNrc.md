# Ultimate Guide to Cinematic Lighting — Types of Light & Gear Explained [Shot List Ep. 12]
**Fuente:** en_dp2 | https://youtu.be/r2nD_knsNrc

## Que ensena (2-3 lineas)
Este video desglosa los fundamentos del lighting cinematográfico: tipos de luz (natural, artificial, ambiental, práctica, motivada), propiedades físicas (intensidad, color temperature en Kelvin, inverse square law), y terminología clave de set (hard vs soft light, high-key vs low-key lighting, contrast ratio, chiaroscuro). También cubre el equipo esencial (tungsten, HMI, LED, gels, diffusion, flags, cucoloris) y cómo cada elección de luz impacta el storytelling visual.

## Lecciones accionables

### Tipos de luz para prompts de video IA
- **Natural light:** Usa "sunlight", "moonlight", "fire light" como source primaria. Prompt: *"Golden hour sunlight streaming through a window, soft warm tones, 5600K daylight balanced"*
- **Practical light:** Fuentes visibles en frame (lámparas, neones). Prompt: *"Neon sign practical light casting magenta glow on subject's face, 3200K tungsten ambient fill"*
- **Motivated light:** Luz con justificación lógica (farola, fogata). Prompt: *"Motivated light from a desk lamp, warm 2800K, shadows falling away from the source"*

### Propiedades técnicas para prompts
- **Color temperature:** Usa Kelvin exacto. Prompt: *"Tungsten 3200K key light, daylight 5600K fill from window, mixed color temperature scene"*
- **Inverse square law:** Para controlar light falloff. Prompt: *"Light source 2 feet from subject, rapid falloff, 75% intensity loss at double distance, deep shadows"*
- **Contrast ratio:** Especifica high-key (bajo contraste) o low-key (alto contraste). Prompt: *"Low-key lighting, high contrast ratio 8:1, subject's face half in shadow, chiaroscuro effect"*

### Hard vs Soft light para prompts
- **Hard light:** Direccional, sombras nítidas. Prompt: *"Hard light from single source, sharp shadows, dramatic noir aesthetic, 50mm lens, f/2.8"*
- **Soft light:** Difuso, sombras suaves. Prompt: *"Soft light through diffusion silk, wrap-around lighting, romantic mood, 85mm lens, wide aperture bokeh"*

### Movimientos y ángulos de cámara
- **Dumb side / Broad side:** Lado del sujeto más cercano a cámara iluminado. Prompt: *"Broad side lighting, subject facing camera, approachable feel, soft fill from camera-left"*
- **Smart side / Short side:** Lado del sujeto alejado de cámara iluminado. Prompt: *"Short side lighting, dramatic shadows on far side of face, moody portrait, 35mm low angle"*
- **Lens flare:** Luz directa al lente. Prompt: *"Lens flare from practical light, anamorphic streak, warm orange flare, cinematic"*
- **Bokeh:** Puntos de luz desenfocados. Prompt: *"Bokeh from fairy lights in background, soft romantic texture, 85mm f/1.4, shallow depth of field"*

### Equipo específico para prompts
- **Tungsten:** 3200K, cálido. Prompt: *"Tungsten key light, warm amber skin tones, 3200K, soft box diffusion"*
- **HMI:** 5600K, frío, potente. Prompt: *"HMI daylight source, 5600K, hard light through window, cool blue shadows"*
- **LED:** Control de color e intensidad. Prompt: *"RGB LED panel, variable color temperature, 4200K, bi-color adjustable"*
- **Gels:** Filtros de color. Prompt: *"CTO gel on key light, warming effect, orange tint on subject"*
- **Diffusion:** Soft box, silk, diffusion paper. Prompt: *"Large silk diffusion, 6x6 foot, soft wrap-around light, no hard shadows"*
- **Cucoloris / Cookie:** Patrones de luz dappled. Prompt: *"Cucoloris pattern light, dappled shadows on wall, tree branch effect, hard source"*
- **Flags / Barn doors:** Bloqueo de luz. Prompt: *"Flag cutting light from background, negative fill, deep black shadows"*

## Reglas para el director de fotografia IA

1. **Usa Kelvin exacto cuando mezcles fuentes:** Para evitar color casts no deseados, especifica "mixed color temperature: tungsten 3200K key + daylight 5600K fill" en el prompt.

2. **Para no alucinar en video IA con light falloff:** No pidas "light fades evenly" sin especificar distancia. Usa "inverse square law falloff, light source 3 feet from subject, rapid intensity drop" para que el modelo entienda la física.

3. **Usa "hard light" para sombras nítidas y "soft light" para transiciones suaves:** En video IA, "soft light" sin diffusion específica puede generar sombras inexistentes. Añade "diffusion silk" o "soft box" para precisión.

4. **Para low-key lighting, define el contrast ratio:** Prompt: *"Low-key, contrast ratio 10:1, key light on one side, fill light at 10% intensity, deep shadows"* — esto evita que la IA ilumine zonas que deben quedar en negro.

5. **Usa "practical light" para fuentes visibles en frame:** Si la luz aparece en escena, menciónala: *"Practical lamp in shot, tungsten bulb, warm glow, motivated light for subject's face"*

6. **Para evitar flares no deseados en video IA:** Si quieres lens flare, especifica "anamorphic lens flare, streak horizontal, source at frame edge". Si no, usa "no lens flare, clean optics".

7. **Usa "bounce" o "reflector" para fill suave:** Prompt: *"White foam core bounce fill, 2 stops under key, soft shadow fill on shadow side"* — esto evita que la IA genere luz dura donde no toca.

8. **Para diffusion natural, usa "clouds", "fog", "smoke":** Prompt: *"Natural diffusion from overcast sky, soft even light, no hard shadows, moody atmosphere"*

## Errores comunes que evita o menciona

- **Mezclar color temperatures sin control:** El video advierte que mezclar tungsten (3200K) y daylight (5600K) sin intención crea color casts naranja/azul no deseados. En prompts, especifica siempre la temperatura de cada fuente.
- **Ignorar el inverse square law:** Asumir que la luz se mantiene constante con la distancia. El video explica que al doblar distancia, la intensidad cae 75%. En prompts, no pidas "light reaches background equally" sin ajustar posición.
- **Confundir high-key con "mucha luz":** High-key es bajo contraste, no necesariamente brillante. El video aclara que es iluminación uniforme. En prompts, usa "high-key, even lighting, minimal shadows" en lugar de "bright".
- **Usar "soft light" sin diffusion explícita:** El video muestra que soft light requiere diffusion (silk, soft box, nubes). En prompts, si quieres luz suave, especifica el método de difusión.
- **Olvidar el "smart side" vs "dumb side":** Iluminar el lado equivocado del rostro cambia el tono emocional. El video enseña que broad side es accesible, short side es dramático. En prompts, especifica "broad side lighting" o "short side lighting" según la intención.
- **No considerar el "practical light" como motivación:** El video enfatiza que la luz debe tener justificación lógica. En prompts, si hay una lámpara en frame, úsala como "motivated light" para que la IA no genere sombras inconsistentes.
- **Usar "chiaroscuro" sin definir contraste:** El video lo describe como low-key con alto contraste. En prompts, añade "high contrast ratio, deep shadows, single key light" para precisión.