# How to Use Higgsfield AI Better than 99% of People
**Fuente:** hf_presets | https://youtu.be/OxNlBqHex44

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield es una plataforma todo-en-uno que integra múltiples modelos de generación de imagen y video (Nano Banana Pro, Sea Dream 4.0, Kling 3.0, Google Veo 3.1, Sora 2) con herramientas de control de cámara (Cinema Studio, Shots, Angles) y creación de personajes consistentes (Character, AI Influencer Studio). El flujo profesional combina: generar imagen base → crear variaciones de ángulo → animar con video → aplicar movimiento de cámara cinematográfico.

## Tips y flujos accionables

### Flujo completo: De imagen a video cinematográfico con personaje consistente

**Paso 1: Generar imagen base ultrarealista**
- Ve a **Image** > selecciona **Nano Banana Pro** (mejor para fotorrealismo)
- Aspect ratio: **16:9** (look cinematográfico)
- Calidad: **4K**
- Prompt exacto usado: *"A female explorer with weathered leather jacket and climbing gear stands at the edge of a massive ice cave. Blue glacial light filtering through translucent walls, our breath visible in the freezing air, dramatic side lighting."*
- Descarga la imagen

**Paso 2: Crear múltiples ángulos desde una sola imagen**
- Ve a **Apps** > **Shots**
- Sube la imagen generada
- Genera → obtienes **9 ángulos de cámara distintos** (close-ups, overhead, low angle) en ~30 segundos
- Upscale los que te gusten y descarga en resolución completa

**Paso 3: Ángulo personalizado con Angles**
- **Apps** > **Angles**
- Sube la imagen original
- Prompt: *"low angle shot looking up at her"*
- La herramienta reconstruye la imagen desde ese ángulo manteniendo consistencia

**Paso 4: Cambiar vestimenta sin regenerar**
- **Apps** > **Outfit Swap**
- Sube imagen A (personaje) e imagen B (prenda deseada, ej: *"elegant red evening gown"*)
- El resultado mantiene cara, fondo e iluminación exactos

**Paso 5: Transiciones cinematográficas**
- **Apps** > **Transitions**
- Sube dos imágenes diferentes
- Selecciona efecto: **Raven transition** (crea movimiento seamless entre escenas como si la cámara viajara por el espacio)

**Paso 6: Crear personaje consistente (Character)**
- Ve a **Character** > **Create Character**
- Sube **20-30 fotos de referencia** del mismo personaje desde distintos ángulos
- **Cómo obtener las 30 fotos**: genera una imagen base simple (fondo blanco, frente), pásala por **Shots** para obtener 9 ángulos, upscala y descarga. Repite hasta tener 20-30 imágenes.
- Nombra el personaje (ej: "Sam")
- Ahora puedes generar imágenes de ese personaje en cualquier escenario usando el selector de personaje

**Paso 7: Generar video desde imagen (Image to Video)**
- Ve a **Video** > **Image to Video**
- Sube la imagen del personaje
- Modelo recomendado: **Kling 3.0** (física realista, multi-cámara natural)
- **CRÍTICO: Prompt correcto para Image to Video** → NO describas personaje/entorno, solo **acción + movimiento de cámara + sonido**
- Prompt exacto usado: *"Shot one, wide establishing shot of Sam standing in the Mars habitat looking out the window at the red planet. Shot two, medium close up as Sam turns and walks toward the equipment panel. Shot three, close up of Sam's face as he examines the controls with concern. Ambient space station sounds, soft mechanical hums."*
- Duración: **10 segundos** (para múltiples shots)
- Resolución: **1080p**
- Activar: **Multi shot mode**
- **Nota sobre audio**: Kling 3 tiene audio. Si no especificas sonido, puede añadir diálogos aleatorios o sonidos extraños

**Paso 8: Cinema Studio para look de cámara profesional**
- Ve a **Cinema Studio** > pestaña **Image**
- Selecciona cámara: **Full frame cine digital** + lente: **35mm** (calidad cinematográfica)
- Prompt ejemplo: *"A vintage motorcycle parked in a neon-lit Tokyo alley at night, rain-slicked pavement reflecting pink and blue signs, steam rising from street vents, moody cyberpunk atmosphere."*
- Lleva la imagen a pestaña **Video** en Cinema Studio
- Añade movimiento: **Dolly in** (efecto push)
- Prompt: *"Camera slowly pushes forward toward the motorcycle. Rain continues falling. Neon signs flicker."*

**Paso 9: Crear personaje desde cero (sin fotos) con AI Influencer Studio**
- Ve a **AI Influencer** (arriba)
- Configura:
  - Character type: **Human** (también: Elf, Alien)
  - Gender: Female/Male
  - Ethnicity: Mixed (o la que prefieras)
  - Skin tone: selector de color
  - Eye color: Deep brown (o el que quieras)
  - Skin conditions: **Freckles** (añade realismo)
  - Age: Adult
  - Settings > Face/Body/Style: ajusta ojos, boca, tipo de cuerpo, tatuajes
  - Render style: **Hyperrealistic**
  - Hairstyle: Long hair
- Click **Generate**
- Para cambiar escenario: click **Customize** > prompt: *"standing in a modern coffee shop, natural window lighting, holding a latte, casual morning vibe"*

### Presets y modelos exactos

| Propósito | Modelo/Preset | Parámetros clave |
|-----------|---------------|------------------|
| Fotorrealismo extremo | **Nano Banana Pro** | 16:9, 4K |
| Look artístico/estilizado | **Sea Dream 4.0** | - |
| Personaje propio (con fotos) | **Higgsfield Soul** (vía Character) | 20-30 fotos de referencia |
| Video con física realista | **Kling 3.0** | 10s, 1080p, Multi shot ON |
| Video sin imagen base | **Text to Video** (modelo por defecto) | Describir TODO desde cero |
| Cámara cinematográfica | **Cinema Studio** > Full frame cine digital + 35mm | Dolly in/out, zoom |
| Personaje desde cero | **AI Influencer Studio** | Hyperrealistic, añadir pecas/tatuajes |
| Ángulos múltiples | **Shots** | 9 ángulos automáticos |
| Ángulo personalizado | **Angles** | Prompt específico de cámara |
| Cambio de ropa | **Outfit Swap** | 2 imágenes: personaje + prenda |
| Transiciones | **Transitions** > Raven | Entre 2 imágenes |

## Reglas para el erudito de Higgsfield

- **Para fotorrealismo absoluto** usa **Nano Banana Pro** con aspecto 16:9 y calidad 4K. No uses Sea Dream 4.0 si buscas realismo documental.
- **Para video con física creíble** usa **Kling 3.0** con Multi shot mode activado y duración de 10 segundos. Especifica siempre el sonido ambiente en el prompt para evitar audio aleatorio.
- **Para look de cámara de $200,000** usa **Cinema Studio** con combinación **Full frame cine digital + lente 35mm**. Aplica movimiento **Dolly in** para efecto push cinematográfico.
- **Para personaje consistente en múltiples escenas** crea un **Character** con 20-30 fotos de referencia obtenidas del flujo: imagen base → Shots → 9 ángulos → repetir. No uses menos de 20 fotos.
- **Para personaje que no existe** usa **AI Influencer Studio** con render **Hyperrealistic** y añade imperfecciones (pecas, cicatrices, lunares) para evitar el "AI face genérico".
- **Para cambiar ángulo sin regenerar** usa **Angles** con prompt específico de cámara (low angle, drone shot, overhead). No regeneres desde cero.
- **Para cambiar vestimenta sin perder fondo/iluminación** usa **Outfit Swap** con dos imágenes. No edites manualmente.
- **Para transiciones suaves entre escenas** usa **Transitions** con efecto **Raven**. No uses morph si buscas movimiento de cámara realista.
- **Para prompt en Image to Video** describe SOLO acción + movimiento de cámara + sonido. NO describas personaje ni entorno (ya están en la imagen).
- **Para prompt en Text to Video** describe TODO: personaje, entorno, acción, iluminación, movimiento de cámara.

## Errores comunes / que evitar

- **Usar el modelo equivocado para imagen**: Nano Banana Pro es para realismo; Sea Dream 4.0 para estilizado. Usar Sea Dream para fotorealismo desperdicia créditos y da resultados plásticos.
- **Regenerar toda la imagen para cambiar un detalle**: usa Shots, Angles, Outfit Swap o Transitions en lugar de partir de cero. Ahorra créditos y mantiene consistencia.
- **No especificar sonido en Kling 3.0**: si no pones "ambient space station sounds" o similar, Kling puede añadir diálogos aleatorios o sonidos extraños que arruinan el video.
- **Describir personaje/entorno en Image to Video**: el prompt debe ser solo acción + cámara + sonido. Repetir lo que ya está en la imagen confunde al modelo.
- **Usar menos de 20 fotos de referencia para Character**: la consistencia facial se rompe. El mínimo funcional es 20-30 imágenes con variedad de ángulos.
- **Ignorar AI Influencer Studio para personajes desde cero**: es más controlable que generar con prompts y evita inconsistencias. Úsalo si no tienes fotos de referencia.
- **No activar Multi shot mode en Kling 3.0**: sin esto, el video será un solo plano. Actívalo para obtener múltiples ángulos de cámara en una sola generación.
- **Usar Text to Video cuando tienes imagen base**: Image to Video da mucho más control. Solo usa Text to Video para conceptos rápidos sin imagen específica.
- **No upscalar las imágenes de Shots antes de descargar**: las miniaturas preview tienen baja resolución. Siempre haz upscale y luego descarga en resolución completa.
- **Olvidar que Cinema Studio tiene pestaña de video**: muchos solo usan la pestaña de imagen. La pestaña video permite añadir movimiento de cámara (dolly, zoom) a la imagen generada.