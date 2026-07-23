# Google Tag Gateway vs Server-side tracking. What's difference?
**Fuente:** AnalyticsMania | https://youtu.be/uMQpirSsJ-0

## Qué enseña
Compara dos configuraciones de medición web: Google Tag Gateway (configuración nativa desde GTM o GA4) vs Server-side Google Tag Manager (sstGtm). Explica cómo cada una maneja el envío de datos, su efectividad contra bloqueadores, costos, control y casos de uso ideales para decidir cuál implementar.

## Lecciones accionables
- **Google Tag Gateway** se habilita desde Admin del contenedor web GTM > "Google Tag Gateway" o en GA4 > Admin > Data Streams > tu stream > "Configure tag settings" > "Google Tag Gateway". Usa tu propio dominio (ej. `tudominio.com/collect`) en lugar de `google-analytics.com`, pero algunos requests aún van a dominios de Google por "compliance".
- **Server-side GTM** requiere un servidor propio (ej. Google Cloud Run, AWS, o proveedor especializado). Los requests van a `tusubdominio.com/collect` con parámetros ocultos (no legibles por extensiones), y el servidor reenvía a múltiples vendors (Google, Meta, Snapchat, etc.).
- **Para ocultar parámetros en sstGtm**: configura el cliente y el tag para que la URL no muestre parámetros como `&uid=123` o `&em=email@example.com`. Esto se logra usando un endpoint que no exponga los parámetros en la query string.
- **Data enrichment en sstGtm**: cuando un formulario se envía con email, desde el servidor puedes hacer una llamada a tu CRM para obtener nombre, apellido, etc., y enviar una conversión enriquecida a Google Ads con más datos de usuario (mejora atribución).
- **Costos**: Google Tag Gateway puede ser gratuito (ej. con Cloudflare) o de bajo costo. Server-side GTM requiere pago por servidor (~$20/mes para negocios pequeños, cientos de dólares para grandes volúmenes).
- **Mantenimiento**: Google Tag Gateway es "set and forget". Server-side GTM requiere actualizaciones del servidor (a menos que uses un hosting especializado) y mantenimiento de tags, triggers y variables en el contenedor server-side.

## Reglas para agentes
- **Usa Google Tag Gateway** cuando solo uses herramientas de Google (GA4, Google Ads, GTM), no tengas presupuesto para hosting, no tengas habilidades técnicas avanzadas, y te baste una mejora parcial contra bloqueadores (Google reporta ~11% de uplift, aunque la experiencia del creador sugiere menor).
- **Usa server-side GTM** cuando uses múltiples vendors (Facebook, Google, etc.), tengas presupuesto para infraestructura, quieras mejorar ROI de anuncios o reducir CPA, necesites control para enriquecer eventos (ej. agregar nombre/apellido desde CRM), y tengas habilidades técnicas o tiempo para configurar y mantener.
- **Nunca asumas que Google Tag Gateway es 100% efectivo contra bloqueadores**: algunos requests seguirán yendo a dominios de Google, y los parámetros no se ocultan, por lo que extensiones avanzadas pueden seguir bloqueando.
- **Nunca configures server-side GTM sin ocultar parámetros en la URL**: si dejas parámetros visibles como `&tid=UA-xxx` o `&cid=xxx`, algunos navegadores/extensions aún detectarán tracking y lo bloquearán.
- **Siempre verifica que todos los requests en sstGtm usen tu propio dominio** (sin requests residuales a Google.com) para máxima efectividad contra bloqueadores.

## Errores comunes que evita o menciona
- **Error: pensar que Google Tag Gateway funciona con vendors no-Google**. Solo funciona con productos de Google (GTM, GA4, Google Ads). No puede enviar a Meta, Snapchat, etc.
- **Error: creer que Google Tag Gateway oculta todos los requests**. Algunos requests aún se envían a dominios de Google (por "compliance"), lo que reduce su efectividad.
- **Error: no ocultar parámetros en server-side GTM**. Si la URL muestra parámetros como `&em=...`, extensiones pueden bloquearlo. La configuración adecuada debe hacer la URL ilegible.
- **Error: subestimar el mantenimiento de server-side GTM**. Requiere actualizaciones del servidor y del contenedor (tags, triggers, variables), a menos que uses un proveedor de hosting especializado.
- **Error: esperar un uplift fijo del 15-20% con server-side GTM**. No todos los negocios lo logran; depende de la configuración, el tráfico y los bloqueadores presentes.