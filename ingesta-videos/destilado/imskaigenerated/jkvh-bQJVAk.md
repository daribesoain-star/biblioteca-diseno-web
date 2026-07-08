# How Claude + Higgsfield Automate 90% Of My Social Media Content
**Fuente:** imskaigenerated | https://youtu.be/jkvh-bQJVAk
## Qué enseña (2-3 líneas)
Un sistema de 3 pasos para planificar y producir una semana de contenido social usando Claude como estratega y Higgsfield Canvas como pipeline visual.  
Cubre carouseles, talking heads con avatar/lip sync y B-roll cinematográfico, con edición final ligera en CapCut.

## Lecciones accionables
- Crea un **Claude Project** llamado `content machine` para usarlo como memoria persistente de marca: contexto del canal, nicho, tono, audiencia objetivo y objetivos de contenido.
- Pega en las instrucciones un contexto simple de marca. Ejemplo verbatim: `AI tools for creators who aren't engineers. Calm, honest, slightly skeptical voice. We talk like a friend who actually tested the tool, not a guru selling a course.`
- Añade **3 a 5 URLs de canales competidores** del mismo nicho que ya estén generando publicaciones virales. Claude debe estudiar posts con muchas más vistas que el promedio del canal.
- Ejecuta cada lunes un **master prompt** en Claude para generar 7 blueprints semanales. El video menciona que existe, pero no muestra el prompt completo verbatim.
- Pide que cada blueprint incluya: tema, formato, hook, guion palabra por palabra, caption en voz de marca, hashtags y prompt listo para pegar en Higgsfield.
- En Higgsfield Canvas, construye 3 plantillas reutilizables: `carousels`, `talking heads` y `cinematic B-roll`.
- Para carouseles: usa 2 nodos, un `prompt box` conectado a un `image generator`.
- En el generador de imágenes para carouseles: modelo `GPT image two`, aspect ratio `1x1`, resolución `4K`, batch size `1`.
- Usa `GPT image two` cuando haya texto en imagen: carouseles, quote posts e infografías, porque renderiza letras limpias.
- Ejemplo de carousel usado: `five prompts we use every week`, con 7 slides.
- Para generar el resto del carousel: duplica el `prompt box` y el `image generator` 6 veces, reemplaza cada prompt por el contenido del siguiente slide y ejecuta el pipeline.
- Coste citado para un carousel de 7 slides: aproximadamente `84 credits`; tiempo: menos de `15 minutes`.
- Para talking heads: opción estable a largo plazo es crear `Soul ID`, la función de gemelo digital de Higgsfield, subiendo `20 photos` una vez.
- Alternativa usada en la demo: personaje personalizado generado con `Nano Banana Pro`.
- En Canvas para talking heads: sube la imagen del personaje como `asset`, colócala arriba al centro, añade `5 prompt box nodes` debajo y un `video generator node` bajo cada prompt.
- Cada video generator debe recibir 2 inputs: la cara/personaje y el guion del segmento.
- Para talking heads: modelo `C Dance 2.0`, aspect ratio `9 by 16`, resolución `1080p`, batch size `4`.
- Activa siempre `generate audio` en talking heads para que `C Dance 2.0` genere voz, cara, gestos y lip sync en una sola pasada.
- Genera 4 variaciones por segmento porque cada toma cambia lip sync, gestos y tono; elige la mejor como si fuera una grabación real.
- C Dance tiene límite aproximado de `15 seconds` por generación; divide el guion completo en `5 segments`.
- Cada segmento debe durar entre `8 and 13 seconds`: menos suena dramático, más suena apurado.
- Corta los segmentos en pausas naturales del guion.
- Añade al inicio de cada prompt una línea breve de dirección de escena. Ejemplo verbatim: `static shot, no camera movement.`
- Bloquea tipo de voz y estilo de habla en todos los segmentos. Ejemplo verbatim: `a warm European male voice with a classy, measured delivery.`
- Ejemplo de post talking head usado: `the AI tools we canceled last month`.
- Ejemplo de guion hablado mostrado verbatim: `Last month, we tested seven AI tools. Five of them were completely dead weight. Not kind of bad, not needs improvement. I mean, unusable.`
- Para B-roll cinematográfico: no generes video directo desde texto; primero genera una foto fija y luego anímala.
- Pipeline de B-roll: `prompt box` → `Flux 2 Max` → `Kling 3.0`.
- En `Flux 2 Max`: aspect ratio `16x9`, resolución `2K`, batch size `1`.
- En `Kling 3.0`: mode `pro`, duration `8 seconds`, aspect ratio `16x9`, sound `off`.
- Usa B-roll silencioso y agrega música después en edición.
- Ejemplo de post B-roll usado: `the part of AI tutorials nobody actually shows`.
- Si Claude entrega una secuencia multishot, divídela en `8 individual shots`.
- En `Kling 3.0`, usa el campo de motion prompt solo para movimiento, no para repetir la escena.
- Ejemplo de motion prompt verbatim: `hands close the laptop lid in a single slow deliberate motion, then settle on the desk.`
- Para consistencia visual en B-roll, alimenta `Flux 2 Max` con 2 imágenes de referencia por toma: el mismo personaje del talking head y una foto de referencia del workspace.
- Para edición final: en CapCut, coloca los 5 segmentos talking head en orden, añade captions y música.
- Para B-roll: coloca los 8 clips en timeline, ajústalos al ritmo, añade text overlays y música.
- Para publicar: copia desde la salida original de Claude el caption y hashtags del post correspondiente y pégalos en Instagram o TikTok.
- Stack de costos citado: Claude `20 USD/month` + Higgsfield `50 USD/month` = `70 USD/month`; también menciona Higgsfield Canvas desde `39 bucks a month`.

## Reglas para agentes
- Usa un **Claude Project** cuando necesites memoria persistente de voz de marca, nicho, audiencia y objetivos.
- Incluye siempre competidores reales en el contexto cuando la tarea sea idear contenido social.
- Detecta patrones de posts que superan el promedio del canal competidor; no optimices solo por temas genéricos.
- Genera 7 blueprints semanales antes de producir assets.
- Cada blueprint debe tener tema, formato, hook, guion completo, caption, hashtags y prompt visual.
- Usa `GPT image two` cuando la imagen tenga texto visible.
- Configura carouseles en `1x1`, `4K`, batch size `1`.
- Usa `C Dance 2.0` para talking heads verticales con voz, gestos y lip sync.
- Activa `generate audio` en todos los talking heads.
- Nunca pegues un guion largo completo en una sola generación de `C Dance 2.0`; divídelo en segmentos de 8 a 13 segundos.
- Mantén constante la voz y el estilo de delivery entre segmentos.
- Genera varias tomas por segmento y selecciona la mejor.
- Usa `Flux 2 Max` antes de `Kling 3.0` cuando necesites B-roll cinematográfico consistente.
- En `Kling 3.0`, escribe solo la dirección de movimiento si ya recibe una imagen fija de referencia.
- Usa imágenes de referencia del personaje y del workspace cuando una secuencia tenga varias tomas.
- Apaga el sonido en B-roll si la música se agregará después.
- Reutiliza carpetas de B-roll ya generado en futuros videos.
- Termina talking heads y B-roll en CapCut cuando el sistema aún no automatice bien el montaje final.

## Errores comunes que evita o menciona
- Usar chats normales de Claude y perder memoria de marca al cerrar la pestaña.
- Crear contenido sin estudiar qué ya está funcionando en canales competidores.
- Pedir a un modelo de video que imagine B-roll desde cero, produciendo resultados inconsistentes.
- Usar modelos que no renderizan bien texto para carouseles o infografías.
- Pegar guiones demasiado largos en `C Dance 2.0`, causando pacing apurado o cortes por límite de duración.
- Hacer segmentos demasiado cortos, lo que vuelve la voz artificialmente dramática.
- No fijar voz, delivery y dirección de escena entre segmentos de talking head.
- Generar B-roll multishot sin referencias consistentes, provocando caras, pelo y mandíbula distintos en cada toma.
- Repetir la descripción completa de escena en el motion prompt de Kling cuando ya existe una imagen de referencia.
- Intentar automatizar el 100% del flujo: el video reconoce que el montaje final en CapCut todavía requiere unos minutos manuales.