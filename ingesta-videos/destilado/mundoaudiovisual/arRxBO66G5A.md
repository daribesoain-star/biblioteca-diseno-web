# Codec de Video - ¿Para que Sirven? 📹 📹
**Fuente:** mundoaudiovisual | https://youtu.be/arRxBO66G5A

## Qué enseña
Explica qué es un codec de video, cómo funciona la compresión (especialmente H.264), y por qué es necesario usar diferentes codecs en las tres etapas de producción: captura, edición y distribución. Enseña a transcodificar archivos H.264 a Apple ProRes 422 para mejorar el flujo de trabajo en edición, y a exportar el producto final de vuelta a H.264.

## Lecciones accionables
- Para edición fluida: transcodificar archivos grabados en H.264 a Apple ProRes 422 antes de editar.
- En Adobe Premiere, al crear un nuevo proyecto, ir a "Ingest Settings", seleccionar "Ingest" > "Wrangle and Encode", elegir "Apple ProRes 422" como formato de destino.
- Al importar un clip H.264 (MP4) al proyecto, Adobe Media Encoder se abrirá automáticamente y comenzará la transcodificación a archivo .mov (Apple ProRes).
- Para distribución final (YouTube, web, reproductores): exportar el proyecto editado de vuelta a H.264, ya que ofrece alta calidad con tamaño reducido y máxima compatibilidad.
- Usar perfiles logarítmicos en cámara (ej. Sony Alpha 6400) para capturar mayor rango dinámico, luego transcodificar a ProRes para aprovecharlo en corrección de color.

## Reglas para agentes
- Usa Apple ProRes 422 cuando edites videos grabados en H.264, para evitar que el programa tenga que decodificar constantemente y para tener mayor rango dinámico en corrección de color.
- Nunca distribuyas un video final en Apple ProRes; siempre exporta a H.264 para ahorrar espacio y garantizar compatibilidad con reproductores y plataformas.
- Siempre transcodifica antes de editar si el material fuente está muy comprimido (H.264), para que el flujo de trabajo sea más suave incluso en computadoras no tan potentes.

## Errores comunes que evita o menciona
- Editar directamente con archivos H.264 sin transcodificar: ralentiza la edición, reduce el rango dinámico disponible y puede causar problemas en postproducción y calidad final.
- Usar un codec de alta calidad (como ProRes) para la distribución final: es innecesario porque ya no se editará más, desperdicia espacio en disco y no es compatible con todos los reproductores.
- Confundir las etapas de producción: no usar el codec adecuado para captura, edición o distribución perjudica el flujo de trabajo y la calidad.