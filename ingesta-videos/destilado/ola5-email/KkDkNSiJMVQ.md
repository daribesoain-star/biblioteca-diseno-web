# 
**Fuente:** ola5-email | https://youtu.be/KkDkNSiJMVQ

## Qué enseña (2-3 líneas)
Jesse Hernández, fundador de MailGenius, explica los fundamentos de la entregabilidad del correo electrónico usando la analogía de un automóvil. Cubre los tres pilares de autenticación (SPF, DKIM, DMARC) y cómo configurarlos correctamente para construir reputación de dominio y evitar la carpeta de spam.

## Lecciones accionables
- **Autenticación SPF (Sender Policy Framework):** Agrega un registro TXT en tu DNS (ej. GoDaddy) que liste explícitamente todos los servicios autorizados a enviar correos desde tu dominio. Ejemplo: `v=spf1 include:sendgrid.net include:servers.mcsv.net ~all`. Solo puede existir **un** registro SPF por dominio; si tienes múltiples, combínalos en uno solo. Actualiza el registro cada vez que agregues o elimines un ESP (Mailchimp, Klaviyo, SendGrid, etc.). Respeta el límite de 10 consultas DNS (lookups) para evitar errores "too many lookups".
- **Autenticación DKIM (DomainKeys Identified Mail):** Publica una clave pública en tu DNS (registro TXT) proporcionada por tu ESP. El servidor receptor descifra la firma DKIM del correo entrante contra esta clave pública para verificar que el mensaje no fue alterado y que proviene de un remitente autorizado. Es como la "registración del auto" que debe coincidir exactamente con la licencia del conductor.
- **Autenticación DMARC (Domain-based Message Authentication, Reporting & Conformance):** Configura un registro TXT en tu DNS con política `p=none` inicialmente. Usa la herramienta gratuita **Postmark DMARC Digest** (https://dmarc.postmarkapp.com/) para recibir informes semanales del porcentaje de correos que pasan SPF y DKIM. Monitorea durante semanas, corrige fallos, y luego cambia la política a `p=quarantine` y finalmente a `p=reject` para rechazar correos no autenticados.
- **BIMI (Brand Indicators for Message Identification):** Una vez que tengas DMARC en `p=quarantine` o `p=reject`, agrega un registro BIMI en tu DNS con un archivo SVG de tu logo. Yahoo ya lo soporta; Gmail lo está probando. Esto muestra tu logo automáticamente en los clientes de correo compatibles.
- **Prueba de configuración:** Usa **MailGenius.com** (https://www.mailgenius.com) enviando un correo desde tu ESP para obtener un análisis completo de SPF, DKIM, DMARC, puntuación y enlaces a artículos de ayuda para cada fallo.

## Reglas para agentes
- Usa **siempre** SPF, DKIM y DMARC juntos; nunca confíes solo en uno.
- Nunca publiques más de un registro SPF por dominio; combínalos en uno solo.
- Actualiza el registro SPF inmediatamente cuando cambies de ESP (elimina el anterior, agrega el nuevo).
- Configura DMARC primero con `p=none` para auditar; solo cambia a `p=quarantine` o `p=reject` después de semanas de monitoreo sin fallos.
- Nunca ignores los informes de DMARC; úsalos para detectar suplantación o configuraciones incorrectas.
- Verifica que el límite de consultas DNS en SPF no supere 10 para evitar errores de "too many lookups".

## Errores comunes que evita o menciona
- **Múltiples registros SPF:** Tener dos o más registros SPF publicados hace que ambos fallen. Debes fusionarlos en uno solo.
- **No actualizar SPF al cambiar de ESP:** Si eliminas Mailchimp y agregas Klaviyo sin actualizar el SPF, los correos de Klaviyo fallarán autenticación.
- **Exceder el límite de lookups en SPF:** Agregar demasiados "include" sin eliminar los antiguos provoca un error "too many lookups" y el SPF falla.
- **Ignorar la suplantación de dominio:** Es común que el CEO o la empresa sean suplantados (spoofing) sin que nadie lo sepa. DMARC con informes detecta esto.
- **No monitorear DMARC antes de endurecer la política:** Pasar directamente a `p=reject` sin auditar puede bloquear correos legítimos mal configurados.
- **Pensar que la autenticación es opcional:** Ya no es una "buena práctica" sino un requisito; Office 365 y otros proveedores bloquean o marcan como spam correos sin autenticación completa.