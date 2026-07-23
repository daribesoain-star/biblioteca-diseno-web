# infobip-frequency-capping
**Fuente:** https://www.infobip.com/blog/what-is-whatsapp-frequency-capping | canal temático: whatsapp | destilado 2026-07-09

## Qué enseña (2-3 líneas)
Meta limita la cantidad de mensajes de marketing que un usuario puede recibir por WhatsApp para reducir saturación y proteger la experiencia del usuario.  
La regla central: máximo 2 mensajes de plantilla de marketing por usuario en una ventana de 24 horas, aplicado a nivel de usuario y entre todas las empresas, no solo a una marca.

## Lecciones accionables
- Diseña campañas sabiendo que los mensajes de plantilla de marketing tienen un tope duro: un usuario puede recibir como máximo 2 mensajes de marketing en 24 horas; cualquier intento adicional falla.
- Trata el límite como una restricción global del usuario: si el usuario ya recibió mensajes de otras marcas, tu mensaje puede fallar aunque tu empresa no haya enviado 2 mensajes.
- Prioriza calidad sobre volumen: 2 mensajes bien segmentados, relevantes y con llamada a responder superan 5 mensajes genéricos que pueden ser bloqueados.
- Haz que el primer mensaje sea autosuficiente: en campañas de 2 pasos, como anuncio + recordatorio, el segundo mensaje puede no llegar si el usuario alcanza el límite de 24 horas.
- Incentiva respuestas del usuario: cuando el usuario responde o inicia conversación, se abre una ventana de 24 horas para mensajes free-form no afectados por el frequency capping.
- Segmenta antes de enviar campañas masivas: prioriza usuarios de mayor valor, audiencias más activas o segmentos con mayor intención para reducir desperdicio de envíos bloqueados.
- Espacia promociones y recordatorios: evita enviar varias campañas de marketing al mismo usuario en periodos cercanos; planifica por audiencia, prioridad y ventana de 24 horas.
- Usa Click to WhatsApp Ads para iniciar sesiones desde anuncios y llevar al usuario a flujos estructurados fuera del envío outbound de plantillas de marketing.
- Monitorea señales de salud, no solo delivery: revisa quality ratings, phone number status, seen rates, click rates y tendencias de rendimiento a largo plazo.
- Detecta bloqueos por frequency capping con códigos de error: en WhatsApp Cloud API puede aparecer `131049`; en Infobip puede aparecer `7032`.
- Ajusta automatizaciones de chatbot: los follow-ups outbound con plantillas de marketing deben depender del engagement, no enviarse repetidamente si el usuario no responde.
- Mantén plantillas frescas: actualiza copy, formato y media para evitar fatiga del usuario y sostener señales de calidad ante Meta.

| Tipo de mensaje | Restricción / frecuencia |
|---|---|
| Plantilla de marketing | Máximo 2 mensajes por usuario en 24 horas. Una nueva comunicación de marketing solo puede iniciar después de 24 horas. |
| Plantilla utility | Exenta. Incluye actualizaciones de pedido, confirmaciones de entrega, recordatorios y notificaciones de servicio. |
| Plantilla authentication | Exenta. Incluye códigos de login, OTP y verificación de identidad. |
| Free-form | No limitada por este cap dentro de las 24 horas posteriores a que el usuario envía un mensaje o responde. |
| Optimized marketing templates / Marketing Messages Lite | Puede estar exenta en algunos casos si se envía vía Marketing Messages Lite API y la plantilla tiene alta calificación. |

| Checklist de cumplimiento | Requisito / beneficio |
|---|---|
| Obtener opt-in | Obligatorio antes de iniciar conversaciones de marketing en WhatsApp. |
| Usar plantillas aprobadas | Obligatorio; las plantillas de marketing deben ser aprobadas por Meta para evitar rechazos y mejorar entrega. |
| Ofrecer opt-out | Mejora la experiencia y da control al usuario. |
| Monitorear quality ratings | Protege el estado del WhatsApp Business Account y la entrega futura. |

## Reglas para agentes
- Clasifica cada mensaje antes de enviarlo como `marketing`, `utility`, `authentication` o `free-form`.
- Usa el límite de 2 plantillas de marketing por usuario cada 24 horas como restricción obligatoria de planificación.
- Nunca asumas que el límite depende solo de la marca; aplícalo a nivel de usuario y considera mensajes de otras empresas.
- Nunca intentes evadir el límite usando múltiples números, cuentas o WhatsApp Business Accounts.
- Usa mensajes `utility` solo para información transaccional real: pedidos, entregas, recordatorios de servicio o confirmaciones.
- Usa mensajes `authentication` solo para verificación: OTP, login codes o validación de identidad.
- Usa mensajes `free-form` cuando el usuario haya iniciado o respondido dentro de las últimas 24 horas.
- Si un mensaje falla con `131049` en Cloud API o `7032` en Infobip, etiquétalo como posible bloqueo por frequency capping.
- Reintenta plantillas de marketing solo después de que cierre la ventana de 24 horas o después de abrir una sesión con respuesta del usuario.
- Usa Meta WhatsApp Manager o la plataforma de Infobip para revisar bloqueos, delivery, quality ratings, phone number status, seen rates y click rates.
- Nunca programes automatizaciones que envíen múltiples plantillas de marketing sin comprobar engagement previo.
- Usa Marketing Messages Lite API solo como excepción controlada; no prometas bypass del cap salvo que la plantilla califique y el canal lo permita.

## Errores comunes que evita o menciona
- Enviar demasiadas promociones outbound y provocar fallos de entrega.
- Interpretar bloqueos por frequency capping como errores técnicos del sistema.
- Creer que cada empresa tiene su propio cupo independiente de 2 mensajes por usuario.
- Diseñar campañas donde el segundo mensaje es indispensable para que la promoción funcione.
- Usar múltiples números o cuentas para intentar saltarse el límite.
- Ignorar opt-in, aprobación de plantillas u opciones de opt-out.
- Medir solo delivery y no calidad, seen rates, click rates ni estado del número.
- Mantener las mismas plantillas durante demasiado tiempo y generar fatiga en el usuario.
- Programar chatbots con follow-ups repetidos que siguen enviando plantillas aunque el usuario no responda.