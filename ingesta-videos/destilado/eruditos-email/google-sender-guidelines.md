# google-sender-guidelines
**Fuente:** https://support.google.com/a/answer/14229414 | canal temático: email | destilado 2026-07-09

## Qué enseña (2-3 líneas)
Gmail exige controles técnicos y de experiencia para remitentes que envían cerca de 5.000 o más mensajes en 24 horas a cuentas personales de Gmail.  
El cumplimiento depende de autenticación, baja tasa de spam, DNS correcto, TLS, formato RFC, baja fricción para darse de baja y monitoreo continuo con Postmaster Tools.  
Desde noviembre de 2025, Gmail intensifica la aplicación contra tráfico no conforme con rechazos temporales o permanentes.

## Lecciones accionables
- Un remitente masivo es cualquier remitente que envía cerca de 5.000 o más mensajes a cuentas personales de Gmail dentro de 24 horas.
- El umbral de 5.000 mensajes se calcula por dominio principal: si `solarmora.com` envía 2.500 mensajes y `promotions.solarmora.com` otros 2.500 a Gmail personal en un día, Gmail lo considera un remitente masivo porque ambos pertenecen a `solarmora.com`.
- Una vez que un dominio alcanza el criterio de remitente masivo, queda clasificado permanentemente como remitente masivo; reducir volumen después no elimina ese estado.
- Las reglas aplican al correo enviado a cuentas personales de Gmail, no al correo entrante o intradominio de Google Workspace.
- Los usuarios de Google Workspace también deben cumplir estas reglas cuando envían mensajes a cuentas personales de Gmail.
- Un dominio nuevo es cualquier dominio que no ha enviado más de 5.000 correos diarios a cuentas personales de Gmail desde el 1 de enero de 2024; estos dominios tienen una progresión de enforcement acelerada.
- Desde febrero de 2024, los remitentes masivos deben autenticar correo saliente, evitar correo no deseado o no solicitado y facilitar la baja.
- Desde noviembre de 2025, Gmail aumenta la aplicación contra tráfico no conforme; los mensajes pueden sufrir rechazos temporales o permanentes.
- Usa Postmaster Tools y su panel de estado de cumplimiento para revisar prácticas de envío, errores, tasa de spam y elegibilidad de mitigación.

| Requisito incumplido | Consecuencia indicada |
|---|---|
| `From:` no alineado con autenticación | Códigos de fallo temporal o permanente, o entrega a spam |
| Mensajes sin SPF y DKIM | Códigos de fallo temporal o permanente, o entrega a spam |
| Dominio sin DNS directo e inverso válido | Códigos de fallo temporal o permanente, o entrega a spam |
| Mensajes enviados sin TLS | Códigos de fallo temporal o permanente, o entrega a spam |
| Mensajes que no cumplen RFC 5322 | Códigos de fallo temporal o permanente, o entrega a spam |
| Tasa de spam superior a 0,3% | Sin soporte de entrega ni mitigaciones |
| Registro DMARC ausente o sin política mínima `p=none` | Sin soporte de entrega ni mitigaciones |
| Mensajes de marketing/promoción sin baja de un clic | Sin soporte de entrega ni mitigaciones |
| Solicitudes de baja no procesadas dentro de 48 horas | Sin soporte de entrega ni mitigaciones |

- La tasa de spam se calcula diariamente en Postmaster Tools.
- Mantén la tasa de spam reportada por usuarios por debajo de 0,1%.
- Evita que la tasa de spam llegue a 0,3% o más; desde junio de 2024, los remitentes masivos con tasa superior a 0,3% no son elegibles para mitigación.
- La elegibilidad para mitigación vuelve solo cuando la tasa de spam permanece por debajo de 0,3% durante 7 días consecutivos.
- Las tasas superiores a 0,1% ya perjudican la entrega en bandeja de entrada; las tasas de 0,3% o más tienen un impacto negativo mayor.
- La baja de un clic es obligatoria solo para mensajes de marketing, promocionales o comerciales.
- Los mensajes transaccionales quedan excluidos del requisito de baja de un clic; ejemplos: restablecimiento de contraseña, confirmación de reserva y confirmación de envío de formulario.
- Para cumplir RFC 8058, agrega encabezados `List-Unsubscribe` a todos los mensajes promocionales y de marketing.
- La baja de un clic debe eliminar directamente al usuario de la lista asociada al mensaje.
- Un enlace `mailto`, un enlace en el cuerpo del email o una página de preferencias no cumplen por sí solos el requisito de baja de un clic.
- Si ya existe baja de un clic mediante encabezados, se puede incluir además un enlace en el cuerpo hacia una página de preferencias.
- Las solicitudes de baja deben procesarse dentro de 48 horas.
- Gmail muestra el botón de baja en la parte superior del mensaje solo si el mensaje supera verificaciones automáticas: cumplimiento de requisitos, encabezados correctos, aumento gradual de volumen y monitoreo de reportes de spam.
- Para autenticación, configura SPF y DKIM; ambos son requeridos para remitentes masivos.
- Para alineación DMARC en mensajes directos a Gmail personal, el dominio organizacional del encabezado `From:` debe alinearse con el dominio organizacional de SPF o con el de DKIM.
- Aunque actualmente basta con alinear SPF o DKIM, Google recomienda alinear ambos porque probablemente será un requisito futuro.
- La alineación DMARC no se exige para mensajes reenviados o de listas de correo, considerados mensajes indirectos.
- Si falla DMARC por autenticación o alineación, normalmente aplica la política DMARC del dominio remitente; si no existe política, el mensaje puede ser rechazado o enviado a spam.
- Si Gmail rechaza mensajes, devuelve un código de rechazo y una razón; esa información también aparece en Postmaster Tools.

| Código | Tipo | Qué significa |
|---|---|---|
| `4.7.23` | Fallo temporal/rate limit | IP sin PTR o PTR cuyo DNS directo no coincide con la IP |
| `4.7.27` | Fallo temporal/rate limit | SPF no pasó |
| `4.7.29` | Fallo temporal/rate limit | No se usó conexión TLS |
| `4.7.30` | Fallo temporal/rate limit | DKIM no pasó |
| `4.7.31` | Fallo temporal/rate limit | Falta registro DMARC o falta política DMARC |
| `4.7.32` | Fallo temporal/rate limit | `From:` RFC5322 no alineado con SPF ni DKIM |
| `5.7.25` | Bloqueo | IP sin PTR o DNS directo no referencia la IP |
| `5.7.27` | Bloqueo | SPF no pasó |
| `5.7.29` | Bloqueo | Mensaje no enviado por TLS |
| `5.7.30` | Bloqueo | DKIM no pasó |

## Reglas para agentes
- Clasifica como remitente masivo a cualquier dominio principal que alcance cerca de 5.000 o más envíos en 24 horas a cuentas personales de Gmail.
- Cuenta subdominios dentro del mismo dominio principal para calcular el umbral de 5.000 mensajes.
- Mantén la clasificación de remitente masivo como permanente una vez alcanzada.
- Usa Postmaster Tools antes de diagnosticar entregabilidad en Gmail.
- Verifica SPF, DKIM, DMARC mínimo `p=none`, TLS, PTR, DNS directo/inverso y formato RFC 5322 antes de lanzar campañas masivas.
- Usa alineación DMARC cuando envíes directamente a Gmail personal: alinea `From:` con SPF o DKIM.
- Recomienda alinear `From:` con SPF y DKIM cuando sea posible.
- Usa encabezados `List-Unsubscribe` compatibles con RFC 8058 en todo email promocional, comercial o de marketing.
- Incluye una URL HTTPS en `List-Unsubscribe` para cumplir el requisito de baja de un clic.
- Procesa toda baja en un máximo de 48 horas.
- Mantén la tasa de spam por debajo de 0,1%; si supera 0,1%, reduce o pausa envíos y corrige segmentación, consentimiento y frecuencia.
- No solicites mitigación si la tasa de spam está por encima de 0,3%; espera a estar por debajo de 0,3% durante 7 días consecutivos.
- Usa los códigos `4.7.x` como señales de fallo temporal o rate limit y corrige la causa técnica indicada.
- Usa los códigos `5.7.x` como bloqueos y corrige la causa técnica antes de reintentar volumen.
- Nunca uses un `From:` de `gmail.com` si el mensaje no sale desde servidores de Gmail.
- Nunca prometas soporte o mitigación de entregabilidad si el remitente no cumple todos los requisitos de Gmail.
- Nunca trates un enlace `mailto`, un enlace en el cuerpo o una landing de preferencias como sustituto de baja de un clic RFC 8058.

## Errores comunes que evita o menciona
- Creer que el estado de remitente masivo expira o se elimina al bajar volumen.
- Contar subdominios como remitentes separados para evitar el umbral de 5.000 mensajes.
- Aplicar las reglas a mensajes entre cuentas de Google Workspace cuando el alcance real es Gmail personal.
- Enviar campañas sin SPF y DKIM activos.
- Publicar DMARC sin política mínima `p=none` o no publicar DMARC.
- No tener PTR o tener DNS inverso/directo inconsistente para la IP de envío.
- Enviar sin TLS.
- Usar mensajes que no cumplen RFC 5322.
- No alinear el encabezado `From:` con SPF o DKIM.
- Suplantar direcciones `@gmail.com` desde servidores que no son Gmail.
- Asumir que una página de preferencias o un enlace `mailto` cumple baja de un clic.
- Omitir encabezados `List-Unsubscribe` y depender solo del enlace visible en el cuerpo.
- No procesar bajas dentro de 48 horas.
- Mantener campañas activas con tasa de spam superior a 0,1%.
- Pedir mitigación cuando la tasa de spam supera 0,3%.
- Esperar mitigación sin cumplir autenticación, tasa de spam y baja de un clic.
- Creer que Gmail siempre rechaza automáticamente los mensajes sin baja de un clic; el riesgo principal indicado es más reportes de spam y pérdida de elegibilidad para mitigación.