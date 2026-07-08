# Using the NEW Google FLOW to Create Water Suspense Videos
**Fuente:** nextmindrevolution | https://youtu.be/cKMSZXLgQ-o
## Qué enseña (2-3 líneas)
Enseña a crear videos de suspenso bajo el agua desde cero usando Google Flow, Nano Banana 2 y VO3.1.  
El flujo combina referencias de personaje, habitación, composición submarina, variaciones de ángulo y generación de video con prompts consistentes.

## Lecciones accionables
- Usa Google Flow como entorno principal; también menciona que se podría usar otra plataforma como Flow AI.
- Crea primero los ingredientes base: un sujeto de cuerpo completo y una habitación amplia.
- Prompt inicial para el sujeto: `Full body shot of a young aesthetic man on a plain green background.`
- Genera varias opciones, marca como favorita la mejor y elimina las que no uses para mantener el proyecto limpio.
- Renombra los archivos en Flow porque en esta versión es “siempre una buena idea”: ejemplo `Mark` y `Mark FS` para “full shot”.
- Entra al modo edición de la imagen del sujeto y usa la imagen como referencia para generar variantes del mismo personaje.
- Prompt para variante de rostro: `close-up shot`
- Genera también un perfil del sujeto; no siempre se necesita, pero ayuda a tener más referencias consistentes.
- Prompt para la habitación: `a wide shot of a modern living room.`
- Genera más de una habitación, elige la más útil y renómbrala como `living room`.
- Para crear el primer frame submarino, combina el `living room` y el sujeto usando tags/referencias con `@`.
- Cada vez que el prompt mencione la habitación, referencia `@living room`; cada vez que mencione al hombre, referencia `@Mark FS`.
- En el prompt submarino, primero apunta explícitamente a la habitación y al hombre.
- En la sección de setting, pide mantener el layout “on 1 1” para conservar consistencia.
- En la transformación, describe que la habitación está completamente sumergida en agua profunda.
- Añade detalles visuales concretos: `god rays`, burbujas, patrones de luz, atmósfera y mood.
- Si una generación agrega elementos inexistentes, como una ciudad de fondo que no estaba en la referencia, elimínala.
- Usa `reuse prompt` para sacar más tomas con el mismo prompt y elegir la mejor.
- Renombra el primer frame submarino útil como `under wide shot` o `under WS`.
- Para una toma cercana, puede funcionar el prompt: `change the shot to a close-up shot of the man's face.`
- Si el modelo cambia la pose, el prompt debe especificar que no cambie la pose y que todo permanezca igual que en la referencia.
- Alternativa práctica para close-up: usa la herramienta de crop, recorta la cara y luego aplica `enhance image`.
- Si el enhance añade burbujas o manchas que no estaban en la referencia, puedes aceptar si no rompe la toma o editar con otro prompt para removerlas.
- Prompt para overhead: `Strict 90° overhead shot looking straight down.`
- Continúa el overhead con: `The man in the reference floats horizontally in a submerged modern room living room as in the reference.`
- Para overhead, usa como referencia el frame submarino `under WS`; no necesariamente la habitación original, porque puede cambiar el tono del agua.
- Nano Banana Pro falló en el overhead y tardó demasiado; Nano Banana 2 dio una mejor opción.
- Si la posición del sujeto en overhead no coincide, puedes pedir a Nano Banana mover al sujeto más cerca de la parte inferior del frame.
- Prompt para toma de pierna: `Close-up shot of the man's leg.`
- Añade consistencia de pose con una frase como: `His legs are positioned ... the same way as the man in` y vuelve a referenciar la misma imagen.
- Puede ser necesario usar la misma referencia varias veces en el prompt porque Nano Banana exige mucha especificidad.
- Para close-up de piernas, también sirve crop sobre las piernas + `enhance image`.
- Si Nano Banana Pro devuelve una toma buena pero sin agua, descártala para este caso.
- Para pasar a video, selecciona `video`, usa `frames`, formato `landscape` y `one single generation`.
- Si hay créditos, recomienda usar `VO3.1 quality`; menciona que el modo calidad cuesta `100 credits`.
- Puedes elegir el frame inicial desde `start` o usando `add` para seleccionar la imagen.
- Para video, empieza con el wide shot y elimina el tag si Flow lo inserta automáticamente.
- El prompt de video debe pedir `zero camera drift` para mantener la habitación consistente.
- El prompt de video debe describir cómo se ven los rayos de luz en el piso, cómo se mueve el sujeto, partículas, burbujas y un estilo `realistic cinematic`.
- Si las burbujas se ven raras, reintenta quitando `micro bubbles` y elementos similares del prompt.
- Reusa el mismo prompt de video para close-up, overhead y piernas si comparten la misma ubicación, atmósfera y estilo.
- Para overhead pueden aparecer errores como zapatos faltantes porque el sujeto está demasiado lejos y el modelo no reconoce bien los detalles.
- Usa el wide shot como toma principal y las demás como B-roll breve.
- Para variaciones adicionales, usa `cameras` sobre un video existente como referencia.
- Variaciones mencionadas: `orbit up` y posición de cámara `closer`.
- `closer` no es movimiento de cámara; solo genera una versión con cámara más cerca.
- No generes variaciones de cámara antes de tener el producto final; hazlo solo si sientes que falta algo.
- Al final, haz upscale, descarga los videos y ordénalos en una secuencia que tenga sentido.
- Usa solo las partes más útiles de cada clip; no necesitas usar los clips completos.

## Reglas para agentes
- Usa Google Flow como tablero principal cuando necesites coordinar imágenes, referencias y video en un mismo flujo.
- Usa Nano Banana 2 para generar y editar stills consistentes del personaje y la escena.
- Usa Nano Banana Pro solo como prueba comparativa; descártalo si tarda demasiado, cambia el agua o falla la composición.
- Renombra cada asset inmediatamente después de elegirlo.
- Usa referencias `@` cada vez que el prompt mencione un sujeto, una habitación o un frame ya aprobado.
- Nunca generes el frame submarino sin bloquear explícitamente sujeto y habitación con referencias.
- Mantén el layout de la habitación igual al de la referencia cuando el objetivo sea continuidad.
- Describe transformaciones visuales con detalles concretos: profundidad del agua, god rays, burbujas, patrones de luz, atmósfera y mood.
- Usa `reuse prompt` para crear variaciones antes de cambiar de estrategia.
- Usa crop + `enhance image` cuando necesites close-ups consistentes desde una imagen aprobada.
- Nunca aceptes una generación que agregue elementos grandes inexistentes en la referencia, como una ciudad de fondo.
- Para tomas overhead, usa el frame submarino como referencia principal si la habitación original altera el tono del agua.
- Especifica que la pose debe mantenerse igual cuando cambies de ángulo o encuadre.
- En video, usa `frames`, `landscape` y una imagen inicial aprobada.
- Usa `zero camera drift` en prompts de video cuando la escena deba permanecer estable.
- Mantén el mismo prompt de video entre tomas si la ubicación, atmósfera y estilo no cambian.
- Usa la toma wide como plano principal y las tomas close-up, overhead y piernas como B-roll corto.
- Usa variaciones de cámara como `orbit up` o `closer` solo después de validar que la secuencia necesita más dinamismo.
- Nunca gastes créditos en variaciones antes de probar la secuencia base.

## Errores comunes que evita o menciona
- No renombrar archivos y perder claridad dentro de Google Flow.
- Usar pocas referencias y obtener personajes, poses o habitaciones inconsistentes.
- Pedir un close-up demasiado simple y permitir que el modelo cambie la pose.
- Usar la habitación original como referencia en una toma submarina y cambiar accidentalmente el tono del agua.
- Aceptar generaciones que agregan elementos externos inexistentes, como una ciudad en el fondo.
- Confiar en Nano Banana Pro aunque falle, tarde demasiado o quite el agua.
- Generar overheads demasiado lejanos donde el modelo pierde detalles como los zapatos.
- Usar demasiadas burbujas o microburbujas y producir efectos visuales raros.
- Usar clips completos aunque solo una parte sea buena.
- Gastar créditos en movimientos o posiciones de cámara antes de tener una base funcional.