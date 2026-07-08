# 🤖 CREO UN VÍDEO COMPLETO 100% GENERADO POR INTELIGENCIA ARTIFICIAL CON MI AVATAR 🤖
**Fuente:** mundoaudiovisual | https://youtu.be/MVy769pdfG8

## Qué enseña (2-3 líneas)
El tutorial muestra el proceso completo para crear un video con un avatar animado generado por IA a partir de una fotografía propia, incluyendo la generación del guion con ChatGPT, la creación del avatar parlante con la herramienta The ID, y la postproducción con fondo generado por IA en Photoshop Beta, edición en DaVinci Resolve y eliminación de croma en After Effects.

## Lecciones accionables
- **Fotografía inicial:** Tomar una foto con el móvil para usarla como base del avatar.
- **Recorte en Photoshop Beta:** Abrir la foto en Photoshop Beta (versión con generative fill). Usar la herramienta de fondo para eliminar el fondo automáticamente. Si el cabello tiene color similar al fondo, recortarlo manualmente con la herramienta pluma (pen tool). Enviar a selección, seleccionar con 1 píxel, eliminar. Desbloquear capa, seleccionar sujeto, llevar a máscara. Ajustar bordes con selección de 1 píxel y desvanecer (fade) la máscara. Colocar un rectángulo verde detrás como chroma key. Guardar copia como JPG con nombre "image for effect".
- **Generación de texto con ChatGPT:** En un nuevo chat, pedir: "crea un texto de 30 segundos donde voy a presentar una herramienta de inteligencia artificial que crea tu propio avatar y consigue hacer un vídeo animado acorde al texto. Empieza con lo que estás viendo, generado por IA". Iterar corrigiendo: "el avatar se crea a partir de mi propia fotografía", "con esta herramienta avanzada", eliminar párrafos que no correspondan (ej. "ajustar rasgos").
- **Grabación de audio:** Grabar el texto con micrófono (o móvil). Procesar en DaVinci Resolve: crear proyecto, ir a módulo de edición, importar video, exportar solo el audio como MP3. Limpiar audio con Adobe Podcast (subir archivo, esperar procesamiento, descargar).
- **Compresión de audio:** Si el audio pesa más de 15 MB, llevarlo a DaVinci Resolve, integrar canales (channel 1 integrated), exportar como MP3 editado (comprimido). Verificar peso (~5 MB).
- **Creación de avatar con The ID:** Registrarse en The ID (opción "Continue with Google", uso personal, redes sociales). Obtener 20 créditos gratis. Click en "Create Video". Elegir avatar: "Add mine" y subir la foto recortada con fondo verde. Subir el audio editado. Click "generate video" (consume 9 créditos). Esperar generación. Descargar video resultante.
- **Eliminación de chroma key en After Effects:** Crear nuevo proyecto, importar video del avatar, crear composición desde el video. Aplicar efecto de luz (light effect), apuntar al color verde. Añadir a cola de renderizado. Exportar como "Clean Chroma Key Video" con calidad 444, exportar RGB + alpha (transparente).
- **Generación de fondo con Photoshop Beta:** Crear nuevo proyecto de 3840x2160 (4K). Seleccionar todo el lienzo, usar generative fill con prompt en inglés (traducir): "Create me a background, a wall with a painting on the left, with futuristic lights, cool colors". Elegir opción (ej. morada). Repetir: "Neon Lights and Blue" para llenar lado izquierdo. Centrar el resultado. Guardar como JPG.
- **Composición final en DaVinci Resolve:** Nuevo proyecto a 25 fps, 3840x2160. Importar video limpio del avatar y fondo. Escalar fondo para centrar. Ajustar color: añadir tonos azules a sombras (Gamma). Añadir reverb al audio (efectos). Añadir partículas (particles) en modo blending, reducir opacidad. Duplicar capas para crear planos. Acompañar con música y efectos de sonido (recomienda artlist.io con 2 meses gratis).

## Reglas para agentes
- Usa Photoshop Beta (no versión estable) cuando necesites generative fill para fondos o rellenos.
- Usa la herramienta pluma (pen tool) cuando el color del cabello sea similar al fondo para un recorte preciso.
- Exporta siempre el audio como MP3 comprimido cuando pese más de 15 MB para subirlo a The ID.
- Usa After Effects para eliminar chroma key cuando necesites exportar con canal alfa (transparencia).
- Traduce los prompts de generative fill al inglés antes de usarlos en Photoshop Beta.
- Nunca uses párrafos generados por ChatGPT que no correspondan al proceso real (ej. "ajustar rasgos" si la herramienta no lo permite).
- Nunca subas audio sin comprimir a The ID si supera los 15 MB; comprime primero en DaVinci Resolve.

## Errores comunes que evita o menciona
- Evita que el fondo tenga color similar al cabello (dificulta el recorte automático); si ocurre, recorta manualmente con pluma.
- No uses la versión estable de Photoshop; usa la Beta para acceder a generative fill.
- No generes texto con ChatGPT sin iterar y corregir; el primer intento puede incluir afirmaciones falsas sobre las capacidades de la herramienta.
- No subas audio sin comprimir a The ID si pesa más de 15 MB; el sistema lo rechazará.
- No olvides integrar canales de audio en DaVinci Resolve antes de exportar para evitar problemas de reproducción.
- No uses el fondo generado sin centrarlo y escalarlo correctamente en DaVinci Resolve para que se vea natural.