# The Power of Product Labeling: The Secret Ingredient to Profitable Shopping Campaigns
**Fuente:** Optmyzr | https://youtu.be/ccA4CyZpZII

## Qué enseña
Cómo estructurar campañas de Shopping y Performance Max mediante etiquetado dinámico de productos en el feed de Merchant Center, usando reglas automatizadas basadas en rendimiento histórico diario (últimos 15, 30, 60 y 90 días) para asignar presupuesto y pujas según rentabilidad, estacionalidad y nivel de exposición, sin intervención manual diaria.

## Lecciones accionables
- **Segmentar productos por etiquetas de rendimiento temporal:** Crear etiquetas personalizadas en el feed de Merchant Center como "top_15_days", "top_30_days", "top_60_days", "top_90_days" basadas en el rendimiento diario de los últimos 90 días. Los productos con menos de 10 clics o 10 impresiones se etiquetan como "low_exposure" o "sin etiqueta".
- **Usar Optmyzr para automatizar el análisis diario:** Configurar reglas en el motor de reglas de Optmyzr (Shopping Automator) que ejecuten el análisis de rendimiento cada noche y generen automáticamente una hoja de cálculo con las etiquetas actualizadas.
- **Sincronizar etiquetas con Merchant Center:** Vincular la hoja de cálculo generada por Optmyzr con Google Merchant Center para que las etiquetas personalizadas se apliquen automáticamente al feed.
- **Crear campañas separadas por etiqueta:** Usar el Campaign Automator / Shopping Campaign Automator de Optmyzr para que, en base a las etiquetas del feed, se creen y actualicen automáticamente campañas, grupos de productos o asset groups (en PMax) para cada etiqueta (top 15, top 30, etc.).
- **Asignar presupuestos y ROAS objetivo diferenciados:** Para productos "top_15_days": mayor presupuesto y ROAS objetivo más bajo (permitir más gasto). Para productos "top_90_days": menor presupuesto y ROAS objetivo más alto (limitar gasto). Para productos "low_exposure": presupuesto mínimo y ROAS objetivo extremadamente bajo para realizar pruebas.
- **Expandir a DSA (Dynamic Search Ads):** Usar Catcher (herramienta) para descargar los datos del feed de Merchant Center a Google Sheets y construir campañas DSA que solo incluyan productos etiquetados como "top_15_days".
- **Configurar notificaciones para asset groups nuevos:** En Optmyzr, activar notificaciones cuando se cree un nuevo asset group en PMax para agregar manualmente las señales de audiencia y los assets faltantes.
- **Revisar y ajustar reglas periódicamente:** Las reglas de etiquetado deben ser personalizadas para cada negocio, considerando márgenes de producto, niveles de inventario y costos internos de almacenamiento.

## Reglas para agentes
- Usa etiquetas basadas en ventanas de tiempo (15, 30, 60, 90 días) cuando necesites capturar estacionalidad y tendencias recientes; no uses solo etiquetas estáticas de rendimiento histórico sin considerar el factor temporal.
- Asigna mayor presupuesto y ROAS objetivo más bajo a productos etiquetados como "top_15_days" porque tienen la mayor probabilidad de mantener su velocidad de ventas en los próximos 15 días.
- Asigna menor presupuesto y ROAS objetivo más alto a productos etiquetados como "top_90_days" porque su estacionalidad podría haber pasado y requieren targeting más restrictivo.
- Crea una campaña separada con presupuesto mínimo y ROAS objetivo extremadamente bajo para productos con menos de 10 clics o 10 impresiones ("low_exposure") para realizar pruebas sin desperdiciar presupuesto.
- Automatiza el análisis y la actualización de etiquetas diariamente usando Optmyzr; nunca lo hagas manualmente si tienes más de 100 productos.
- Sincroniza el feed de Merchant Center con las campañas usando el Shopping Campaign Automator para que los productos se muevan automáticamente entre campañas cuando cambien de etiqueta.
- Cuando se cree un nuevo asset group en PMax automáticamente, agrega manualmente las señales de audiencia y los assets; no asumas que el asset group está completo sin revisión.
- Usa Catcher para exportar datos del feed a Google Sheets si necesitas construir campañas DSA basadas en etiquetas de rendimiento.

## Errores comunes que evita o menciona
- **No considerar la estacionalidad al etiquetar:** Usar solo métricas históricas como tasa de conversión o ROI sin ventanas temporales puede mantener productos fuera de temporada (ej. tablas de paddle en octubre) con alto presupuesto, desperdiciando dinero.
- **No etiquetar productos con baja exposición:** Ignorar productos con menos de 10 clics o impresiones impide identificar nuevos productos ganadores; es necesario destinar un presupuesto mínimo de prueba para que puedan obtener datos y ser reclasificados.
- **Asumir que las etiquetas son estáticas:** Los productos deben poder saltar de una etiqueta a otra automáticamente según el análisis diario; no deben quedar atrapados en una categoría fija.
- **No personalizar las reglas por negocio:** Cada negocio tiene diferentes márgenes, costos de inventario y prioridades; las reglas de etiquetado deben ser customizadas para cada cliente, no genéricas.
- **No sincronizar automáticamente campañas con el feed:** Si las etiquetas cambian diariamente pero las campañas no se actualizan, los productos seguirán en campañas incorrectas con presupuestos y pujas inadecuados.
- **Olvidar agregar señales de audiencia en asset groups nuevos de PMax:** Cuando el Campaign Automator crea un nuevo asset group, este viene sin señales de audiencia; hay que agregarlas manualmente para que el rendimiento no se vea afectado.