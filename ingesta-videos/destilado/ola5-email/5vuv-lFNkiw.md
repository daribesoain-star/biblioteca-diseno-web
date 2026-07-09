# 
**Fuente:** ola5-email | https://youtu.be/5vuv-lFNkiw

## Qué enseña
Este video enseña una estrategia completa de automatización de email marketing en Klaviyo para tiendas Shopify, con 9 flujos (flows) que generan ingresos recurrentes sin intervención manual. Cubre desde flujos pre-compra (bienvenida, abandono de sitio, navegación, carrito y checkout) hasta post-compra (post-compra, recuperación, VIP y sunset), con ejemplos de emails, configuraciones técnicas y métricas objetivo.

## Lecciones accionables
- **Flujo de bienvenida (Welcome Flow):** Configurar trigger "Joined List" con filtro "Made Purchase 0 times since starting this flow". Incluir 4-12 emails: entregar descuento de bienvenida, reenviar email 1 a no abridores, email 2 de bestsellers, email 3 con nota del fundador/historia, email 4 de testimonios, email 5 con cupón, email 6 de garantía/envío, email 7 "última oportunidad", email 8 texto del fundador. Objetivo: mínimo 10% de tasa de pedidos colocados (placed order rate) en el flujo, y primer email mínimo 6%.
- **Flujo de abandono de sitio (Site Abandoned Flow):** Habilitar "Site Tracking" en Klaviyo+Shopify. Trigger: "Active on Site" pero sin ver productos. Enviar 1 email con "Need help? Here are our favorites" mostrando bestsellers y categorías. Objetivo: mínimo 2% de tasa de clics (click rate). No vender la venta, vender el clic. Probar mostrar productos individuales vs. categorías.
- **Flujo de abandono de navegación (Browse Abandoned Flow):** Trigger: "Viewed Product" pero sin añadir al carrito. 3-5 emails: email 1 "Did you mean to leave this behind?", email 2 testimonios específicos del producto (segmentar por producto visto), email 3 información detallada del producto (segmentar por producto), email 4 urgencia/riesgo inverso, email 5 texto del fundador (si compró recientemente: "¿qué pasó?"; si no: descuento). Mostrar múltiples productos, no solo el visto. No ser creepy ("te vimos mirándonos").
- **Flujo de abandono de carrito (Abandoned Cart Flow):** Instalar trigger de "Added to Cart" desde Shopify (Klaviyo por defecto solo tiene "Abandoned Checkout"). 3-8 emails: email 1 recordatorio suave con productos abandonados, email 2 testimonios específicos del producto, email 3 urgencia/última oportunidad, email 4 descuento (opcional). Segmentar por valor del pedido: si califica para envío gratis, mencionarlo en email 1. Mostrar siempre los productos abandonados, botones arriba.
- **Flujo de abandono de checkout (Abandoned Checkout Flow):** Trigger nativo de Klaviyo "Abandoned Checkout". Misma estructura que carrito pero con trigger diferente. Configurar ambos flujos por separado.
- **Flujo post-compra (Post-Purchase Flow):** 4+ emails enviados inmediatamente después de la compra. Email 1: mensaje del fundador agradeciendo + PS "Aún puedes añadir a tu pedido antes de mañana". Email 2: "Seguimos trabajando en tu pedido, puedes añadir en 12 horas". Email 3-5: sin ventas, solo emoción ("estamos preparando tu pedido", "esto es lo que puedes esperar"). Segmentar por producto para dar tips de uso. Email final (3 semanas después): solicitar reseña. No ser agresivo con upsells, usar PS sutiles.
- **Flujo de recuperación (Win-Back Flow):** 3-10 emails enviados 60-90 días después de la última compra. Email 1: "Ha pasado un tiempo, ¿sigues interesado?" con copia específica. Email 2: "¿Aún te interesa?" (apelar a culpa). Email 3-4: recomendaciones basadas en compras anteriores (usar bloque "Recommended" de Klaviyo). Email 5: descuento exclusivo "Te extrañamos". Para marcas de consumibles: recordar reabastecimiento. No hacer que parezcan campañas normales.
- **Flujo VIP (VIP Flow):** Trigger: 5+ compras. Email 1: bienvenida VIP con recompensa generosa y agradecimiento del fundador. Emails mensuales siguientes: nuevas ofertas exclusivas, información detrás de escena, blogs exclusivos. Crear segmento VIP para campañas especiales y acceso anticipado. Usar notas personales del fundador.
- **Flujo de sunset (Sunset Flow):** Trigger: sin apertura de email ni interacción en 120 días (o 90). Enviar 1 email texto del fundador: "Notamos que no has interactuado, necesitamos espacio, si quieres quedarte haz clic aquí". No ofrecer descuento ni antagonizar. Mover a segmento suprimido si no responden.

## Reglas para agentes
- Usa el filtro "Made Purchase 0 times since starting this flow" en el flujo de bienvenida para excluir a quienes ya compraron.
- Reenvía el primer email del flujo de bienvenida solo a no abridores (non-openers).
- Elimina de la lista a quienes no abran los primeros 3 emails del flujo de bienvenida.
- En el flujo de abandono de sitio, nunca vendas la venta directa; siempre vende el clic para llevarlos al siguiente paso del embudo.
- En el flujo de abandono de navegación, segmenta los emails por producto visto para dar información específica, no genérica.
- Nunca uses lenguaje creepy como "te vimos mirándonos" en flujos de abandono.
- Instala el trigger "Added to Cart" desde Shopify manualmente; no confíes solo en el trigger nativo "Abandoned Checkout" de Klaviyo.
- En el flujo de abandono de carrito/checkout, segmenta por valor del pedido: si califica para envío gratis, menciónalo en el primer email; si no, no lo menciones.
- En el flujo post-compra, no seas agresivo con upsells; usa solo un PS sutil para ofrecer añadir al pedido.
- En el flujo de recuperación, haz que la copia sea específica y no parezca una campaña normal; usa "Ha pasado un tiempo" en lugar de "Compra nuestros bestsellers".
- En el flujo VIP, envía ofertas con al menos un mes de separación para mantener el compromiso sin saturar.
- En el flujo sunset, no ofrezcas descuentos ni antagonices al cliente; sé directo y respetuoso.

## Errores comunes que evita o menciona
- **Confundir abandono de carrito con abandono de checkout:** Son triggers diferentes en Klaviyo; la mayoría de cuentas auditadas solo tienen el de checkout instalado, perdiendo ingresos del carrito.
- **Ser demasiado agresivo en la bienvenida:** Arruina la reputación de la marca, especialmente en el primer contacto.
- **Vender la venta en lugar del clic en flujos de abandono de sitio:** Intentar que compren cuando ni siquiera han encontrado un producto que les guste.
- **Ser creepy en flujos de abandono de navegación:** Frases como "te vimos mirándonos" ahuyentan clientes.
- **Ser demasiado pushy con upsells en post-compra:** Hace que el cliente sienta que solo quieres su dinero, no que te importa su experiencia.
- **Hacer que los flujos de recuperación parezcan campañas normales:** Si la copia es genérica ("compra nuestros bestsellers"), se pierde en el ruido y no se siente intencional.
- **No eliminar a quienes no abren los primeros emails de bienvenida:** Saturan la lista con direcciones quemadas o inactivas, dañando la deliverabilidad.
- **No probar mostrar productos individuales vs. categorías en abandono de sitio:** A veces las categorías generan más clics y conversiones.
- **No segmentar por valor de pedido para envío gratis en abandono de carrito:** Perder conversiones al no mencionar un beneficio clave cuando aplica.