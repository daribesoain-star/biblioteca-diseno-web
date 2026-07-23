# tipos de lentes objetivos cine fotografía focal tutorial español
**Fuente:** esc_lentes_es | https://youtu.be/tipos de lentes objetivos cine fotografía focal tutorial español

## Que ensena (2-3 lineas)
Explica la jerarquía de inversión: el lente es más importante que la cámara para la calidad de imagen. Distingue lentes fotográficos vs. cine (f-stops vs. T-stops, anillos de enfoque, peso uniforme) y detalla cómo la distancia focal (mm) y el factor de recorte (crop factor) determinan el encuadre. Recomienda el Sigma 18-35mm f/1.8 como lente versátil de inicio para video comercial.

## Lecciones accionables
- **Inversión prioritaria:** Gasta más en el lente que en el cuerpo de cámara. Un lente caro en una cámara básica (ej. Canon 70D + Sigma 18-35mm f/1.8) mejora más la imagen que lo inverso.
- **Compatibilidad y adaptadores:** Verifica mount (Canon EF, Sony E, etc.). Para usar lente Canon en cámara Sony, necesitas adaptador (costo: $350–$500 USD). Lentes Sigma/Rokinon tienen versiones multi-mount.
- **Focal length (mm) y angle of view:**
    - **10–24mm (Wide-angle):** Captura más escena. Ideal para real estate, paisajes, espacios cerrados. En prompts IA: `wide angle lens, 16mm`.
    - **28–50mm (Normal):** Similar al ojo humano. El más versátil para imagen cinematográfica. Prompt: `50mm prime lens, normal field of view`.
    - **60–105mm (Macro):** Mayor magnificación, efecto de compresión sujeto/fondo. Para detalles de comida, animales, retratos. Prompt: `85mm macro lens, shallow depth of field, background compression`.
    - **>105mm (Telephoto):** Alta magnificación, captura sujetos distantes. Wildlife, deportes. Prompt: `200mm telephoto lens, compressed perspective`.
- **Prime vs. Zoom:**
    - **Prime (focal fija):** Mejor nitidez, mejor en baja luz, más ligero. Obliga a moverte para componer. Prompt: `35mm prime lens, f/1.8, sharp`.
    - **Zoom:** Versatilidad con un solo lente. Recomendado si presupuesto bajo. Prompt: `zoom lens, 24-70mm range`.
- **T-stop vs. F-stop (cine vs. foto):**
    - **F-stop (foto):** Medida menos precisa; dos lentes al mismo f/1.8 pueden dar diferente luz.
    - **T-stop (cine):** Medida precisa de transmisión de luz. Garantiza que todos los lentes de una serie den la misma exposición al mismo T-stop. Esencial para mantener consistencia entre tomas en video. Prompt: `T2.8 cinema lens, consistent exposure`.
- **Crop factor (factor de recorte):**
    - Cámaras APS-C (ej. Canon 70D) tienen factor 1.6x. Un lente de 50mm se comporta como 80mm.
    - Para obtener un campo visual de 50mm en APS-C, compra un lente de 35mm (35 x 1.6 = 56mm, el más cercano).
    - Full-frame (ej. Sony a7 III) respeta la focal nominal del lente.
    - **Regla para prompts IA:** Si simulas cámara con sensor pequeño, especifica `APS-C sensor, crop factor 1.6x` o `full-frame sensor` para que la IA entienda el encuadre real.
- **Lentes recomendados (orden de compra):**
    1. Sigma 18-35mm f/1.8 (zoom, versátil, equivalente 28-56mm en APS-C).
    2. Wide-angle prime 12-15mm (para espacios amplios).
    3. Macro 85mm (para retratos y detalles con compresión).
- **Prompt técnico para video IA (derivado de la lección):**
    `cinematic shot, 50mm prime lens, T2.8, full-frame sensor, shallow depth of field, subject in focus, background bokeh, consistent exposure across shots, manual focus pull, cinema lens rig`

## Reglas para el director de fotografia IA
- **Usa T-stop en prompts cuando necesites exposición exacta entre planos:** `T2.8 cinema lens` en lugar de `f/2.8` para evitar que la IA alucine variaciones de luz entre tomas.
- **Para no alucinar en video IA, especifica el tipo de sensor:** Si el prompt no aclara `full-frame`, la IA puede generar un encuadre de 50mm que en realidad es un 80mm (crop). Usa `full-frame sensor, 50mm` o `APS-C sensor, 35mm (equivalent to 50mm)`.
- **Usa prime lenses en prompts para mayor nitidez y control de profundidad de campo:** `85mm prime lens, T1.4, sharp focus on eyes`. Los zooms en IA tienden a generar aberraciones cromáticas o falta de nitidez si no se especifica.
- **Para simular lente cine, agrega anatomía de lente en el prompt:** `cinema lens with focus ring, T-stop markings, uniform lens size and weight, manual focus pull`. Esto fuerza a la IA a generar un look más profesional y menos "fotográfico".
- **Cuando quieras efecto de compresión (background compression), usa focal larga:** `135mm telephoto lens, compressed background, subject isolated`. No confíes en que la IA lo haga automáticamente con un 50mm.
- **Para evitar que la IA genere lentes incompatibles, especifica el mount:** `Canon EF mount lens on Sony E-mount camera with adapter` si buscas ese look híbrido.

## Errores comunes que evita o menciona
- **Comprar un lente sin considerar el crop factor:** El video menciona el error de comprar un 50mm para una cámara APS-C pensando que dará un campo visual "normal", cuando en realidad da un 80mm (macro/telephoto). En prompts IA, no asumas que 50mm = ojo humano; especifica el sensor.
- **Usar f-stops como si fueran T-stops:** En video, dos lentes al mismo f/ pueden dar diferente exposición. Para IA, si pides `f/2.8` en un plano y `f/2.8` en otro, la IA puede generar diferencias de luz. Usa `T2.8` para forzar consistencia.
- **Ignorar la diferencia de peso/tamaño entre lentes:** En prompts de movimiento de cámara (gimbal, steadicam), si cambias de un lente a otro sin especificar, la IA puede alucinar un desbalance. Especifica `same size and weight lenses, cinema lens set` para tomas multicámara o cambios de lente.
- **Pensar que un lente caro de foto es igual a uno de cine:** El video aclara que los lentes de cine tienen anillos de enfoque dentados (para follow focus), T-stops precisos y peso uniforme. En prompts, no uses `cinema lens` a la ligera; si quieres ese look, agrega `T-stop, focus gear ring, uniform lens set`.
- **No verificar compatibilidad de mount:** El video advierte que un lente Canon no funciona en Sony sin adaptador. En IA, si pides `Canon 50mm on Sony camera`, la IA puede generar un lente montado incorrectamente o un adaptador visible. Especifica `with adapter` si es parte del look.