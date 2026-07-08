# Perfect AI image shots: Using Gemini to unlock any image
**Fuente:** nextmindrevolution | https://youtu.be/KgwZdAm_zXY
## Qué enseña (2-3 líneas)
Enseña a usar Gemini como traductor visual para convertir una imagen de referencia en descripciones útiles de pose, sujeto, entorno, composición y encuadre.  
Luego muestra dos flujos: usar esa descripción en Nano Banana/Mid Journey para recrear una pose o subir la referencia directamente para reemplazar un sujeto.

## Lecciones accionables
- Parte siempre de una referencia visual: una película, un sitio web, una foto, una captura de pantalla o una imagen guardada.
- Sube la imagen a Gemini y pídele una respuesta fácil de leer que describa explícitamente:
  - `subject`
  - `pose`
  - `setting`
  - `composition`
  - `framing`
- Añade al final del prompt en Gemini la instrucción verbatim: `provide a text response only`.
- Si Gemini ofrece modos, usa `thinking` cuando quieras mejor análisis visual; `fast` funciona, pero el video dice que `thinking` funciona “a little bit better”.
- Cuando Gemini devuelva la descripción, separa los bloques útiles: descripción del sujeto, pose, entorno y encuadre.
- Para transferir solo una pose:
  - copia únicamente la descripción de `pose`;
  - ve a Nano Banana, Mid Journey u otro modelo;
  - añade tu sujeto como `ingredient` o referencia visual;
  - pega la descripción de la pose;
  - el resultado buscará que el sujeto haga esa pose específica, pero no necesariamente cambiará fondo, iluminación o composición.
- En Nano Banana/Google Flow puedes referenciar ingredientes con `@`. Ejemplo operativo del video: usar `@the man on the green background` antes de pegar la descripción.
- Para replicar una imagen más completa:
  - copia toda la respuesta de Gemini, no solo la pose;
  - vuelve a Nano Banana;
  - empieza el prompt mencionando el sujeto con `@`;
  - pega la descripción completa de Gemini;
  - ejecuta el prompt para aproximar pose, setting, composición y framing.
- Para el flujo directo sin descripción:
  - sube la referencia visual directamente a Nano Banana;
  - sube o selecciona el sujeto final;
  - en Google Flow renombra los elementos para que sean fáciles de invocar, por ejemplo `Myra` para la referencia y `Ron` para el sujeto;
  - pide reemplazar el sujeto de una imagen por el de otra usando referencias tipo `@Ron` y `@Myra`.
- Prompt/acción directa reconstruida desde el flujo mostrado: `replace the subject in @Ron with the subject in @Myra`.
- El flujo con Gemini es mejor si quieres aprender vocabulario de dirección visual: composición, framing, lente, pose y setting.
- El flujo directo con referencia es mejor si quieres velocidad y no necesitas una descripción textual reutilizable.

## Reglas para agentes
- Usa Gemini cuando necesites convertir una imagen de referencia en lenguaje visual reutilizable.
- Usa `thinking` en Gemini cuando la precisión de pose, encuadre o composición sea importante.
- Pide siempre salida solo en texto con `provide a text response only`.
- Divide siempre la descripción en sujeto, pose, setting, composición y framing.
- Usa solo la sección `pose` cuando quieras conservar el personaje o fondo actual y cambiar únicamente la postura.
- Usa la descripción completa cuando quieras aproximar toda la toma: pose, fondo, composición, lente y encuadre.
- Usa referencias con `@nombre` en Nano Banana/Google Flow cuando trabajes con varios ingredientes visuales.
- Renombra los assets en Google Flow antes de escribir el prompt si los nombres automáticos son confusos.
- Nunca dependas de una descripción improvisada de poses humanas complejas si tienes una referencia visual que Gemini puede analizar.
- Nunca copies una referencia como objetivo final exacto si el propósito es crear una pieza propia; úsala como inspiración y adaptación.

## Errores comunes que evita o menciona
- Intentar describir manualmente una pose humana compleja sin apoyo visual.
- Usar solo una descripción de pose y esperar que también cambien fondo, lente, composición o setting.
- Subir una referencia directa para copiarla sin obtener vocabulario ni aprendizaje sobre dirección visual.
- No nombrar bien los ingredientes en Google Flow, lo que vuelve más difícil referenciarlos en prompts.
- Confundir inspiración con copia exacta: el video recomienda aprender, adaptar y crear algo propio.