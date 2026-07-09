# 
**Fuente:** ola5-email | https://youtu.be/KfEGP-aC9b4
## Qué enseña (2-3 líneas)
Este tutorial enseña un sistema completo de automatización de email marketing en Klaviyo para tiendas Shopify, basado en 7 flujos específicos que generan ingresos recurrentes. El creador comparte su framework "Email Engine Room" con configuraciones detalladas para welcome series, abandonos, retención y reactivación de clientes.

## Lecciones accionables
- **Flujo 1: Welcome Series** – Trigger: "Added to Newsletter List". Primer email: instantáneo con cupón de descuento (ej: "$5 off your first order"). Segundo email: 3 días después, email de bienvenida con foto del equipo y enlace a "About Us". Tercer email: 3 días después, social proof con reseñas embebidas (Okendo) y feed de redes sociales. Cuarto email: conditional split – si no ha comprado, enviar email "What Makes Us Different" con video del fundador. Quinto email: si no ha comprado, SMS + email recordatorio de cupón con expiración (90 días). Sexto email: 30 días después, recordatorio final de expiración del cupón.
- **Flujo 2: Abandoned Browse** – Trigger: "Viewed Product". Filtro: excluir compradores en últimos 30 días. Primer email: 3 horas después, mostrar productos vistos + social proof. Segundo email: conditional split – si no compra, enviar urgencia y UVP (Unique Value Proposition).
- **Flujo 3: Abandoned Cart** – Trigger: "Added to Cart". Primer email: 30 minutos después, mostrar "What's in your cart" + social proof. Segundo email: 1 día después, urgencia de carrito + FAQ para objeciones. Tercer email: 1 día después, mensaje "from the warehouse" con código de descuento (short-term offer).
- **Flujo 4: Abandoned Checkout** – Trigger: "Started Checkout". Filtro: "Placed Order 0 times since starting flow". Primer email: 30 minutos después, checkout items + objection busters. Segundo email: 1 día después, checkout urgency + short-term offer. Tercer email: 1 día después, "Final hours" del short-term offer. Cuarto email: 1 día después, texto plano preguntando por qué no compró (desde el dueño).
- **Flujo 5: Thank You Flow** – Trigger: "Placed Order". Conditional split: si es primera compra → email del CEO agradeciendo (text-based, personalizado con producto comprado mediante variables dinámicas). Si es segunda compra → "Thanks Again" con cupón de crédito para próxima orden. Luego: email de plataforma de reseñas (Okendo) para dejar review.
- **Flujo 6: Win Back Flow** – Trigger: "Placed Order" con filtro de tiempo (ej: 6 o 12 meses sin compra). Primer email: short-term offer o "What you've missed". Segundo email: 1 día después, expiración del offer + productos trending + social proof. Tercer email: 3 días después, "Goodbye" email y supresión del perfil (sunset).
- **Flujo 7: Anniversary/Birthday Flow** – Trigger: fecha en perfil (birthday, first purchase, anniversary). Configurar repetición anual. Enviar a las 12:00 PM hora local. Primer email instantáneo: regalo (descuento, freebie, free shipping). Segundo email: 5 días después, recordatorio de expiración del regalo.

## Reglas para agentes
- Usa "Added to Newsletter List" como trigger para welcome series cuando un usuario se suscribe mediante popup, formulario o compra.
- Aplica filtro "Placed Order 0 times since starting flow" en todos los flujos de abandono para evitar enviar emails a quienes ya compraron.
- Envía el primer email de abandono de checkout a los 30 minutos, no instantáneamente, para no parecer intrusivo.
- No incluyas cupón de descuento en el primer email de abandono de checkout; resérvalo para el segundo email.
- Usa conditional splits para bifurcar según si el usuario ha realizado una compra durante el flujo o no.
- Implementa SMS como canal alternativo en los flujos cuando el usuario pueda recibirlos, usando un split de "Can Receive SMS".
- Programa los emails para que se envíen en horario local del suscriptor (ej: 12:00 PM o 8:00 PM).
- En el flujo de win back, si el usuario no compra tras los emails, suprime su perfil (sunset) para limpiar la lista.
- En el flujo de cumpleaños, configura que el trigger se repita anualmente usando un filtro de fecha recurrente.

## Errores comunes que evita o menciona
- No enviar el cupón de descuento inmediatamente después de la suscripción (debe ser el primer email instantáneo).
- No ser demasiado comercial en los primeros emails de la welcome series (primero construir relación, luego vender).
- No enviar emails de abandono instantáneamente (esperar 30 minutos para carrito, 3 horas para browse).
- No usar el mismo email de agradecimiento para primera y segunda compra (crear versiones diferentes con conditional split).
- No ignorar las respuestas al email de texto plano preguntando por qué no compraron (usar esa información para mejorar la tienda).
- No asumir que todos los abandonos necesitan descuento (algunos solo necesitan un recordatorio).
- No enviar emails de cumpleaños a medianoche (programar para mediodía hora local).