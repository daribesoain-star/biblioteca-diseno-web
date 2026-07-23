# aisensy-frequency-capping
**Fuente:** https://m.aisensy.com/blog/meta-frequency-capping-for-whatsapp-marketing-messages/ | canal temático: whatsapp | destilado 2026-07-09

## Qué enseña (2-3 líneas)
Meta limita la cantidad de mensajes promocionales de WhatsApp que una persona puede recibir en un periodo corto, aunque el negocio use plantillas aprobadas y contactos con opt-in.  
El límite opera a nivel de usuario, no de empresa: si una persona ya recibió demasiadas promociones de varias marcas, nuevos mensajes de marketing pueden fallar con errores como “Unhealthy system activity” o “Spam rate limit hit”.  
La solución práctica es reducir presión comercial, segmentar, elevar engagement, permitir baja y reintentar con timing controlado.

## Lecciones accionables
- Identifica el frequency capping cuando aparezcan señales como caída repentina de delivery, broadcasts fallidos, “Unhealthy system activity”, “Spam rate limit hit” o mensajes no entregados para mantener un ecosistema saludable.
- No interpretes “Unhealthy system activity” como baneo automático del número: normalmente indica restricción temporal de entrega para ese usuario por exceso de mensajes promocionales recibidos.
- Considera el límite como “por usuario”, no “por negocio”: usar varios números no garantiza más entrega porque Meta decide si ese usuario puede recibir más marketing.
- Meta no publica un número fijo oficial de mensajes promocionales permitidos por día; el artículo da como ejemplo un límite de alrededor de 15 mensajes dentro de una ventana móvil de 24-48 horas, condicionado por engagement y calidad.
- El capping afecta principalmente mensajes de marketing y la apertura de nuevas conversaciones promocionales.
- Los mensajes de servicio iniciados por el usuario, respuestas dentro de la ventana de atención de 24 horas, mensajes de autenticación como OTP/login/verificación y, en general, plantillas utility como confirmaciones de pedido, pagos o entregas, no se ven afectados del mismo modo.
- Aplica globalmente: no es solo India; puede afectar usuarios de cualquier país que reciban mensajes por WhatsApp Business Platform.
- Antes de enviar broadcasts, obtiene opt-in explícito en formularios y comunica que el número puede usarse para notificaciones por WhatsApp.
- Si un contacto falla por capping, no reenvíes inmediatamente; espera 24-48 horas antes de volver a intentar.
- En AiSensy, para reenvío manual: entra a `Campaigns` → selecciona la campaña con fallidos → abre la sección de fallidos → reenvía el broadcast. El artículo afirma que esto puede mejorar delivery en 20-30%.
- Usa AiSensy Failed Retries para automatizar recuperación de fallidos: permite hasta 3 reintentos automáticos, todos programados dentro de una ventana máxima de 24 horas desde el envío original.
- Flujo de Retry Campaign en AiSensy:
  - Paso 1: ve a `Contacts` y selecciona los contactos del broadcast.
  - Paso 2: ingresa nombre de campaña y elige una plantilla de WhatsApp preaprobada.
  - Paso 3: activa el toggle `Retry Campaign`.
  - Paso 4: configura hasta 3 reintentos con delays definidos, siempre dentro de las 24 horas posteriores al envío original.
  - Paso 5: monitorea en `Campaigns` → selecciona campaña → `Scheduled Retries`.
- Incluye siempre una vía de baja en el footer del mensaje; por ejemplo, permite responder `STOP` para dejar de recibir notificaciones.
- No programes demasiados mensajes en una ventana corta: más frecuencia puede generar bloqueos, menor calidad del número y más fallos.
- No uses WhatsApp solo para ofertas: alterna promociones con contenido útil o interactivo que aumente lecturas, respuestas y señales de calidad.
- Limita los cold broadcasts mensuales: envíos fríos masivos elevan bloqueos, reducen quality rating y refuerzan la señal de falta de opt-in.
- Segmenta audiencias antes de enviar: prioriza usuarios con engagement reciente, opt-in claro y mayor probabilidad de lectura.
- Evalúa cada campaña por delivery, fallidos por capping, respuestas, bloqueos y bajas, no solo por volumen enviado.

## Reglas para agentes
- Usa diagnóstico de frequency capping cuando un broadcast de marketing tenga fallos con “Unhealthy system activity” o “Spam rate limit hit”.
- Clasifica el problema como restricción temporal por usuario cuando el contacto ya pudo haber recibido muchas promociones de varias empresas en 24-48 horas.
- Nunca afirmes que el número está baneado solo porque aparece “Unhealthy system activity”.
- Espera 24-48 horas antes de reintentar mensajes fallidos por capping.
- Usa AiSensy Retry Campaign cuando quieras recuperar fallidos automáticamente; configura máximo 3 reintentos y verifica que todos caigan dentro de 24 horas del envío original.
- Usa plantillas utility o authentication cuando el contenido sea transaccional, de seguridad o servicio; no lo disfraces como marketing.
- Usa mensajes de sesión dentro de la ventana de atención de 24 horas cuando el usuario haya iniciado conversación.
- Incluye una instrucción de baja verificable en cada broadcast promocional, como responder `STOP`.
- Nunca envíes campañas promocionales masivas a contactos sin opt-in explícito.
- Nunca uses múltiples números como estrategia para evadir el capping.
- Nunca reenvíes de inmediato a todos los fallidos sin revisar motivo de fallo, timing y engagement.
- Prioriza segmentos con interacción reciente antes que bases completas o frías.
- Monitorea `Scheduled Retries` en AiSensy después de activar reintentos.
- Detén o reduce frecuencia si suben bloqueos, bajas, fallos por capping o cae la tasa de lectura.
- Verifica si el mensaje inicia una nueva conversación de marketing; si sí, asume mayor riesgo de capping.

## Errores comunes que evita o menciona
- Creer que las plantillas aprobadas garantizan entrega.
- Pensar que el opt-in elimina completamente el riesgo de capping.
- Confundir frequency capping con baneo de cuenta o violación directa de políticas.
- Reenviar inmediatamente a contactos fallidos.
- Enviar demasiadas promociones en poco tiempo.
- Usar WhatsApp como canal de spam similar al email masivo.
- Hacer cold broadcasts masivos sin segmentación ni opt-in sólido.
- No ofrecer una forma simple de desuscripción.
- Medir éxito solo por volumen enviado y no por engagement, lecturas, respuestas, bloqueos y delivery.
- Intentar evadir el límite con varios números de teléfono.
- Asumir que el capping solo aplica en India.
- Tratar mensajes transaccionales, OTP o respuestas de sesión como si tuvieran el mismo riesgo que plantillas de marketing.