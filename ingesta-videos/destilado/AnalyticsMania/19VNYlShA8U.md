# 10 Google Analytics 4 best practices
**Fuente:** AnalyticsMania | https://youtu.be/19VNYlShA8U

## Qué enseña (2-3 líneas)
El video presenta 10 prácticas recomendadas para configurar y optimizar Google Analytics 4, desde ajustes iniciales de retención de datos hasta estrategias avanzadas para evitar problemas de cardinalidad y referencias no deseadas. Enfatiza la personalización de informes, el filtrado de tráfico interno y la correcta gestión de propiedades y flujos de datos.

## Lecciones accionables
- **Cambiar retención de datos:** Ve a Admin → Data Retention → cambia de 2 meses a 14 meses para poder usar datos históricos en Explorations.
- **Filtrar tráfico interno:** Admin → Data Streams → selecciona el stream → Configure tag settings → Show more → Define internal traffic → crea regla con IPs de tu casa/oficina/colegas → nombra la regla (ej. "internal") → guarda. Luego Admin → Data Filters → busca "internal traffic filter" → ábrelo → cambia a "Active".
- **Usar un solo web stream para múltiples subdominios:** Si tienes blog, sitio principal y soporte, usa el mismo Measurement ID en todos para evitar inconsistencias en el session tracking.
- **Configurar unwanted referrals:** Data Streams → Configure tag settings → Show more → List unwanted referrals → agrega dominios de pasarelas de pago (ej. stripe.com, paypal.com) para evitar que el tráfico de pago se atribuya como fuente de referencia.
- **Ajustar Reporting Identity:** Admin → Reporting Identity → haz clic en "Show all" → prueba con "Device-based" si ves mucho tráfico "unassigned" o "direct". El cambio es retroactivo y afecta los informes de Looker Studio.
- **Usar Debug View:** Admin → Data Display → Debug View. Actívalo con Google Tag Manager en modo Preview. Verifica que los eventos y parámetros lleguen correctamente a GA4.
- **Personalizar informes estándar:** Ve a Reports → Library → crea y añade informes personalizados al sidebar para compensar la limitada oferta de informes por defecto.
- **Decidir número de propiedades:** Si necesitas informes que crucen datos de múltiples sitios web, usa una sola propiedad con un solo data stream instalado en todos los sitios. Si no, usa propiedades separadas.
- **Rastrear solo lo importante:** Identifica los key events del negocio primero. No implementes tracking de todo lo que se te ocurra para evitar un "hot pile of mess" y reducir el riesgo de sampling.
- **Evitar alta cardinalidad en custom dimensions:** No envíes dimensiones con más de 500 valores únicos por usuario por día (ej. Company ID con cientos de miles de IDs). Si no registras el parámetro como custom dimension, no tendrás el problema del "other row".

## Reglas para agentes
- Usa 14 meses en Data Retention inmediatamente después de crear una nueva propiedad GA4.
- Filtra siempre el tráfico interno (IPs propias y de colegas) antes de activar informes.
- Nunca crees múltiples web streams para subdominios del mismo user journey; usa uno solo.
- Agrega siempre los dominios de pasarelas de pago a "List unwanted referrals".
- Cambia Reporting Identity a "Device-based" si hay mucho tráfico "unassigned" o "direct".
- Activa Debug View y verifica la recepción de datos en GA4, no solo el disparo de tags en GTM.
- No envíes custom dimensions con más de 500 valores únicos por usuario por día.
- No rastrees eventos sin antes definir los key events del negocio.

## Errores comunes que evita o menciona
- Dejar la retención de datos en 2 meses por defecto, lo que limita el análisis histórico en Explorations.
- No filtrar el tráfico interno, contaminando los informes con datos propios.
- Crear streams separados para subdominios, causando inconsistencias en session tracking.
- No configurar "unwanted referrals" para pasarelas de pago, atribuyendo compras a la pasarela en lugar de a la fuente original (ej. Google organic).
- Usar "unwanted referrals" para filtrar spam referral traffic (no funciona; solo lo convierte en direct traffic).
- No personalizar los informes estándar, que son limitados en GA4 comparado con Universal Analytics.
- Rastrear todo sin priorizar, generando un desorden y aumentando el riesgo de sampling.
- Enviar dimensiones con alta cardinalidad (más de 500 valores únicos/día), causando el "other row" incluso si no se usan como dimensión primaria.