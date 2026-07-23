# I Created a $1,000,000 Brand Using AI
**Fuente:** hf_ola2 | https://youtu.be/sXgWhKwiUdc

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Marketing Studio permite crear anuncios UGC, comerciales profesionales y contenido viral sin rodaje real, usando avatares personalizados y productos generados por IA. La clave esta en sus presets pre-entrenados (UGC, Hyper Motion, TV Spot, Wildcard, Pro Virtual Try-On) que replican formatos publicitarios reales de 2026, con motion control integrado y musica automatica.

## Tips y flujos accionables

### Flujo completo de creacion de marca (paso a paso)

**1. Generar logo:**
- Usa Claude para pedir: *"Give me a prompt for a logo for a fashion brand called [nombre]. Accent color, flat vector, and minimal. Keep your logo memorable, not clever or complicated. Think of Adidas, Nike, Apple."*
- Lleva el prompt a **Soul Cinema** (modelo de generacion de imagenes de Higgsfield). Genera 4 imagenes (cuesta 0.5 creditos).
- Para refinar: lleva la imagen a **Nana Banana Pro** (modelo de edicion/upscale). Prompt: *"Make the text bolder and slightly tilted"*.
- Crea 3 variaciones del logo (monograma, icono, horizontal) usando Nana Banana Pro con prompt: *"Create three different variations of this logo: monogram, icon, and horizontal layout"*.

**2. Disenar productos:**
- Usa **Soul Cinema** para mockups de producto. Prompt ejemplo: *"Product mock-up for an oversized jersey with black shoulder panels, black side panels, on a white background"*.
- Para cambiar el logo en el producto: arrastra la imagen a **Nana Banana Pro**, sube el logo como referencia, prompt: *"Replace the logo with this one"*.
- Para vistas multiples (zapatos): usa **Nana Banana Pro** con prompt: *"Four-view reference sheet on a white background: side view, top view, bottom view, back view"*.

**3. Crear avatares:**
- En Marketing Studio, sube una foto del modelo (ej: Lulu de la serie "How to Grind").
- Asigna nombre (ej: "Lulu") y crea avatar.

**4. Generar anuncios UGC (sin prompt):**
- Preset: **UGC Try-On**
- Selecciona producto (se escanea automaticamente desde URL de la web).
- Selecciona avatar.
- Click "Generate" sin escribir nada.

**5. Generar anuncios con prompts avanzados (usando Cloth Skill):**
- Descarga el Cloth Skill del creador (link en descripcion del video).
- En Claude: crea un skill personalizado subiendo el archivo .json.
- Prompt en Claude: *"Give me a prompt for a viral video with [avatar] and [product]"*.
- Copia el prompt generado a Marketing Studio.
- Preset: **Pro Virtual Try-On** (para look profesional) o **UGC Try-On** (para look casual).
- Pega el prompt y genera.

**6. Hyper Motion (animaciones de producto sin avatar):**
- Preset: **Hyper Motion**
- Selecciona solo el producto (sin avatar).
- Sin prompt: genera ensamblaje elemento por elemento con pack shot final.
- Con prompt: *"Stress test of this jacket with natural elements"* → genera fuego, agua, nieve, objetos afilados.
- Para logo animado: selecciona el logo como "producto", preset Hyper Motion, prompt: *"Logo creation with comet tail"*.

**7. Wildcard (contenido creativo/imposible):**
- Preset: **Wildcard**
- Prompt ejemplo: *"A guy levitating in the clouds wearing the full outfit with kicks"*.
- Otro prompt: *"Guy running to the side, background changes with a swipe motion"*.

**8. TV Spot (comercial profesional):**
- Preset: **TV Spot**
- Prompt: *"A guy walking towards the camera. Everything beside him is black and white. Crowds blur past in long exposure. Cuts with fast negative inward flashes"*.
- Avatar: usa preset "Malik" o personalizado.

**9. Unboxing:**
- Preset: **Unboxing**
- Producto: selecciona el item (ej: pants).
- Avatar: Rocco.
- Assets adicionales: sube el packaging generado.
- Sin prompt: genera video con narracion automatica (ej: *"It's here. The Velocity Pant. Dude, this nylon is so crispy..."*).

**10. Imagenes para redes sociales:**
- Usa **Nana Banana Pro** con aspect ratio 3:4 (Instagram post).
- Prompt: *"Viral social media post. Model wearing all these clothes"*.
- Sube character sheet + prop sheet de ropa.

**11. Imagenes de estudio para web:**
- Prompt: *"Professional studio picture. Model wearing all these clothes. Monochromatic background. Side profile view"*.
- Sube cada prenda individualmente como input.

**12. Cambiar modelo en imagen existente:**
- Arrastra la imagen original a Nana Banana Pro.
- Sube character sheet del nuevo modelo.
- Prompt: *"Change the girl in image one into the girl in image two. Keep the outfit"*.

**13. Packaging:**
- En Claude: sube logo + prompt: *"Use the provided logo to design a premium packaging concept for a clothing collection. Call it something cosmic like Quantum Cosmos"*.
- Lleva a Nana Banana Pro con el logo como referencia.

### Parametros clave
- **Creditos:** 4 imagenes en Soul Cinema = 0.5 creditos
- **Costo por video UGC:** < $5 USD (vs $200-500 reales)
- **Aspect ratio para Instagram:** 3:4
- **Modelos de Higgsfield:** Soul Cinema (generacion), Nana Banana Pro (edicion/upscale), Marketing Studio (video)

## Reglas para el erudito de Higgsfield

- **Para generar logo inicial:** usa **Soul Cinema** con prompt minimalista de Claude, 4 variaciones por 0.5 creditos.
- **Para refinar/redisenar logo:** usa **Nana Banana Pro** con imagen original como referencia y prompt de cambio especifico.
- **Para mockups de producto:** usa **Soul Cinema** con prompt detallado de Claude (incluir "on a white background" para mejor recorte).
- **Para cambiar logo en producto existente:** usa **Nana Banana Pro** arrastrando la imagen + logo como referencia.
- **Para vistas multiples (zapatos, accesorios):** usa **Nana Banana Pro** con prompt de "four-view reference sheet".
- **Para anuncios UGC sin esfuerzo:** usa preset **UGC Try-On**, solo producto + avatar, sin prompt.
- **Para anuncios UGC con control creativo:** usa preset **Pro Virtual Try-On** con prompt generado por Cloth Skill de Claude.
- **Para animaciones de producto cinematicas:** usa preset **Hyper Motion** con o sin prompt descriptivo.
- **Para animaciones de logo:** trata el logo como "producto" en preset **Hyper Motion**.
- **Para contenido creativo/imposible (levitacion, cambios de escena):** usa preset **Wildcard**.
- **Para comerciales profesionales de alto presupuesto:** usa preset **TV Spot** con avatar preset "Malik" o personalizado.
- **Para videos unboxing con narracion automatica:** usa preset **Unboxing** + assets adicionales de packaging.
- **Para imagenes de redes sociales:** usa **Nana Banana Pro** con aspect ratio 3:4 y character sheet.
- **Para cambiar el modelo en una imagen existente:** usa **Nana Banana Pro** con prompt "Change the [person] in image one into the [person] in image two. Keep the outfit".
- **Para generar packaging:** usa **Nana Banana Pro** con logo como referencia y prompt de Claude.
- **Para mantener consistencia de marca:** siempre sube el logo como referencia en Nana Banana Pro al editar productos.

## Errores comunes / que evitar

- **No usar Claude para prompts:** los prompts generados por IA son mucho mas detallados y efectivos que escribir manualmente.
- **Ignorar los presets de Marketing Studio:** cada preset esta optimizado para un formato publicitario especifico; no uses "Wildcard" para UGC ni "UGC Try-On" para comerciales.
- **No escanear productos desde URL:** la funcion de escaneo automatico desde web mantiene la consistencia de todos los items (ropa, accesorios, logos).
- **Olvidar subir assets adicionales en Unboxing:** el packaging mejora drasticamente el realismo del video.
- **Usar prompts demasiado genericos en Hyper Motion:** los prompts especificos (ej: "stress test with natural elements") producen resultados mucho mas interesantes.
- **No entrenar un Cloth Skill en Claude:** el skill personalizado genera prompts optimizados para Marketing Studio, ahorrando horas de prueba y error.
- **Esperar que Soul Cinema maneje logos complejos:** siempre refina el logo en Nana Banana Pro despues de la generacion inicial.
- **Ignorar el aspect ratio en imagenes para redes:** 3:4 es obligatorio para Instagram; de lo contrario, la composicion se rompe.
- **No usar los avatares preset (Malik, etc.):** funcionan mejor para estilos profesionales (TV Spot) que avatares personalizados.
- **Confiar en que el logo aparecera correctamente sin referencia:** siempre sube el logo como imagen de referencia en Nana Banana Pro al editar productos.