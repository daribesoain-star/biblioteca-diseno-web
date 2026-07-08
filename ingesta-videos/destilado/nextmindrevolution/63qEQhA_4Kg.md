# How I Lip Sync & Multi-Character Conversations Tutorial
**Fuente:** nextmindrevolution | https://youtu.be/63qEQhA_4Kg
## Qué enseña (2-3 líneas)
Enseña a usar **lip sync en Kling/Clink** para hacer hablar a personajes en video con texto a voz o audio propio. Explica cuándo funciona bien, cómo ajustar voz/emoción/tiempo, y cómo crear conversaciones de varios personajes encadenando generaciones.

## Lecciones accionables
- Para agregar lip sync: selecciona el video > clic en **lip sync** en la barra inferior > espera a que procese y detecte los personajes.
- El lip sync solo funciona bien si hay una toma clara de la cara y especialmente de la boca. Si la cara está borrosa, tapada o fuera de cámara, el modelo puede advertirlo y el resultado fallará.
- En el panel de lip sync, Kling identifica automáticamente a los personajes; si hay varios, debes seleccionar cuál hablará.
- Para texto a voz, escribe la línea en el prompt box. Ejemplo usado: `Hm. Did I leave the stove on?`
- Alternativa: usa **upload local dubbing** para subir un audio propio si quieres controlar mejor actuación, emoción y naturalidad.
- Opciones configurables del TTS: **voice**, **speech rate** y **emotion**.
- Voces mencionadas/filtros: `David`, `male`, `female`, `boy`, `girl`, `young man`.
- Emociones mencionadas: `neutral`, `disgusted`, `happy`, `sad`, `fearful`, `angry`.
- Antes de generar, reproduce muestras de voz para validar pronunciación, velocidad y emoción.
- La duración mínima del habla debe ser de más de **2 segundos**; si dura menos, no deja generar lip sync.
- Después de configurar voz, velocidad y emoción, pulsa **add speech** para colocar el audio en la timeline.
- Ajusta manualmente el clip de audio en la timeline para decidir exactamente cuándo habla el personaje.
- Puedes recortar inicio/final del audio y subir o bajar volumen antes de generar.
- Cuando esté alineado, pulsa **generate**.
- Si no te gusta el resultado, usa **redub**: reabre el panel con la voz, rate, emoción y texto previos.
- En primerísimos planos hiperrealistas, el lip sync puede verse falso; en planos más abiertos el defecto es menos evidente.
- Funciona mejor en tomas tipo estudio, podcast o influencer, con iluminación limpia y sin sombras complicadas.
- En cartoons/anime el lip sync se ve mejor que en videos hiperrealistas.
- Si el personaje gira o se pierde la boca, usa solo el tramo indicado como **optimal sync segment**.
- Ejemplo largo usado para probar pérdida de rostro: `Life is like a box of chocolates. You never know what you're going to get.`
- Para varios personajes: no puedes hacer hablar a dos personas al mismo tiempo en una sola generación de lip sync.
- En una escena con dos personajes, crea primero el lip sync del personaje seleccionado, por ejemplo la mujer con: `You called my mom a witch, Jason.`
- Luego descarga y vuelve a subir el resultado, o limpia el lip sync/profile, recarga la página, abre el video generado desde **history**, confirma, activa **sound from video**, selecciona el otro personaje y genera su línea.
- Línea usada para el hombre: `It was not my fault at all.`
- Para conservar la voz ya generada del primer personaje, deja activado **sound from video** antes de generar el segundo lip sync.
- En el segundo paso, genera el lip sync del otro personaje encima del video que ya contiene el audio/lip sync previo.
- Alternativa de mayor calidad: usar el modelo **2.6** con **native audio** desde **AI VO video generator** > **image to video**.
- En **image to video**, usa un frame como **starting frame**, activa **native audio** y escribe un prompt que identifique al sujeto y su diálogo.
- Prompt descrito para native audio: `tall guy walking through a forest. Clear male voice says, "Hm, did I leave the stove on?"`
- Costos mencionados: lip sync cuesta **5 credits**; generación con native audio cuesta **50 credits**.
- Native audio no es lip sync: genera un video nuevo completo y por eso puede verse más realista.

## Reglas para agentes
- Usa **lip sync** cuando ya tienes un video y necesitas añadir habla a un personaje visible.
- Usa **upload local dubbing** cuando la actuación emocional del TTS suene robótica o no coincida con la intención.
- Usa líneas de más de **2 segundos**; nunca intentes generar una línea más corta.
- Usa clips con boca visible, nítida y sin obstrucciones; nunca dependas de lip sync si la cara está borrosa, tapada o fuera de cuadro.
- Usa **optimal sync segment** como límite de seguridad cuando el personaje gira o desaparece parcialmente.
- Usa planos medios o abiertos si quieres disimular imperfecciones del lip sync hiperrealista.
- Usa **redub** para iterar una toma fallida sin reconstruir voz, texto, rate y emoción desde cero.
- Para dos personajes, genera un personaje por vez; nunca esperes que un solo **generate** sincronice ambos.
- Para conversaciones, conserva el audio previo activando **sound from video** antes de generar el siguiente personaje.
- Si necesitas máxima naturalidad, usa **AI VO video generator** con **image to video**, modelo **2.6** y **native audio**, no lip sync.
- En prompts con native audio, identifica explícitamente al sujeto antes del diálogo, por ejemplo `tall guy`, para que el modelo sepa quién habla.

## Errores comunes que evita o menciona
- Intentar lip sync con una boca tapada, borrosa o fuera de cámara.
- Generar diálogo cuando el personaje gira y deja de mostrar la cara.
- Usar líneas de menos de 2 segundos.
- Confiar demasiado en emociones TTS que pueden sonar robóticas o lifeless.
- Esperar realismo perfecto en primeros planos hiperrealistas.
- Pensar que seleccionar dos personajes en el panel genera lip sync para ambos al mismo tiempo.
- Volver a generar el segundo personaje sin activar **sound from video**, perdiendo el audio/lip sync anterior.
- Confundir lip sync con **native audio**: el primero edita una toma existente; el segundo genera un video nuevo.