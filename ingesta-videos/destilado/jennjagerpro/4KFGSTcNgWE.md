# FCP vs Third Party Plugins Part II
**Fuente:** jennjagerpro | https://youtu.be/4KFGSTcNgWE

## Qué enseña
Compara el rendimiento de efectos nativos de Final Cut Pro frente a plugins de terceros en cuatro áreas: motion tracking, sharpen, corrección de color y aislamiento de voz. Muestra casos prácticos con resultados lado a lado y da un veredicto para cada categoría.

## Lecciones accionables
- **Motion Tracking nativo (FCP Object Tracker):** Coloca una rejilla en el visor sobre el objeto a rastrear, ajusta tamaño/posición, presiona "Analyze" en la parte superior del visor. El texto 3D se mantiene con perspectiva fija (no cambia ángulo con la cámara).
- **Motion Tracking con M Tracker 3D (Motion VFX):** Aplica el efecto "M Tracker 3D" al clip, presiona "Track" (no requiere seleccionar nada en el frame). Luego ve a Títulos y Generadores > categoría M Tracker 3D, elige un título, ajústalo. En el clip original, copia el track (botón "Copy Track"), ve al título, en el inspector de título presiona "Paste Track". El texto cambia de perspectiva en 3D real con el movimiento de cámara.
- **Importar objetos USDZ a M Tracker 3D:** En Final Cut, haz clic derecho sobre un objeto 3D existente de M Tracker > "Open in Motion". En Motion, localiza el objeto (ej: robot), arrastra y suelta el archivo USDZ desde Finder para reemplazarlo, ajusta escala y rotación. Guarda como (File > Save As) en tu categoría de títulos propia. En Final Cut, aparece en "Jen's Titles" (o el nombre que le hayas dado). Pega el track copiado previamente.
- **Sharpen nativo (FCP):** Se encuentra en Efectos > Categoría "Blur" > "Sharpen". Solo tiene un control deslizante de cantidad (default 2.5). Útil en emergencias pero genera modelado no deseado en piel y bordes oscuros al subir sombras.
- **Sharpen con FCP Effects Sharpener:** Aplica el efecto. Ajusta independientemente nitidez en Highlights, Mids y Shadows. Permite enmascarar hasta 3 áreas con un solo efecto (ej: enfocar solo los ojos). Evita contornos negros exagerados.
- **Corrección de color nativa (FCP):** Usa múltiples herramientas: Color Board, Color Wheels, curvas Hue/Saturation, sliders de ajuste de color, y añade film grain por separado. Requiere abrir varios paneles distintos.
- **Corrección de color con Color Finale:** Asume perfil Log al inicio. Todo el flujo (incluyendo film grain) está integrado en un solo efecto. Usa la función "Isolate" para aislar la piel del sujeto y verificar el tono en el vector scope (línea indicadora de tono de piel). Permite agrupar clips en la línea de tiempo: los ajustes en un clip afectan a todos los del grupo, sin necesidad de remover/pegar atributos manualmente.
- **Voice Isolation nativo (FCP):** Se aplica desde el inspector de audio. Solo tiene un control deslizante de "Amount". Muy efectivo en ruido de calle, viento, agua, multitudes.
- **Dialogue Enhance (FX Factory):** Ofrece controles adicionales: Noise Reduction, Dynamics, Spectrum Correction, Loudness Boost. Preferible si se necesita ajuste fino en edición de audio. Útil como respaldo cuando Voice Isolation nativo no es suficiente.

## Reglas para agentes
- Usa el Object Tracker nativo de FCP cuando necesites rastrear objetos planos o cubrir logos en 2D (perspectiva fija es aceptable).
- Usa M Tracker 3D cuando necesites que el texto/objeto 3D cambie de perspectiva con el movimiento de cámara (tracking en espacio 3D real).
- Nunca intentes importar archivos USDZ directamente a Final Cut Pro; ábrelos primero en Apple Motion y reemplaza un objeto 3D existente de M Tracker.
- Usa FCP Effects Sharpener en lugar del Sharpen nativo cuando necesites evitar bordes negros exagerados o modelado no deseado en piel.
- Usa Color Finale cuando necesites agrupar clips en la línea de tiempo para corrección de color sincronizada (FCP nativo no lo permite).
- Nunca uses sharpen para rescatar clips extremadamente desenfocados; siempre prioriza volver a grabar si es posible.
- Usa Dialogue Enhance de FX Factory solo cuando Voice Isolation nativo no sea suficiente y necesites control fino sobre reducción de ruido, dinámica o ecualización.

## Errores comunes que evita o menciona
- No asumir que el Object Tracker nativo de FCP sirve para objetos 3D: la perspectiva del texto no cambia con el movimiento de cámara, lo que delata que es un track 2D.
- No intentar usar texto normal de FCP con M Tracker 3D: hay que usar los títulos específicos de la categoría M Tracker 3D.
- No olvidar copiar el track desde el clip original y pegarlo en el título/objeto 3D (no se aplica automáticamente).
- No subir el slider de Shadows en el Sharpen nativo de FCP porque genera bordes oscuros y aspecto caricaturesco.
- No esperar que ningún sharpen (nativo o plugin) rescate clips extremadamente fuera de foco; la recomendación es volver a grabar.
- No usar múltiples herramientas de color separadas en FCP cuando Color Finale integra todo (incluyendo film grain) en un solo efecto.
- No ignorar la función "Isolate" de Color Finale para verificar tono de piel en el vector scope; en FCP nativo requiere pasos extra con herramientas de recorte.
- No asumir que Voice Isolation nativo es siempre suficiente: en condiciones de ruido complejas, Dialogue Enhance permite ajustes más precisos.