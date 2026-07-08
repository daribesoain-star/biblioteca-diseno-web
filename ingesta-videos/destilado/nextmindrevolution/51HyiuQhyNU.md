# 4-Steps to Pro-Level Presentations: NotebookLM Slide Deck (2026 Guide)
**Fuente:** nextmindrevolution | https://youtu.be/51HyiuQhyNU
## Qué enseña (2-3 líneas)
Enseña a crear presentaciones profesionales con NotebookLM usando fuentes verificadas, opciones avanzadas de slide deck y prompts detallados para controlar estilo, estructura y contenido.  
También explica las limitaciones actuales de edición: las diapositivas se generan como imágenes planas y los cambios funcionan como revisiones o regeneraciones, no como edición por capas.

## Lecciones accionables
- Entra a `notebooklm.google.com`, crea un notebook nuevo y carga fuentes antes de generar la presentación.
- Usa NotebookLM en lugar de Gemini clásico cuando necesites que la IA esté anclada a materiales específicos: documentos, páginas web, PDFs, videos de YouTube, archivos de Google Drive o texto pegado.
- Para una presentación rápida, usa `Search the web` dentro de NotebookLM, escribe un prompt como `"how to get started with cooking"`, revisa las fuentes encontradas con `View` y luego pulsa `Import`.
- Para presentaciones importantes, no uses fuentes web automáticas como fuente principal: haz clic en `Add sources` y carga tus propios archivos, enlaces web, videos de YouTube, documentos de Google Drive o texto pegado.
- Después de cargar fuentes, puedes crear un slide deck directamente, pero para mejores resultados abre el menú desplegable junto a `Slide deck` y configura las opciones avanzadas.
- Elige `Detailed deck` cuando la presentación esté pensada para leerse de forma individual; tendrá más texto y detalle.
- Elige `Presenter slides` cuando vayas a hablar sobre las diapositivas; tendrá menos texto, será más visual y menos saturada.
- Configura el idioma desde las opciones del slide deck; en el ejemplo se mantiene `English`.
- Controla la longitud con `Short` para menos de 10 slides, `Default` para aproximadamente 10-15 slides, y `Long` cuando hay muchas fuentes y necesitas una presentación extensa.
- Usa el campo `Description` como el paso crítico: ahí debes especificar `vibe`, colores, estilo visual, elementos concretos, color base, tipografía y acentos.
- Para estilo visual, el video recomienda ser específico: por ejemplo, pedir un look `premium`, `stylish`, `high-end`, `modern`, `dark` y con acentos `gold`.
- Para control total, escribe una instrucción por slide: número de slide, título, foco principal y dirección visual.
- El ejemplo avanzado pide una presentación de `six slide presentation about photosynthesis` con tema visual de `3D rendering`, estilo `cartoons`, usando `dogs and cats`.
- Si defines explícitamente que quieres `six slides`, NotebookLM genera solo 6 slides aunque la opción de longitud esté en `Short`, `Default` o `Long`.
- Textos exactos mencionados para revisiones:
  - Cambiar el título de `"The Plant's Ultimate Superpower"` a `"The Plants Are Awesome"`.
  - Cambiar el callout de `"Wait, you don't have to go to the grocery store"` a `"Humans have to buy food, plants don't"`.
  - Cambiar `"Welcome to the Secret Green Factory"` a `"Welcome to the Green Factory"`.
  - En Google Slides, cambiar `"The Plants Are Awesome"` a `"The Plants Are Great"`.
- Para revisar una presentación en NotebookLM, abre el deck, pulsa `Revise`, navega slide por slide y escribe instrucciones específicas en el prompt inferior.
- Cada slide con instrucciones de revisión queda resaltada en azul.
- Puedes revisar varias diapositivas antes de generar; el menú desplegable muestra los cambios pendientes.
- Pulsa `Generate revised deck` para crear una nueva versión del deck; no modifica el deck original.
- Exporta desde los tres puntos como `PDF` o `PPTX`; el `PPTX` se puede abrir en PowerPoint o Google Slides.
- Ten en cuenta que NotebookLM genera cada slide como una imagen plana usando `Nano Banana`; el texto, imágenes y composición quedan incrustados en una sola imagen.
- Para cambios pequeños, descarga el `PPTX`, impórtalo en Google Slides con `File > Import slides > Upload`, selecciona las slides y usa la opción `Visualize`.
- En Google Slides, selecciona una slide, abre `Visualize`, escribe el cambio como si hablaras con Gemini, pulsa `Create`, revisa la nueva imagen y usa `Insert` o `Insert as new slide`.
- Si insertas una nueva imagen en Google Slides, ajusta su tamaño para cubrir toda la slide y reemplazar visualmente la anterior.

## Reglas para agentes
- Usa NotebookLM cuando la presentación deba basarse en fuentes concretas y verificables.
- Usa fuentes propias cuando la presentación sea importante, académica, empresarial o sensible a errores.
- Nunca dependas solo de búsqueda web automática si la precisión factual importa.
- Abre las opciones avanzadas del `Slide deck` antes de generar una presentación final.
- Usa `Detailed deck` cuando el usuario vaya a leer la presentación sin expositor.
- Usa `Presenter slides` cuando el usuario vaya a hablar sobre las diapositivas.
- Especifica estilo visual, colores, tipografía, acentos y elementos concretos en `Description`.
- Define el número exacto de slides dentro del prompt cuando la longitud de la presentación sea un requisito.
- Para controlar narrativa, escribe una sección por cada slide con número, título, foco principal y visual esperado.
- Al revisar, indica exactamente qué texto cambiar, cuál es el texto actual y cuál debe ser el texto nuevo.
- Nunca prometas edición por capas en NotebookLM: trata cada slide como una imagen plana.
- Usa `Revise` en NotebookLM para muchos cambios o cambios repartidos en varias slides.
- Usa Google Slides `Visualize` para cambios pequeños en una slide concreta.
- Conserva el deck original y genera versiones revisadas cuando uses NotebookLM.

## Errores comunes que evita o menciona
- Crear decks directamente sin configurar formato, longitud ni descripción visual.
- Usar fuentes web aleatorias para presentaciones donde no se puede arriesgar información falsa o incorrecta.
- Pedir “mejora esta slide” sin instrucciones específicas de texto, título, diseño o foco.
- Esperar que el archivo `PPTX` sea editable por capas como una presentación tradicional.
- Intentar editar texto directamente en PowerPoint o Google Slides cuando el texto está incrustado en una imagen.
- Pensar que `Revise` modifica el deck original; en realidad genera una nueva versión.
- Esperar consistencia perfecta entre versiones revisadas: Nano Banana puede cambiar fondos o detalles visuales aunque el cambio pedido sea pequeño.
- Generar demasiadas slides por no fijar una cantidad exacta en el prompt.