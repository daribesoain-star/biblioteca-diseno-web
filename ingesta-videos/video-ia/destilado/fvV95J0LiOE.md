# 30 Tips To Create Mindblowing Videos With Google VEO 3 (Become a Pro)
**Fuente:** Tao Prompts | https://youtu.be/fvV95J0LiOE

## Qué enseña
Este tutorial enseña 30 técnicas prácticas para dominar la generación de video con Google Veo 3, desde vlogs con personajes parlantes hasta escenas de acción cinematográficas. Cubre control de diálogos, acentos, tono de voz, sonidos ambientales, consistencia de personajes, movimientos de cámara y trucos para evitar limitaciones del modelo.

## Técnicas accionables

- **Vlog estilo selfie:** Usa el prompt exacto `self camera angle shot from an extended arm` + descripción del personaje + diálogo entre comillas. Ejemplo: `self camera angle shot from an extended arm. A Yeti with wife holding up a fish. He's in an icy landscape. Dialogue: "Welcome back to Yeti Adventures. Today, we're learning how to go ice fishing."`
- **Vlog con selfie stick:** Prompt: `holding up a vlog cam on a selfie stick. He is talking to the vlog cam.` + diálogo.
- **Ángulo de cámara vlog:** Prompt: `Shot from a vlog camera` para perspectiva gran angular completa.
- **Entrevista "man on the street":** Inicia el prompt con `man on the street interview` + ubicación + descripción de reportero y entrevistado + diálogo específico para cada personaje usando comillas. Ejemplo: `man on the street interview. Inside Gotham City, a young female reporter asked a young man what he thinks about Batman. The young man is unhappy with how many problems Batman causes. Dialogue reporter: "What are your thoughts on Batman?" Dialogue man: "Honestly, he causes more problems than he solves."`
- **Diálogo por personaje:** Atribuye el diálogo exacto a cada personaje en el prompt. Ejemplo: `For the Stormtrooper reporter, tell him to say: "Are the rumors about the war in the Outer Rim true?" And for the male Sith, tell him to say: "The Outer Rim is ripe for conquest. The Empire always expands."`
- **Eliminar subtítulos (workaround):** Usa un editor de video para recortar la parte inferior donde aparecen los subtítulos (zoom out + aumentar tamaño del video). Alternativa: usa AI subtitle remover como V-Make (sube el video, procesa, previsualiza 5 segundos en versión gratuita; divide el video en partes si es necesario).
- **Acentos:** El acento debe ser plausible en el entorno. Ejemplo: un personaje en un monasterio medieval puede tener acento británico. Un brasileño en Nueva York sonará estadounidense; un brasileño en una playa de Río de Janeiro puede cambiar incluso el idioma.
- **Tono de voz:** Usa adverbios como `aggressively shout`, `nervous, stuttering, and unsure of himself`, `whispering`. Funciona mejor sin guion específico, solo describiendo la idea general de lo que habla.
- **Sonidos ambientales:** Agrega en el prompt frases como `sound of waves at the beach`, `sound of a creek running by`, `sounds of wind rustling and cars honking in the background`.
- **Música de fondo:** Especifica el tipo de música e instrumentos. Ejemplo: `suspenseful and thrilling music`, `relaxed piano playing in the background`, `a guzheng playing in the background` (instrumento chino tradicional).
- **Upscaling a 1080p:** En Veo 3, ve al botón de descarga y selecciona "upscaled version". Convierte de 720p a 1080p gratis con suscripción. La calidad es aceptable pero puede tener granulosidad.
- **Inspiración con Flow TV:** Dentro de la interfaz de Veo, ve a "Flow TV" → "show prompt" para ver el prompt exacto usado en videos de ejemplo (son de Veo 2, no Veo 3). Usa la vista de cuadrícula para explorar.
- **Videos verticales:** Toma una imagen vertical, gírala 90° para que sea apaisada. Súbela a "frames to video" en Veo 3. Usa un prompt descriptivo. Veo 3 anima la imagen rotada. Luego rota el video resultante de vuelta a vertical.
- **Consistencia de personaje con texto a video:** Usa una descripción extremadamente detallada del personaje (piel, cabello, ropa, accesorios, armas). Pega la misma descripción exacta en cada nuevo video, cambiando solo la escena. Ejemplo: `A female warrior with pale skin and long white braided hair braided into two thick plates that hang over her shoulders. She wears a dark red cloak with loose white trousers and strap leather gear around her waist. She carries a short straight sword.` Luego agrega: `It is snowing. Close-up shot on her face as she quietly whispers about trying to find her sister again. Dialogue: "I will find my sister. I have to find her again."` Limitación: pequeñas inconsistencias en ropa, estructura facial, posición de trenzas.
- **Consistencia con green screen hack (de Martin Nebolon):** Usa una imagen del personaje con fondo verde. Ve a "frames to video", sube la imagen. Prompt: `instantly jump/cut to on frame one` + descripción de la escena. Ejemplo: `instantly jump/cut to on frame one. She walks next to a huge white direwolf in an icy landscape. It is snowing.` Limitación: calidad inferior, contraste alto, no genera diálogo.
- **Consistencia con "ingredients to video":** Sube múltiples imágenes (personaje, otro personaje, paisaje) en "ingredients to video". Prompt: `The female warrior walks next to the orc on the rocky landscape.` Limitación: solo funciona con Veo 2 (modelo antiguo), calidad baja, sin sonido.
- **Consistencia con image-to-video (mejor método):** Genera imágenes del personaje consistente usando Flux Context AI image generator (ej. en Open Art, con el modelo "flux context max"). Sube la imagen original al generador y pide: `Create an image of this female character in a medieval tavern. Her appearance should stay the same. Cinematic film shot on a Sony camera.` Luego en Veo 3, usa "frames to video" con esa imagen generada. Prompt: `walk forward and raise her sword`.
- **Frame interpolation (first/last frame):** En "frames to video", sube un primer frame (ej. close-up del rostro) y un último frame (ej. bird's eye view). Prompt: `the camera pulls back`. Veo 2 genera el video entre ambos frames. Limitación: solo Veo 2, sin sonido.
- **Lip sync externo:** Usa la web "Design" (herramienta de lip sync). Sube el video generado en Veo 3 y un archivo de audio. La herramienta sincroniza los labios. Limitación: no es ideal, es un workaround.
- **Consistencia de objetos/productos:** Genera imágenes del producto con Flux Context AI. Ejemplo: `Create a side profile photo of a young Canadian man wearing the blue headphones. The gold patterns on the headphones should remain the same. On a street in Montreal. Shot on a Sony camera.` Luego anima la imagen en Veo 3.
- **Escenas de pelea:** Usa `kung fu fight scene` en el prompt. Para personajes específicos, describe su apariencia exacta en el prompt. Las escenas empiezan lentas y se vuelven dinámicas.
- **Fast mode:** Activa "fast text to video" en Veo 3. Cuesta 1/3 del modelo regular. Calidad alta pero movimientos menos dinámicos. Limitación: no genera diálogo.
- **Tipos de plano:** Usa `close-up shot`, `full body shot`, `side profile shot`, `extreme long shot`. Ejemplo: `close-up shot of the character focusing on his face. Dialogue: "We were a proud people, but under Roman rule, our traditions are mocked."`
- **Ángulos de cámara:** `low angle shot` (personaje se ve más grande/poderoso), `high angle shot` (más pequeño/débil), `bird's eye view overhead shot` (vista objetiva del entorno).
- **Estilo fotorrealista vs. videojuego:** Si el personaje se ve como de videojuego, agrega `muted colors, cinematic film` al prompt. Ejemplo: `muted colors, cinematic film. Life under Roman rule is unbearable.` No siempre funciona; si persiste el estilo videojuego, cambia el prompt.
- **Movimientos de cámara:** `tilt up from the female character to reveal an eagle flying in the sky`, `pan from the female character and show an abandoned monastery far in the distance`, `zoom in on her face during the battle`. Puede causar saltos de escena.
- **Combinación de movimientos:** `close-up shot on the character's face, then the camera pulls back to reveal her riding on a horse`, `slow crane shot behind the female character walking up the steps of an ancient castle. Then the camera flies above and slowly tilts down to reveal the entire castle.`
- **Lentes y dispositivos:** `fisheye lens` (gran angular distorsionado), `macro lens` (extreme close-up de sujetos pequeños), `infrared camera`.
- **Primera persona (POV):** `first-person POV shot` + descripción. Ejemplo: `first-person POV shot of a character running through a trench in World War I.`
- **Género cinematográfico:** Agrega `horror movie`, `comedy movie`, `sci-fi movie` al prompt para cambiar iluminación y colores. El género al inicio del prompt tiene más peso.
- **Estilos de animación:** Pon el estilo al inicio del prompt. Ejemplo: `2D anime` + descripción. También: `3D Pixar style`, `cinematic video style`. Veo 3 pondera más las palabras al inicio.
- **Iluminación y paletas de color:** `soft sunlight beaming through the trees`, `harsher moonlight casting down`, `light shining on him from a fire`. Paletas: `cool blue color tones` (frío/deprimente), `warmer colors` (suave/acogedor), `desaturated colors` (gritty, estilo Saving Private Ryan), `monochromatic color schemes` (un solo tono, ej. verde para sensación inquietante), `light pastel color tones` (rosas y azules suaves).
- **Videos en bucle infinito:** En un editor de video (ej. CapCut), duplica el clip. Al segundo clip, aplica "reverse". Coloca los dos clips uno tras otro. Apila más pares para un bucle más largo.
- **Previsualización con image generator:** En "frames to video", haz clic en "add an image" → "generate a photo". Prompt: `Photo of a panther in a jungle. Golden afternoon light and shadows. Green foliage. Shot on a Sony camera.` Elige una de las previsualizaciones. Luego úsala como referencia para el video: `He quietly stalks in the forest.`
- **Extender videos (add to scene):** Usa "add to scene" → "extend the video". Prompt: `The totems lapse onto the ground and break apart.` Limitación: solo funciona con Veo 2, calidad inferior, sin sonido. Debes agregar efectos de sonido manualmente después.

## Reglas para el erudito

- Usa `self camera angle shot from an extended arm` cuando quieras un vlog estilo selfie con personaje parlante.
- Usa `man on the street interview` al inicio del prompt para entrevistas callejeras con dos personajes.
- Usa comillas para el diálogo de cada personaje y atribúyelos explícitamente en el prompt.
- Usa `instantly jump/cut to on frame one` cuando uses green screen hack para consistencia de personaje.
- Usa `muted colors, cinematic film` cuando el personaje se vea como de videojuego y quieras fotorrealismo.
- Pon el estilo o género al INICIO del prompt para que Veo 3 lo pondere más.
- Usa descripciones extremadamente detalladas del personaje (piel, cabello, ropa, accesorios) para consistencia con texto a video.
- Usa Flux Context AI image generator (modelo "flux context max") para crear imágenes consistentes antes de animarlas en Veo 3.
- Usa frame interpolation (first/last frame) cuando quieras controlar el movimiento de cámara entre dos puntos específicos.
- Usa fast mode para ahorrar costos en tomas de alta calidad que no requieran diálogo.
- Usa un editor de video externo (CapCut) para crear bucles infinitos invirtiendo el segundo clip.
- Usa V-Make o similar para eliminar subtítulos cuando el recorte no sea viable.

## Errores comunes / limitaciones que menciona

- Los subtítulos automáticos aparecen frecuentemente y no se eliminan de forma confiable con prompts como `no subtitles` o evitando comillas. La solución de recorte o AI remover es un workaround imperfecto.
- Los acentos solo funcionan si son plausibles en el entorno; de lo contrario, el personaje habla sin acento o cambia de idioma.
- El tono de voz funciona mejor sin un guion específico; con guion detallado, el control tonal se pierde.
- La consistencia de personaje con texto a video tiene pequeñas variaciones (ropa, estructura facial, posición de accesorios) entre videos.
- El green screen hack produce calidad inferior, contraste alto y no permite diálogo.
- "Ingredients to video" y "add to scene" (extender video) solo funcionan con Veo 2, no con Veo 3, resultando en menor calidad y sin sonido.
- Fast mode no genera diálogo.
- Los movimientos de cámara complejos (ej. zoom in durante una pelea) pueden causar saltos de escena no deseados.
- El estilo videojuego persiste a veces incluso con `muted colors, cinematic film`; en ese caso, cambia el prompt por completo.
- El upscaling a 1080p tiene calidad aceptable pero con granulosidad y detalles faciales limitados.
- La lip sync externa (Design) no es una solución ideal comparada con la generación nativa de diálogo.