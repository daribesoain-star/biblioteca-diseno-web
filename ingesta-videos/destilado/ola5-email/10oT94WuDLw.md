# 
**Fuente:** ola5-email | https://youtu.be/10oT94WuDLw

## Qué enseña (2-3 líneas)
Este video enseña a configurar las 6 automatizaciones (flows) esenciales en Klaviyo para e-commerce, que pueden generar el 40-50% del ingreso total de una tienda. Incluye diagramas detallados, configuración paso a paso de triggers, filtros, splits condicionales y contenido para cada flujo, basado en la experiencia de la agencia que escaló marcas de $22k a $80k mensuales en 45 días.

## Lecciones accionables
- **Regla general:** Los flows deben representar el 50% del ingreso total por email (50/50 flows vs campañas). Si es menos, hay margen de mejora.
- **Welcome Flow (8 emails):** Trigger: "Added to list" (lista principal). Filtro: "Placed order 0 times since starting this flow". Estructura: Email 1 (instante) → espera 1 día → split condicional "Opened email at least once since starting this flow". Si NO abrió: reenviar email 1 y esperar 1 día para reincorporarse al email 2. Si SÍ abrió: continuar con email 2. Incluir: descuento al inicio, urgencia, productos/categorías, USP (tabla "nosotros vs ellos"), pruebas sociales, testimonios, historia de marca. Email 8: texto plano del fundador ("¿Todo bien? Noté que no usaste tu código..."). Smart sending: DESACTIVADO. UTM tracking: ACTIVADO.
- **Abandoned Cart Flow:** Trigger: "Added to cart". Filtros: "Placed order 0 times", "Started checkout 0 times", "Has been in flow 0 times in past 21 days". Estructura: Email 1 (sin descuento, solo recordatorio) → espera 20h → Email 2 → espera 1 día → split condicional "Placed order at least once over all time" (clientes vs nuevos). Para nuevos: trigger split por categoría de producto (ej: "Category contains female swim" → ruta femenina; si no, "Category contains male" → ruta masculina; si no, ruta accesorios). Descuento solo a partir del email 4. Clonar para Abandoned Checkout (trigger: "Started checkout"; filtros: "Placed order 0 times", "Has been in flow 0 times in past 21 days").
- **Site Abandonment Flow (1 email):** Trigger: "Active on site". Filtros: "Viewed product 0 times", "Added to cart 0 times", "Started checkout 0 times", "Placed order 0 times since starting this flow", "Has been in flow 0 times in past 14 days". Espera 2h → Email único: "¿Necesitas ayuda? Noté que estabas en el sitio". Mostrar bestsellers y pruebas sociales.
- **Browse Abandonment Flow (4 emails):** Trigger: "Viewed product". Filtros: "Added to cart 0 times", "Started checkout 0 times", "Placed order 0 times since starting this flow", "Has been in flow 0 times in past 14 days". Secuencia simple sin splits: recordatorio + pruebas sociales + risk reversal.
- **Post-Purchase Flow:** Trigger: "Placed order" (métrica de Shopify). Filtro: "Placed order 0 times since starting this flow". Email 1 (15 min después): agradecimiento + confirmación + eliminar remordimiento del comprador (USP: "hecho a mano en USA", "mujer propietaria"). Email 2 (1 día después): upselling sutil + descuento pequeño (5-10%). Email 3 (1 día después): "Tu código está por expirar". Opcional: email de texto plano del fundador cuando el producto se envía.
- **Pro tip:** Crear segmento de perfiles creados hace 8 días (duración del welcome flow) y excluirlos de campañas para evitar spam.
- **Smart sending:** Ir a cada email en el flow → scroll al final → "Skip recently emailed profiles" → DESACTIVAR.
- **UTM tracking:** Activar en configuración de Klaviyo para rastreo con herramientas como Triple Whale.

## Reglas para agentes
- Usa "Added to list" como trigger para welcome flow; nunca uses otro trigger.
- Aplica filtro "Placed order 0 times since starting this flow" en TODOS los flows para detener envíos si el usuario compra.
- Nunca envíes descuento en el primer email de abandoned cart/checkout; espera al menos al email 4.
- Desactiva "Smart sending" en cada email de cada flow; nunca lo dejes activado.
- Activa "UTM tracking" en la configuración de Klaviyo.
- Usa "Opened email at least once since starting this flow" como condición en el split del welcome flow para reenviar el email 1 si no se abrió.
- En abandoned cart/checkout, usa "Placed order at least once over all time" para dividir entre clientes nuevos y recurrentes.
- En site abandonment, filtra "Viewed product 0 times", "Added to cart 0 times", "Started checkout 0 times" para evitar solapamiento con otros flows.
- Excluye de campañas a perfiles creados en los últimos 8 días (duración del welcome flow) usando un segmento.

## Errores comunes que evita o menciona
- **No mostrar productos en el welcome flow:** Muchas marcas envían un email de bienvenida sin imágenes de productos ni categorías, lo que no inspira a volver al sitio. Siempre incluir productos visuales.
- **Dar descuento inmediato en abandoned cart:** La mayoría de compradores solo necesitan un recordatorio; dar descuento en el primer email regala margen innecesariamente. Esperar al email 4.
- **Smart sending activado:** Bloquea emails del flow si el usuario recibió una campaña en las últimas 16h, perdiendo oportunidades de conversión. Desactivarlo siempre.
- **No usar filtros de exclusión entre flows:** Por ejemplo, no filtrar "Started checkout 0 times" en abandoned cart causa que usuarios en checkout también reciban el flujo de carrito abandonado, duplicando mensajes y aumentando unsubscribes.
- **Re-enviar el mismo flow a usuarios que ya lo recibieron recientemente:** Usar filtro "Has been in flow 0 times in past X days" (21 para cart/checkout, 14 para site/browse) para evitar spam.
- **No segmentar nuevos suscriptores:** Enviar campañas a usuarios que están en medio del welcome flow los abruma. Crear segmento de 8 días y excluirlos.