# Stop AI From Guessing: Accurate Infographics with Gemini & NotebookLM
**Fuente:** nextmindrevolution | https://youtu.be/A2PfSnYl-u8
## Qué enseña (2-3 líneas)
Enseña a crear infografías con Gemini Create Image y NotebookLM reduciendo alucinaciones en temas técnicos o muy específicos.  
La idea central es controlar mejor la entrada, validar todo el contenido y, cuando haga falta precisión total, dejar los textos en blanco para completarlos manualmente.

## Lecciones accionables
- En Gemini, usa la herramienta **Create image** para generar infografías directamente. Si eliges modelos/modos como **thinking**, **pro** o **ultra**, los resultados suelen ser mejores que con **fast**.
- Prompts simples mostrados:
  - `"an infographic of lab equipment for children"`
  - `"an infographic about photosynthesis explained for adults"`
- Para temas generales y conocidos, Gemini funciona bien: laboratorio para niños o fotosíntesis para adultos generan resultados visualmente sólidos.
- Para temas técnicos, no pidas algo genérico como `"an infographic of an electric guitar"` si necesitas precisión. El modelo puede inventar piezas internas, cables, baterías, microchips o componentes que no existen.
- Usa especificidad de marca/modelo/año para reducir errores. Ejemplo usado:
  - `"an Ibanez AZ2204"`
- La plantilla de prompt técnico descrita incluye:
  - `"photorealistic 45° isometric 3D render"`
  - instrucciones de **layout and annotations**
  - estilo **hand-drawn**
  - cajas tipo **callout boxes**
  - información técnica dentro de los callouts
  - estilo y composición al final
  - salida en ratio `"1:1"` para formato cuadrado
  - campos variables `"element"` e `"item"` como plantilla
- Para controlar qué información aparece, agrega detalles de componentes en el prompt. Ejemplo usado:
  - `"Gibson Les Paul Standard"`
  - `"primary focused detail Gibson Les Paul Standard description"`
  - componentes: `"body"`, `"electronics and pickups"`, `"hardware"`, `"neck and the fretboard"`
- Para control total de textos, pide callouts vacíos. Frases mostradas:
  - `"empty hand-drawn style of rectangular callout"`
  - `"clean, blank technical callout"`
- Si los callouts salen vacíos, termina la infografía en herramientas externas como **Photoshop**, **Figma** o **Microsoft Paint**, agregando etiquetas verificadas manualmente.
- En **NotebookLM**, agrega fuentes antes de generar:
  - links
  - PDFs
  - documentación
  - manuales
- En NotebookLM, usa el ícono de **infographics** del lado derecho. Para personalizar:
  - abre la flecha de opciones
  - selecciona `"landscape"`
  - selecciona `"professional"`
  - pega el prompt en el campo inferior
  - elimina el parámetro de aspect ratio si ya lo controla la interfaz
  - haz clic en **Generate**
- NotebookLM puede mejorar la exactitud factual al basarse en fuentes, pero la parte visual generada por Gemini todavía puede confundir o inventar detalles.
- Si una generación de NotebookLM sale mal, repítela varias veces: el contenido puede estar correcto aunque la imagen inicial sea visualmente débil o confusa.

## Reglas para agentes
- Usa **Gemini Create Image** cuando el objetivo sea producir una infografía visual desde prompt.
- Usa **thinking**, **pro** o **ultra** cuando la infografía sea profesional, técnica o de cliente.
- Incluye **marca, modelo y año** cuando el objeto sea técnico, específico o verificable.
- Agrega una lista explícita de componentes cuando quieras controlar la narrativa de la infografía.
- Usa fuentes en **NotebookLM** cuando necesites minimizar errores factuales con PDFs, links, manuales o documentación.
- Pide callouts vacíos cuando la precisión textual sea crítica.
- Añade manualmente las etiquetas finales en **Photoshop**, **Figma** o **Microsoft Paint** cuando necesites 100% de control factual.
- Verifica cada componente, etiqueta y afirmación técnica antes de entregar la infografía.
- Inicia un chat nuevo cuando generes variantes muy parecidas, porque el chat anterior puede confundir el resultado.
- Nunca entregues una infografía autogenerada a un cliente sin fact-checking.
- Nunca asumas que una infografía es correcta solo porque se ve profesional.
- Nunca uses prompts genéricos para objetos técnicos si necesitas precisión.

## Errores comunes que evita o menciona
- Pedir objetos técnicos de forma genérica, como una guitarra eléctrica sin marca ni modelo.
- No saber del tema y, por lo tanto, no poder validar si la infografía es correcta.
- Confundir buen aspecto visual con exactitud técnica.
- Permitir que el generador invente componentes internos inexistentes.
- Sobrecargar la infografía con demasiados callouts o información no solicitada.
- Esperar que NotebookLM elimine por completo las alucinaciones visuales.
- Confiar en que el generador de imágenes puede representar con precisión cada tornillo, cable, chip o componente interno.
- Entregar una infografía generada automáticamente sin revisión humana.