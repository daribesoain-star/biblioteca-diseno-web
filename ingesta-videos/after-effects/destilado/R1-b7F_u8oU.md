# How to Optimize After Effects Renders
**Fuente:** SternFX | https://youtu.be/R1-b7F_u8oU

## Qué enseña
Explica cómo usar el Composition Profiler (Oscar the Snail) para identificar capas y efectos que consumen más tiempo de render, y cómo optimizar un proyecto recortando el área de trabajo, usando Region of Interest, reduciendo track mattes duplicados y reemplazando efectos lentos por alternativas más rápidas.

## Técnicas accionables
- **Trim Composition to Work Area:** Coloca el Current Time Indicator (CTI) donde quieras el inicio y presiona **B** (Begin); coloca el CTI donde quieras el final y presiona **N** (End). Luego haz clic derecho sobre la barra del Work Area y selecciona "Trim Comp to Work Area".
- **Set Work Area for Selected Layers:** Selecciona una o varias capas y presiona **Command + Option + B** (macOS) / **Alt + Ctrl + B** (Windows) para ajustar automáticamente el Work Area a la duración de esas capas.
- **Trim Layer to Work Area:** Selecciona una capa y presiona **Option + ]** (macOS) / **Alt + ]** (Windows) para recortar el final de la capa hasta donde esté el CTI.
- **Activar Composition Profiler:** Haz clic en el ícono de **Oscar the Snail** (ubicado en la parte inferior del panel Composition) para expandir la columna **Render Time** en la línea de tiempo. Allí se muestra un desglose por capa, máscaras, estilos de capa y efectos individuales, con barras de color: verde (tiempo real o medio real), amarillo a rojo (de 100 ms a 5 segundos).
- **Reducir Track Mattes duplicados:** Si varias capas usan el mismo track matte (ej. una capa "glitch matte"), selecciona todas esas capas, usa el **Track Matte Pick Whip** para vincularlas a una sola capa fuente, y luego elimina las copias duplicadas del matte.
- **Region of Interest (ROI):** Activa el ROI desde el botón en la parte inferior del panel Composition (ícono de rectángulo punteado), dibuja un rectángulo alrededor del área que realmente se usa (ej. solo la zona donde aparecen los títulos). Luego ve a **Composition > Crop Comp to Region of Interest** para reducir el tamaño del comp.
- **Reemplazar Camera Lens Blur por Compound Blur:** Si el efecto **Camera Lens Blur** es un "render hog", ve a **Effect > Blur & Sharpen > Compound Blur**. Ajusta el parámetro **Maximum Blur** a la mitad del valor original (ej. de 5 a 2.5), selecciona la capa de mapa de desenfoque (ej. "blur ramp") y marca **Invert Blur** si es necesario. Esto es mucho más rápido, aunque no idéntico visualmente.
- **Purgar caché antes de medir:** Para obtener una medición precisa del tiempo de render de un fotograma, ve a **Edit > Purge > All Memory** (atajo: **Command + Option + /** en macOS o **Alt + Ctrl + /** en Windows) antes de evaluar el frame actual.
- **Re-exportar como Motion Graphics Template:** Después de optimizar, abre el panel **Essential Graphics** y re-exporta el proyecto como .mogrt para usarlo en Premiere Pro con mejor rendimiento.

## Reglas para el erudito (imperativas y verificables)
- **Usa el Composition Profiler siempre que necesites identificar cuellos de botella:** no tiene penalización de rendimiento, puedes mantenerlo visible todo el tiempo.
- **Nunca dejes capas invisibles o desactivadas esperando ser evaluadas:** no aparecen en la columna Render Time, pero consumen recursos si están activas.
- **Cuando uses Draft 3D (si hay capas 3D), el Composition Profiler se desactiva automáticamente.**
- **Si el panel Composition está oculto o cerrado, el Composition Profiler entra en estado "dormant" (no registra datos).**
- **Para track mattes, prefiere una sola capa fuente compartida por Pick Whip en lugar de múltiples copias del mismo matte.**
- **Valor por defecto recomendado para Compound Blur:** reducir el Maximum Blur a la mitad del valor original del Camera Lens Blur (ej. 5 → 2.5) y activar Invert Blur si el mapa original está invertido.

## Errores comunes que evita o menciona
- **No asumir que todas las capas se renderizan igual:** el profiler muestra que capas con track mattes duplicados o efectos como Camera Lens Blur pueden ser los mayores consumidores de tiempo.
- **No ignorar el tamaño del comp:** si solo una pequeña porción de la imagen se usa (ej. títulos), el ROI y "Crop Comp to Region of Interest" reducen drásticamente el área de render.
- **No dejar el Work Area más largo de lo necesario:** recortarlo al rango útil (con B/N o Trim Comp to Work Area) evita procesar fotogramas innecesarios.
- **No confiar en la vista previa en caché para medir rendimiento:** siempre purga la memoria (Edit > Purge > All Memory) antes de leer el tiempo de render de un frame.