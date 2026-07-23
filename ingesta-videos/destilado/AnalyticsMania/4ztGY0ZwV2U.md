# Direct traffic in Google Analytics 4 (and how to fix it)
**Fuente:** AnalyticsMania | https://youtu.be/4ztGY0ZwV2U
## Qué enseña (2-3 líneas)
Explica qué es el tráfico directo en GA4, por qué aparece cuando el sistema no puede determinar el origen del visitante, y detalla las causas técnicas más comunes (pérdida del referrer, redirecciones, cookies, UTM faltantes) junto con soluciones prácticas para reducir su volumen.

## Lecciones accionables
- **Verificar el referrer en consola:** usa `document.referrer` en Developer Tools → Console para comprobar si el referrer se conserva tras una redirección o interacción con un popup.
- **Corregir redirecciones HTTP→HTTPS:** asegúrate de que todos los enlaces externos que apuntan a tu sitio usen `https://` (no `http://`). Si un visitante viene de una página HTTPS, hace clic en un enlace HTTP y luego es redirigido a HTTPS, el referrer se pierde y la sesión se atribuye a `direct`.
- **Forzar interacción con el banner de cookies:** usa un popup que bloquee el contenido y obligue al usuario a aceptar o rechazar antes de navegar. Evita banners pequeños en la parte superior/inferior. No uses popups que refresquen o redirijan la página tras dar consentimiento, porque eso también borra el referrer.
- **Añadir UTM a enlaces en PDFs:** edita todos los PDFs que enlacen a tu sitio para incluir `utm_source`, `utm_medium` y `utm_campaign`. Ejemplo: `https://tusitio.com/pagina?utm_source=analyticsmania-ebook&utm_medium=pdf&utm_campaign=ebook-2024`.
- **Instalar GA4 en TODAS las páginas:** verifica que el tag de GA4 (o Google Tag Manager) esté presente en cada URL de tu dominio. Si un visitante llega desde Google a una página sin tag y luego navega a otra con tag, el referrer será el mismo dominio → se atribuye a `direct`.
- **Eliminar `rel="noreferrer"` en backlinks:** contacta a los webmasters de sitios externos que enlacen al tuyo y pídeles que quiten `rel="noreferrer"` de esos enlaces para que el referrer se transmita.
- **Usar UTM en campañas de email marketing:** todos los enlaces en correos deben incluir `utm_source`, `utm_medium`, `utm_campaign`. Las plataformas modernas suelen tener generación automática; si no, agrégalos manualmente.
- **Configurar correctamente la lista de referencias no deseadas:** en GA4 → Admin → Data Streams → tu stream → Configure tag settings → Show more → List unwanted referrals. Solo agrega dominios de pasarelas de pago (PayPal, Stripe). **NUNCA** agregues dominios de spam/bots aquí, porque ese tráfico se convertirá en `direct` en lugar de eliminarse.
- **Usar una sola propiedad GA4 para todos los subdominios:** si tienes `www.ejemplo.com` y `blog.ejemplo.com`, usa una única propiedad GA4 con un solo data stream que cubra ambos subdominios. Si usas propiedades separadas, el tráfico entre subdominios se atribuirá a `direct`.
- **Implementar server-side tagging para ITP:** en navegadores Safari/iOS con Intelligent Tracking Prevention, las cookies de GA4 expiran en 7 días (a veces 24h). Server-side tagging puede mitigar la pérdida de atribución cuando el usuario regresa después de ese período.
- **Implementar User ID si hay login:** si tu sitio tiene sistema de autenticación, usa `user_id` en GA4 para mantener la identidad del usuario incluso si se borran las cookies del navegador.

## Reglas para agentes
- Usa `document.referrer` en consola del navegador para diagnosticar si el referrer se pierde tras una redirección o interacción con popup.
- Cuando un enlace externo apunte a tu sitio, verifica que use `https://` y no `http://` para evitar pérdida de referrer.
- Nunca agregues dominios de spam o bots en "List unwanted referrals" de GA4; solo usa esa lista para pasarelas de pago.
- Siempre incluye `utm_source`, `utm_medium` y `utm_campaign` en enlaces dentro de PDFs y campañas de email.
- Asegúrate de que GA4 o GTM esté instalado en TODAS las páginas del sitio, incluyendo subdominios.
- Usa una única propiedad GA4 y un solo data stream para todos los subdominios del mismo sitio.
- Para banners de cookies, usa un popup que bloquee el contenido y no refresque ni redirija la página tras la interacción.
- Si implementas server-side tagging, hazlo para mitigar la expiración de cookies por ITP en Safari/iOS.
- Cuando un usuario tenga sistema de login, implementa `user_id` en GA4 para preservar la identidad ante borrado de cookies.

## Errores comunes que evita o menciona
- **Usar "List unwanted referrals" para tráfico spam:** el video advierte explícitamente que esto no elimina el tráfico, solo lo convierte en `direct`, ocultando el problema.
- **Banners de cookies pequeños o que no bloquean el contenido:** permiten que el usuario navegue sin interactuar, perdiendo el referrer en páginas siguientes y generando sesiones `direct`.
- **Popups de cookies que refrescan o redirigen la página:** cualquier redirección tras el consentimiento borra el referrer original.
- **Propiedades GA4 separadas para subdominios:** causa que el tráfico entre subdominios se atribuya a `direct` porque la segunda propiedad no conoce el origen de la primera.
- **Enlaces en PDFs sin UTM:** el tráfico desde PDFs se atribuye a `direct` porque no hay referrer ni parámetros.
- **Redirecciones HTTP→HTTPS en enlaces externos:** el cambio de protocolo elimina el referrer, generando tráfico `direct`.
- **No instalar GA4 en todas las páginas:** si el tag falta en la página de aterrizaje pero está en páginas siguientes, el referrer del mismo dominio causa atribución a `direct`.
- **Ignorar la expiración de cookies por ITP en Safari:** los usuarios que regresan después de 7 días (o 24h) son tratados como nuevos y su tráfico se atribuye a `direct`.
- **Procesamiento erróneo de GA4 (bugs):** menciona un bug en 2023 donde GA4 perdió fuentes de tráfico masivamente, atribuyendo sesiones a `direct` sin posibilidad de reprocesamiento posterior.