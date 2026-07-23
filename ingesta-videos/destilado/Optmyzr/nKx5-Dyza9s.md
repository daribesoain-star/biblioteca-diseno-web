# Learn With Optmyzr: How to Optimize Performance of Shopping and PMax Campaigns
**Fuente:** Optmyzr | https://youtu.be/nKx5-Dyza9s

## Qué enseña
Este video enseña a optimizar campañas de Shopping y Performance Max (PMax) para e-commerce, enfocándose en monitoreo proactivo, auditoría de feeds, segmentación de productos por rendimiento y automatización de reglas. Cubre el uso de la herramienta Optmyzr para configurar alertas inteligentes, crear campañas segmentadas y ajustar pujas de ROAS objetivo sin intervención manual constante.

## Lecciones accionables
- **Configurar alertas de rendimiento:** Ve a "Monitoring" > "Alert Settings". Crea alertas para KPIs como coste por conversión o ROAS. Puedes definir umbrales: por ejemplo, "si productos que estaban en el top 10% en ROAS caen al bottom 50%", recibirás notificación por email, Slack o Microsoft Teams.
- **Usar el Rule Engine para alertas personalizadas:** Ve a "Manage & Optimize" > "Rule Engine". Usa la estructura "if this then that". Ejemplo de regla con 3 condiciones:
  - Si en los últimos 14 días (período anterior) el producto estaba entre los top 10 en volumen de conversiones.
  - Y en los últimos 14 días (período actual) ha caído al bottom 50% en conversiones.
  - Y el coste por conversión ha aumentado.
  - Entonces: enviar alerta. Esto captura caídas de rendimiento antes de que escalen.
- **Auditar el feed de productos:** Ve a "Shopping" > "Feed Audit". Usa las plantillas estandarizadas para verificar:
  - Títulos y descripciones con longitud óptima (especialmente para móvil: Google solo muestra primeros 30-50 caracteres).
  - Atributos faltantes como peso (para industria de alimentos/bebidas).
  - Product groups y listing groups con costes elevados respecto al promedio de la campaña.
- **Analizar rendimiento por producto:** Ve a "Shopping" > "Shopping Analysis". Selecciona un atributo del feed (ej. "product type 0") y agrega datos por buckets de ROAS. Usa la visualización de datos para ver qué categorías generan más conversiones en cada rango de ROAS. Ejemplo: si "men's" y "women's" convierten más en ROAS bajos, puedes aumentar inversión ahí si buscas volumen, o proteger márgenes segmentando campañas.
- **Crear campañas segmentadas:** Ve a "Settings" > "Campaigns" > "Create New Campaign". Opciones:
  - Una sola campaña con múltiples asset groups y listing groups.
  - Múltiples campañas por atributos del feed (product type 1, 2, 3, etc.).
  - Múltiples campañas usando reglas personalizadas con atributos del feed y métricas de rendimiento.
- **Usar Smart Product Labeler:** Ve a "Shopping" > "Smart Product Labeler". Crea templates con buckets como "Stars", "Laggers", "Potentials", "Opportunities". Primero asegúrate de tener una columna de "custom label" en Merchant Center. Aplica las etiquetas a un supplemental data feed. Luego, en el campaign builder, usa ese custom label como primer nivel de jerarquía.
- **Sincronizar campañas con inventario:** Al crear campañas segmentadas, activa la automatización que revisa el feed de productos y las campañas periódicamente, moviendo productos entre campañas según cambios en rendimiento o inventario.
- **Optimizar por clima:** En "Rule Engine", usa reglas que se conectan a una API meteorológica externa. Ejemplo: "si en cualquier ciudad de Dinamarca mañana la condición es 'snow', entonces habilitar esta campaña; si no, pausarla". Útil para productos estacionales (ej. ropa de invierno).
- **Ajustar ROAS objetivo automáticamente:** En "Rule Engine" > "Pre-built Strategies" > "Optimizations for Smart Bidding Campaigns". Para PMax usa "campaign level optimization". Configura dos acciones:
  - Si una campaña ya supera su ROAS objetivo y tiene buenas conversiones, aumentar el target ligeramente.
  - Si una campaña pierde impresiones por rank (no por presupuesto) y está convirtiendo, disminuir el target ligeramente para ganar volumen.
- **Identificar listing groups caros:** Crea una regla que busque listing groups con coste por conversión >= 1.5x el coste por conversión típico de la campaña. Genera un reporte o excluye esos listing groups automáticamente.
- **Detectar listing groups sin conversiones:** Crea una regla que identifique listing groups con clics que exceden el número típico necesario para una conversión en esa campaña, pero que no han convertido en los últimos 30 días. Puedes excluirlos automáticamente.
- **Reutilizar reglas entre cuentas:** Usa el icono "global" al guardar una estrategia en Rule Engine. Esto permite que la misma regla se aplique a múltiples cuentas usando checks relativos (ej. "número de clics vs. clics típicos requeridos en la campaña"), sin necesidad de ajustar valores absolutos.

## Reglas para agentes
- Usa "Shopping" > "Shopping Analysis" cuando necesites analizar rendimiento de productos más allá del reporte estándar de Google Ads, combinando métricas de Google Ads con atributos de Merchant Center.
- Configura alertas en "Monitoring" > "Alert Settings" para cualquier KPI crítico (coste por conversión, ROAS) y recíbelas por Slack o Microsoft Teams usando "Utility" > "Integrations".
- Nunca monitorees manualmente el rendimiento diario de todas las campañas; en su lugar, crea smart alerts que automaticen las comprobaciones.
- Usa "Feed Audit" como checklist mensual estandarizado para todos los feeds de clientes, verificando atributos obligatorios y longitud de títulos/descripciones.
- Cuando crees campañas segmentadas, activa siempre la automatización de sincronización con el feed para que los productos se muevan entre campañas según cambios de rendimiento.
- Aplica la regla de listing groups caros (coste por conversión >= 1.5x el promedio de la campaña) como mínimo semanalmente para evitar desperdicio de presupuesto.
- Para ajustes de ROAS objetivo, usa siempre la optimización a nivel de campaña para PMax y a nivel de campaña o ad group para Standard Shopping, según corresponda.
- Nunca uses valores absolutos en reglas que planees reutilizar entre cuentas; usa siempre checks relativos (ej. "comparado con el promedio de la campaña").
- Cuando uses reglas de clima, verifica que la ubicación objetivo esté correctamente seleccionada y que la condición meteorológica (nieve, lluvia, nubes) esté escrita exactamente como la espera la API.

## Errores comunes que evita o menciona
- **No monitorear productos estrella que caen en rendimiento:** Configurar alertas para detectar cuando productos del top 10% en ROAS caen al bottom 50% evita pérdidas silenciosas.
- **Ignorar la longitud de títulos en móvil:** Títulos muy largos no se muestran completos en móvil (Google solo muestra primeros 30-50 caracteres). Usa Feed Audit para verificar y acortar.
- **No segmentar campañas por rendimiento:** Usar una sola campaña para todos los productos impide ajustar ROAS y presupuesto por segmento. Usa Smart Product Labeler y campañas por custom labels.
- **No sincronizar campañas con cambios en el feed:** Si el inventario o rendimiento cambia y las campañas no se actualizan, se desperdicia presupuesto en productos de bajo rendimiento. Activa la automatización de sincronización.
- **Dejar listing groups sin conversiones activos:** Si un listing group tiene suficientes clics para haber convertido pero no lo ha hecho en 30 días, debe excluirse. Usa la regla de detección en Rule Engine.
- **No ajustar ROAS objetivo dinámicamente:** Mantener un ROAS fijo ignora cambios en el rendimiento. Usa la regla de optimización que sube el target cuando hay buen rendimiento y lo baja cuando se pierde impresión share por rank.
- **No reutilizar reglas entre cuentas:** Crear reglas desde cero para cada cliente es ineficiente. Usa el icono global y checks relativos para escalar.
- **No usar alertas multicanal:** Depender solo del email para alertas puede retrasar la respuesta. Configura Slack o Microsoft Teams para notificaciones inmediatas.