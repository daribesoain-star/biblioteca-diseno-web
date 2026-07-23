# ideogram_texto_tipografia
**Fuente:** imagen-ia | https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide/2-prompting-fundamentals/text-and-typography

## Qué enseña (2-3 líneas)
Explica cómo generar texto integrado en imágenes usando Ideogram, desde memes hasta tipografía en objetos. Cubre técnicas de prompting con comillas, limitaciones de longitud/idiomas, y métodos para corregir errores ortográficos mediante el editor y remezcla.

## Lecciones accionables
- **Prompt básico con texto:** Usa oraciones completas con puntuación. Encierra el texto exacto entre comillas dobles y describe el contexto. Ejemplo VERBATIM: `A poster on a wall with text that reads: "Everything you can imagine is real. – Pablo Picasso"`
- **Posicionamiento del texto:** Menciona el texto deseado al **inicio** del prompt para mejores resultados.
- **Texto multilínea:** Divide el contenido en fragmentos con instrucciones de colocación específicas. Reduce la complejidad visual del resto de la escena.
- **Estilos de fuente (sin nombres de tipografía):** No es posible especificar una tipografía por nombre. Describe propiedades estilísticas. Prompts VERBATIM para estilos:
  - `The word "Welcome" written in bold sans-serif typeface, in black on white background.`
  - `The word "Welcome" written in ultra thin sans-serif typeface, in black on white background.`
  - `The word "Welcome" written in serif typeface, in black on white background.`
  - `The word "Welcome" written in thin rounded bauhaus style typeface, in black on a white background.`
  - `The word "Welcome" written in thin and refined formal script typeface with flourishes, in black on a white background.`
  - `The word "Welcome" written in an elongated and artistic 1960's hippie-style typeface, in black on white background.`
- **Magic Prompt:** Actívalo para mejorar la generación de texto. Ejemplo: prompt base `A fun whimsical birthday card design featuring a rabbit offering a cake and the text: "Happy Birthday"` se expande automáticamente con descripciones detalladas de estilo y entorno.
- **JSON Prompting (Ideogram 4.0):** Usa JSON con bounding boxes para colocación de texto con precisión de píxeles. (No se proporcionan parámetros exactos en el artículo).
- **Corrección de errores ortográficos:**
  1. Regenera el prompt varias veces.
  2. Reemplaza palabras largas/complejas por sinónimos más cortos.
  3. Usa el **Editor**: pinta sobre el error con el color de fondo, redibuja la letra/carácter correcto aproximadamente.
  4. **Remezcla** la imagen modificada con **image strength alto (90/100)** para que el AI integre y suavice el texto corregido.
  5. Usa el **Typographic Style Tag** con versión 1.0 para mejores resultados.
  6. Sube una imagen con el texto deseado como composición de origen y remézclala.
- **Tipos de renderizado de texto:** Ejemplos de prompts exitosos documentados:
  - Texto simple en cartel
  - Texto como logo en objeto (ej: `'Biorange' in stylish juicy/liquid lettering`)
  - Texto formado por objetos (ej: splash de leche formando la palabra "Milk")
  - Texto como parte de un objeto (ej: gorra bordada con "Red Panda")
  - Texto como diseño (ej: "Summer Lifestyle" con estilo whimsical)
  - Texto como caligrafía vintage (ej: "Take care of your hair naturally" + "Herbal Shampoo")

## Reglas para agentes
- Usa **comillas dobles** para encerrar el texto exacto que debe aparecer en la imagen.
- Posiciona el texto deseado **al inicio del prompt**, no al final.
- Para texto multilínea, **divide en fragmentos** con instrucciones de ubicación específicas.
- Reduce la **complejidad visual** del fondo cuando el texto sea crítico.
- Para corregir errores, **remezcla la imagen editada** con image strength 90/100, no intentes corregir solo el texto manteniendo el resto de la imagen.
- **Nunca** especifiques un nombre de tipografía real (ej: "Arial", "Helvetica") – no es soportado.
- **Nunca** uses texto largo (párrafos completos) – Ideogram no está diseñado para documentos con contenido textual extenso.
- **Nunca** confíes en la generación de texto en alfabetos no latinos o caracteres latinos acentuados – los resultados son impredecibles.

## Errores comunes que evita o menciona
- **Texto demasiado largo:** Cuanto más largo, mayor probabilidad de errores ortográficos, distorsiones o palabras incompletas. Usa frases cortas y contundentes.
- **Idiomas no ingleses:** La renderización más precisa es en inglés. Los alfabetos no latinos producen resultados impredecibles.
- **Documentos con texto completo:** Ideogram no es adecuado para generar documentos con contenido textual extenso. Añade párrafos largos después en un editor gráfico.
- **Errores ortográficos:** Pueden ocurrir. Solución: regenerar, simplificar palabras, usar el Editor + remezcla con image strength 90/100, o usar Typographic Style Tag v1.0.
- **Complejidad visual excesiva:** Escenas muy intrincadas dificultan la renderización limpia del texto. Simplifica el fondo si el texto es prioritario.
- **Corrección de texto vs. corrección de imagen:** Es más fácil remezclar para arreglar el contenido de la imagen manteniendo el texto correcto, que al revés.