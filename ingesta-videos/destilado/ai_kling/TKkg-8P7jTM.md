# How to Create Cinematic Camera Movement with AI (Kling 3.0 Masterclass)
**Fuente:** ai_kling | https://youtu.be/TKkg-8P7jTM

## Que enseña (2-3 lineas)
A dominar el prompting de cámara para video IA, pasando de "pedir movimientos" a "dirigirlos" mediante prompts detallados que describen tipo de cámara, velocidad, estabilización y trayectoria. Enseña a combinar imágenes de partida (image-to-video) con prompts de movimiento para controlar resultados, usando Kling 3.0 como modelo principal.

## Lecciones accionables

### Flujo de trabajo recomendado
1. **Genera imágenes base** con herramientas como Nano Banana Pro (o similar) para controlar personaje, locación y estilo.
2. **Usa image-to-video** en Kling 3.0: sube imagen de inicio (y opcionalmente imagen de fin) para transiciones controladas.
3. **Escribe prompts de cámara** usando ChatGPT como asistente: pídele "write me a text prompt for an AI video model that has [tipo de movimiento] characterized by [detalles técnicos]".

### Prompts VERBATIM por tipo de movimiento

**Robotic Arm / Motion Control Rig**
> "Robotic arm/motion control style rig camera movement characterized by fast lateral passes, snappy accelerations, but no shake. Ensure the character's face and outfit remain stable and artifact free. Instant micro snap left, then micro snap right, quick lateral jolts while keeping her face centered via pan compensation."

**Point of View / Locked Rig**
> "Create an ultra realistic high-speed shot with the camera physically gripping the woman's head as if mounted or tightly held, maintaining a locked trailing perspective. The woman stays centered and stable while the vast mountainous landscape rushes past. Heavy parallax, the woman performs aerial turns and a flip. Clean, precise tracking keeps the woman's head centered."

**Tilt (vertical)**
> "Smooth vertical tilt upward at constant speed. Tripod-like stability, no pan, no roll, no dolly."

**Dolly In**
> "Camera dollies forward in a straight line towards the woman. Smooth stabilized motion, no zoom. The woman sips from the cup of coffee and wraps up in the blanket."

**Dolly Out / Pull Back**
> "Camera dollies backward in a straight line. Smooth stabilized motion, no zoom."

**Handheld**
> "Frantic handheld camera movement with natural shake and imperfect stabilization, responsive, slightly uneven translation with no intentional zoom."

**Tracking Shot**
> "Camera translate forward at a steady running pace, matching the moving subject's speed, stabilized tracking, no zoom."

**Crane / Jib Up**
> "Camera rises vertically upwards smoothly, boom up, to reveal the vast, snowy, mountainous landscape, making the woman appear small in comparison. No pan, no tilt, and no zoom."

**Crash Zoom**
> "Very fast optical zoom in with an abrupt stop framing the woman's face. Camera position fixed. No dolly."

**Whip Pan**
> "Extremely fast horizontal whip pan with heavy motion blur. Then a sharp settle into a stable frame. No translation, no zoom. The wolf and woman prepare for battle."

**Orbit / 360° Wrap**
> "Full 360° stabilized orbit around the woman at constant radius and speed, maintaining consistent framing, no zoom."

### Parámetros técnicos clave
- **Duración recomendada:** 4-5 segundos para tilts; 3 segundos para crash zooms (luego acelerar en edición).
- **Aspect ratio:** 16:9 (coincidir con imágenes de entrada).
- **Resolución:** 4K para imágenes base.
- **Modelo:** Kling 3.0 (seleccionar en AI Toolkit).
- **Audio:** Desactivar en generación (añadir en postproducción).
- **Negative prompts:** Usar "music" y "dialogue" para evitar que el modelo los genere.

### Técnicas avanzadas
- **Start/end frame workflow:** Para transiciones precisas (ej: tilt de runa a personaje, whip pan de lobo a mujer).
- **Descriptores de acción:** Combinar prompt de cámara + descripción de acción del personaje (ej: "The woman sips from the cup").
- **Contexto de entorno:** Si no usas end frame, describe lo que quieres revelar (ej: "vast snowy mountainous landscape").

## Reglas para el director de fotografía IA

- **Usa image-to-video siempre que puedas:** Te da control sobre personaje, locación y ángulo inicial. Reduces aleatoriedad y ahorras créditos.
- **Usa start + end frame para transiciones complejas:** Cuando quieras un cambio de plano específico (ej: de wide shot a extreme close-up), genera ambas imágenes y deja que Kling haga la transición.
- **Para crash zooms, genera más lento y acelera en edición:** Mejor 3-4 segundos de generación y luego aceleras en post que pedir un zoom ultrarrápido directo.
- **Para crane shots sin end frame, describe el entorno en el prompt:** El modelo necesita saber qué revelar (ej: "reveal the vast snowy landscape").
- **Ajusta duración según el movimiento:** Tilts y dollies: 4-5s; crash zooms: 3s; movimientos erráticos (robotic arm): 5-10s.
- **Para no alucinar en video IA:** Usa negative prompts con "music" y "dialogue" si no quieres audio incrustado. Especifica "no shake" o "tripod-like stability" cuando quieras estabilidad.
- **Para movimientos rápidos (whip pan, crash zoom):** Asegúrate de que el prompt incluya "heavy motion blur" para que la transición sea natural.
- **Para handheld vs tracking:** Decide si quieres que el espectador se sienta parte de la acción (handheld) o testigo (tracking). El prompt define la emoción.

## Errores comunes que evita o menciona

- **No usar image-to-video:** Generar solo con texto pierde control sobre composición, personaje y ángulo. Siempre empieza con una imagen base.
- **No especificar "no zoom" cuando no quieres zoom:** El modelo tiende a añadir zoom por defecto. Inclúyelo en el prompt si quieres movimiento puro de cámara.
- **No describir el entorno en crane shots sin end frame:** Si no dices qué revelar, el modelo puede generar algo genérico o incoherente.
- **Usar duración incorrecta:** Movimientos lentos (tilt, dolly) necesitan 4-5s; movimientos rápidos (crash zoom) necesitan 3s. Si alargas un crash zoom, pierde impacto.
- **No usar negative prompts:** El modelo puede añadir música o diálogo no deseados. Pon "music" y "dialogue" en negative prompts.
- **No planificar la emoción del movimiento:** Cada tipo de cámara evoca una emoción distinta (handheld = caos, dolly = intimidad, crane = escala). Elige según lo que quieras transmitir.
- **No probar variaciones del mismo movimiento:** Un mismo prompt de orbit funciona distinto en wide shot vs close-up. Experimenta con diferentes imágenes base.