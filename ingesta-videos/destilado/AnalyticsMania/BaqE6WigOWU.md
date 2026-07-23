# 10 things you should configure in any new Google Analytics 4 property
**Fuente:** AnalyticsMania | https://youtu.be/BaqE6WigOWU

## Qué enseña
Este video explica 10 configuraciones esenciales que deben realizarse en una nueva propiedad de Google Analytics 4 para obtener datos más precisos, excluir tráfico no deseado, proteger la privacidad del usuario y habilitar funcionalidades avanzadas como informes demográficos, eventos clave y conexión con BigQuery.

## Lecciones accionables
- **Cambiar retención de datos:** Ve a Admin → Data Retention → cambia de 2 meses a 14 meses → haz clic en Save.
- **Excluir tráfico interno:** Ve a Admin → Data Collection and Modification → Data Streams → selecciona el web data stream → Configure TX Settings → Show More → Define internal traffic → Create. Ingresa la IP (ej. "123.123.123.123") y selecciona "IP address equals" o "regular expression" para múltiples IPs. Luego ve a Admin → Data Filters → busca "Internal Traffic Filter" → tres puntos → Activate filter → Activate filter.
- **Listar referencias no deseadas:** Ve a Data Streams → selecciona web data stream → Configure TX Settings → Show More → List unwanted referrals → ingresa dominios como "paypal.com" o "stripe.com".
- **Configurar dominios cruzados:** Ve a Admin → Data Streams → selecciona web data stream → Configure TX Settings → Configure your domains → lista los dominios del mismo journey (ej. "mywebsite.com", "anotherwebsite.com"). No es necesario para subdominios.
- **Redactar datos personales en URLs:** Ve a Admin → Data Streams → selecciona web data stream → Redact data → en "URL query parameters" ingresa parámetros como "address" (máximo 30). Para identificar parámetros: ve a Explore → Blank exploration → dimension "Page location" + metric "Views" + filtro "page location contains ?". Exporta a Google Sheets si es necesario.
- **Crear dimensión personalizada "video percent":** Ve a Admin → Data Display → Custom Definitions → Custom Dimensions → Create custom dimension. Nombre: "video percent", Scope: "Event", Parámetro de evento exacto: `video_percent` → Save. Solo si tienes videos de YouTube incrustados.
- **Habilitar Google Signals:** Ve a Admin → Data Collection → Google Signals collection → Turn on → Turn on.
- **Marcar eventos como Key Events (conversiones):** Ve a Admin → Data Display → Key Events → New key event → ingresa el nombre exacto del evento (ej. "generate_lead") → Save.
- **Conectar Google Ads:** Ve a Admin → Product Links → Google Ads Links → Link → sigue los pasos. Esto desbloquea la sección Advertising.
- **Conectar BigQuery:** Ve a Admin → BigQuery Links → Link → completa los pasos. El almacenamiento cuesta menos de $1/mes.

## Reglas para agentes
- Usa "14 months" en Data Retention cuando configures una nueva propiedad GA4, nunca dejes el valor por defecto de 2 meses.
- Cuando excluyas tráfico interno, verifica que la IP sea estática; si es dinámica, no uses este método.
- Nunca ingreses dominios de subdominios en "Configure your domains"; GA4 los maneja automáticamente.
- Siempre redacta parámetros URL que contengan datos personales (email, nombre, dirección) antes de enviarlos a Google.
- Usa el parámetro exacto `video_percent` (con guion bajo) al crear la dimensión personalizada para videos de YouTube.
- Marca como Key Event solo eventos que representen acciones de alto valor (ej. formularios enviados, compras), no eventos genéricos.
- Conecta BigQuery al inicio aunque no planees usarlo inmediatamente, para acumular datos históricos.

## Errores comunes que evita o menciona
- No cambiar la retención de datos de 2 a 14 meses, perdiendo acceso a datos históricos en los informes Explorer.
- Activar el filtro de tráfico interno sin considerar que bloquea la visualización de eventos propios en Debug View.
- No listar dominios de pasarelas de pago como "paypal.com" o "stripe.com" en "unwanted referrals", lo que distorsiona la atribución.
- Configurar dominios cruzados para subdominios, cuando GA4 ya los maneja automáticamente.
- No redactar parámetros URL con datos personales (como "address" o "email"), violando los términos de servicio de Google Analytics.
- Asumir que la dimensión "video percent" viene por defecto en GA4; debe crearse manualmente como dimensión personalizada.
- No habilitar Google Signals, perdiendo datos demográficos (edad, género, intereses) en los informes.
- Olvidar marcar eventos importantes como Key Events, lo que impide que métricas como "key event rate" funcionen.
- No conectar Google Ads, dejando bloqueada la sección Advertising de GA4.
- Postergar la conexión con BigQuery, perdiendo la oportunidad de acumular datos históricos para análisis futuros.