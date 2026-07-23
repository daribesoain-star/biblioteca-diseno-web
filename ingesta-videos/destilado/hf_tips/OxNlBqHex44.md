# How to Use Higgsfield AI Better than 99% of People
**Fuente:** hf_tips | https://youtu.be/OxNlBqHex44

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield es una plataforma todo-en-uno que integra generacion de imagen, video, personajes consistentes y simulacion de camaras profesionales. El flujo clave es: generar imagen base con el modelo correcto, expandir con apps (Shots, Angles, Outfit Swap, Transitions), crear personajes consistentes con 20-30 fotos de referencia, y animar con Cinema Studio o modelos de video como Kling 3.0.

## Tips y flujos accionables

### Flujo 1: Imagen ultrarealista + expansión a múltiples ángulos
1. **Modelo:** Nano Banana Pro (Google, mejor para fotorrealismo)
2. **Aspect ratio:** 16:9 (cinemático)
3. **Calidad:** 4K
4. **Prompt exacto usado:** *"A female explorer with weathered leather jacket and climbing gear stands at the edge of a massive ice cave. Blue glacial light filtering through translucent walls, our breath visible in the freezing air, dramatic side lighting."*
5. **Apps para expandir:**
   - **Shots:** Sube la imagen generada → genera 9 ángulos de cámara distintos automáticamente (close-ups, overhead, upward framing). Upscale los que te gusten.
   - **Angles:** Sube la imagen original → promptea un ángulo específico (ej: *"low angle shot looking up at her"*). Reconstruye la escena desde esa perspectiva manteniendo consistencia.
   - **Outfit Swap:** Sube imagen del personaje + imagen de la ropa deseada (ej: vestido rojo de gala). Cambia la vestimenta sin alterar rostro, fondo ni iluminación.
   - **Transitions:** Sube dos imágenes → selecciona efecto (flying cam, morph, zoom, raven). Crea transición cinemática entre escenas.

### Flujo 2: Personaje consistente (Character Feature)
1. **Generar base:** Usa Nano Banana Pro con prompt simple: *"young male with short dark hair and rugged features, neutral expression, standing against a white background, front facing portrait, natural lighting, photorealistic"*
2. **Expandir a 20-30 imágenes:** Lleva esa imagen a Shots → genera 9 ángulos → upscale y descarga. Repite hasta tener 20-30 fotos del mismo personaje en distintos ángulos.
3. **Crear personaje:** Character → Create Character → sube las 20-30 fotos → nómbralo (ej: "Sam") → Higgsfield entrena un modelo facial.
4. **Generar con consistencia:** Selecciona el personaje creado → escribe prompt en cualquier escenario. Ejemplo usado: *"Sam wearing futuristic spacesuit inside a Mars habitat, red planet visible through window, soft interior lighting, confident expression"*

### Flujo 3: Video con Image-to-Video (Kling 3.0)
1. **Modelo recomendado:** Kling 3.0 (física realista, multi-cámara, incluye audio)
2. **Input:** Imagen generada con personaje consistente
3. **Prompt (solo acción y cámara, NO describas personaje/entorno):**
   ```
   Shot one, wide establishing shot of Sam standing in the Mars habitat looking out the window at the red planet.
   Shot two, medium close up as Sam turns and walks toward the equipment panel.
   Shot three, close up of Sam's face as he examines the controls with concern.
   Ambient space station sounds, soft mechanical hums.
   ```
4. **Parámetros:** Duración 10s (para múltiples shots), 1080p, activar **multi shot mode**
5. **Nota crítica:** Especifica sonidos ambientales en el prompt. Si no lo haces, Kling puede añadir diálogos aleatorios o sonidos extraños.

### Flujo 4: Cinema Studio (simulación de equipo profesional)
1. **Acceso:** Homepage → Cinema Studio
2. **Pestaña Imagen:**
   - Selecciona cámara: **Full Frame Cine Digital**
   - Lente: **35mm** (calidad cinematográfica)
   - Prompt usado: *"a vintage motorcycle parked in a neon-lit Tokyo alley at night, rain-slicked pavement reflecting pink and blue signs, steam rising from street vents, moody cyberpunk atmosphere"*
3. **Pestaña Video (desde esa imagen):**
   - Sube la imagen generada
   - Movimiento de cámara: **Dolly In** (efecto push)
   - Prompt: *"Camera slowly pushes forward toward the motorcycle. Rain continues falling. Neon signs flicker."*

### Flujo 5: AI Influencer Studio (personaje desde cero, sin fotos)
1. **Acceso:** Homepage → AI Influencer
2. **Configuración:**
   - Character type: Human (también disponibles: elf, alien)
   - Gender: Female
   - Ethnicity: Mixed
   - Skin tone: Color picker manual
   - Eye color: Deep brown
   - Skin conditions: **Freckles** (añade realismo)
   - Age: Adult
   - Settings → Face, Body, Style: Ajusta eye type, mouth details, body type, tattoos
   - Render style: **Hyperrealistic**
   - Hairstyle: Long hair
3. **Generar:** Crea el personaje basado en parámetros
4. **Customizar escena:** Click "Customize" → prompt: *"standing in a modern coffee shop, natural window lighting, holding a latte, casual morning vibe"* → el rostro se mantiene idéntico

## Reglas para el erudito de Higgsfield

- **Para fotorrealismo extremo:** usa **Nano Banana Pro** con aspect ratio 16:9 y calidad 4K
- **Para estilo artístico o estilizado:** usa **Sea Dream 4.0**
- **Para personajes consistentes (basados en persona real):** usa **Character Feature** con 20-30 fotos de referencia en múltiples ángulos
- **Para personajes desde cero (sin fotos):** usa **AI Influencer Studio** con render style Hyperrealistic y añade skin conditions (freckles, scars) para evitar look genérico
- **Para video con física realista y multi-cámara:** usa **Kling 3.0** con Image-to-Video, duración 10s, 1080p, multi shot mode activado
- **Para video con control de cámara profesional:** usa **Cinema Studio** → selecciona **Full Frame Cine Digital + lente 35mm** → en video usa **Dolly In** como movimiento
- **Para prompts en Image-to-Video:** describe SOLO acción y movimiento de cámara, NUNCA el personaje o entorno (ya están en la imagen base)
- **Para prompts en Kling 3.0 con audio:** incluye explícitamente sonidos ambientales (ej: *"Ambient space station sounds, soft mechanical hums"*) para evitar diálogos aleatorios
- **Para expandir una imagen a múltiples ángulos:** usa **Shots** (9 ángulos automáticos) o **Angles** (ángulo personalizado con prompt)
- **Para cambiar vestimenta sin regenerar:** usa **Outfit Swap** con imagen del personaje + imagen de la ropa deseada
- **Para transiciones entre escenas:** usa **Transitions** con efecto **Raven** (recomendado para movimiento fluido)

## Errores comunes / que evitar

- **Usar el modelo equivocado para imagen:** No uses Sea Dream 4.0 para fotorrealismo ni Nano Banana Pro para estilos artísticos. Cada modelo tiene un propósito específico.
- **Describir personaje/entorno en prompt de Image-to-Video:** El prompt debe contener SOLO acción y movimiento de cámara. El personaje y entorno ya están definidos en la imagen base.
- **No especificar sonidos en Kling 3.0:** Si no incluyes sonidos ambientales en el prompt, Kling puede añadir diálogos aleatorios o ruidos no deseados.
- **Regenerar imágenes completas para cambiar un detalle:** Usa Outfit Swap, Shots o Angles en lugar de regenerar desde cero. Ahorra créditos y mantiene consistencia.
- **Usar pocas fotos de referencia para Character Feature:** Necesitas 20-30 imágenes en distintos ángulos para que el modelo facial sea consistente. Menos fotos = peor resultado.
- **Ignorar multi shot mode en video:** Si no lo activas, obtendrás un solo plano en lugar de la secuencia multi-cámara profesional.
- **Usar text-to-video cuando tienes imagen base:** Image-to-video da mucho más control y consistencia. Text-to-video solo para conceptos rápidos sin imagen previa.
- **No usar Cinema Studio para look cinematográfico:** La simulación de cámara Full Frame Cine Digital + lente 35mm + Dolly In es lo que diferencia un resultado amateur de uno profesional.