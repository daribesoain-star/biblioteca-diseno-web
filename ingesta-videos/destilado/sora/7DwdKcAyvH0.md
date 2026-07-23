# Sora 2 Tutorial: How to Generate Videos Easily
**Fuente:** sora | https://youtu.be/7DwdKcAyvH0

## Qué enseña
- Cómo usar Sora 2 como modelo de razonamiento (no fusión) para generar videos cinematográficos, aprovechando ChatGPT para estructurar prompts con terminología técnica de cámara.
- Flujo de trabajo completo: referencia visual → ChatGPT con guía de prompting de OpenAI → refinamiento iterativo en Artlist/Sora 2 Pro.
- Hack clave: subir la documentación oficial de Sora 2 a ChatGPT para que entienda estructura, formato y terminología específica del modelo.

## Lecciones accionables

### Estructura de prompt para Sora 2 (basada en documentación OpenAI)
- **Componentes obligatorios:** duración (12s), aspect ratio, estilo (ultra-cinematic, photoreal), paleta (dusk palette), character reference, timecodes por escena.
- **Por escena:** environment, character actions, camera movement, lens type.
- **Ejemplo de prompt expandido por ChatGPT:** "wet asphalt, zebra crosswalk, neon signs reflecting in puddles" en lugar de "a beautiful street at night".

### Prompts VERBATIM usados en el tutorial
1. **Prompt inicial (con referencias):** "Create a 12-second Sora 2 prompt that will result in a super cinematic scene of a man flying over a field, similar to these photos. It should start with a man walking in the field and then start hovering and finally fly. The camera should track him as he flies over a field."
2. **Prompt sin referencias (estructura detallada):** "12-second Sora 2 sequence of this character riding a futuristic grungy motorcycle speeding through a barren land with natural motion blur tracking shot with natural camera shake. She stops, gets off, brings out a device that projects a hologram. Then she hears something, turns around, pulls out a staff, extends into a spear. Full body framing. Then a close-up of her eye dilating. Notes: dramatic lighting, slight haze, golden hour."

### Refinamientos específicos (términos de cámara en inglés)
- "I want more speed on the motorcycle. Have the camera orbit around her while the ground blurs."
- "Her stop needs to look intentional and she gets off smoothly."
- "For the device shot, I want it angled over her shoulder and to make it more photorealistic."
- "Replace that shot with a front-on shot of her out of focus. As she slows down and approaches the camera, she comes into focus."
- "Hold the staff with her right hand outstretched like she's pointing at something."
- "Remove the macro shot at the end. Extend the scene with the staff. The staff should be forearm length and extend into a 6ft spear. Add more mechanical elements of things snapping into place."
- "Always keep camera moving to keep the energy high for all scenes. FPV drone for the bike, handheld for the rest."

### Parámetros y movimientos de cámara clave
- **Tracking shot** con natural camera shake
- **Orbit** (front to left to right, rear, tracking tightly while she leans into the wind)
- **Rack focus** (front-on shot out of focus → comes into focus as she approaches)
- **FPV drone** para secuencias de velocidad
- **Handheld** para el resto de escenas
- **Natural motion blur** en tomas de alta velocidad

## Reglas para el director de fotografía IA

- **Usa ChatGPT como tu director de fotografía virtual:** dale instrucciones de alto nivel ("cámara orbita alrededor de ella") y él expande a especificaciones técnicas ("cámara orbita de frente a izquierda a derecha, atrás, tracking ajustado mientras se inclina contra el viento").
- **Para prompts sin referencias visuales, incluye SIEMPRE:** environment, lighting and mood, time of day, emotions and poses, camera movement, dialogue (y quién habla), texture and details.
- **Para no alucinar en video IA, referencia un estilo existente:** "in the style of a Nike ad" o "a luxury sports brand" en lugar de descripciones abstractas.
- **Cuando estés cerca del resultado deseado, NO hagas ajustes:** regenera primero (mismo prompt, 10 generaciones = 10 resultados diferentes) antes de modificar el prompt.
- **Usa Nano Banana para editar imágenes de referencia** antes de pasarlas a ChatGPT/Sora 2.
- **Sé paciente y acepta el proceso iterativo:** cada refinamiento puede requerir múltiples generaciones; los errores como "frozen sideways" o "cartoonish look" son normales y se corrigen con ajustes específicos.

## Errores comunes que evita o menciona

- **"Make it cinematic" es demasiado vago:** la documentación de Sora 2 enseña a describir camera setup, lighting and palette, action and beats, tone and mood.
- **No esperar resultados perfectos de entrada:** incluso con prompts extensos, pueden aparecer errores como personajes congelados, movimientos extraños (dismount weird), o cambios de ángulo incorrectos (orbit from behind en lugar de front).
- **No incluir detalles de diálogo:** especificar quién habla y cómo se dice ("Beautiful choices, David. You always did.") para evitar voces genéricas.
- **Asumir que el mismo prompt da el mismo resultado:** Sora 2 nunca genera el mismo video dos veces; regenerar es parte del flujo.
- **No usar referencias visuales cuando están disponibles:** las imágenes de referencia le dan a ChatGPT mucha más información para construir el prompt detallado.