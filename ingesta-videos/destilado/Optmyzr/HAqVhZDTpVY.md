# Learn With Optmyzr: How to Investigate Changes in Your PPC Account
**Fuente:** Optmyzr | https://youtu.be/HAqVhZDTpVY

## Qué enseña
Este video enseña un flujo de trabajo de tres pasos para investigar cambios en el rendimiento de cuentas PPC (enfocado en lead generation, aplicable a e-commerce). Usa el dashboard de Optmyzr, el asistente AI "Sidekick", la herramienta "PPC Investigator" y "Performance Comparison" para identificar causas raíz de cambios en KPIs como conversiones, clics y costos, respaldando explicaciones con datos.

## Lecciones accionables
- **Usar el dashboard de Optmyzr (segundo dashboard)** para revisar cambios de rendimiento entre períodos: desde el menú principal, seleccionar el dashboard, cambiar rangos de fechas y comparar con el período anterior.
- **Activar el Optmyzr Sidekick (asistente AI de PPC)** para iniciar la investigación: hacer clic en el ícono del asistente, seleccionar un prompt predefinido o escribir una pregunta personalizada (ej. "Explain why conversions have seen an increase" o "Why is there a change in conversions?"). También se puede usar el asistente de voz.
- **Hacer preguntas de seguimiento al Sidekick** para obtener más detalle: ej. "What were the changes that actually contributed into this shift in performance?" para obtener un resumen de los principales cambios (nuevas campañas, pausas, eliminación de keywords negativas, cambios en target CPA).
- **Ir a "PPC Investigator"** (ruta: Audits & Insights > PPC Investigator) para responder "Why did the performance of a specific KPI change between two different date ranges?".
- **Configurar PPC Investigator**: seleccionar el KPI a investigar (ej. conversiones), definir dos rangos de fecha (ej. últimos 14 días vs. mismo período del mes anterior). La herramienta muestra un "cost chart" con el cambio absoluto y porcentual del KPI.
- **Analizar el cost chart**: observar métricas subyacentes (conversion rate, clicks, CTR, CPC, impresiones) para conectar puntos. Si algo está marcado en rojo, no necesariamente es negativo.
- **Usar el resumen generado por AI** en PPC Investigator para obtener una visión rápida de las causas raíz sin necesidad de analizar manualmente.
- **Ir a la pestaña "Root Cause Analysis"** en PPC Investigator para ver "positive top movers" y "negative top movers": combinaciones de factores (ad group + campaña + keyword + network + device + website) que contribuyeron positiva o negativamente al cambio.
- **Expandir las categorías de top movers** para ver insights granulares: demografía, combinaciones específicas de ad groups y keywords, networks, devices, websites. La herramienta descarga 10 reportes diferentes de Google y los analiza automáticamente (sin necesidad de hacer VLOOKUPs manuales).
- **Usar negative top movers** para identificar dónde se pierde rendimiento: ej. un ad group específico + search partners + tablets con full browser que perdió 53% de clics. Esto puede indicar que se debe deshabilitar search partners.
- **Cambiar el KPI investigado en PPC Investigator** (ej. de conversiones a clics) para verificar hipótesis: si las conversiones subieron pero los clics bajaron, verificar si se están perdiendo clics en los lugares correctos.
- **Usar "Performance Comparison"** (ruta: Audits & Insights > Performance Comparison) para comparar dos selecciones de dispositivos o segmentaciones con dos rangos de fecha.
- **Configurar Performance Comparison**: seleccionar dispositivos (ej. desktop en selección 1, mobile + tablet en selección 2), elegir rangos de fecha (ej. últimos 14 días en ambos lados), hacer clic en "Compare".
- **Agregar segmentación por network** en Performance Comparison para ver cross-network (Performance Max, Search Partners, Search). Observar métricas como impresiones, clics, average CPC, conversiones por dispositivo y network.
- **Agregar métricas adicionales** en Performance Comparison (ej. conversiones) para evaluar calidad de tráfico. Recomienda vincular datos de CRM a las plataformas de anuncios y conectar conversiones personalizadas a Optmyzr.
- **Monitorear rendimiento continuamente** con Optmyzr: usar reglas pre-construidas para excluir placements asociados con contenido infantil o gaming. Ir a "Placement and Targeting" para ejecutar exclusiones a nivel de cuenta que revelen placements de search partners.

## Reglas para agentes
- Usa el Sidekick (asistente AI) como primer paso cuando recibas una alerta de cambio en conversiones o costo por conversión fuera de la fluctuación normal.
- Cuando investigues cambios en KPIs, usa siempre PPC Investigator con dos rangos de fecha diferentes (ej. últimos 14 días vs. mismo período del mes anterior).
- No interpretes automáticamente los valores marcados en rojo como negativos; verifica el contexto en el cost chart y root cause analysis.
- Usa el resumen generado por AI en PPC Investigator antes de analizar manualmente los datos.
- Cuando veas positive top movers, no asumas que todo el tráfico es deseable; verifica si las conversiones provienen de búsquedas que encontrarían la marca de todos modos (ej. campañas de marca).
- Usa negative top movers para identificar combinaciones específicas (ad group + network + device) que pierden rendimiento y decide si deshabilitar elementos como search partners.
- Cambia el KPI investigado en PPC Investigator para verificar hipótesis (ej. de conversiones a clics) cuando notes discrepancias entre métricas.
- En Performance Comparison, segmenta siempre por network (Search, Search Partners, Performance Max) para identificar fuentes de tráfico de baja calidad.
- Monitorea placements de search partners regularmente usando las reglas pre-construidas de Optmyzr para excluir contenido infantil y gaming.
- Nunca tomes decisiones basadas únicamente en un solo KPI; cruza siempre con métricas subyacentes (CTR, CPC, impresiones, conversion rate).

## Errores comunes que evita o menciona
- **Confundir correlación con causalidad**: el video muestra cómo usar root cause analysis para identificar combinaciones específicas que realmente contribuyeron al cambio, no solo métricas generales.
- **Ignorar el tráfico de search partners**: el video muestra cómo search partners puede generar clics baratos pero de baja calidad para lead generation, y cómo detectarlo con negative top movers y Performance Comparison.
- **No verificar la calidad de las conversiones**: advierte que más conversiones no siempre son mejores si vienen de búsquedas de marca o tráfico de baja calidad; recomienda vincular datos de CRM.
- **Asumir que menos clics es siempre malo**: el video muestra que menos clics pueden ser positivos si son más relevantes (mayor conversion rate, menor cost per conversion).
- **No usar segmentación por dispositivo y network**: muestra cómo tablets y mobile pueden generar muchas impresiones/clics pero conversiones de menor calidad para lead generation.
- **Depender de análisis manuales**: el video evita el error de descargar 10 reportes y hacer VLOOKUPs, ya que PPC Investigator lo hace automáticamente.
- **No hacer seguimiento a cambios en target CPA**: menciona que un aumento en target CPA puede explicar más conversiones pero también puede indicar que se está dando demasiada libertad a Google para pujar agresivamente.