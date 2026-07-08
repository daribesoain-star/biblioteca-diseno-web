# How to Export Your Video Correctly in DaVinci Resolve 20 - Video Codecs
**Fuente:** mundoaudiovisual | https://youtu.be/9e9qOiiA1e4

## Qué enseña
Explica la diferencia entre los códecs de video H.264, H.265 y ProRes, cuándo usar cada uno según el destino final del video (entrega a cliente, trabajo intermedio, elementos con transparencia), y cómo configurar la exportación correcta en el módulo Delivery de DaVinci Resolve 20.

## Lecciones accionables
- Para entrega final de video terminado (sin necesidad de más edición ni corrección de color), usa el códec **H.265** (también llamado HEVC) en el módulo Delivery. Es el que recomienda el instructor por su equilibrio entre tamaño reducido y calidad visual.
- Para exportar elementos con transparencia (animaciones, títulos, suscriptores), usa **Apple ProRes 4444** con la opción **"Export Alpha Output"** activada. En el panel de Delivery: selecciona formato **QuickTime**, códec **Apple ProRes 4444**, y marca la casilla **"Export Alpha Output"**.
- Para exportar un video que será trabajado por otro profesional (ej. editor que pasa el proyecto a un colorista), usa **Apple ProRes 4444** sin compresión, para conservar toda la información de color posible.
- Elige el **contenedor** según tu sistema operativo: **QuickTime (.mov)** en Mac, **MP4 (.mp4)** en Windows. Esto no afecta la calidad del video.
- Para resolución de entrega, si necesitas margen para reencuadres o zooms, exporta en **1920 x 1080 (HD)** en lugar de 4K, especialmente en proyectos como bodas donde el cliente verá en TV o móvil.
- Para renderizar: en el módulo Delivery, agrega el trabajo a la cola de renderizado con el botón **"Add to Render Queue"** y luego presiona **"Start Render"**.

## Reglas para agentes
- Usa **H.265** cuando el video esté terminado y sea para entrega final o subida a plataformas (YouTube, redes sociales).
- Usa **Apple ProRes 4444 con Export Alpha Output** cuando el video contenga transparencia (alpha channel) que deba conservarse.
- Usa **Apple ProRes 4444** (sin alpha) cuando el video sea un archivo intermedio que otro profesional editará o corregirá.
- Nunca uses H.264 o H.265 para exportar elementos con transparencia; estos códecs no soportan alpha channel y renderizarán un fondo negro.
- Nunca asumas que mayor tamaño de archivo significa mejor calidad para el usuario final; el códec determina la eficiencia de compresión, no la calidad visual perceptible.

## Errores comunes que evita o menciona
- Exportar elementos con transparencia en H.264 o H.265, lo que produce un fondo negro sólido en lugar de transparencia.
- Confundir el contenedor (MP4, MOV, AVI) con el códec (H.264, H.265, ProRes); el contenedor no afecta la calidad del video.
- Usar ProRes para entrega final al cliente cuando el video no necesita más edición, generando archivos innecesariamente grandes (ej. 10 GB vs 300 MB con H.265).
- Pensar que la resolución máxima (4K) siempre es mejor; en proyectos donde se necesita hacer zoom, 1920x1080 ofrece más flexibilidad de reencuadre sin pérdida de calidad perceptible para el cliente.