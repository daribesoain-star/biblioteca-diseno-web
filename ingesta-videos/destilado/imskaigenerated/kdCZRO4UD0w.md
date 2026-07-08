# I Used Claude Skills To Prompt Seedance 2.0 (it’s insane)
**Fuente:** imskaigenerated | https://youtu.be/kdCZRO4UD0w
## Qué enseña (2-3 líneas)
Enseña a usar Claude Skills como archivos de instrucciones especializados para generar prompts de Seedance 2.0 según el tipo de video: cine, animación, anuncios de producto y diálogos.  
La idea central es que cada tipo de escena requiere lenguaje de cámara, ritmo, física, referencias y restricciones distintas; usar una fórmula genérica produce resultados promedio.

## Lecciones accionables
- Crea un skill por tipo de escena. El video usa cuatro: `cinematic film prompt generator`, skill de animación, skill de product ads y skill de dialogue scenes.
- Para usar un skill en Claude: abre una nueva página, haz clic en `add files`, luego `skills`, selecciona el skill correspondiente y escribe un brief corto.
- Para generar en Higgs Field AI: entra a la pantalla principal, ve arriba a la izquierda a `video`, elige `C Dance 2.0` / `Seedance 2.0`, configura `quality: 1080p`, `duration: 15 seconds`, `aspect ratio: 16 by 9` y pulsa `generate`.
- Skill cinematográfico: debe preguntar antes de generar: `genre`, `tone`, `how many shots`, `camera energy` y ajustar automáticamente la longitud del prompt según la duración del video.
- Prompt base usado para cine: `create a 15-second shot of a medieval war between two armies.`
- Respuestas usadas para ese prompt: `dark fantasy`, `brutal and chaotic`, `three shots`, `mixed camera energy`.
- Estructura generada para la escena medieval: shot 1 con `wide crane shot` bajando sobre dos ejércitos chocando al amanecer; shot 2 con `shaky close-up` siguiendo a un guerrero en medio de la pelea; shot 3 con cámara lenta hacia un soldado caído, bandera cayendo en slow motion y `focus shifting` del soldado a la batalla detrás.
- Segundo test cinematográfico con referencia de personaje: sube un `character reference sheet`, carga el skill y usa el concepto: `a gritty, ultra-realistic one-take classroom fight where a calm, emotionless student takes down multiple opponents with raw, chaotic intensity.`
- Parámetros del segundo test cinematográfico: `stylist martial arts`, referencia `The Raid`, tono `cold and detached`, tres shots y `handheld one-take` siguiendo al personaje durante toda la secuencia.
- Skill de animación: prioriza `style consistency`, física simple y efectos como `particles`, `blur`, lluvia, salpicaduras e impactos; no debe usar estructura cinematográfica realista como base.
- Prompt usado para animación: `a cinematic high school fight in the rain, two students clashing as water splashes with every hit.`
- Preguntas del skill de animación: `Which animation style?`, `Who are the two characters?`, `Physics level for the fight?`, `Where exactly is it happening?`
- Respuestas usadas: `Shonen Kinetic`, referencias `Tokyo Revengers` y `Wind Breaker`, `stylized grounded physics`, `two delinquent students`, `a concrete alley behind the school`.
- El prompt de animación debe bloquear primero el estilo visual: `bold outlines`, `strong shadows`, `gray rainy look`, luego construir shots con detalles como `water splashing from footsteps`, `rain falling` y `small flashes when fists connect`.
- Segundo test de animación: `A peaceful Ghibli style farm scene, soft morning light, a woman picking tomatoes.`
- Parámetros/keywords del test Ghibli: `watercolor backgrounds`, `gentle line work`, `12 frames per second`, `2-second character animation`.
- Skill de product ads: exige `clean hero framing`, `commercial lighting` y producto al centro en cada shot.
- Brief de producto usado: `Create a realistic ice cream brand advertisement with people happily eating the product.`
- Preguntas del skill de producto: `hero shot angle`, `background setting`, `pacing`, `aspect ratio`.
- Respuestas usadas para anuncio de helado: `3/4 turntable angle`, `sunlit rooftop lifestyle setting`, `mid-paced commercial cuts`, `16 by 9 for YouTube`.
- El skill debe abrir con una descripción completa del producto desde la imagen de referencia: en el ejemplo define el `Coolhaus pint`, su etiqueta, colores y tamaño antes de construir shots.
- Estructura del anuncio de helado: shot 1 con el pint en el centro en una azotea, luz golpeando el envase y gotas de agua en la superficie; shot 2 con cuchara sacando helado y persona sonriendo suavemente en segundo plano; shot 3 como plano final limpio con espacio para agregar logo.
- Segundo product ad: sube referencia del producto y usa: `Create a realistic UGC ad for my product.`
- Parámetros UGC: `eye level`, `held to camera`, `classic UGC angle`, `sunlit bedroom by a window`, `mid-paced creator rhythm`, `9 by 16 vertical for TikTok and Reels`.
- El UGC debe incluir diálogo con lip sync en cada shot, creadora mirando a cámara, botella junto al rostro, aplicación del serum y close-up final listo para CTA.
- Diálogo UGC mostrado: `Okay, so I've been using this every morning for 2 weeks and my skin has literally never looked this glowy. It's the Glow Recipe Pineapple C. Let me show you. Two drops, that's all you need, and it just melts right into your skin. Smells like pineapple. Obsessed. 3 days and you'll see it. Link's down there.`
- Skill de diálogos: debe incluir `lip sync cues`, dirección emocional, estructura de shots y detalles de audio; sin eso aparecen delivery robótico, lip sync desfasado o escenas poco naturales.
- Prompt de diálogo usado: `Create a cinematic police interrogation scene. The officer asks, "How did you create this Claude skill?" The suspect looks at the camera and says, "They don't know this yet." Then turns back and says, "I'm not telling you." The officer responds with, "Everyone talks eventually."`
- Preguntas del skill de diálogo: `emotional tone`, `shot framing`, cómo debe caer el `fourth wall break` y `language`.
- Respuestas usadas: `tense and short`, `simple over-the-shoulder shots`, `a sharp pause when the moment breaks`, `English`.
- Estructura de interrogatorio: shot 1 con `fixed over-the-shoulder shot` desde detrás del oficial y sospechoso ligeramente desenfocado; shot 2 con acercamiento lento a close-up, fade, pausa, sospechoso mirando a cámara y diciendo la línea casi en silencio con sonido grave debajo; shot 3 vuelve a la normalidad con reverse over-the-shoulder para el intercambio final.
- Detalles de sonido que el prompt debe incluir: `background room noise`, `leather creaks`, `handcuff sounds`, `low hum in the room`.
- Segundo diálogo: `a person sitting at the same desk, first exhausted and failing, then calm and confident, ending with a direct line to camera.`
- Parámetros del segundo diálogo: `contrast-driven emotional tone`, `medium close-up framing`, `no fourth wall break until the very last shot`, `English`.
- Para crear un skill: en Claude haz clic en `add files`, luego `skills`, luego `skill creator`, pega el skill prompt, responde las preguntas de setup y genera el skill.
- El skill prompt cinematográfico debe decirle a Claude que siempre pregunte por `genre`, `tone`, `shot count`, `camera energy` y `video duration` antes de generar.
- La salida del skill cinematográfico debe ser un prompt estructurado para Seedance con `subject`, `action`, `environment`, `camera`, `style` y `constraints` separados por shot y con `timestamps`.

## Reglas para agentes
- Usa un skill diferente para cada tipo de video: cine, animación, producto o diálogo.
- Nunca uses una fórmula única para escenas cinematográficas, animadas, anuncios y diálogos.
- Pregunta siempre por género, tono, cantidad de shots, energía de cámara y duración antes de generar una escena cinematográfica.
- Usa lenguaje de cámara cinematográfico cuando el objetivo sea cine: `dolly moves`, `crane shots`, `rack focus`, `shaky close-up`, `handheld`, `over-the-shoulder`.
- Usa estilo, física y efectos visuales como primer bloque del prompt cuando el objetivo sea animación.
- Define referencias exactas de estilo en animación cuando existan, por ejemplo `Tokyo Revengers`, `Wind Breaker` o `Ghibli`.
- Mantén el producto como héroe visual en cada shot de un anuncio.
- Extrae detalles del producto desde la imagen de referencia antes de escribir shots: etiqueta, colores, tamaño, forma y posición.
- Usa formato vertical `9 by 16` para TikTok/Reels y `16 by 9` para YouTube.
- Incluye lip sync, emoción, framing y audio cuando generes diálogos.
- Especifica sonidos ambientales concretos en diálogos: ruido de sala, crujidos, esposas, hum grave o silencios.
- Ajusta la longitud del prompt a la duración del video; para 15 segundos, usa una estructura breve con pocos shots.
- Deja espacio para logo o CTA en el plano final de un anuncio si el objetivo es comercial.

## Errores comunes que evita o menciona
- Usar una sola fórmula genérica de prompt para todos los tipos de video.
- Escribir prompts cinematográficos sin movimientos de cámara ni planificación de shots.
- Tratar una animación como si fuera una escena realista de cine.
- No bloquear el estilo visual al inicio de un prompt animado.
- Hacer anuncios donde las personas o el ambiente compiten con el producto.
- No describir el producto desde la imagen de referencia antes de generar el anuncio.
- Crear diálogos sin cues de lip sync, emoción, pausas, sonido y estructura de cámara.
- Hacer prompts demasiado largos o demasiado cortos para la duración real del video.
- No definir aspect ratio según plataforma.
- Esperar consistencia de personaje sin subir referencia visual.