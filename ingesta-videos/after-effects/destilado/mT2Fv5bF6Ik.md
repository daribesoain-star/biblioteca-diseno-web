# Animation in After Effects
**Fuente:** School of Motion | https://youtu.be/mT2Fv5bF6Ik

## Qué enseña (2-3 líneas)
Este tutorial ofrece una introducción completa a la interfaz de Adobe After Effects, explicando los paneles principales, cómo crear composiciones, importar medios, trabajar con capas y realizar fotogramas clave básicos. También repasa los 12 principios de la animación tradicional y el concepto fundamental de *spacing* (espaciado entre fotogramas) como base para animar en After Effects.

## Técnicas accionables
- **Crear una nueva composición:** Haz clic en el ícono de composición en el panel Project o ve a `Composition > New Composition`. Configura: nombre ("test"), preset personalizado, resolución `1920 x 1080`, píxeles cuadrados (`Square Pixels`), framerate `24` fps, duración (ej. 16 segundos), color de fondo negro.
- **Importar archivos:** Doble clic en el panel Project, o `File > Import > File` (atajo `Cmd+I` en Mac / `Ctrl+I` en Windows). Arrastra el archivo desde el panel Project directamente a la línea de tiempo (layer stack) o a la composición.
- **Herramientas esenciales:** `V` = Selection Tool, `H` = Hand Tool (mover canvas), `Z` = Zoom Tool, `Y` = Pan Behind Tool (mover Anchor Point), `Q` = Shape Tools (rectángulo, elipse, polígono, estrella), `G` = Pen Tool, `Cmd+T` / `Ctrl+T` = Type Tool.
- **Crear una forma (elipse):** Selecciona la elipse con `Q`, mantén `Shift` para círculo perfecto, `Shift+Option+Cmd` (Mac) / `Shift+Alt+Ctrl` (Windows) + arrastrar para escalar desde el centro exacto.
- **Atajos de propiedades de capa:** Selecciona una o varias capas y presiona: `P` = Position, `S` = Scale, `R` = Rotation, `T` = Opacity.
- **Fotogramas clave:** Activa el cronómetro (stopwatch) junto a la propiedad deseada (ej. Scale) para establecer un keyframe inicial. Mueve el playhead a otro punto en el tiempo y cambia el valor de la propiedad; After Effects añade automáticamente un nuevo keyframe.
- **Previsualización (RAM Preview):** Define el inicio del área de previsualización con `B` (Begin) y el final con `N` (End). Presiona `0` (cero) en el teclado numérico para iniciar la previsualización RAM.
- **Duplicar capa:** Selecciona la capa y presiona `Cmd+D` (Mac) / `Ctrl+D` (Windows).
- **Alinear y distribuir:** Selecciona múltiples capas en la línea de tiempo, ve al panel Align (en la ventana de paneles a la derecha). Usa "Align Bottom" para alinear bordes inferiores, "Distribute Horizontally" para espaciar uniformemente entre elementos.
- **Zoom en el panel Composition:** `Cmd++` (Mac) / `Ctrl++` (Windows) para acercar, `Cmd+-` para alejar. Usa el menú desplegable de magnificación (ej. "Fit") para ajustar la vista al panel.
- **Guías y cuadrículas:** En el panel Composition, haz clic en el menú "Choose grids and guides" y selecciona "Proportional Grid" para encontrar el centro de la composición.

## Reglas para el erudito (imperativas y verificables)
- **Usa píxeles cuadrados (Square Pixels)** para contenido web estándar; solo usa píxeles no cuadrados si tu formato de salida lo requiere (ej. anamórfico).
- **Usa capas de forma (Shape Layers)** para gráficos vectoriales que escalan sin pérdida de calidad; evita escalar imágenes de píxeles (PNG, JPG) más allá de su tamaño original para prevenir pixelización.
- **Usa `B` y `N`** para definir el área de previsualización antes de hacer RAM Preview; nunca uses la reproducción sin definir el rango si solo quieres ver una sección específica.
- **Nunca asumas que una propiedad tiene keyframes activos** solo porque otra propiedad de la misma capa los tiene; cada propiedad (Position, Scale, Rotation) requiere activar su cronómetro por separado.
- **Usa `Shift+Option+Cmd` + arrastrar** (Mac) o `Shift+Alt+Ctrl` + arrastrar (Windows) para escalar una forma desde su centro exacto manteniendo proporciones.
- **Valor por defecto recomendado:** Resolución de composición en "Full" para trabajo final; usa "Quarter" solo para previsualizaciones rápidas si el rendimiento es bajo.

## Errores comunes que evita o menciona
- **No confundir el Anchor Point con el centro de la composición:** Al crear una forma con la elipse, el Anchor Point de la capa está en el centro de la composición, no en el centro de la forma creada. Usa la guía de cuadrícula proporcional y los modificadores de teclado para centrar correctamente.
- **No escalar imágenes de píxeles sin control:** Al escalar un PNG más allá de su tamaño original, la imagen se pixeliza y pierde calidad. Las capas de forma vectoriales no tienen este problema.
- **No olvidar definir el área de previsualización:** Si no usas `B` y `N`, la RAM Preview puede reproducir toda la composición o un área no deseada. Ajusta siempre los marcadores de inicio y fin.
- **No asumir que el tipo de medio es intercambiable:** Los elementos de píxeles (PNG, video) y los vectoriales (Shape Layers, Illustrator) tienen casos de uso diferentes; úsalos según la necesidad de escalabilidad y calidad.