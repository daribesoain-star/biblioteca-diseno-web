# Runway AI - Tutorial for Beginners in 17 MINUTES ! [ FULL GUIDE ]
**Fuente:** Skills Factory | https://youtu.be/FqYRkl12ON8

## Qué enseña
Tutorial completo para principiantes sobre Runway AI, cubriendo generación de video e imagen con los modelos Gen-4 y Gen-3, edición con Aleph, control de keyframes, Act One/Act Two para transferencia de gestos, lip sync, y la herramienta Sketch para modificar imágenes de referencia.

## Técnicas accionables
- **Modelos disponibles:** Gen-4 Turbo (mejor para live action, VFX, clips de movimiento, animar imágenes simples), Gen-4 (modelo más potente, mejor consistencia de personajes, solo plan pago), Gen-3 Alpha Turbo (más barato, permite keyframes y Camera Control), Gen-3 Alpha (mayor precisión, permite texto sin referencia, solo plan pago). Gen-1 y Gen-2 ya no están disponibles.
- **Estructura de prompt para video:** "Describe main subject, how it moves, its actions, any mood, and camera movement. Then describe scene or background. Then define style (cinematic, realistic, cartoon, 3D animation)." Ejemplo usado: "A blonde horse running with powerful movement. Camera tracks the horse while it runs. The desert remains static, only sand dust rises behind. Cinematic."
- **Parámetros de video:** Resolución fija 720p (24 fps). Duración: 5s o 10s según modelo. Gen-4 Turbo y Gen-4 permiten hasta 5s. Gen-3 Alpha Turbo permite hasta 10s. Upscale a 4K por 10 créditos. Aspect ratio configurable (Portrait, Landscape, etc.).
- **Image-to-video:** En Gen-4 Turbo y Gen-4, subir imagen como referencia obligatoria (Gen-4 Turbo) u opcional (Gen-4). Usar "Input for Video" para seleccionar imagen. Recortar si es necesario.
- **First/Last frame (keyframes):** En Gen-3 Alpha Turbo, definir primer keyframe (imagen), luego agregar hasta dos más (central y final). "Define one image as the first keyframe and then add two more if you want." Las imágenes deben tener contenido similar para transiciones suaves.
- **Referencias con @ (image generation):** Subir hasta 3 imágenes de referencia, nombrarlas (ej: "Lion", "JaguarPattern", "Vulcan"), y en el prompt usar "@Nombre" para referenciarlas: "Selecting the Lion as the main subject. We can describe its skin by adding @JaguarPattern as skin and define the environment by using the Vulcan reference."
- **Camera Control (Gen-3 Alpha Turbo):** Activar "Camera Control" para añadir efectos como panning o tilting. "These camera settings apply to the entire video, not just a single keyframe."
- **Act Two (transferencia de gestos):** En sesión de video, activar "Act Two". Subir video de referencia (grabación propia o archivo) para capturar gestos de cara, manos y cuerpo completo. Subir personaje (imagen o video). Configurar aspect ratio, expressiveness, y si transferir gestos. El video de salida dura lo mismo que el video de referencia.
- **Lip Sync:** En "Generative Audio" > "Lip Sync Video". Importar video del personaje (funciona principalmente con rostros humanos). Subir audio o escribir texto. Elegir voz con el botón de micrófono. Generar.
- **Sketch tool:** Subir imagen de referencia, nombrarla, hacer clic en botón de pincel. Dibujar formas simples o pintar directamente. Usar CTRL/CMD+Z para deshacer. "Export Sketch" para usar la referencia con un prompt. También se puede dibujar una flecha con color llamativo (ej: rosa) y añadir etiqueta para ediciones específicas (ej: "pull down a branch").
- **Expand feature:** Cambiar aspect ratio de cualquier video. Seleccionar video, "Actions" > "Expand Video". Ejemplo: convertir de portrait a landscape.
- **Extend button (Gen-3 Alpha Turbo):** Añadir 8 segundos más ingresando un nuevo prompt.
- **Imagen a 4K:** Usar "Upscale Image" desde la lista de herramientas para subir resolución hasta HD, 2K o 4K.
- **Estilos de imagen (sin referencia):** Vivid, High Contrast, etc. Resolución: 720p o 1080p. Número de variaciones configurable.

## Reglas para el erudito
- Usa Gen-4 Turbo cuando necesites animar imágenes simples o clips de movimiento sin mucha complejidad.
- Usa Gen-4 cuando requieras mejor consistencia de personajes y fuerte alineación con imágenes de referencia (solo plan pago).
- Usa Gen-3 Alpha Turbo para ahorrar créditos y cuando necesites keyframes o Camera Control.
- Usa Gen-3 Alpha cuando quieras generar video solo con texto sin imagen de referencia (mayor precisión, plan pago).
- En prompts, sé directo, claro, sin bucles ni frases negativas; proporciona detalles específicos y directos.
- Para consistencia de personaje en imágenes, usa el sistema de @referencias con nombres exactos.
- Cuando uses keyframes, asegúrate de que tengan contenido similar para evitar saltos bruscos al último keyframe.
- En Act Two, el video de salida dura exactamente lo mismo que el video de referencia subido.
- Para editar video existente con Aleph, usa instrucciones simples como Add, Remove, Change, Replace.
- Los videos generados siempre serán 720p incluso si usas imagen de referencia en 4K.

## Errores comunes / limitaciones que menciona
- Gen-3 es un modelo más simple; prompts complejos pueden no funcionar como se espera (ejemplo: "This complex prompt didn't work as expected because Gen-3 is a simpler model, so we should switch to Gen-4").
- La generación puede saltar al último keyframe demasiado rápido si este se ve muy diferente de los otros keyframes.
- Runway no ofrece herramientas para aumentar la tasa de frames de video; se mantiene fija en 24 fps.
- Act One (transferencia solo facial) se depreciará en el futuro; usar Act Two para gestos completos.
- Lip Sync funciona principalmente en rostros humanos, no en personajes no humanos.
- El plan gratuito comienza con 125 créditos; cada generación consume créditos según modelo y tipo (imagen/video).