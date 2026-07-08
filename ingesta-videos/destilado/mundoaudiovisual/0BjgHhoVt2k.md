# TImelapse y larga exposición - Revelando y Editando Fotografías  📸
**Fuente:** mundoaudiovisual | https://youtu.be/0BjgHhoVt2k

## Qué enseña (2-3 líneas)
El video enseña el flujo completo para crear fotografías de larga exposición usando filtros ND variables y timelapses a partir de secuencias de fotos RAW. Cubre la captura en campo con una Sony Alpha 6400, el revelado selectivo en Camera Raw y Lightroom, y la postproducción en Photoshop y Premiere Pro para obtener resultados profesionales.

## Lecciones accionables
- **Configuración para larga exposición con filtro ND variable:** usa un filtro ND variable de 9 pasos (1-9 stops) ajustable girando el anillo. Ajusta ISO a 100, apertura a F8 (para máxima nitidez), velocidad de obturación a 0.5 segundos para capturar movimiento de vehículos y personas.
- **Revelado en Camera Raw (Photoshop):** abre el RAW con Photoshop → Camera Raw. Sube sombras para recuperar información de zonas oscuras, baja negros para profundidad, controla blancos para evitar quemados. Usa el pincel de ajuste para saturar selectivamente (ej. autobús), bajar temperatura en zonas específicas (ej. cielo), y aumentar exposición en edificios oscuros.
- **Corrección de manchas en Photoshop:** usa la herramienta Parche (Patch) seleccionando la mancha y arrastrando a zona limpia. Luego usa Tampón de clonar (Clone Stamp) para añadir color azul en áreas corregidas. Para eliminar objetos no deseados, usa Relleno según contenido (Content-Aware Fill).
- **Configuración para timelapse:** coloca la cámara en trípode fijo. Programa la cámara para tomar 200 fotografías cada 10 segundos de intervalo (total ~33 minutos de captura). Usa ISO automático si hay cambios de luz, apertura F5, velocidad 1/100. Esto produce ~8 segundos de video a 24 fps.
- **Revelado masivo en Lightroom:** importa las 200 fotos RAW. Revela solo la primera foto: corrige mancha con el clonador de Lightroom, sube sombras, añade claridad (Clarity), usa pincel para bajar temperatura del cielo, aplica filtro graduado para luminancia, ajusta curvas para contraste, sube exposición y sombras. Recorta a relación 16:9 (asegura que el edificio principal quede en el tercio superior). Selecciona todas las fotos (Ctrl+A) → Sincronizar (Sync) → marcar "Ajustes locales" y todo → Sincronizar.
- **Exportación desde Lightroom:** selecciona las 200 fotos → Ctrl+A → Exportar → subcarpeta "timelapse 1" en escritorio → formato JPG, calidad alta, espacio de color RGB.
- **Importación como secuencia en Premiere Pro:** crea proyecto nuevo "timelapse" con secuencia de 30 fps a 1080p. Ve a Importar → selecciona la primera foto de la carpeta → marca "Secuencia de imágenes" (Image Sequence) → Abrir. Ajusta tamaño de fotograma si es necesario.
- **Animación de escala en Premiere:** en Controles de efectos (Effect Controls), al inicio del clip pon keyframe en Escala (Scale) y Posición (Position). Al final del clip, cambia Escala (ej. de 33% a un valor ligeramente mayor) para crear efecto de zoom suave. Procesa entrada y salida para previsualizar.

## Reglas para agentes
- Usa filtro ND variable de 9 pasos cuando necesites reducir luz para larga exposición sin cerrar demasiado el diafragma.
- Siempre dispara en RAW para timelapses para tener margen de edición y poder sincronizar ajustes masivamente.
- Usa Lightroom para revelar timelapses porque permite copiar ajustes a cientos de fotos con un solo clic (Sincronizar).
- Usa Camera Raw + Photoshop para fotos individuales de larga exposición cuando necesites edición selectiva avanzada con pinceles y parches.
- Nunca uses velocidad de obturación mayor a 1-2 segundos con filtros ND variables para fotografía fija (están diseñados para video).
- Siempre recorta el timelapse a relación 16:9 antes de exportar desde Lightroom para que encaje perfectamente en secuencias de video.
- Al importar en Premiere, marca siempre "Secuencia de imágenes" para que las fotos se interpreten como un clip de video continuo.

## Errores comunes que evita o menciona
- **Manchas en el sensor o filtro:** aparecen como puntos oscuros en las fotos. Se corrigen con la herramienta Parche o Clonador en Photoshop, o con el clonador de Lightroom antes de sincronizar.
- **Quemar blancos al subir exposición:** controla los blancos y no los dejes pasar del punto de quema (highlight clipping).
- **Sincronizar sin marcar ajustes locales:** al sincronizar en Lightroom, asegúrate de marcar "Ajustes locales" (Local Adjustments) para que pinceles y filtros graduados se copien a todas las fotos.
- **Usar filtro ND variable para exposiciones muy largas (>2 seg):** el instructor advierte que estos filtros son más para video que para fotografía de larga exposición prolongada.
- **No dejar espacio para zoom en timelapse:** las fotos RAW tienen alta resolución (5715x3215 px), permiten escalar y hacer zoom sin perder calidad en video 1080p o 4K.
- **Olvidar el trípode fijo:** cualquier movimiento de cámara arruina la continuidad del timelapse.