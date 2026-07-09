# 
**Fuente:** ola5-email | https://youtu.be/dQWAcFNDoY8

## Qué enseña
Cómo configurar y optimizar los tres flujos de email automatizados (Welcome Flow, Abandoned Cart/Checkout Flow, Post-Purchase Flow) en Klaviyo para maximizar el valor de vida del cliente (LTV) y la recuperación de ventas. Incluye estructura exacta de emails, triggers, filtros, condicionales y ejemplos visuales basados en auditorías de más de 1,000 cuentas.

## Lecciones accionables
- **Trigger del Welcome Flow:** Configurar en la lista "Newsletter" (no en segmento) con filtro: `Placed Order = 0 times since starting this flow`. Desactivar "Smart Sending" en todo el flujo.
- **Estructura del Welcome Flow (primeras 72h):**
  - **Email 1:** Enviar código de descuento inmediatamente, sin delay. Destacar el código en el centro del email.
  - **Condicional:** 12h después, si no abrió el email 1, reenviar el mismo email con asunto diferente.
  - **Email 2 (12h después del email 1):** Texto plano con historia de la marca/fundador + recordatorio del código.
  - **Email 3 (24h después del email 2):** Prueba social masiva: fotos UGC, reseñas con imágenes, productos mejor valorados.
  - **Email 4 (1 día después):** Manejo de objeciones (mitos vs. hechos, comparativas con competidores).
  - **Emails 5-6:** Urgencia: "tu código expira en 2 días" (texto plano del fundador) + "última oportunidad" con contadores regresivos.
  - **Emails posteriores:** Copiar campañas históricas con mejor tasa de clics (CTR) y añadirlas al final del flujo.
- **Trigger del Abandoned Cart Flow:** Usar métrica de Shopify "Added to Cart". Filtros: `Placed Order = 0 times since starting this flow`, `Not been in flow in last 7 days`, `Has not started checkout since starting this flow`, `Received Abandoned Checkout flow = 0 times in last 30 days`.
- **Trigger del Abandoned Checkout Flow:** Usar métrica "Started Checkout". Filtros: `Not been in flow in last 7 days`, `Placed Order = 0 times since starting this flow`.
- **Estructura del Abandoned Cart Flow:**
  - **Email 1 (1h delay):** Recordatorio simple + productos dejados en carrito + reseñas.
  - **Email 2 (1 día después):** Manejo de objeciones + UGC + antes/después.
  - **Condicional (2 días + 1h):** Separar por `Placed Order > 0` (repeat customers) vs. `Placed Order = 0` (new customers).
    - **Repeat customers:** 1 email con prueba social y reseñas de uso prolongado. Sin descuento.
    - **New customers:** 2-3 emails con código de descuento (plain text funciona mejor), UGC, reseñas, antes/después.
- **Estructura del Post-Purchase Flow (new customers):**
  - **Trigger:** `Placed Order` con filtro `Cancelled Order = 0 times`. Delay de 5 minutos.
  - **Email 1 (5 min delay):** Agradecimiento + guías/manuales gratuitos + "qué esperar" del envío.
  - **Email 2 (1 día después):** Texto plano del fundador, historia de la marca, misión.
  - **Email 3 (1 día después):** Felicitación por iniciar el viaje + comunidad.
  - **Email 4 (1 día después):** Educación sobre rutina (cómo usar el producto a diario, consejos).
  - **Email 5 (15 días después):** Enlace de referidos ("recomienda a un amigo y obtén $5 de descuento").
  - **Email 6 (2 días después del email 5):** Upsell con 15% de descuento + "válido solo 48h".
- **Regla de oro para descuentos en Abandoned Cart/Checkout:** Solo dar descuento a clientes nuevos (nunca a repeat customers). Esperar al menos 72h antes de ofrecer el descuento.

## Reglas para agentes
- Usa el trigger en la lista exacta (no en segmento) para el Welcome Flow para evitar delays de 5-10 minutos.
- Nunca actives "Smart Sending" en ningún email del Welcome Flow.
- Siempre separa los flujos de Abandoned Cart y Abandoned Checkout; no los combines en uno solo.
- Para Abandoned Cart, usa los filtros exactos: `Placed Order = 0`, `Not in flow last 7 days`, `Has not started checkout`, `Received Abandoned Checkout flow = 0 in last 30 days`.
- Para Abandoned Checkout, usa solo: `Not in flow last 7 days`, `Placed Order = 0`.
- En Post-Purchase Flow, siempre separa new customers de returning customers con un split condicional.
- En Post-Purchase Flow, envía el primer email máximo 5 minutos después de la orden (no esperes más de 24h).
- Nunca ofrezcas descuento a repeat customers en Abandoned Cart/Checkout; solo a new customers.
- En el Welcome Flow, prioriza los primeros 3 emails en las primeras 72h; el resto del flujo es secundario.
- Para los emails de urgencia al final del Welcome Flow, usa contadores regresivos y texto plano del fundador.

## Errores comunes que evita o menciona
- **Solo construir 1-2 emails en el Welcome Flow:** No es suficiente; se necesita al menos un email 3 (prueba social) y email 4 (manejo de objeciones).
- **Enfocarse demasiado en un Welcome Flow de 20 emails:** La mayoría de conversiones ocurren en las primeras 72h; emails después del 4º pierden efectividad.
- **No reenviar el primer email del Welcome Flow a quienes no lo abrieron:** Es una ganancia fácil de 10-20% más de aperturas y conversiones.
- **No destacar el código de descuento en los emails del Welcome Flow:** Debe estar al centro, visible, no enterrado.
- **Tener Smart Sending activado en el Welcome Flow:** Impide que los emails lleguen a todos los suscriptores.
- **No tener un flujo separado de Abandoned Cart:** Muchas marcas solo tienen Abandoned Checkout y pierden el 60% de usuarios que abandonan entre "add to cart" y "start checkout".
- **Dar descuento a todos en Abandoned Cart/Checkout:** Entrena a los clientes a esperar descuentos, mata márgenes y daña la equidad de marca.
- **Dar el descuento demasiado temprano en Abandoned Cart:** Esperar al menos 72h o solo para new customers.
- **No separar new vs. returning customers en Post-Purchase Flow:** El flujo debe ser diferente; los returning customers no necesitan educación sobre rutina.
- **Esperar más de 24h para enviar el primer email del Post-Purchase Flow:** Se pierde la ventana de "euforia del comprador" y aumenta el "buyer's remorse".
- **No incluir emails de eliminación de "buyer's remorse" en Post-Purchase Flow:** Sin estos, aumentan los reembolsos y cancelaciones.