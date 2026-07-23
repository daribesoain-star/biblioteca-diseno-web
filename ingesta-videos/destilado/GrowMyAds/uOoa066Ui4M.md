# The ONLY Google Ads Metrics That Matter (My Exact Setup)
**Fuente:** GrowMyAds | https://youtu.be/uOoa066Ui4M

## Qué enseña (2-3 líneas)
Austin, cofundador de Groma Ads, revela su configuración exacta de columnas en Google Ads para revisar cuentas de forma eficiente. Explica qué métricas primarias y de diagnóstico usar, cómo crear columnas personalizadas (especialmente las "by time"), y cómo analizar los datos para detectar problemas y oportunidades de optimización.

## Lecciones accionables
- **Configuración de columnas recomendada (orden exacto):** Campaign → Budget → Status → Bid strategy → Clicks → Impressions → CTR → Avg. CPC → Cost → Conversions → Cost / conversion → Conversion rate → Conversion value → Conversion value / cost → Value / conversion → Conversion by time → Cost per conversion by time → Conversion value by time → ROAS by time → Search impression share → Search top IS → Search absolute top IS → Search lost IS (budget)
- **Crear columna personalizada "ROAS by time":** Ir a Columns → Custom columns → Create custom column → Nombre: "ROAS by time" → Fórmula: `Conversion value (by conversion time) / Cost` → Guardar
- **Crear columna personalizada "CPA by time":** Ir a Columns → Custom columns → Create custom column → Nombre: "CPA by time" → Fórmula: `Cost / Conversions (by conversion time)` → Guardar
- **Guardar preset de columnas:** Después de configurar todas las columnas, hacer clic en "Save column set" → Nombrar (ej. "Austin") → Así se recupera con un clic en futuras sesiones
- **Filtro de campañas:** Usar el filtro "Campaign enabled" y seleccionar "Enabled + Paused" cuando se revisan datos históricos; para tiempo presente, solo "Enabled"
- **Segmentar por conversión:** Ir a Segment → Conversions → Conversion action para ver qué conversiones específicas se están contando en cada campaña
- **Naming convention para campañas:** Usar prefijos: "S" para Search, "SH" para Shopping, "Pmax" para Performance Max — así se elimina la necesidad de la columna "Campaign type"
- **Análisis de CTR:** Si un Search campaign tiene CTR < 2%, es alerta roja → indica problemas en keywords, ad copy o segmentación
- **Análisis de conversion rate:** Si el CTR es bueno pero la conversion rate es baja (ej. 1.37%), es prioridad revisar qué se está pujando y la experiencia post-clic
- **Análisis de Search impression share:** Si una campaña rentable tiene <10% de IS y está "Limited by budget", hay oportunidad de aumentar presupuesto para escalar resultados

## Reglas para agentes
- Usa la columna "Conversion by time" (no la columna "Conversions" estándar) cuando analices períodos cortos (últimos 7-14-30 días) o tiempo presente, especialmente en e-commerce con demora en conversiones
- Nunca uses la columna "Campaign type" si ya tienes un naming convention con prefijos (S, SH, Pmax) — es redundante
- Usa siempre las columnas de Search impression share (IS, Top IS, Absolute Top IS, Lost IS by budget) para identificar campañas con potencial de escalar
- Cuando veas "Limited by budget" en una campaña rentable, prioriza aumentar el presupuesto antes de hacer otros cambios
- Guarda siempre un column set personalizado con nombre único para evitar que Google lo borre entre sesiones
- Usa el filtro "Enabled + Paused" solo para análisis históricos; para revisión diaria usa solo "Enabled"

## Errores comunes que evita o menciona
- **No organizar las columnas por defecto:** Google Ads tiene demasiadas métricas predeterminadas que abruman y no son útiles; hay que personalizarlas
- **Usar la columna "Conversions" estándar para tiempo presente:** Esta métrica asigna la conversión al día del clic, no al día de la conversión real, distorsionando el rendimiento reciente
- **No guardar el column set:** Google puede "olvidar" la configuración personalizada al cerrar sesión; hay que guardarla explícitamente
- **Ignorar el CTR bajo en Search campaigns:** Un CTR <2% es señal de problemas graves en la relevancia del anuncio o las keywords
- **No revisar el bid strategy:** Es un factor crítico que explica por qué una campaña rinde bien o mal; debe estar siempre visible
- **No usar naming convention:** Depender de la columna "Campaign type" es innecesario si se nombran las campañas con prefijos claros