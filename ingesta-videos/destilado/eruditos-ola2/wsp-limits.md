# Messaging Limits oficiales de WhatsApp (Meta)
**Fuente:** https://developers.facebook.com/docs/whatsapp/messaging-limits/ (consultada 2026-07-09)

## Qué es / qué regula
Define el número máximo de números de teléfono de usuarios únicos de WhatsApp a los que una empresa puede entregar mensajes fuera del intervalo de servicio de atención al cliente en un período continuo de 24 horas. Los límites se calculan y establecen a nivel del portfolio comercial y se comparten entre todos los números de teléfono de la empresa en ese portfolio.

## Reglas y datos duros para agentes
- **Límite inicial para portfolios nuevos:** 250 mensajes.
- **Límites alcanzables:** 2.000 (tras recorrido de aumento), 10.000 (aumento automático), 100.000 (aumento automático), Ilimitado (aumento automático).
- **Recorrido para llegar a 2.000:**
  - Verificar tu negocio (solicitar al socio que verificó la empresa).
  - Enviar y entregar 2.000 mensajes fuera del intervalo de servicio de atención al cliente a números de teléfono de usuarios únicos de WhatsApp en un período continuo de 30 días usando plantillas con calificación de calidad alta.
- **Aumento automático (de 2.000 en adelante):** Meta evalúa:
  - Envío de mensajes de alta calidad en todos los números y plantillas.
  - En los últimos 7 días, la empresa usó al menos la mitad de su límite actual de mensajes.
  - Si se cumplen, el límite aumenta un nivel en un plazo de 6 horas.
- **Campos para consultar el límite:**
  - `messaging_limit_tier` quedó obsoleto.
  - Usar `whatsapp_business_manager_messaging_limit` (ejemplo de respuesta: `"TIER_250"`).
- **Webhooks activados tras aprobación/rechazo:**
  - Aprobación: `business_capability_update` con `max_daily_conversations_per_business` (v24.0+) o `max_daily_conversation_per_phone` (v23.0 y anteriores, hasta feb 2026).
  - Rechazo: `account_alerts` con `alert_type` y `alert_description`.
- **Valores de `alert_type` en rechazo:**
  - `INCREASED_CAPABILITIES_ELIGIBILITY_DEFERRED`: Enviar y entregar 2.000 mensajes fuera del intervalo de servicio en 30 días con plantillas de calidad alta.
  - `INCREASED_CAPABILITIES_ELIGIBILITY_FAILED`: Enviar y entregar 2.000 mensajes fuera del intervalo de servicio en 30 días con plantillas de calidad alta.
  - `INCREASED_CAPABILITIES_ELIGIBILITY_NEED_MORE_INFO`: Verificar identidad o enviar 2.000 mensajes entregados fuera del intervalo de servicio en 30 días con plantillas de calidad alta.

## Errores que evita / prohibiciones
- No usar el campo obsoleto `messaging_limit_tier`; solicitar `whatsapp_business_manager_messaging_limit`.
- No asumir que el límite es por número de teléfono individual: se comparte entre todos los números del mismo portfolio comercial (un número puede consumir toda la capacidad del portfolio).
- No esperar aumento automático sin cumplir los criterios: mensajes de alta calidad en todas las plantillas y uso de al menos la mitad del límite actual en los últimos 7 días.
- No omitir el recorrido de aumento para pasar de 250 a 2.000: requiere verificar el negocio y enviar/entregar 2.000 mensajes en 30 días con plantillas de calidad alta.