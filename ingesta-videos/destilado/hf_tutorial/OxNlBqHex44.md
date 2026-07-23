# How to Use Higgsfield AI Better than 99% of People
**Fuente:** hf_tutorial | https://youtu.be/OxNlBqHex44

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield es una plataforma todo-en-uno que integra modelos de imagen/video (Nano Banana Pro, Sea Dream 4.0, Kling 3.0, Sora 2, Google V03.1) con herramientas de cámara profesional (Cinema Studio) y consistencia de personaje (Character + AI Influencer). El flujo clave es: generar imagen base → aplicar apps (Shots, Angles, Outfit Swap, Transitions) → animar con video (image-to-video) usando control de cámara y multi-shot.

## Tips y flujos accionables

### Flujo completo profesional (imagen → video cinematográfico)
1. **Imagen base:** Ve a `Image` → selecciona **Nano Banana Pro** (fotorrealismo ultra) o **Sea Dream 4.0** (estilo artístico). Usa aspect ratio **16:9**, calidad **4K**.
2. **Prompt ejemplo (verbatim):** *"A female explorer with weathered leather jacket and climbing gear stands at the edge of a massive ice cave. Blue glacial light filtering through translucent walls, our breath visible in the freezing air, dramatic side lighting."*
3. **Apps para expandir:** Ve a `Apps` → **Shots**: sube la imagen, genera 9 ángulos únicos automáticamente. Upscale los que sirvan. **Angles**: para ángulos personalizados (drone shot, low angle). **Outfit Swap**: sube imagen del personaje + imagen de la ropa deseada; cambia vestimenta sin alterar rostro/fondo. **Transitions**: sube 2 shots, elige efecto (Raven, Flying Cam, Morph, Zoom) para transición cinematográfica.
4. **Consistencia de personaje:** Ve a `Character` → `Create Character`. Sube **20-30 fotos de referencia** del mismo personaje desde distintos ángulos (usa Shots para generarlas). Nómbralo (ej: "Sam"). Luego en Image Generation selecciona ese personaje + prompt.
5. **Video:** Ve a `Video` → `Image to Video`. Sube la imagen generada. Selecciona modelo **Kling 3.0** (física realista, multi-cámara). Prompt de acción y cámara (NO describas personaje/entorno):
   - *"Shot one, wide establishing shot of Sam standing in the Mars habitat looking out the window at the red planet. Shot two, medium close up as Sam turns and walks toward the equipment panel. Shot three, close up of Sam's face as he examines the controls with concern. Ambient space station sounds, soft mechanical hums."*
   - Duración: **10 segundos** (para múltiples shots). Resolución: **1080p**. Activa **Multi Shot Mode**.
6. **Cinema Studio (look de cámara profesional):** Ve a `Cinema Studio` → `Image`. Selecciona cámara **Full Frame Cine Digital** + lente **35mm**. Prompt: *"A vintage motorcycle parked in a neon-lit Tokyo alley at night, rain-slicked pavement reflecting pink and blue signs, steam rising from street vents, moody cyberpunk atmosphere."* → Luego ve a `Video` en Cinema Studio, sube la imagen, elige movimiento **Dolly In**, prompt: *"Camera slowly pushes forward toward the motorcycle. Rain continues falling. Neon signs flicker."*
7. **AI Influencer (personaje desde cero):** Ve a `AI Influencer`. Selecciona tipo **Human** (o Elf, Alien). Define género, etnia, tono de piel (color picker), color de ojos, condiciones de piel (pecas, lunares, cicatrices), edad. En `Settings` ajusta tipo de ojo, boca, cuerpo, tatuajes, estilo de render **Hyperrealistic**, peinado. Genera. Luego `Customize` para ponerlo en escenas: *"standing in a modern coffee shop, natural window lighting, holding a latte, casual morning vibe."*

### Trucos para evitar alucinaciones y look cinematográfico
- En **image-to-video**: el prompt solo describe **acción + cámara + sonido**. Si no especificas sonido, Kling puede añadir diálogos aleatorios.
- Para **consistencia facial**: las fotos de referencia deben tener **variedad de ángulos** (frontal, perfil, 3/4, arriba, abajo). Usa Shots para generarlas rápido.
- En **Cinema Studio**: la combinación **Full Frame Cine Digital + 35mm** da el look más cinematográfico. Prueba también **Anamorphic** para aspecto de cine.
- Para **transiciones suaves**: usa `Transitions` con efecto **Raven** para movimiento tipo "cámara viajando por el espacio".
- **Outfit Swap**: la imagen de la ropa debe tener fondo simple y buena iluminación para mejor resultado.

## Reglas para el erudito de Higgsfield

- **Para fotorrealismo extremo:** usa **Nano Banana Pro** con aspect ratio 16:9 y calidad 4K.
- **Para estilo artístico o estilizado:** usa **Sea Dream 4.0**.
- **Para video con física realista y multi-cámara:** usa **Kling 3.0** con duración 10s, 1080p y Multi Shot Mode activado.
- **Para consistencia de personaje en múltiples escenas:** crea un **Character** con 20-30 fotos de referencia desde distintos ángulos (generadas con Shots).
- **Para look de cámara profesional (cine):** usa **Cinema Studio** con cámara **Full Frame Cine Digital** y lente **35mm**; para video añade movimiento **Dolly In**.
- **Para crear personajes desde cero sin fotos:** usa **AI Influencer** con render **Hyperrealistic** y personaliza cada detalle (piel, ojos, pecas, tatuajes).
- **Para obtener 9 ángulos de una sola imagen:** usa **Shots** en Apps; upscala los que sirvan.
- **Para cambiar vestimenta sin regenerar:** usa **Outfit Swap** (sube personaje + imagen de la ropa).
- **Para transiciones cinematográficas entre escenas:** usa **Transitions** con efecto **Raven**.
- **Para video desde texto (sin imagen base):** usa `Text to Video` en Video, describiendo personaje, entorno, acción y cámara desde cero (menos controlado que image-to-video).

## Errores comunes / que evitar

- **Usar el modelo equivocado para imagen:** principiantes desperdician créditos usando Nano Banana Pro para estilos artísticos o Sea Dream para fotorrealismo. Cada modelo tiene un propósito específico.
- **Describir personaje/entorno en prompt de image-to-video:** el prompt solo debe contener acción, movimiento de cámara y sonido. El personaje y entorno ya están en la imagen subida.
- **No especificar sonido en Kling 3.0:** si no pones "ambient space station sounds" o similar, Kling puede añadir diálogos aleatorios o sonidos extraños.
- **Regenerar toda la imagen para cambiar un detalle:** usa Outfit Swap, Shots o Angles en lugar de regenerar desde cero (ahorra créditos y mantiene consistencia).
- **Fotos de referencia sin variedad de ángulos:** si subes solo fotos frontales, el personaje no será consistente en perfiles o ángulos laterales. Usa Shots para generar variedad.
- **Ignorar Cinema Studio:** muchos solo usan Image/Video básico y pierden el look cinematográfico que da la simulación de cámaras profesionales.
- **Usar text-to-video cuando tienes imagen base:** text-to-video es menos controlado; siempre prefiere image-to-video si ya tienes una imagen generada.
- **No activar Multi Shot Mode en Kling:** sin esto, el video será un solo plano fijo; actívalo para obtener múltiples ángulos en un solo video.
- **Subir menos de 20 fotos para Character:** con menos de 20-30 fotos, la consistencia facial se pierde en escenas complejas.