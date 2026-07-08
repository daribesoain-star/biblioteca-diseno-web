# FAST AI Storyboarding: Generate 9-Frame Cohesive Grids in Gemini
**Fuente:** nextmindrevolution | https://youtu.be/g1PqsY6x-UQ

## Qué enseña (2-3 líneas)
Enseña un flujo rápido para crear un storyboard cohesivo de 9 frames en Gemini usando una imagen de referencia como ancla visual.  
Luego muestra cómo extraer cada celda en alta resolución con Gemini o Nano Banana/Google Flow y convertir esos frames en video con herramientas que acepten imagen inicial.

## Lecciones accionables
- En Gemini, entra a **Tools > Create image**.
- Arrastra y suelta una imagen de referencia de alta calidad: esa imagen funciona como **anchor image** o sujeto base.
- La imagen inicial debe mostrar claramente **rostro, ropa y detalles visuales del sujeto**; mientras más información visual haya, mejor será la consistencia del grid.
- Usa un prompt principal “programático” que le indique a Gemini:
  - basar todo en la imagen adjunta;
  - seguir la historia personalizada;
  - respetar el grid de 9 frames;
  - usar un **creative mix**;
  - ser creativo con los tipos de planos;
  - seguir una historia de **four-beat story**;
  - mantener consistencia y realismo;
  - entregar especificaciones del grid;
  - generar también un **text prompt para cada frame**.
- Activa **thinking mode** en Gemini cuando sea posible: funciona mejor que fast mode, porque fast mode “sometimes forgets things”.
- Mantén la historia simple y estructurada en 4 beats:
  - **Introduction:** primer frame, presenta al sujeto.
  - **Incident:** ocurre el problema.
  - **Climax:** el sujeto toma una acción para resolverlo.
  - **Resolution:** se cierra la situación.
- Ejemplo de historia usada en el video: “A man is on a subway going to the school, then the subway breaks and stops. Therefore, he has to walk.”
- El ejemplo tiene un fallo deliberado: le falta la **resolution**, por eso Gemini no necesariamente termina con el personaje llegando a la escuela.
- Después de generar el grid, Gemini devuelve:
  - el grid visual de 9 frames;
  - un prompt textual o descripción para cada frame.
- Para llevar el grid a video necesitas extraer cada frame por separado en alta resolución.
- Prompt verbatim para extraer una celda: `extract from the attached image the cell number two as a full resolution 16:9 image, maintain details and consistency.`
- No se puede extraer todo el grid con un solo prompt: hay que pedir cada celda **one by one**.
- Puedes extraer celdas desde Gemini o desde **Nano Banana**.
- En **Google Flow**:
  - crea un proyecto nuevo;
  - sube el grid;
  - arrástralo como **ingredient**;
  - selecciona **Nano Banana Pro** o **Nano Banana 2**;
  - pega el mismo prompt de extracción;
  - repite el proceso para cada celda.
- El autor recomienda Flow porque la extracción fue más rápida y, con cuenta Pro o Ultra, ofrece límites más altos o “no limits”.
- Para crear video:
  - usa los prompts de escena generados por Gemini como punto de partida;
  - entra a **Google Flow > Video > Frames**;
  - configura **16:9**;
  - usa **Veo 3.1 Fast**;
  - pega el prompt de movimiento/escena;
  - arrastra el frame como **starting frame**.
- También puedes usar herramientas que soporten frames, como **Flow**, **Higgsfield** o **Freepik**.
- Los prompts generados por Gemini para video no son perfectos: conviene editarlos, hacerlos más cinematográficos y añadir estilo propio.
- Si un frame no funciona, puedes pedirle a Gemini que lo cambie o crear una versión alternativa en Flow en lugar de extraer esa celda.

## Reglas para agentes
- Usa una imagen de referencia como ancla cuando necesites consistencia de sujeto, rostro, ropa y estilo en un storyboard.
- Usa **Gemini Create image** cuando necesites generar rápidamente un grid de storyboard a partir de una historia simple.
- Activa **thinking mode** cuando la coherencia entre frames sea importante.
- Mantén la historia en estructura de **four-beat story**: introducción, incidente, clímax y resolución.
- Incluye siempre una resolución explícita en la historia si quieres que el último frame cierre la secuencia.
- Pide a Gemini tanto el grid visual como un prompt textual por cada frame.
- Extrae cada celda individualmente con un prompt específico; nunca intentes extraer todas las celdas del grid en una sola generación.
- Usa el prompt `extract from the attached image the cell number two as a full resolution 16:9 image, maintain details and consistency.` cambiando el número de celda según corresponda.
- Usa **Google Flow + Nano Banana Pro/Nano Banana 2** cuando necesites extraer frames con mayor velocidad o menos límites.
- Usa herramientas con soporte de **frames / starting frame** para convertir cada imagen en video.
- Trata los prompts generados automáticamente como borradores; revísalos y mejóralos antes de producir el video final.
- Nunca uses una imagen de referencia pobre, borrosa o sin detalles claros si necesitas consistencia visual.
- Nunca escribas una historia demasiado larga o compleja si el objetivo es un grid cohesivo.

## Errores comunes que evita o menciona
- Usar una imagen inicial de mala calidad: produce resultados pobres.
- No mostrar claramente rostro y vestuario del sujeto en la referencia.
- Escribir una historia sin resolución.
- Pedir una historia demasiado extensa o compleja: el grid termina desarticulado.
- Confiar demasiado en fast mode: puede olvidar instrucciones.
- Esperar que Gemini reemplace el trabajo de dirección visual: solo entrega un punto de partida.
- Usar sin editar los prompts de video generados automáticamente.
- Intentar extraer todas las celdas del grid en una sola petición.
- Asumir que todos los frames saldrán perfectos: algunos deben regenerarse, corregirse o reemplazarse.