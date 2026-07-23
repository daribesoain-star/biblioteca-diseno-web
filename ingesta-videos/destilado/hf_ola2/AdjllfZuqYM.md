# A $1,000,000 AD Using Just 2 tools | Full AI Workflow
**Fuente:** hf_ola2 | https://youtu.be/AdjllfZuqYM

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield integra Nano Banana Pro (generación de imágenes con LLM integrado) y Kling 2.6 (video con motion control) en un flujo unificado. Permite crear comerciales cinematográficos completos usando image-to-video para consistencia, con control de cámara explícito (dolly in, orbit, zoom) y prompts simples gracias al enhancer automático. La plataforma ofrece descuentos en los modelos mencionados.

## Tips y flujos accionables

**Flujo completo (orden de pasos):**
1. **Brainstorming y prompt inicial** → Usa palabras clave simples + estilo. Ejemplo: *"Santa Claus holding a jar of candies in his hand, commercial shot, shot on RE, anamorphic shot"*
2. **Generación de imagen en 4K** → Solicita 4 resultados simultáneos para cherry-pick. Aspect ratio **21:9** para look cinematográfico (entrenado en ese ratio).
3. **Edición de imagen** → Usa el editor integrado para eliminar/agregar elementos (ej: borrar reno de fondo, cambiar expresión de Santa, quitar jarra).
4. **Image-to-video con Kling 2.6** → Siempre desde imagen base para evitar alucinaciones. Añade movimiento de cámara explícito.
5. **Uso del enhancer** → Actívalo para que Higgsfield mejore automáticamente tu prompt (analiza imagen + texto y agrega detalles óptimos).
6. **Post-producción** → Edita en herramienta externa: reordena clips, speed ramp, crop para ocultar imperfecciones, añade música royalty-free.

**Presets/modelos exactos:**
- **Nano Banana Pro**: Para imágenes fijas. Usa prompts cortos + keywords de estilo. Ejemplo: *"Santa looks angry, remove the jar of candies, bring Santa's hands down"*
- **Kling 2.6**: Para animación. Prompts más detallados + movimiento de cámara. Ejemplo: *"Santa's yelling angrily, dolly in"*
- **Enhancer de Higgsfield**: Actívalo siempre en Kling para prompts automáticamente optimizados.

**Parámetros recomendados:**
- Resolución: **4K** para imágenes
- Aspect ratio: **21:9** (cinematográfico)
- Resultados por generación: **4** para seleccionar el mejor
- Audio: Desactivado (se añade después en edición)

**Keywords mágicas para look cinematográfico:**
- `anamorphic shot`
- `shot on RE`
- `dolly in` (cámara se acerca)
- `camera pulls back` (cámara se aleja)
- `camera orbits around him` (cámara orbita)
- `camera slowly zooms in`

**Prompts VERBATIM usados:**
- Imagen: *"Santa Claus holding a jar of candies in his hand, commercial shot, shot on RE, anamorphic shot"*
- Imagen: *"Santa looks angry, remove the jar of candies, and bring Santa's hands down"*
- Imagen: *"over-the-shoulder shot. In front of him are reindeer having a party. There's a DJ, a table of snacks, and reindeer in sunglasses"*
- Imagen: *"A close-up shot of the DJ. There are more reindeer on the dance floor that are dancing on two feet like humans"*
- Video: *"Santa's yelling angrily, dolly in"*
- Video: *"The DJ is dancing and spinning the disc in front of him. The camera pulls back"*
- Video: *"Close-up of one of the reindeer on the dance floor dancing on two feet like humans. You can't see the DJ stand in frame"*
- Video: *"They're all dancing at fast tempo. And the camera orbits around him"*
- Video: *"Santa grabs the last candy with a very surprised face and starts examining it. The reindeer in the background are jumping in fast tempo. And the camera slowly zooms in"*
- Video: *"One reindeer spinning the other one at a very high speed"*
- Video: *"The man slowly takes a bite of the candy"* (para close-up de boca)
- Video: *"Static shot. The focus is on the jar. Santa and the reindeer are dancing in the background"* (pack shot final)

**Trucos para look cinematográfico:**
- Usa **21:9** siempre para composición automática tipo cine
- Añade `anamorphic shot` para flare y focus lag natural
- Para consistencia, siempre **image-to-video** (nunca text-to-video directo)
- Si un video tiene un error al final, córtalo en edición en vez de regenerar
- Para ritmo, usa **speed ramp** en post (acelerar/desacelerar)
- Para ocultar imperfecciones, **crop** en edición

## Reglas para el erudito de Higgsfield

- **Para generar imágenes cinematográficas** → usa **Nano Banana Pro** con aspect ratio **21:9**, resolución **4K**, y solicita **4 resultados** simultáneos. Añade siempre `anamorphic shot` y `shot on RE` en el prompt.
- **Para animar con consistencia** → usa **Kling 2.6** en modo **image-to-video** (nunca text-to-video). Activa el **enhancer** de Higgsfield para que optimice tu prompt automáticamente.
- **Para control de cámara** → incluye en el prompt el movimiento exacto: `dolly in`, `camera pulls back`, `camera orbits around him`, `camera slowly zooms in`.
- **Para mantener coherencia narrativa** → genera todas las imágenes primero con Nano Banana Pro, edítalas (elimina/añade elementos), y luego pásalas a Kling para animación.
- **Para texto en producto** → usa **Nano Banana Pro** con prompts simples (ej: *"the candies are called crushed candies"*). Este modelo maneja texto mejor que otros.
- **Para escenas complejas (animales humanizados)** → usa prompts descriptivos pero cortos. Nano Banana Pro tiene un LLM interno que interpreta bien conceptos como *"reindeer dancing on two feet like humans"*.
- **Para el pack shot final** → genera imagen con **Nano Banana Pro** (producto como protagonista, fondo con acción), luego anima con **Kling 2.6** en **static shot** (sin movimiento de cámara).

## Errores comunes / que evitar

- **No usar prompts largos y complicados** → Nano Banana Pro tiene LLM interno; usa frases simples + keywords de estilo. El enhancer de Kling agregará detalles automáticamente.
- **No generar video directo desde texto** → Siempre usa image-to-video para evitar que el modelo alucine un Santa o escenario diferente.
- **No fijarse ciegamente en un storyboard** → Si las generaciones cambian el "vibe", reordena los clips en edición para mejorar la narrativa (ej: mover la escena de Santa enojado después del DJ).
- **No ignorar el audio** → La música es clave para vender el look caro. Usa royalty-free con beat que coincida con el caos/ritmo de las escenas.
- **No regenerar videos enteros por errores pequeños** → Si el final de un clip tiene un artefacto (ej: luz extraña), córtalo en edición. Usa crop para ocultar elementos no deseados (ej: un poste en la escena de disco).
- **No usar aspect ratio 16:9 para look cinematográfico** → 21:9 da mejor composición automática porque los modelos fueron entrenados con datos de ese ratio.
- **No generar sin selección múltiple** → Siempre pide 4 resultados para elegir el mejor. No te conformes con el primero.