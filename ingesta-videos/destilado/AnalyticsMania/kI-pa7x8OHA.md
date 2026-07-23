# Server-side GTM container is not receiving requests? Here are the reasons
**Fuente:** AnalyticsMania | https://youtu.be/kI-pa7x8OHA

## Qué enseña
Diagnóstico de por qué un contenedor server-side de Google Tag Manager no recibe solicitudes en el modo preview. Cubre verificación de salud del servidor, configuración de URLs, bloqueos por extensiones, headers de preview, y conflictos de orden de disparo de etiquetas.

## Lecciones accionables
- Para verificar la salud del servidor, añade `/healthy` al final de la URL del contenedor server-side. Si devuelve "ok", el servidor es accesible.
- Para encontrar la URL del contenedor server-side: ve al contenedor web → abre una etiqueta que envíe datos al servidor (ej. etiqueta GA4 o de datos) → busca el campo "server container URL" o la variable que lo contiene.
- Si usas GA4, asegúrate de que el valor de "server container URL" incluya `https://`, el dominio completo (o subdominio), y si usas same-origin, incluye el subdirectorio sin barra inclinada final. Revisa errores tipográficos.
- Para ver solicitudes de sistemas externos (ej. CRM) en el modo preview, deben incluir el header especial: haz clic en los tres puntos del preview → "Send requests manually" → copia el header y valor mostrados, e inclúyelos en la solicitud externa.
- Si usas Stape como hosting, activa el powerup "SGTM preview header config": ve a tu contenedor en Stape → Powerups → busca "SGTM preview header config" → habilítalo → pega el valor del header de Google Tag Manager → guarda. Desactívalo inmediatamente después de probar para evitar spam de solicitudes.
- Si las solicitudes son bloqueadas por CDN o firewall (ej. 403 Forbidden), verifica configuraciones de seguridad como "bot mode" en Cloudflare, o añade las IPs del sistema externo a una lista blanca.
- Si extensiones del navegador bloquean solicitudes (ej. por presencia de "gtag" o IDs de medición), usa el powerup "Custom loader" en Stape: ve a Powerups → Custom loader → configura el dominio, ingresa tu ID de contenedor web, activa el toggle, haz clic en "Generate" y sigue las instrucciones. Usa el mismo dominio same-origin que en las etiquetas web.
- Para evitar que etiquetas de evento GA4 disparen antes que la etiqueta Google Tag: asegúrate de que la etiqueta Google Tag (configuración) dispare primero. Como salvaguarda, actualiza todas las etiquetas de evento GA4 para incluir el "server container URL" usando una variable de configuración de eventos (Event Settings Variable) que contenga ese dominio, y asígnale esa variable a todas las etiquetas GA4.

## Reglas para agentes
- Usa `/healthy` para verificar la accesibilidad del servidor antes de cualquier otro diagnóstico.
- Nunca incluyas una barra inclinada final en la URL del contenedor server-side (ni en el campo de la etiqueta ni en la variable).
- Cuando envíes solicitudes desde sistemas externos al preview, incluye siempre el header y valor dinámico que proporciona el modo "Send requests manually" de GTM.
- Si usas Stape, desactiva el powerup "SGTM preview header config" inmediatamente después de la prueba para evitar saturación de solicitudes en el preview.
- Para todas las etiquetas GA4 en el contenedor web, usa una variable de configuración de eventos (Event Settings Variable) con el server container URL, para garantizar que hereden el destino correcto incluso si la etiqueta Google Tag no ha disparado primero.

## Errores comunes que evita o menciona
- Activar el modo preview en una ventana normal y navegar el sitio en una ventana de incógnito (o viceversa): ambas deben estar en el mismo modo de navegación.
- No incluir el header especial en solicitudes de sistemas externos (CRM, Postman, etc.) para que aparezcan en el preview.
- Extensiones del navegador que bloquean solicitudes aunque usen un dominio personalizado, porque detectan patrones como "gtag" o IDs de medición en la URL.
- Etiquetas de evento GA4 que disparan antes que la etiqueta Google Tag de configuración, causando que los eventos no se envíen al servidor porque no heredan el server container URL.
- Errores tipográficos o barras inclinadas finales en la URL del contenedor server-side configurada en las etiquetas web.