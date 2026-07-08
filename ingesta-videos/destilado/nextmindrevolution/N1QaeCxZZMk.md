# Just Use Grids! The Easiest Way to Multishot in Google Flow
**Fuente:** nextmindrevolution | https://youtu.be/N1QaeCxZZMk
## Qué enseña (2-3 líneas)
Enseña a crear videos multishot en Google Flow usando un solo prompt con varios planos, timestamps y referencias. La idea central es ahorrar créditos usando `multi shot` con `ingredients`, personajes, avatares o grids de imágenes en vez de generar cada toma por separado.

## Lecciones accionables
- Usa `multi shot prompting` definiendo varios planos dentro de un único prompt.
- Estructura recomendada del prompt:
  - Primero: contexto general y estilo del video.
  - Después: desglose toma por toma.
  - Cada línea debe abrir con un ángulo o tipo de cámara.
- El bloque inicial de estilo es opcional, pero ayuda al modelo a entender el contexto.
- Prompt base mostrado:
  - `I want a clean modern music workspace with natural daylight with a white and bright blue color palette`
  - `Authentic UGC style with handheld camera movement`
- Ejemplo de secuencia:
  - Inicio: `close up shot`
  - En el segundo `4`: `medium over the shoulder shot`
  - En el segundo `7`: `wide shot`
  - Movimiento final: `panning`
- En `Veo 3.1`, si usas modo rápido, ajusta los timestamps porque solo permite hasta `8 seconds`.
- `Veo 3.1` puede fallar en la primera generación y omitir alguna toma; puede requerir varios intentos.
- `Omni Flash` funciona mejor para `multi shot`, referencias e ingredientes.
- Puedes usar `ingredients`, `characters` y `avatars` bloqueándolos al prompt.
- Ejemplo con personaje e ingredientes:
  - Prompt conceptual: `I want a four-shot sequence of Mike`
  - Personaje: `Mike`
  - Entorno: `inside of an office`
  - Objeto: `he's holding a red coffee cup`
  - Ingredientes usados: personaje + taza roja.
- Para prompts multishot con personajes, usa conteo explícito de tomas porque es más legible y el modelo razona bien:
  - `shot 1`
  - `shot 2`
  - `shot 3`
  - `shot 4`
- Tipos de plano usados en el ejemplo de Mike:
  - `close-up`
  - `smooth tracking shot`
  - `full-body shot`
  - `overhead`
- Para multishot con frames, crea un grid como referencia y súbelo como `ingredient`.
- Ejemplo de grid:
  - `2x2 grid`
  - Mujer tomando café en una cocina.
- No hace falta bloquear el grid; basta con adjuntarlo como `ingredient`.
- Prompt verbatim usado para el grid:
  - `Using the 2x2 grid, create a sequence with the woman and the kitchen.`
- Luego define cada toma haciendo referencia a cada panel:
  - `match the top left`
  - `match the top right`
  - `match the bottom left`
  - `match the bottom right panel`
- Aunque uses referencias visuales, añade contexto por toma: tipo de plano, acción y qué debe pasar.
- También puedes pedirle a Omni que solo iguale los paneles del grid sin describir cada acción, pero pierdes control narrativo.
- Si el grid tiene demasiada información, puede confundir a Omni.
- Alternativa más cercana a `frames-to-video`: subir cada imagen como ingrediente independiente.
- Flujo con ingredientes independientes:
  - Sube `scene 1`, `scene 2`, `scene 3`, `scene 4` como ingredientes separados.
  - En cada toma, indica qué referencia debe usar.
  - Bloquea cada referencia para mantener consistencia con esa toma.
  - Después define el plano y la acción de cada shot.
- Ejemplo de secuencia independiente:
  - Toma 1: robot en Marte.
  - Toma 2: robot perdido.
  - Toma 3: aparece una nave espacial.
  - Toma 4: el robot mira hacia arriba.
- Duración usada en el ejemplo final: `10 seconds`.
- Relación costo/calidad:
  - Generar cada toma por separado consume más créditos.
  - Generar una secuencia multishot con referencias reduce costo.
  - Luego se deben recortar las mejores partes y armar una composición.

## Reglas para agentes
- Usa `multi shot prompting` cuando necesites varias tomas dentro de un solo video.
- Define siempre el contexto visual antes de listar las tomas.
- Usa timestamps cuando necesites controlar el cambio entre planos.
- Ajusta los timestamps si el modelo o modo elegido solo permite `8 seconds`.
- Usa `Omni Flash` cuando trabajes con referencias, grids o multishot complejo.
- Usa `Veo 3.1` solo aceptando que puede requerir varios intentos y puede omitir tomas.
- Usa `ingredients` para adjuntar referencias visuales.
- Usa `lock` cuando una referencia deba mantenerse consistente en una toma específica.
- Usa un `2x2 grid` cuando quieras empaquetar varias referencias visuales en una sola imagen.
- En grids, referencia cada panel con nombres exactos como `top left`, `top right`, `bottom left` y `bottom right panel`.
- Describe cada toma aunque tengas una referencia visual; indica plano, acción y panel de referencia.
- Usa imágenes independientes como ingredientes cuando el grid confunda al modelo o contenga demasiada información.
- Recorta y compón las mejores partes después de generar; no asumas que todas las tomas saldrán perfectas.
- Nunca dejes a Omni sin instrucciones de acción si necesitas control preciso.
- Nunca dependas de un grid complejo como única guía cuando la secuencia requiera alta fidelidad toma por toma.

## Errores comunes que evita o menciona
- Generar cada toma por separado y gastar muchos más créditos.
- Usar `frames-to-video` esperando multishot real con varios frames separados.
- No ajustar timestamps al cambiar a un modo de menor duración.
- Esperar que `Veo 3.1` acierte todas las tomas en el primer intento.
- Adjuntar un grid y no explicar qué panel corresponde a cada toma.
- No describir la acción de cada shot y dejar que Omni adivine.
- Usar grids demasiado cargados, lo que puede confundir al modelo.
- No bloquear referencias independientes cuando se busca consistencia visual.
- Asumir que la generación completa será perfecta en vez de seleccionar partes útiles y editar la composición final.