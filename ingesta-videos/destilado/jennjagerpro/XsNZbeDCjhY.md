# Closed Captions Secrets in Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/XsNZbeDCjhY

## Qué enseña
Este video enseña cinco trucos y hacks para trabajar con subtítulos cerrados (closed captions) en Final Cut Pro, incluyendo transcripción automática en Mac con chip M, estilización de subtítulos con herramientas de terceros, traducción gratuita a otros idiomas y quema de subtítulos en la exportación.

## Lecciones accionables
- **Transcripción automática en Mac con chip M (Apple Silicon):** selecciona clips en la línea de tiempo, haz clic derecho y elige "Transcribe to Captions" para generar subtítulos automáticamente.
- **Transcripción en Mac con chip Intel (workaround):** sube el video a YouTube (puede ser no listado), espera a que YouTube transcriba, ve a "Languages" > "Edit subtitles" > "Edit timings", haz clic en los tres puntos > "Download subtitles" para obtener un archivo .sbv. Usa un convertidor gratuito de SBV a SRT (ejemplo: el de Arizona State University, enlazado en la descripción). Luego en Final Cut Pro: `File > Import > Captions` y selecciona el archivo .SRT.
- **Dividir subtítulos largos en captions separados:** selecciona el caption en la línea de tiempo, ve al inspector de captions, rompe el texto en líneas donde quieras los cortes. Luego selecciona el clip, haz clic derecho y elige "Split Captions". Ajusta los puntos de corte con la herramienta Trim (tecla T).
- **Estilizar subtítulos con Caption Animator (terceros):** diseña un título con las herramientas nativas de Final Cut Pro (escala, fuente, color, animación como "Bounce In"). Ve a "Workflow Extensions" (icono de puzzle) > "Caption Animator". Arrastra el proyecto completo a la ventana emergente. Selecciona el título de referencia (el que diseñaste) haciendo clic en el círculo amarillo. Configura: caracteres por título, tipo de elementos (individuales, conectados o "secondary storyline"). Haz clic en "Go", elige la biblioteca de destino. Se creará un nuevo evento con un proyecto duplicado que contiene los subtítulos estilizados. Desactiva los subtítulos originales con la tecla V.
- **Traducir subtítulos gratis a otro idioma:** descarga el archivo .sbv desde YouTube. Ábrelo con un editor de texto. Copia todo el texto y pégalo en Google Translate (usando la página principal, no el widget pequeño, para obtener 5000 caracteres). Traduce al idioma deseado. Copia la traducción, pégala en un editor de texto y guarda. Vuelve a YouTube > "Languages" > agrega el idioma manualmente > "Upload captions" > sube el archivo .sbv modificado. Descarga los subtítulos nuevamente. Convierte a SRT si es necesario. Importa en Final Cut Pro: `File > Import > Captions`. Para etiquetar correctamente el idioma: ve al índice > "Roles", selecciona todos los captions, haz clic derecho > "Duplicate Captions to New Language", elige el idioma correcto. Luego elimina los captions originales mal etiquetados.
- **Quemar subtítulos en el video exportado:** ve a "Share" > "Export File". En la sección "Roles", haz clic en el texto azul de configuración de captions. Selecciona qué idioma quemar (por ejemplo, "English"). Haz clic en "OK" y exporta.

## Reglas para agentes
- Usa "Transcribe to Captions" solo si el Mac tiene chip M (Apple Silicon); en Intel, usa el workaround con YouTube.
- Nunca uses el widget pequeño de Google Translate; usa la página principal para obtener 5000 caracteres.
- Cuando traduzcas, siempre duplica los captions al nuevo idioma antes de eliminar los originales mal etiquetados.
- Para dividir captions, primero rompe el texto en líneas en el inspector, luego usa "Split Captions".
- Al estilizar con Caption Animator, diseña el título de referencia antes de abrir la extensión.
- En la exportación, verifica que los captions quemados estén seleccionados en la configuración de roles.

## Errores comunes que evita o menciona
- YouTube ya no entrega archivos .SRT directamente, solo .sbv; es necesario convertirlos con herramientas gratuitas.
- Al abrir el archivo .sbv en un editor de texto, se rompe el formato; hay que volver a subirlo a YouTube y descargarlo de nuevo para restaurar la estructura.
- Los subtítulos traducidos mantienen la etiqueta de idioma original en Final Cut Pro; hay que duplicarlos al idioma correcto y eliminar los originales.
- Los subtítulos generados automáticamente pueden quedar muy largos para formatos verticales; se deben dividir manualmente.
- YouTube puede generar doblaje automático sin subtítulos en ese idioma; hay que agregar los subtítulos manualmente.