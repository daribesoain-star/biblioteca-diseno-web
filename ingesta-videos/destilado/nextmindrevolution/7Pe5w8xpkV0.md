# Pro Workflows for AI Interior Design: Gemini & Nano Banana (2026)
**Fuente:** nextmindrevolution | https://youtu.be/7Pe5w8xpkV0
## Qué enseña (2-3 líneas)
Enseña tres flujos para rediseñar interiores con Gemini/Nano Banana usando una foto real del espacio: control creativo total, referencias de estilo y productos reales comprables.  
El foco está en lograr visualizaciones útiles del espacio manteniendo perspectiva, luz y ubicación precisa de objetos.

## Lecciones accionables
- Usa Gemini en modo `thinking` o `pro`; el autor dice que funciona mejor que `fast` para rediseño interior.
- Flujo 1: sube la imagen del cuarto vacío con drag-and-drop y pide a Gemini que diseñe todo el espacio.
- Prompt citado: `Transform this space into a Japanese style`
- Añade instrucciones de estilo y materiales: reemplazar ventanas por pantallas japonesas, mesa de roble, paleta neutral, vibe `minimal, calm, and organic`.
- Si el resultado no sirve, no pulses `done`; usa `redo` para generar otra variación con las mismas instrucciones.
- Gemini conserva generaciones previas y permite alternarlas desde la parte inferior.
- Prompt simple citado: `Redesign the empty room with a soft minimalism aesthetic.`
- Flujo 2: usa una imagen del cuarto vacío y una imagen de referencia de estilo.
- Nombra o identifica las imágenes claramente como `empty room` y `ref room` para que Gemini sepa cuál transformar y cuál usar como referencia.
- Prompt citado: `Redesign the empty room in a style of the ref room.`
- Si el primer intento cambia demasiado la cámara, deja el cuarto vacío o no captura bien la referencia, usa `redo`.
- Flujo 3: usa productos reales de Amazon u otra web como referencias visuales para ver cómo quedarían en la habitación.
- Captura screenshots limpios de cada producto; “the cleanest the screenshot, the better”.
- Evita screenshots con demasiada interfaz, texto o contexto de la página porque “this will just not work”.
- Sube referencias separadas para cada producto: `couch`, `table`, `chairs`, `coffee table`, `Persian type of rug`.
- Prompt técnico citado: `use the empty room and then design a high-end living space`
- Instrucción clave citada: `Place the brown sofa against the right wall.`
- Instrucción clave citada: `place the coffee table`
- Instrucción clave citada: `both pieces should rest atop of a Persian rug`
- Instrucción clave citada: `In the background, position the round wooden dining table paired with the four black chairs.`
- Instrucción clave citada: `Preserve the soft diffuse natural light entering from the left window.`
- Para precisión, especifica ubicación exacta de cada objeto: pared derecha, frente del sofá, fondo, centro del cuarto, sobre la alfombra.
- Para mayor control, agrega pocos objetos por iteración: primero sofá + alfombra, luego descarga esa imagen y úsala como nueva base.
- Para continuar sobre una generación aprobada: abre `more`, pulsa `download image`, arrastra esa imagen al nuevo chat y añade los siguientes objetos.
- Prompt parcial citado para iteración: `place the sofa, and the sofa only`
- Prompt parcial citado: `goes on top of the Persian rug`
- Prompt citado para añadir comedor: `Placed the round wooden dining table paired with the two, uh, you know, black chairs.`
- Flujo automático: sube una cocina vacía y muchas referencias como `microwave`, `stool`, `plant`, `knives`, `toaster`, `pots and pans`.
- En el flujo automático, pide a Gemini que tome los objetos de referencia y encuentre “the best placement for each item” manteniendo “the room's perspective”.
- El flujo automático es “rolling a dice”: da ideas rápidas, pero menos control y proporciones menos confiables.
- Para realismo y precisión con Nano Banana, usa 1-2 referencias, no 5-6.

## Reglas para agentes
- Usa `thinking` o `pro` cuando el objetivo sea rediseño interior con fidelidad visual.
- Usa `redo` cuando el resultado sea viable pero necesite otra composición con el mismo prompt.
- Nombra las imágenes como `empty room` y `ref room` cuando haya una imagen base y una referencia de estilo.
- Especifica posiciones físicas exactas cuando uses productos reales: pared, centro, fondo, frente, encima de alfombra.
- Conserva la perspectiva del cuarto base en todos los prompts de inserción de objetos.
- Preserva condiciones existentes de luz cuando sean relevantes, por ejemplo `soft diffuse natural light entering from the left window`.
- Usa screenshots limpios de productos, con el objeto aislado lo máximo posible.
- Agrega objetos por etapas cuando necesites precisión: genera, descarga, reusa como nueva base y continúa.
- Usa máximo 1-3 referencias por iteración si necesitas realismo.
- Usa muchas referencias solo para exploración conceptual, no para una visualización final precisa.
- Nunca digas solo “place the sofa in the room” si necesitas control; indica ubicación exacta.
- Nunca mezcles demasiados objetos en una sola generación si las proporciones importan.
- Nunca confíes en el primer resultado como definitivo; compara variaciones.

## Errores comunes que evita o menciona
- Esperar que el primer intento sea perfecto.
- Dar instrucciones vagas y dejar demasiado control al modelo.
- Subir screenshots sucios de Amazon con demasiada interfaz o información irrelevante.
- Pedir demasiados objetos a la vez y “estresar” el modelo.
- No especificar ubicación, escala o relación entre muebles.
- No descargar una generación buena antes de seguir iterando.
- Confundir visualización conceptual con resultado realista o exacto.
- Aceptar cambios no deseados de cámara, perspectiva o proporciones sin usar `redo`.