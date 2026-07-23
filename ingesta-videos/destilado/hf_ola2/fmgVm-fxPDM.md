# I Created 10+ Beauty Ads in 1 Hour — No Agency Needed
**Fuente:** hf_ola2 | https://youtu.be/fmgVm-fxPDM

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Marketing Studio permite crear una identidad de marca completa (logo, productos, brand kit) y generar anuncios UGC, hyper motion y comerciales tipo TV spot en minutos, sin agencia ni crew. Usa GPT Image 2.0 para assets estáticos y presets como Cinema Studio, Seedance, Kling, TV Spot y Wildcard para video, con control de cámara, motion y avatares personalizados.

## Tips y flujos accionables

### 1. Creación de marca y assets estáticos (GPT Image 2.0)
- **Prompt logo:** `"create a high-fashion futuristic logo for a brand called Higgs. Use a strict serif typeface, but give it a creative edge. I also need a separate symbol and a monogram. Keep everything black and white and use elegant thin to medium line work."`
- **Parámetros:** Resolution = 4K, Format = 16:9, Versions = 4
- **Prompt productos:** Adjuntar logo generado + `"Luxury beauty set on white, perfume bottle, cream jar, and a lipstick tube. Pressed flowers, lavender, and gold leaf details. Brass caps with gold H monogram. Soft studio lighting."` → Mismos parámetros (4K, 16:9, 4 versions)
- **Prompt brand kit:** Adjuntar logo + productos → `"A brand kit layout for Higgs. Show the color palette, the typography. Keep the whole thing clean and minimal. The mood should feel dreamy, almost cinematic. Stick to lavender, cream, and gold for the colors."`
- **Prompt campaña (poster):** Adjuntar brand kit → `"Feature a blond-haired woman as the main campaign hero. Use the products from attached image exactly as shown. Preserve their shape, design, and proportions. Do not redesign them."`
- **Prompt billboard:** Mismas referencias → `"Photorealistic billboard ad mounted above a real city road."`

### 2. UGC (User Generated Content) - Marketing Studio
- **Avatar:** Seleccionar avatar predefinido o crear uno nuevo con prompt como `"elegant 60-year-old woman"`
- **Producto:** Subir imagen del producto recortada individualmente
- **Prompt simple:** `"Cozy home setting as the woman removes the cap. She says, 'Okay, I finally got it.'"`
- **Hook + Setting:** Usar opciones predefinidas: Epic fail, Product crush, Spicy. Setting puede ser rooftop, volcano, airplane wing, etc.
- **Aspect ratio:** 9:16 para UGC
- **Quality:** 1080p
- **Duration:** 15 seconds
- **Truco "Random object mic":** Seleccionar hook "random object mic" con prompt vacío → genera humor inesperado (ej: abuela con micrófono número 67)

### 3. Hyper Motion (cinematic CGI)
- **Workflow exacto:**
  1. Crear location en **Soul Cinema** (preset de Higgsfield) con prompt simple (ej: `"desert landscape with warm tones"`)
  2. Seleccionar producto (lip balm, perfume, cream)
  3. Usar location como **second input**
  4. Prompt de movimiento: `"flowers burst from desert sand, petals open to reveal the lip balm, the cap lifts, and camera pulls back at the end"`
- **Para perfume:** `"cinematic ad for luxury perfume bottle, floating, slow motion, silk panels, warm beige interior"`
- **Para cream:** `"flowers bloom and reveal a floating face cream jar. Camera orbits to a slow-mo hero shot. No cuts, one continuous motion."`
- **Parámetros:** 16:9, 1080p, duración según necesidad

### 4. Commercial / TV Spot (Wildcard + TV Spot preset)
- **Wildcard preset:** Para ideas locas → comerciales profesionales
  - Crear avatar custom: `"Asian woman with pink hair, mid-20s, dressed in soft beige and lilac modern fashion"`
  - Prompt: `"surreal luxury fragrance ad, warm sand tones, lilac sky, cinematic and slightly uncanny luxury aesthetics"`
- **TV Spot preset:** Para look de broadcast millonario
  - Crear avatar: `"ethereal Eurasian woman in sheer pearl cream dress"`
  - Location desde Soul Cinema
  - Prompt mínimo: `"a dreamy pearl world ad"` (5 palabras)
  - **Parámetros TV Spot:** 16:9, 15 seconds, 1080p
- **Multi-avatar trick:** No se pueden usar dos avatares directamente. Seleccionar un avatar principal y adjuntar el segundo como **reference image**.
  - Avatares: `"elegant Asian woman, black dress, white coat"` + `"brunette man in navy overcoat"` (como referencia)
  - Location: train station (creada en Cinema)
  - Prompt: `"black and white train station, a woman places a red lipstick on the table, and the color spreads from it, transforming the entire scene. Slow motion."`

## Reglas para el erudito de Higgsfield

- **Para crear logo y assets estáticos:** usa **GPT Image 2.0** con resolución 4K, formato 16:9, 4 versiones por batch. Prompt simple, dirección clara, no necesitas párrafos largos.
- **Para brand kit cohesivo:** adjunta el logo y los productos generados como referencia, especifica colores exactos (lavender, cream, gold) y mood (dreamy, cinematic).
- **Para UGC realista:** usa **9:16**, **1080p**, **15 segundos**. Elige avatar predefinido o crea uno con prompt descriptivo. Activa hooks predefinidos (Epic fail, Product crush, Spicy) y settings extremos (rooftop, volcano) para diferenciar audiencias.
- **Para Hyper Motion (CGI calidad billboard):** usa **Soul Cinema** para crear locations personalizadas. Luego en Marketing Studio, selecciona el producto, la location como **second input**, y escribe un prompt de movimiento detallado (flores, cámara lenta, orbit, hero shot). Sin cortes, un solo movimiento continuo.
- **Para TV Spot (broadcast millonario):** usa el preset **TV Spot** con **16:9**, **15 segundos**, **1080p**. Crea avatar custom + location desde Soul Cinema. Prompt de **máximo 5 palabras** (ej: `"a dreamy pearl world ad"`). Para historia con dos personajes, usa un avatar principal y el segundo como **reference image**.
- **Para control de cámara:** especifica en el prompt: `"camera pulls back"`, `"camera orbits to slow-mo hero shot"`, `"no cuts, one continuous motion"`.
- **Para evitar alucinaciones en productos:** en prompts de campaña, añade `"Use the products from attached image exactly as shown. Preserve their shape, design, and proportions. Do not redesign them."`

## Errores comunes / que evitar

- **No usar prompts demasiado largos para GPT Image 2.0:** con una dirección clara basta, no necesitas párrafos. El modelo rellena los detalles.
- **Olvidar adjuntar referencias:** para brand kit, campañas y billboards, SIEMPRE adjunta el logo, productos o brand kit generados previamente. Sin referencia, el modelo reinventa y pierde consistencia.
- **No separar productos individualmente:** para UGC y Hyper Motion, sube cada producto recortado por separado. Si subes una imagen grupal, el modelo no sabe cuál usar.
- **Usar dos avatares directamente en TV Spot:** no funciona. Selecciona UN avatar principal y adjunta el segundo como "reference image".
- **Ignorar los hooks y settings predefinidos:** son la clave para diferenciar audiencias con el mismo producto. No los subestimes.
- **No fijar aspect ratio y calidad antes de generar:** para UGC usa 9:16, para TV Spot 16:9. Siempre 1080p. Si no, obtienes formatos incorrectos.
- **Esperar resultados sin location en Soul Cinema:** para Hyper Motion y TV Spot, crear una location personalizada en Soul Cinema es casi obligatorio para que el fondo sea coherente con la marca.
- **Prompt de movimiento genérico:** en Hyper Motion, especifica dirección de cámara (pull back, orbit), velocidad (slow motion), y transiciones (no cuts). Si no, el movimiento será plano.