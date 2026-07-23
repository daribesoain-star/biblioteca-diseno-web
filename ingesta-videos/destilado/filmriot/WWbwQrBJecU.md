# Why Your Edits Take So Long
**Fuente:** filmriot | https://youtu.be/WWbwQrBJecU

## Qué enseña (2-3 líneas)
El video no es una clase de cámara pura: enseña cómo ahorrar tiempo de edición preparando una base repetible de proyecto, color, sonido, assets y automatizaciones.  
Para cinematografía, la lección central es diseñar el rodaje y el encuadre pensando en postproducción: continuidad visual, cortes ocultables con B-roll, zooms digitales creíbles y formatos reutilizables.

## Lecciones accionables
- Para contenido `talk to camera`, `stand-ups`, entrevistas o podcast, graba con cámara, locación, micrófono e iluminación consistentes si quieres reutilizar color, audio y plantillas de postproducción.
- Si el set siempre es el mismo, guarda un `adjustment layer` con el `grade` final aplicado sobre la secuencia de cámara principal. Esto solo funciona si mantienes constantes la iluminación, exposición, balance de blancos, ángulo de cámara y fondo.
- Diseña el timeline por capas visuales: `track 1` para cámara principal / `hosting`, pista superior para `B-roll`, y capas más altas para `graphics`, lower thirds o VFX. Esto permite aplicar ajustes globales y encontrar rápido qué cubre cada corte.
- Usa `B-roll` para esconder cortes de diálogo. No dependas de zooms digitales en cada corte; el B-roll debe cubrir la mayoría de saltos cuando aporte información visual.
- Para simular un nuevo ángulo con un `digital zoom`, no uses escalados mínimos tipo `100%` a `110%`: se perciben como un jump cut raro o incompleto.
- Regla técnica mencionada: para que un cambio de ángulo se sienta real, mueve la cámara al menos `30°`. La misma lógica se aplica al zoom digital: un salto de escala cercano a `100%` a `130%` se siente más correcto que `100%` a `110%`.
- Parámetro útil para prompts o edición: `digital cut-in`, `jump cut`, `on the cut`, `auto zoom`, `scale 100% to 130%`, `new angle`, `talking head`, `B-roll cover`, `subtle handheld look`.
- Si haces zoom digital, colócalo `on the cut`, no como zoom visible, salvo que busques intencionalmente un movimiento de cámara perceptible.
- El zoom/cut-in se aplica sobre un `adjustment layer` usando `Transform`, idealmente encima de la pista principal para poder borrar fácilmente los cut-ins que no funcionen.
- La opción `subtle handheld look` existe como recurso, pero el video la descarta para este caso. Úsala solo si la cámara base ya tiene una estética handheld o documental.
- Para captions en video vertical o recortes sociales, usa `platform safeguard` y define `max width` para que los textos queden dentro de una zona segura compatible con `9:16`.
- No aparecen focales, lentes, apertura, ISO, shutter, ratios de luz ni esquemas de iluminación específicos en la transcripción.
- No aparecen prompts verbatim de video IA en la transcripción.

## Reglas para el director de fotografía IA
- Usa `talking head medium shot` o `stand-up host shot` cuando el contenido dependa de claridad verbal y edición rápida.
- Mantén cámara, fondo, iluminación y color constantes si la escena debe aceptar un `grade` reutilizable sin corrección plano por plano.
- Para simular un segundo ángulo en IA, cambia la cámara al menos `30 degrees` respecto al eje anterior; si el cambio es menor, se verá como salto accidental.
- Para un `digital cut-in`, usa un cambio claro de escala: `scale from 100% to 130%`; evita `100% to 110%` si quieres que parezca una intención de cámara.
- Inserta el `cut-in` exactamente `on the cut`; no animes un zoom visible si la intención es ocultar un corte.
- Usa `B-roll cover` cuando cortes silencios, errores o repeticiones de diálogo; no dejes que todos los cortes dependan de zooms digitales.
- Si pides captions en IA o composición automática, especifica `safe area`, `max caption width` y formato destino como `16:9` o `9:16`.
- Para no alucinar en video IA, separa instrucciones de cámara y post: primero define plano, ángulo, movimiento y luz; luego define `digital zoom`, `jump cut`, captions o graphics como elementos de edición.
- No inventes lentes o focales si el brief no los da; usa descriptores verificables como `medium shot`, `locked-off camera`, `30-degree angle change`, `digital cut-in`, `B-roll`.

## Errores comunes que evita o menciona
- Usar zooms digitales demasiado pequeños, como `100%` a `110%`, que se sienten como jump cuts torpes.
- Cambiar de ángulo menos de `30°`, lo que no se percibe como una nueva cámara sino como un corte extraño.
- Aplicar zooms o cut-ins en todos los cortes aunque el B-roll pueda ocultarlos mejor.
- No mantener consistencia de iluminación, cámara y locación, lo que impide reutilizar color y sonido de forma confiable.
- No organizar pistas de video y audio, haciendo más lento encontrar cámara principal, B-roll, gráficos, música o efectos.
- Colocar captions sin considerar zona segura, ancho máximo o futuros recortes a `9:16`.
- Tratar tareas repetitivas de limpieza como decisiones creativas, quitando tiempo al trabajo visual importante.