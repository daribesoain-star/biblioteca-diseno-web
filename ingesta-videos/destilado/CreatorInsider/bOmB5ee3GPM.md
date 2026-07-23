# YouTube Advanced Analytics: What's New and What's Coming Soon!
**Fuente:** CreatorInsider | https://youtu.be/bOmB5ee3GPM

## Qué enseña (2-3 líneas)
Jasmine del equipo de analítica de YouTube presenta las nuevas funciones de comparación en YouTube Analytics (Deep Dive), incluyendo comparación de métricas, comparación lado a lado, datos normalizados y creación masiva de grupos de videos. También adelanta próximas mejoras como gráficos combinados de edad y género, filtros avanzados por fuente de tráfico, y la opción de exportar datos a Google Sheets.

## Lecciones accionables
- **Comparación de métricas en Deep Dive:** selecciona dos métricas simultáneas (ej. "views" vs "comments", "views" vs "revenue", "views" vs "duration") para ver correlaciones entre ellas. Ve a YouTube Analytics > cualquier tarjeta > "See more" > modo comparación > elige dos métricas del menú desplegable.
- **Comparación período sobre período (Period over Period):** usa la función de comparación para ver rendimiento del mes actual vs mes anterior, o año vs año. Accede desde el menú de comparación en Deep Dive.
- **Comparación lado a lado (Side by Side):** activa esta vista para ver el ranking de tus principales países de audiencia (ej. "US, Japan, Germany") comparando el período actual con el anterior.
- **Comparación normalizada (Normalized Deep Dive):** compara un video específico contra otro video similar (mismo tipo de contenido, mismo tiempo desde la publicación). En Deep Dive, selecciona un video y usa la opción "Compare to a specific video" para evitar comparaciones injustas entre tipos de contenido distintos.
- **Creación masiva de grupos (Bulk Creation):** para agrupar hasta 200 videos, copia y pega una lista de IDs de video en el campo de creación de grupos. Ve a la sección de grupos en Deep Dive > "Bulk creation" > pega los IDs separados por comas o saltos de línea.
- **Exportar datos a Google Sheets:** usa el botón "Export" en la esquina superior derecha de cualquier vista de Deep Dive para descargar los datos directamente a Google Sheets o como archivo CSV.
- **Guardar vistas de Deep Dive:** copia y pega la URL de la vista actual de Deep Dive para reconstruirla después (no hay botón de guardado nativo aún).

## Reglas para agentes
- Usa el modo de comparación normalizada cuando necesites evaluar el rendimiento de un video frente a otros del mismo tipo y con la misma antigüedad desde la publicación.
- Usa la exportación a Google Sheets cuando necesites preservar una vista específica de Deep Dive para análisis futuros (ya que no hay función de guardado nativa).
- Usa la creación masiva de grupos con IDs de video cuando tengas más de 10 videos que agrupar; para menos de 10, usa la búsqueda individual.
- Nunca compares videos de diferentes tipos de contenido (ej. noticias vs tutoriales) sin usar la normalización o la comparación manual video a video.
- Nunca asumas que las métricas en la vista de resumen (Overview) son suficientes para análisis avanzados; usa Deep Dive para correlaciones y comparaciones detalladas.

## Errores comunes que evita o menciona
- **Comparar videos con diferente tiempo desde la publicación:** la normalización integrada corrige esto automáticamente, pero si no se usa, las comparaciones son engañosas.
- **No usar la comparación lado a lado para cambios de ranking:** sin ella, es difícil detectar cambios en las fuentes de tráfico o países principales entre períodos.
- **Crear grupos video por video cuando hay muchos:** el método manual es lento; usa la creación masiva con IDs para grupos de hasta 200 videos.
- **Ignorar la exportación como alternativa al guardado de vistas:** no hay botón "Save view", pero la URL y la exportación a Google Sheets permiten reconstruir o conservar los datos.
- **No explorar el Deep Dive por ser intimidante:** la interfaz tiene muchas columnas pero es la única forma de acceder a comparaciones avanzadas y datos normalizados.