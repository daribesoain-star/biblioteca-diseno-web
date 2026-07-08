# DJI MINI 3 PRO - HYPERLAPSE - Complete Tutorial: How to record and edit them.
**Fuente:** mundoaudiovisual | https://youtu.be/fH4I4sgV0B0

## Qué enseña (2-3 líneas)
Este tutorial enseña a grabar hyperlapses con el DJI Mini 3 Pro usando los modos de vuelo (Orbit, Fixed Heading, Trajectory) y a editarlos manualmente en postproducción con Lightroom Classic y Adobe Premiere Pro para obtener resultados profesionales, incluyendo estabilización y corrección de color.

## Lecciones accionables
- **Configuración previa obligatoria en el dron:** Antes de iniciar cualquier hyperlapse, ve a Menú (tres puntos) → Cámaras → Tipo de foto en Hyper → selecciona **RAW**. Si lo dejas en "desactivado", el dron genera un video automático sin opción de edición manual posterior.
- **Modo Orbit:** Selecciona el objetivo (ej. rotonda), elige duración (ej. 10 segundos), velocidad, dirección (horaria/antihoraria), intervalo mínimo (ej. 3 segundos de duración de cuadro). Inicia la captura.
- **Modo Fixed Heading:** Bloquea el rumbo con el candado (padlock). Si el dron apunta hacia adelante y bloqueas, volará en línea recta hacia adelante. Si giras el dron, bloqueas y luego lo orientas a otro lado, volará en la dirección bloqueada (ej. lateral). Configura duración (ej. 12 segundos, 300 fotos) y velocidad lenta.
- **Modo Trajectory:** Marca punto de inicio y punto final (se recomiendan solo 2 puntos). El dron se mueve automáticamente al primer punto, ajusta gimbal y heading, luego ejecuta la trayectoria. Configura duración (ej. 12 segundos, 300-350 fotos).
- **Postproducción en Lightroom Classic:**
  1. Archivo → Importar fotos y videos → selecciona todas las fotos RAW de la carpeta "hyperlapse".
  2. Ve al módulo Develop, edita la primera foto (sube sombras, ajusta contraste, temperatura, saturación, tonos verdes/amarillos).
  3. Presiona **Ctrl+C** (copiar ajustes), selecciona todas las demás fotos con **Ctrl+A** (excluyendo la primera), clic derecho → Develop Settings → Paste Settings.
  4. Selecciona todas con **Ctrl+A**, ve a Archivo → Exportar → elige carpeta destino, formato **JPG**, calidad máxima.
- **Postproducción en Adobe Premiere Pro:**
  1. Crea nuevo proyecto ("Hyperlapse con DJI Mini 3").
  2. En la ventana Proyectos, importa: selecciona la **primera fotografía** de la secuencia exportada y marca **"Image Sequence"** (secuencia de imágenes). Se crea automáticamente un clip de video.
  3. Crea una secuencia nueva (ej. 1080p, 25 fps). Arrastra el clip a la línea de tiempo, mantén configuración existente.
  4. Aplica **Warp Stabilizer** desde la ventana Efectos. En Controles de Efectos, configura: Smooth Motion, Warp Spaces, estabilizar, recortar, autoescala. Espera el análisis (fondo).
  5. Ajusta escala en Controles de Efectos para eliminar bordes negros.
  6. Opcional: usa el módulo Color → Ruedas de color → selecciona tonos verdes y modifica matiz para efecto artístico.

## Reglas para agentes
- **Usa RAW en el dron** cuando vayas a grabar hyperlapses que editarás manualmente; nunca lo dejes en "desactivado".
- **Selecciona "Image Sequence"** al importar en Premiere Pro para que las fotos se conviertan automáticamente en video.
- **Copia y pega ajustes de Lightroom** con Ctrl+C y Paste Settings para aplicar la misma edición a todas las fotos de la secuencia.
- **Aplica Warp Stabilizer** siempre después de importar el hyperlapse para corregir movimientos no deseados del dron.
- **Usa filtros ND** para lograr exposiciones lentas (shutter speed amplio) que generen efecto de movimiento estirado en coches, etc.

## Errores comunes que evita o menciona
- **No dejar el tipo de foto en "desactivado":** si no se configura a RAW, el dron genera un video automático sin posibilidad de edición manual en postproducción.
- **Usar el video que devuelve el dron:** el archivo de video que genera el dron no sirve para edición manual; hay que usar la carpeta de fotos RAW.
- **No estabilizar en postproducción:** incluso con el dron estabilizado, siempre hay micro-movimientos que requieren Warp Stabilizer en Premiere.
- **Batería limitada:** el dron solo permite grabar hyperlapses de 10 a 12 segundos como máximo (aprox. 300 fotos a 30 fps).
- **No ajustar escala después de estabilizar:** el Warp Stabilizer puede dejar bordes negros que requieren escalado manual en Controles de Efectos.