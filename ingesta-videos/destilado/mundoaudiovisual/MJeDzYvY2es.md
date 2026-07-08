# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 16 - Multicámaras
**Fuente:** mundoaudiovisual | https://youtu.be/MJeDzYvY2es

## Qué enseña
Cómo crear y editar una secuencia multicámara en Adobe Premiere Pro 2020 sincronizando múltiples fuentes de video (tres cámaras) mediante el audio común. Explica el flujo completo: importación, sincronización, creación de la secuencia multicámara y edición en tiempo real usando el panel de conmutación.

## Lecciones accionables
- Importar los clips de todas las cámaras al panel de proyecto (Archivo > Importar o arrastrar).
- Crear una nueva secuencia: **File > New > Sequence**; configurar resolución **1080p** y framerate **24 fps** (o el mismo para todas las cámaras).
- Seleccionar los tres clips manteniendo presionada la tecla **Shift** (clic en cada uno).
- Hacer clic derecho sobre la selección y elegir **"Create Multi-Camera Source Sequence"**.
- En el cuadro de diálogo, en **"Synchronization by"**, seleccionar **"Audio"** (porque el audio de todas las cámaras es el mismo).
- Hacer clic en **OK**; Premiere procesa y genera una nueva secuencia multicámara en el proyecto.
- Arrastrar esa secuencia multicámara a la línea de tiempo.
- Para activar el panel de conmutación multicámara: si no aparece el botón, presionar el **signo "+"** en la barra de herramientas del monitor de programa, buscar el ícono **"Toggle Multi-Camera View"** y arrastrarlo a la barra.
- Activar el botón **"Toggle Multi-Camera View"** para que aparezca el panel con las vistas de las cámaras.
- Editar en tiempo real: hacer clic en el panel multicámara sobre la cámara deseada (1, 2 o 3) para cambiar de toma sobre la marcha.
- Alternativamente, usar las teclas del teclado: **1**, **2** y **3** para cambiar de cámara instantáneamente.
- Los cortes se generan automáticamente en la línea de tiempo según los clics o teclas presionadas.
- Para ajustar: eliminar cortes no deseados y usar **Ripple Delete** para cerrar espacios.

## Reglas para agentes
- Usa **"Create Multi-Camera Source Sequence"** solo cuando todos los clips tengan el mismo framerate (idealmente 24 fps o el que uses); si hay diferencias grandes (ej. 120 fps vs 24 fps), la sincronización puede fallar.
- Siempre selecciona **"Synchronization by: Audio"** cuando el audio de todas las cámaras sea idéntico (misma fuente sonora).
- Activa **"Toggle Multi-Camera View"** antes de empezar a editar; sin ese botón activo no podrás ver ni cambiar entre cámaras en el monitor.
- Nunca edites multicámara sin haber sincronizado primero el audio de la grabación externa (micrófono) con el audio de los clips de video, si usas pista de audio separada; hazlo antes o después de crear la secuencia multicámara.
- Usa las teclas **1, 2, 3** para cambios rápidos de cámara durante la reproducción; el mouse es más lento.

## Errores comunes que evita o menciona
- **No sincronizar correctamente por audio:** si los clips no tienen el mismo audio (por ejemplo, una cámara sin sonido), la sincronización automática fallará; en ese caso se necesitaría sincronización manual por timecode o marcadores.
- **Usar framerates diferentes entre cámaras:** mezclar 120 fps con 24 fps puede provocar desincronización o resultados imperfectos; recomienda grabar todas las cámaras con el mismo framerate.
- **Olvidar activar el botón "Toggle Multi-Camera View":** sin él no aparece el panel de selección de cámaras y no se puede editar multicámara.
- **No arrastrar el botón a la barra si no está visible:** si falta, hay que agregarlo manualmente desde el menú "+" de la barra de herramientas del monitor.