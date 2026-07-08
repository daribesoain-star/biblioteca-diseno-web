# How to Frames: Mastering Start and End Frames in Google Flow (2026)
**Fuente:** nextmindrevolution | https://youtu.be/Qg0VG_qqxww

## Qué enseña (2-3 líneas)
Enseña a usar el tool de frames en Google Flow para controlar videos con un frame inicial y un frame final.  
La idea central es que la calidad y consistencia de esos frames determinan el resultado: el prompt solo describe lo que ocurre entre ambos, no corrige imágenes malas.

## Lecciones accionables
- Empieza generando buenos frames: “Crappy frames equal crappy videos”. Si la imagen inicial o final tiene mala calidad, mala composición o una idea débil, el video también fallará.
- Para crear frames base, usa `Nano Banana Pro 16:9` con `one single generation`. También menciona que `Nano Banana 2` sirve.
- Prompt usado para el primer frame: “full body shot of a young woman just walking on a trail. We have soft natural light and subtle shadows and then we finish with a natural texture candid shot.”
- Para crear el end frame desde el start frame hay dos métodos:
  - usar la imagen como `ingredient`;
  - abrir la imagen y usar `edit`.
- El autor prefiere `edit` sobre `ingredients`, aunque ambos funcionan.
- Prompt usado para cambiar la pose de la mujer: “medium close shot. The subject is holding both hands up towards the viewer. Her expression is joyful, smiling, looking directly at the lens.”
- Antes de generar video, guarda el frame con `save to project` y selecciona la imagen correcta antes de salir.
- En Flow: selecciona `video`, luego `frames`, formato `16:9`, `one single output`.
- Modelos mencionados: `fast`, `light`, `quality`. El ejemplo usa `light`; indica que `quality` suele dar mejores resultados que la versión barata de Veo.
- Puedes arrastrar y soltar imágenes al slot de `starting frame` y `ending frame`, o seleccionarlas desde el menú.
- Usa el icono de swap para intercambiar start frame y end frame; sirve para invertir el movimiento, por ejemplo pasar de zoom out a zoom in.
- Prompt para la caminata en bosque: “a woman is walking in the forest. The camera follows her with this low cinematic movement as she walks towards the camera.”
- El prompt debe describir lo que ocurre entre los frames, aunque parezca obvio; refuerza al modelo.
- El fondo y el sujeto deben coincidir entre start y end frame. Si el fondo o sujeto cambia demasiado, aparecen transformaciones raras.
- Mantén la acción concisa: si pides que el sujeto salte, ría, gire, aplauda y diga una línea en un clip corto, el modelo puede fallar.
- Si empiezas con un `full body shot`, conviene terminar cerca de un `full body shot`. Cambiar mucho el tipo de plano aumenta inconsistencias.
- Para zooms, crea una imagen de zoom in y otra de zoom out. El zoom es uno de los movimientos más seguros con frames.
- Para evitar un zoom plano y sin vida, cambia ligeramente la pose, iluminación, elementos del fondo, viento, pelo o ropa entre frames.
- Prompt de zoom out: “A man standing on the peak of a mountain and the camera zooms out as he opens his arms.”
- Prompt de zoom in: “the camera zooms in as he closes his arms.”
- Para movimientos de cámara, sé específico. Keywords mencionadas: `dolly`, `pull`, `arc`, `crane`, `fast`.
- Prompt de cámara rápida: “The camera dollies out fast from the subject to reveal the mountain.”
- Evita pedir una escena final distinta al end frame, porque el modelo está forzado a terminar en esa imagen.
- Ejemplo problemático: “a smooth sweeping drone shot that pulls away into the clouds.” El modelo intenta ir a las nubes, pero luego debe volver al end frame, creando una transición rara.
- Para push in a los ojos, usa: “The camera performs a fast dolly push in.”
- Refuerzo del push in: “fast dolly push in towards the eyes of the woman.”
- Si quieres que el sujeto y el fondo no cambien, dilo explícitamente: “the subject is completely static, the background stays consistent while the camera pushes in.”
- Si no quieres efectos, indícalo: `no VFX`, mantener el fondo consistente y no añadir elementos.
- Para shots estáticos, usa un establishing shot como start frame y el evento final como end frame.
- Ejemplo de sofá: start frame = sofá vacío; end frame = misma escena con mujer durmiendo en el sofá.
- Prompt del sofá: “A woman enters the room and smoothly lies down on the green couch. Her weight sinking into the cushions naturally.”
- Si eliminas el end frame, el modelo rellena los huecos solo, pero pierdes control sobre quién aparece, dónde termina y qué acción exacta ejecuta.
- Ejemplo de escape de auto: start frame = escape; end frame = escape con chispas/fuego. Prompt: “Static camera, close-up of a car exhaust.”
- Puedes usar solo partes útiles del clip generado; no hace falta usar el clip completo.
- Para movimientos experimentales sin end frame, puedes pedir algo más dinámico, pero costará más créditos.
- Prompt experimental: “The camera performs a full 360° orbit around the subject, finishing with her flashing a big smile and a cool energetic pose.”
- La técnica aplica más allá de Google Flow: frames sirven para 2D animations, looping, time lapses y otros tipos de movimiento.

## Reglas para agentes
- Usa start frame y end frame cuando necesites el máximo control sobre el inicio y cierre del video.
- Usa imágenes consistentes de sujeto, fondo, iluminación y tipo de plano cuando quieras movimiento natural.
- Usa `edit` o `ingredients` para derivar el end frame desde el start frame; prefiere `edit` si buscas consistencia.
- Usa prompts breves que describan solo la acción entre frames.
- Usa keywords de cámara como `dolly`, `pull`, `arc`, `crane` y `fast` cuando el movimiento de cámara sea importante.
- Usa `no VFX` y “background stays consistent” cuando no quieras que el modelo invente efectos o cambios visuales.
- Usa el botón de swap para probar el movimiento inverso entre dos frames.
- Nunca esperes que el prompt arregle frames malos.
- Nunca uses frames muy diferentes si necesitas continuidad realista.
- Nunca pidas muchas acciones en un solo clip corto.
- Nunca promptes una escena final incompatible con el end frame, salvo que busques una transición experimental.
- Repite la generación cuando el prompt y los frames estén bien pero el resultado salga mal; a veces es solo una mala tirada del modelo.

## Errores comunes que evita o menciona
- Crear frames pobres y esperar que el video los arregle.
- Cambiar demasiado el fondo, sujeto o plano entre start y end frame.
- Pedir demasiadas acciones para una duración limitada.
- Usar el mismo sujeto totalmente estático en ambos frames y obtener un zoom plano.
- No especificar el movimiento de cámara y recibir un movimiento lento por defecto.
- Pedir una trayectoria que no puede terminar naturalmente en el end frame.
- No decir `no VFX` cuando se quiere una escena limpia.
- Quitar el end frame y perder control sobre la pose, posición o identidad del sujeto.
- Asumir que una generación mala significa que el prompt o las imágenes están mal; a veces solo hay que regenerar.