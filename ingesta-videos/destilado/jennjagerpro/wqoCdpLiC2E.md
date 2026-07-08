# How to Get Your FCP Transcripts in Under 2 Minutes
**Fuente:** jennjagerpro | https://youtu.be/wqoCdpLiC2E

## Qué enseña
Extraer un transcript de texto desde Final Cut Pro 10.6 o superior usando transcripciones a subtítulos, exportación SRT y limpieza manual. Ofrece dos métodos: exportar archivo SRT con timestamps o generar un texto limpio sin marcas mediante la fusión de subtítulos.

## Lecciones accionables
- **Verificar análisis de audio previo:** Al importar un clip, asegúrate de que la opción "Analyze Audio" esté activada. Si no, haz clic derecho sobre el clip en el navegador → "Analyze and Fix" → selecciona "Analyze Audio".
- **Crear proyecto y añadir clip:** Crea un nuevo proyecto, arrastra el clip completo a la línea de tiempo.
- **Generar subtítulos desde transcripción:** Haz clic derecho sobre el clip en la línea de tiempo → "Transcribe to Captions". Final Cut Pro generará subtítulos automáticos.
- **Cambiar formato de subtítulos a SRT:** Selecciona todos los subtítulos generados (ITT por defecto) → haz clic derecho → "Duplicate Captions to New Format" → elige "SRT". Esto crea una copia en formato SRT.
- **Exportar solo el archivo SRT:** Ve a "Share" → "Export File". En formato, cambia de "Video and Audio" a "Audio Only" (para minimizar tamaño). En "Roles", desmarca todo excepto "Captions" → selecciona solo la versión SRT. Haz clic en "Next" y guarda en el escritorio.
- **Abrir archivo SRT:** Localiza el archivo .srt en el escritorio. Ignora el mensaje de error "no se puede abrir". Haz clic derecho → "Open With" → "TextEdit". Obtendrás un transcript con timestamps y números de línea.
- **Obtener transcript limpio (sin timestamps):** En Final Cut Pro, selecciona todos los subtítulos (marquee selection) → haz clic derecho → "Join Captions". Esto fusiona todos en uno solo. En el inspector, haz clic en el campo de texto → Cmd+A para seleccionar todo → Cmd+C para copiar.
- **Pegar y limpiar en Pages (o procesador de textos):** Crea un documento en blanco en Pages → Cmd+V para pegar. Selecciona todo el texto (Cmd+A) → cambia "Text Color" a blanco (para ocultar fondo oscuro) → en "Text Style", cambia de "Label" a "Body" para eliminar barras negras. Luego elimina manualmente los saltos de línea excesivos (donde Final Cut dividió los subtítulos originales).

## Reglas para agentes
- Usa "Audio Only" al exportar cuando solo necesites el archivo de subtítulos, para generar el archivo más pequeño posible.
- Siempre duplica los subtítulos a formato SRT antes de exportar; ITT no produce un archivo de texto limpio.
- Al abrir un archivo .srt, ignora el mensaje de error del sistema y usa "Open With → TextEdit".
- Nunca asumas que Final Cut Pro diferencia entre hablantes; revisa manualmente quién dice qué en el transcript.
- Cuando busques un transcript sin timestamps, fusiona los subtítulos con "Join Captions" antes de copiar el texto.

## Errores comunes que evita o menciona
- **Final Cut Pro no diferencia entre hablantes:** Los subtítulos incluyen tanto al entrevistado como al entrevistador sin marcas visuales. Debes interpretar manualmente quién habla.
- **No se puede exportar solo el transcript sin un archivo de medios:** Final Cut Pro exige exportar algún tipo de medio (audio o video) junto con los subtítulos. Usar "Audio Only" minimiza el tamaño.
- **El archivo SRT parece no abrirse al hacer doble clic:** Es un falso error; se abre correctamente con "Open With → TextEdit".
- **El texto pegado en Pages tiene formato "Label" con barras negras:** Debes cambiarlo a "Body" y el color de texto a blanco para obtener un documento limpio.
- **Saltos de línea excesivos en el transcript limpio:** Provienen de las divisiones originales de subtítulos; deben eliminarse manualmente.