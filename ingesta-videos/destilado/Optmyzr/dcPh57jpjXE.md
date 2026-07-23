# Mastering Performance Max with Optmyzr: From Visibility to Control
**Fuente:** Optmyzr | https://youtu.be/dcPh57jpjXE

## Qué enseña
Este video enseña cómo recuperar visibilidad y control sobre campañas Performance Max usando Optmyzr, cubriendo dos casos de uso principales: e-commerce (gestión de feeds, etiquetado de productos, segmentación de campañas) y lead gen (calidad de assets, señales de conversión offline, optimización de presupuestos). Muestra dashboards, auditorías, reglas automatizadas y sincronización con Merchant Center para escalar la gestión sin perder precisión.

## Lecciones accionables
- **Shopping Dashboard:** Accede desde la pestaña del dashboard de Google Ads en Optmyzr. Úsalo para verificar la salud del feed de productos (productos que no sirven, precios por encima/debajo del benchmark) y la protección de gasto (spend protection) que proyecta el gasto mensual basado en patrones históricos y estacionalidad.
- **Feed Audit:** Ve a "Audits & Insights" > "Account Health & Audits". Asigna una calificación numérica de 0 a 100 al feed, desglosado por componentes. Personaliza la auditoría eliminando checks de campañas que no uses (ej: estándar shopping). Identifica listing groups caros y crea alertas de monitoreo continuo.
- **Smart Product Labeler:** Bajo la pestaña "Shopping", crea una nueva estrategia. Selecciona el Merchant Center, elige un custom label (ej: custom_label_0) y define buckets de rendimiento (best sellers, high-margin, poor performers). Optmyzr recomienda configuraciones basadas en datos históricos del account. Aplica las etiquetas con un clic.
- **Shopping Campaign Manager & Launcher:** Tras etiquetar, ve a "Shopping Campaign Manager". Selecciona "Retail Campaign". Usa la opción "AI suggest structures" para segmentación basada en atributos comunes, combinaciones de mejor rendimiento o ROAS/cost. O elige "Manual" para definir campañas por custom attribute (ej: hero, sidekicks). Optmyzr construye campañas, asset groups y listing groups automáticamente.
- **Sincronización automática con feed:** Desde la página de inicio, activa "Automate syncs between feed changes and campaigns". Si se introduce una nueva etiqueta, se crea una campaña nueva automáticamente. También puedes sincronizar campañas existentes (creadas fuera de Optmyzr) si siguen estructuras consistentes.
- **Rule Engine para listing groups:** Ve a "Manage & Optimize" > "Rule Engine". Crea una estrategia con scope "Listing Groups". Usa el check preconstruido "Expensive Listing Groups". Los resultados se categorizan en: "No conversions despite enough clicks", "CPA is too high", "ROAS is too low". Las condiciones comparan el cost per conversion del listing group vs. el del campaign. Configura automatización segura: desmarca "Apply changes automatically" para recibir notificaciones por email y aplicar con un clic tras revisión.
- **KPI Alerts:** Ve a "Alerts" > "KPI Alerts". Selecciona Google Ads accounts y filtro "Performance Max". Define KPIs: "Alert me if decreases exceed allowed fluctuation" (porcentaje personalizable) o "ROAS level under which campaigns cannot go without triggering an alert". Para e-commerce, activa tracking de productos disapproved u out of stock.
- **Auditorías de assets para lead gen:** Ve a "Audits & Insights" > "Account Health & Audits" > "Account Structure". Identifica: assets con low performance labels, campaigns con final URL expansion on/off, asset groups sin audience signals, asset groups con muy pocos headlines/descriptions/images/logos. Descarga el reporte como Excel.
- **Offline conversion imports:** En Rule Engine, usa el scope "Custom Data Source Segment". Selecciona tu CRM como data source, extrae leads calificados (SQL, oportunidades, deals cerrados) y súbelos a Google Ads. Esto alimenta al algoritmo con señales cercanas a revenue, no solo leads fáciles.
- **Placement exclusions:** En "Rule Engine", crea una estrategia con AI o desde la librería. Configura que Optmyzr recomiende y excluya placements asociados a low intent clicks (ej: mobile apps, contenido infantil). Puedes ejecutar la limpieza automáticamente sin revisión para reducir ruido en el inbox.
- **Search term analysis:** En "Rule Engine", selecciona "Non-converting queries for Performance Max". Las condiciones: cost del search term > campaign's cost per conversion, sin conversiones atribuidas, CTR bajo, al menos 10 impresiones. La acción: añadir como negative keyword a nivel campaign. Mantén un humano en el loop al inicio.
- **Budget optimization:** En "Rule Engine", selecciona estrategia basada en métrica (conversions, ROAS, etc.). Añade un target budget mensual (ej: 5000). Optmyzr sugiere reasignación entre campaigns. Ve a la pestaña "Impact Analysis" para ver el resumen de cambios y el efecto en KPIs. Ajusta límites de agresividad en "Edit Limits".
- **Audience signals:** Si un asset group no tiene audience signals, usa "Express Suggestions" o la auditoría. Añade una audience signal desde un segmento existente o crea uno nuevo. Como punto de partida, usa el widget "Top Competitors" en el account dashboard, expande, y haz clic en "Create Audience" para generar custom audiences basadas en URLs de competidores.
- **Rapid Campaign Launcher:** Ve a "Settings" > "Campaigns". Usa "Rapid Campaign Launcher" para crear campañas desde una plantilla. Rellena placeholders (marca, mercado, cliente). Las plantillas están disponibles entre clientes, ideal para agencias o equipos grandes.

## Reglas para agentes
- Usa el Shopping Dashboard como primer paso para e-commerce PMax; verifica la salud del feed y la protección de gasto antes de cualquier optimización.
- Aplica Smart Product Labeler antes de segmentar campañas; sin etiquetas de rendimiento, no uses segmentación manual.
- Activa la sincronización automática con el feed solo si las campañas siguen estructuras consistentes y bien definidas.
- Nunca apliques cambios de listing groups automáticamente sin revisión humana al inicio; usa la opción de notificación por email y aplicación con un clic.
- Para lead gen, siempre importa conversiones offline desde el CRM antes de optimizar hacia leads; el algoritmo prioriza leads fáciles si no recibe señales de calidad.
- Ejecuta auditorías de assets (headlines, descriptions, images, logos, audience signals) al menos semanalmente en lead gen PMax.
- Usa search term analysis con un humano en el loop durante las primeras 2 semanas; después puedes automatizar si los resultados son consistentes.
- Para placement exclusions, si el contenido es claramente de baja intención (kids, mobile apps), automatiza sin revisión para reducir ruido.
- En budget optimization, establece un target budget mensual y revisa el Impact Analysis antes de aplicar cambios.
- Cuando uses Rapid Campaign Launcher, estandariza los placeholders entre clientes para mantener consistencia.

## Errores comunes que evita o menciona
- **No revisar la salud del feed:** Ignorar productos que no sirven o precios fuera de benchmark lleva a oportunidades perdidas y gasto ineficiente.
- **No etiquetar productos por rendimiento:** Segmentar campañas sin custom labels basados en performance (best sellers, high-margin) impide una asignación de presupuesto inteligente.
- **No sincronizar campañas con cambios en el feed:** Si el catálogo cambia frecuentemente (nuevos productos, etiquetas), las campañas quedan desactualizadas y pierden efectividad.
- **Optimizar hacia leads sin calificar:** Decirle al algoritmo que optimice por "lead" sin importar conversiones offline (SQL, oportunidades) genera leads baratos pero de baja calidad.
- **Ignorar audience signals:** Asset groups sin audience signals limitan la capacidad de aprendizaje y escalado del algoritmo.
- **No excluir placements de baja intención:** Dejar que el gasto se vaya a mobile apps o contenido infantil sin exclusiones drena el presupuesto sin valor.
- **No gestionar search queries negativas:** Permitir que términos sin conversiones con alto gasto sigan activos desperdicia presupuesto.
- **No usar budget optimization basada en KPIs:** Asignar presupuesto sin considerar ROAS o conversiones lleva a subinversión en campañas rentables y sobreinversión en las que no lo son.
- **No revisar el Impact Analysis antes de reasignar presupuesto:** Aplicar cambios ciegamente puede desestabilizar el rendimiento general.