# How to Use Higgsfield AI Better than 99% of People [higgsfield]
**Fuente:** ola4-herramientas | https://youtu.be/OxNlBqHex44

## Qué enseña (2-3 líneas)
Este video enseña el flujo de trabajo profesional completo en Higgsfield AI: desde generación de imágenes con el modelo correcto, pasando por herramientas de reencuadre y cambio de vestimenta, hasta animación con movimiento y creación de personajes consistentes. También cubre Cinema Studio para simular equipos de cámara profesionales y AI Influencer Studio para diseñar personajes desde cero sin fotos de referencia.

## Lecciones accionables
- **Selección de modelo según el objetivo:** Para ultrarealismo usar **Nano Banana Pro** (modelo de Google). Para estilos artísticos usar **Sea Dream 4.0**. Para imágenes del personaje personalizado usar **Higgsfield Soul**.
- **Configuración inicial de imagen:** Aspect ratio **16:9** para look cinematográfico, calidad **4K** para máximo detalle.
- **Prompt de ejemplo para imagen realista:** *"A female explorer with weathered leather jacket and climbing gear stands at the edge of a massive ice cave. Blue glacial light filtering through translucent walls, our breath visible in the freezing air, dramatic side lighting."*
- **Uso de la app Shots:** Subir una imagen → generar → obtener **9 ángulos de cámara diferentes** (close-ups, upward framing, overhead shots) desde una sola imagen. Upscalear y descargar en resolución completa.
- **Uso de la app Angles:** Subir imagen original → prompt específico de ángulo (ej: *"low angle shot looking up at her"*) → genera la misma escena desde esa nueva perspectiva.
- **Uso de la app Outfit Swap:** Subir dos imágenes (personaje + vestimenta deseada) → el personaje conserva cara, fondo e iluminación pero cambia la ropa.
- **Uso de la app Transitions:** Subir dos tomas diferentes → seleccionar efecto (flying cam, morph, zoom, raven transition) → genera transición cinemática suave entre escenas.
- **Creación de personaje consistente (Character):** Subir **20 a 30 fotos de referencia** con variedad de ángulos. Para generar las fotos: crear imagen base con fondo blanco y pose simple → usar app Shots para obtener 9 ángulos → repetir hasta tener 20-30 imágenes → subirlas a "Create Character" → nombrar el personaje.
- **Prompt para generar fotos de referencia:** *"young male with short dark hair and rugged features, neutral expression, standing against a white background, front facing portrait, natural lighting, photorealistic"*
- **Uso del personaje en nuevas escenas:** Seleccionar personaje creado → escribir prompt con escena diferente (ej: *"Sam wearing futuristic spacesuit inside a Mars habitat, red planet visible through window, soft interior lighting, confident expression"*) → el rostro se mantiene consistente.
- **Generación de video (Image to Video):** Subir imagen generada → seleccionar modelo **Kling 3.0** (física realista y multi-cámara) → prompt solo con acción y movimiento de cámara (no describir personaje/entorno) → duración **10 segundos** para múltiples tomas → resolución **1080p** → activar **multi shot mode**.
- **Prompt de ejemplo para video (Image to Video):** *"Shot one, wide establishing shot of Sam standing in the Mars habitat looking out the window at the red planet. Shot two, medium close up as Sam turns and walks toward the equipment panel. Shot three, close up of Sam's face as he examines the controls with concern. Ambient space station sounds, soft mechanical hums."*
- **Incluir especificación de audio en prompts de video:** Kling 3 tiene audio; si no se especifica, puede añadir diálogos aleatorios o sonidos extraños.
- **Generación de video (Text to Video):** Usar cuando no hay imagen base. Prompt debe describir todo desde cero (ej: *"a young scientist with dark hair examines glowing bioluminescent plants in a dark laboratory. Blue and green light illuminating her face. She leans in closer with fascination. Cinematic lighting, slow push in on her face."*)
- **Cinema Studio (imagen):** Seleccionar combinación cámara-lente (ej: **full frame cine digital a 35mm**) → escribir prompt → genera imagen con calidad de cámara profesional.
- **Prompt de ejemplo para Cinema Studio:** *"a vintage motorcycle parked in a neon-lit Tokyo alley at night, rain-slicked pavement reflecting pink and blue signs, steam rising from street vents, moody cyberpunk atmosphere"*
- **Cinema Studio (video):** Subir imagen generada en Cinema Studio → seleccionar movimiento de cámara (ej: **dolly in**) → prompt con acción y movimiento (ej: *"Camera slowly pushes forward toward the motorcycle. Rain continues falling. Neon signs flicker."*)
- **AI Influencer Studio (creación desde cero):** Seleccionar tipo de personaje (human, elf, alien) → género → etnicidad → color de piel con selector → color de ojos (ej: deep brown) → condiciones de piel (pecas, lunares, cicatrices) → edad → en Settings: ajustar tipo de ojo, detalles de boca, tipo de cuerpo, tatuajes → render style: **hyperrealistic** → seleccionar peinado → generar.
- **Personalizar personaje de AI Influencer:** Click en "customize" → escribir escena (ej: *"standing in a modern coffee shop, natural window lighting, holding a latte, casual morning vibe"*) → el rostro se mantiene idéntico.

## Reglas para agentes
- Usa **Nano Banana Pro** cuando necesites ultrarealismo fotográfico; usa **Sea Dream 4.0** para estilos artísticos o estilizados.
- Usa **Higgsfield Soul** exclusivamente cuando generes imágenes del personaje personalizado (Character).
- Cuando uses Image to Video, **nunca describas el personaje o entorno** en el prompt; describe solo la acción y el movimiento de cámara.
- Cuando uses Kling 3 para video, **siempre especifica el sonido ambiente** en el prompt para evitar diálogos aleatorios o sonidos extraños.
- Para crear un personaje consistente, **sube siempre entre 20 y 30 fotos de referencia** con variedad de ángulos; menos fotos reduce la consistencia.
- Para generar fotos de referencia, **usa fondo blanco y pose simple** en la imagen base antes de aplicar Shots.
- Activa **multi shot mode** y duración de **10 segundos** cuando generes videos con múltiples tomas.
- Usa **resolución 1080p** para máxima calidad en video.
- En Cinema Studio, **selecciona siempre una combinación cámara-lente** antes de generar (ej: full frame cine digital a 35mm).
- En AI Influencer Studio, **selecciona hyperrealistic** como render style para máxima calidad.

## Errores comunes que evita o menciona
- **Usar el modelo incorrecto para el tipo de imagen:** cada modelo (Nano Banana Pro, Sea Dream 4.0, Higgsfield Soul) tiene fortalezas diferentes; usar el equivocado desperdicia créditos.
- **Regenerar toda la imagen desde cero para cambiar un detalle:** en lugar de eso, usa las apps (Shots, Angles, Outfit Swap, Transitions) para modificar sin perder lo que funciona.
- **Describir personaje y entorno en el prompt de Image to Video:** solo se debe describir acción y movimiento de cámara, ya que la imagen base ya contiene esa información.
- **No especificar sonido ambiente en prompts de video con Kling 3:** puede generar diálogos aleatorios o sonidos extraños no deseados.
- **Usar pocas fotos de referencia para crear un personaje:** menos de 20-30 fotos reduce drásticamente la consistencia del personaje en diferentes escenas.
- **No usar variedad de ángulos en las fotos de referencia:** el modelo necesita entender el rostro desde todas las direcciones para mantener consistencia.