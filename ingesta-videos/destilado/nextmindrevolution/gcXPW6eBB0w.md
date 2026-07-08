# Total Control: Why I Prompt Gemini with JSON (And Why You Should Too)
**Fuente:** nextmindrevolution | https://youtu.be/gcXPW6eBB0w

## Qué enseña (2-3 líneas)
El video enseña a usar JSON como formato estructurado para analizar, editar, recrear y aprender de imágenes con Gemini.  
La idea central es convertir una imagen en datos organizados para controlar objetos, estilo, composición, colores, iluminación y descripciones con mayor precisión.

## Lecciones accionables
- Usa Gemini en modo `"fast"` / sin razonamiento avanzado para que funcione incluso con cuenta gratuita.
- Para analizar una imagen, sube la imagen al chat y usa el prompt verbatim: `"extract the metadata of the image and convert it to JSON"`.
- El primer JSON generado puede incluir:
  - detalles visuales de la imagen,
  - información del archivo,
  - objetos detectados,
  - elementos como `"bed"`, `"floor"`, `"plants"` y otros objetos presentes.
- Para obtener una extracción más útil, pide además estilo, composición y descripción con el prompt verbatim: `"extract the metadata, but also the style, the composition, and description of the image"`.
- En el JSON enriquecido, busca campos o secciones sobre:
  - `"metadata"`,
  - colores dominantes,
  - estilo visual,
  - iluminación,
  - composición,
  - partes de la escena,
  - descripción final de la imagen.
- Para editar una imagen con control granular, vuelve a subir la imagen y usa el prompt verbatim: `"modify the image following the instructions of this JSON"`.
- Después del prompt, pega el JSON generado anteriormente y modifica directamente las claves relevantes.
- Para cambiar el ambiente visual completo, edita los valores de color, estilo, iluminación o composición dentro del JSON.
- Para cambiar objetos concretos, edita las secciones de objetos detectados; ejemplo del video:
  - reemplazar una planta por otro tipo de planta,
  - cambiar la madera de la cama a `"red oak wood"`,
  - convertir una planta en `"prayer plant"`.
- Tras editar el JSON, ejecuta el prompt para que Gemini lea esas instrucciones estructuradas y genere una versión modificada.
- Usa JSON cuando no sepas cómo se llama un objeto, estilo o elemento visual de una imagen: pídele a Gemini que lo desglose y luego apunta directamente a esa parte.
- Puedes reutilizar el JSON fuera de Gemini: copia el JSON enriquecido y pégalo en otro flujo o modelo capaz.
- Herramientas/modelos mencionados:
  - Gemini,
  - Flow,
  - Nanobana,
  - modelos capaces de generar o editar imágenes desde instrucciones.
- Para recrear una imagen similar en otra herramienta, pega el JSON como especificación visual y ejecútalo en el modelo.
- JSON también sirve como herramienta de aprendizaje, no solo de edición.
- Para aprender fotografía desde una imagen, puedes pedir primero en lenguaje normal: `"break down the photography techniques of this image"`.
- Para una respuesta más escaneable, usa el prompt verbatim: `"break down the photography techniques in JSON format"`.
- El formato JSON facilita localizar información específica sin leer bloques largos de texto.
- Para transferir técnicas visuales a otro sujeto, sube una nueva imagen y usa el prompt verbatim: `"create an image based on the following JSON"`.
- Luego pega el JSON de la imagen original para intentar replicar composición, taza de café, pose, iluminación y encuadre con otro sujeto.
- El video aclara que JSON no es magia: es un formato de programación basado en pares clave-valor.
- La ventaja real de JSON es la estructura: hace que las instrucciones sean más claras, localizables y reutilizables.
- Un prompt de texto normal puede funcionar igual de bien si está muy bien estructurado, claro y no repetitivo.

## Reglas para agentes
- Usa JSON cuando necesites editar partes específicas de una imagen.
- Usa JSON cuando el usuario no conozca el nombre exacto de objetos, estilos, materiales o técnicas visuales.
- Extrae primero metadatos, estilo, composición, iluminación, colores dominantes, objetos y descripción antes de modificar una imagen compleja.
- Usa claves y valores concretos para controlar cambios visuales.
- Modifica solo las claves del JSON relacionadas con el cambio solicitado.
- Reutiliza el JSON como especificación portable cuando cambies de Gemini a otro modelo o flujo.
- Usa JSON para comparar, replicar o transferir composición entre imágenes.
- Usa JSON para convertir análisis visuales largos en información escaneable.
- Nunca trates JSON como un truco mágico que mejora automáticamente el modelo.
- Nunca pegues instrucciones desordenadas si puedes convertirlas en estructura clara.
- Nunca dependas de una sola generación: si el resultado no coincide, edita el JSON y vuelve a generar.
- Recuerda que sigue siendo IA generativa: no garantiza una réplica exacta.

## Errores comunes que evita o menciona
- Escribir prompts largos y desordenados que el modelo puede interpretar mal.
- Intentar editar una imagen sin identificar primero sus objetos, materiales, colores o composición.
- No saber cómo se llama un elemento visual y por eso no poder pedir cambios precisos.
- Buscar información específica dentro de bloques largos de texto en vez de usar una estructura escaneable.
- Creer que JSON funciona por magia o que el modelo “entiende mejor” solo porque el input está en JSON.
- Olvidar que un texto bien estructurado también puede funcionar si es claro.
- Esperar que la IA generativa replique exactamente una imagen, composición o sujeto en todos los intentos.