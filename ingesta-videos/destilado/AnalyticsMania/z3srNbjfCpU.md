# The cost of server-side tagging. Which hosting provider to choose?
**Fuente:** AnalyticsMania | https://youtu.be/z3srNbjfCpU

## Qué enseña (2-3 líneas)
Explica los factores que determinan el costo del server-side tagging con Google Tag Manager, comparando Google Cloud Run (aproximadamente $90-$120/mes para 150k sesiones) vs Stape (aproximadamente $50/mes para el mismo volumen). También ofrece criterios para decidir si implementarlo y qué proveedor elegir según el tamaño del negocio y habilidades técnicas.

## Lecciones accionables
- **Para estimar costos en Google Cloud Run:** usa el crédito gratuito de $300 (cubre 2-3 meses de prueba) y monitorea durante 1-2 meses para obtener un precio realista. Los costos principales son: instancias de servidor (~$45/instancia/mes, mínimo 2 = $90/mes), network egress (datos salientes), y logs (50 GB gratis).
- **Para estimar costos en Stape:** usa su calculadora en https://stape.io/pricing → selecciona "Server GTM hosting" → "Advanced". Ingresa: page views por mes, otros eventos, número de clientes, y si usas custom loader/cookie keeper. Ejemplo: 300k page views + 1M eventos → ~2M requests/mes → plan Pro Plus (~€50/mes).
- **Configuración básica de ejemplo (blog con 150k sesiones/mes, 300k page views, 1M+ eventos):** Google Cloud Run costaba ~$100-120/mes; Stape costaría ~€50/mes (plan Pro Plus). Para volúmenes 2x mayores (600k page views), Stape sube a ~€80-100/mes (plan Business), mientras Google Cloud se mantendría ~$120-130/mes.
- **Para decidir si usar server-side GTM:** si tienes <20k sesiones/mes, gastas <$3k-5k/mes en ads, y solo haces análisis básico (top pages, landing pages), NO lo necesitas. Si usas analytics para decisiones de marketing y corres ads activamente, pruébalo 2-3 meses y mide mejora en ROAS o costo de adquisición.
- **Para elegir proveedor:** usa el que ya conozca tu empresa (Google Cloud, AWS, Azure). Si no hay preferencia previa, prioriza: (a) setup rápido y simplicidad → Stape (especializado, menos abrumador); (b) control total y personalización → Google Cloud (documentación oficial, comunidad grande).

## Reglas para agentes
- Usa Google Cloud Run cuando necesites control total sobre servidores y personalización avanzada, y tu equipo tenga experiencia con Google Cloud.
- Usa Stape cuando quieras un setup rápido, precios predecibles basados en requests, y no quieras gestionar infraestructura compleja.
- Nunca implementes server-side tagging si el sitio tiene menos de 20k sesiones/mes y el gasto en ads es menor a $3k-5k/mes, a menos que haya un caso de negocio específico.
- Nunca uses una sola instancia de servidor en Google Cloud Run; mínimo 2 para tolerancia a fallos.
- Nunca confíes en estimaciones de costos sin probar primero con el crédito gratuito de Google Cloud ($300) o la calculadora de Stape.

## Errores comunes que evita o menciona
- **Subestimar el número de requests:** las solicitudes de usuarios sin consentimiento (no visibles en analytics) también cuentan para el límite de requests en Stape.
- **No considerar Stape Store:** las solicitudes internas a Stape Store (para enriquecer eventos con datos adicionales como nombre/email) consumen del mismo límite de requests.
- **Pensar que server-side tagging es una bala de plata:** no garantiza mejora significativa; algunos casos solo ven 1-2% de cambio y no justifica el costo, volviendo a client-side tracking.
- **Elegir Google Cloud sin experiencia:** la gran cantidad de opciones y configuraciones puede ser abrumadora si no se tiene background técnico en server management.
- **Asumir que Google Cloud siempre es más barato:** para volúmenes pequeños/medianos, Stape suele ser ~20% más barato; solo para volúmenes muy altos (>50M requests) Google Cloud puede ser más económico.