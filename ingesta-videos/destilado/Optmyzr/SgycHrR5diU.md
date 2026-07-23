# Optmyzr Auction Insights Visualizer for Google Ads
**Fuente:** Optmyzr | https://youtu.be/SgycHrR5diU

## Qué enseña
Cómo transformar los datos tabulares de Auction Insights de Google Ads en visualizaciones interactivas que muestran la evolución temporal de competidores, tasas de superposición y otras métricas clave, usando la herramienta gratuita de Optmyzr.

## Lecciones accionables
- Descargar el reporte desde Google Ads: ir a **Campaigns > Auction Insights**, seleccionar un rango de fechas con **múltiples días**, hacer clic en **"More options"** o **"Scheduling"**, agregar segmentación por **día (day segmentation)**, desmarcar **"Title"** y **"Date range"**, y descargar el archivo.
- Subir el archivo descargado al tool de Optmyzr arrastrándolo o usando el explorador de archivos.
- En los ajustes del tool, configurar **"Period"** para identificar la columna de fecha (día, semana, mes, trimestre o año).
- En **"Display URL domain"**, seleccionar la columna que contiene los dominios propios y de competidores (automático en inglés; ajustar si el reporte está en otro idioma).
- Seleccionar los competidores a visualizar desde la lista; se pueden agregar o quitar.
- Usar la **línea 1** para cambiar la métrica competitiva analizada (ej: cambiar a **"Overlap rate"**).
- Para agregar más visualizaciones desde el mismo dataset, hacer clic en **"+"** y configurar cada gráfico de forma independiente (cambiar competidores y métricas).
- Subir **múltiples archivos a la vez** (ej: uno con segmentación semanal y otro con diaria) para comparar distintos rangos de tiempo en una misma sesión.
- **Imprimir o capturar pantalla** de los resultados, ya que Optmyzr no almacena los datos subidos; al cerrar la pestaña del navegador se pierde todo.
- Para uso recurrente, **programar la descarga** desde Google Ads: en las opciones de descarga, elegir periodicidad (ej: una vez por semana) y mantener la segmentación por día, sin título ni rango de fechas.

## Reglas para agentes
- Usa **segmentación por día** al descargar el reporte de Google Ads para obtener datos puntuales en cada fecha del rango.
- Desmarca siempre **"Title"** y **"Date range"** en las opciones de descarga para que el archivo sea compatible con Optmyzr.
- Configura el campo **"Period"** en Optmyzr según la granularidad de tu archivo (día, semana, mes, etc.) antes de generar la visualización.
- Si el reporte de Google Ads está en un idioma distinto al inglés, ajusta manualmente la columna **"Display URL domain"** en los ajustes.
- Nunca cierres la pestaña del navegador sin haber impreso o capturado las visualizaciones, porque Optmyzr no guarda los datos.
- Para análisis continuos, programa la descarga recurrente desde Google Ads en lugar de hacer descargas manuales únicas.

## Errores comunes que evita o menciona
- No incluir segmentación por día en la descarga, lo que genera una sola fila de datos agregados en lugar de puntos por fecha.
- Olvidar desmarcar "Title" y "Date range", lo que impide que Optmyzr procese correctamente el archivo.
- Usar reportes en otro idioma sin ajustar la columna "Display URL domain", causando que el tool no identifique los dominios.
- Cerrar la pestaña del navegador sin guardar las visualizaciones (impresión o captura), perdiendo todo el trabajo.
- Subir archivos con diferentes granularidades sin verificar que el campo "Period" esté correctamente configurado para cada uno.