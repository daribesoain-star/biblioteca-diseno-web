# 【手把手AI教程】用Seedance 2.0 做AI短劇漫劇 + AI音樂MV對嘴 +AI 產品廣告，一條影片教會你全部玩法！AI音樂 AI製作產品廣告 AI短劇 AI漫劇 AI做視頻
**Fuente:** Joy | https://youtu.be/9HY76YLO-M8

## Qué enseña
Este tutorial enseña a usar Seedance 2.0 (integrado en la plataforma Higgsfield) para generar cortometrajes de acción real, animación (漫劇), anuncios de productos y vídeos musicales con sincronización labial. Cubre el flujo completo: creación de storyboards con un agente de imágenes multigrilla, conversión de esas imágenes a vídeo, y técnicas para mantener la consistencia del personaje y el movimiento de cámara.

## Técnicas accionables
- **Modelo principal:** Seedance 2.0 (accedido desde la pestaña “video” > “top” en Higgsfield). También se mencionan Hailuo AI Music, Suno y Gemini para generar audio.
- **Estructura de prompt para imagen a vídeo (cortometraje/animación):**
    1. Usar el **agente de imágenes multigrilla** (multi-grid image generator) para crear un storyboard de 9, 16 o 25 paneles. Indicar el estilo (ej. “古风仙侠剧” / drama de espadas y hadas antiguo).
    2. Extraer una imagen individual con el comando: `提取+[número]` (ej. `提取10` para obtener la imagen del panel 10).
    3. Solicitar el prompt de vídeo al agente: `影片提示词` o `视频提示词`, especificando duración (ej. “15秒”). El agente devuelve prompts en chino e inglés.
    4. En Higgsfield: subir la imagen multigrilla o la imagen individual como referencia (icono de imagen). Pegar el prompt de vídeo.
    5. **Añadir obligatoriamente:** `全程无字幕、无水印` (sin subtítulos ni marcas de agua en todo el metraje) para evitar que la IA genere texto no deseado.
- **Parámetros de vídeo en Higgsfield:**
    - Duración: deslizador manual (seleccionar 8s, 10s, 15s o personalizado).
    - Relación de aspecto: seleccionable.
    - Resolución: 480p, 720p, 1080p.
- **Técnica para anuncio de producto:**
    - Subir la imagen del producto al agente multigrilla. Solicitar 9, 16 o 25 paneles. El agente genera una secuencia que muestra el producto en uso desde múltiples ángulos.
    - Luego pedir el prompt de vídeo (ej. “15秒”) y seguir el mismo flujo en Higgsfield.
- **Técnica para sincronización labial (music MV):**
    - **Requisito de audio:** Seedance 2.0 solo acepta clips de hasta **13 segundos**. Cortar el audio con un editor de vídeo antes de subirlo.
    - Subir el audio (icono de audio). Ajustar la selección verde con el deslizador para precisar la duración exacta.
    - Subir una imagen del personaje (opcional, pero recomendado para fijar la apariencia).
    - **Prompt obligatorio:** incluir la letra de la canción completa en el prompt (ej. “谁为我添一件梦的衣裳”). Si no se incluye, la IA puede añadir o cambiar palabras.
    - **Añadir:** `全程无字幕、无水印` y `唱歌时` (mientras canta).
    - Si no se necesita que el personaje cante (se añadirá la música en postproducción), **no incluir** la letra ni subir audio; solo describir la escena.
- **Truco de consistencia de personaje:** Usar el agente multigrilla para generar todas las imágenes del storyboard con el mismo personaje. Luego subir una de esas imágenes como referencia en Higgsfield.
- **Truco para escenas de transición suave (ej. “颁奖礼时间静止” / ceremonia de premios con tiempo congelado):** Usar el prompt exacto proporcionado en el vídeo (no se transcribe literalmente, pero se indica que los puntos de referencia mundiales son intercambiables). Ejemplo de prompt para versión mitológica antigua: `上古神话版` + prompt específico.
- **Si el vídeo no se genera por “protección de contenido”:** Intentar la generación varias veces (hasta que funcione).

## Reglas para el erudito
- **Usa el agente multigrilla** cuando necesites un storyboard coherente con personajes consistentes para cortometrajes, animaciones o anuncios.
- **Usa `提取+[número]`** para extraer una imagen individual de un panel específico del storyboard.
- **Usa `全程无字幕、无水印`** en todos los prompts de vídeo para evitar que la IA añada texto no deseado.
- **Usa la letra completa de la canción en el prompt** cuando hagas sincronización labial; de lo contrario, la IA modificará la letra.
- **Usa clips de audio de máximo 13 segundos** para la función de sincronización labial en Seedance 2.0.
- **Usa la opción de “no volver a subir”** en Higgsfield: después de que la imagen pase la verificación, haz clic en ella para que aparezca directamente en la zona de素材 (material de referencia).
- **Si falla la generación por protección de contenido**, repite la generación varias veces hasta que funcione.

## Errores comunes / limitaciones que menciona
- **Límite de audio:** Seedance 2.0 solo acepta clips de audio de hasta 13 segundos para sincronización labial. Es necesario recortar el audio previamente.
- **Subtítulos no deseados:** Incluso añadiendo `全程无字幕、无水印`, en raras ocasiones la IA sigue generando subtítulos. Se recomienda añadirlo siempre.
- **Modificación de letra:** Si no se incluye la letra exacta en el prompt, la IA puede añadir o cambiar palabras (ej. añadió “谁为我添一件梦的衣裳”).
- **Protección de contenido:** En Higgsfield, a veces la generación falla por “protección de contenido”. La solución es intentar generar varias veces.
- **Tiempo de generación:** Seedance 2.0 es más rápido que Jimeng (即梦), pero aún puede tardar varios minutos en generar vídeos complejos.