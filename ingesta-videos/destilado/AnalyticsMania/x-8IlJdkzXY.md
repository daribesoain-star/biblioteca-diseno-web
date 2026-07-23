# How to remove self-referrals in Google Analytics 4? 
**Fuente:** AnalyticsMania | https://youtu.be/x-8IlJdkzXY

## Qué enseña (2-3 líneas)
Explica cómo eliminar los self-referrals (dominios propios que aparecen como fuentes de tráfico) en Google Analytics 4. Cubre la configuración unificada de subdominios, la lista de referencias no deseadas, ajustes de cookies y la eliminación de parámetros UTM entre subdominios.

## Lecciones accionables
- **Usar el mismo Measurement ID en todos los subdominios**: Ve a Admin > Data Streams > selecciona el stream web > "View tag instructions" > "Install manually". Copia el Measurement ID y asegúrate de que esté instalado en todos los subdominios (www, blog, etc.).
- **Configurar dominios en el data stream**: Admin > Data Streams > selecciona el stream web > "Configure tag settings" > "Configure your domains". Añade una condición: "domain contains" + tu dominio principal (ej. `midominio.com`). No es necesario añadir cada subdominio por separado. Guarda.
- **Añadir tu dominio a "Unwanted referrals"**: Admin > Data Streams > selecciona el stream web > "Configure tag settings" > "Show more" > "List unwanted referrals". Introduce tu dominio principal. Guarda.
- **Verificar ajustes de cookies en Google Tag Manager**: Abre el contenedor de GTM > etiqueta Google Tag de GA4 > busca parámetros como `cookie_domain` o `cookie_prefix`. Si ves un subdominio específico (ej. `blog.midominio.com`), elimínalo o cámbialo a `auto` para compartir cookies entre subdominios. El valor por defecto es `auto`.
- **Revisar código fuente si no usas GTM**: Busca en el código el comando `gtag('config', ...)` y verifica si hay un parámetro `cookie_domain` con un subdominio. Si existe, elimínalo o cámbialo a `'auto'`.
- **No usar UTM en enlaces entre subdominios**: Evita parámetros UTM en cualquier enlace que redirija de un subdominio a otro (ej. de `www.midominio.com` a `blog.midominio.com`). Los UTM pueden heredarse en la siguiente sesión y distorsionar las fuentes de tráfico.
- **Revisar parámetros de campaña sobrescritos en la etiqueta Google**: En GTM, dentro de la etiqueta Google Tag, ve a "Configuration parameters" o "Shared event settings". Busca si `campaign_medium`, `campaign_source` o `campaign_name` están sobrescritos con valores de otro subdominio. Si es así, elimina esas sobrescrituras o corrígelas.

## Reglas para agentes
- Usa el mismo Measurement ID en todos los subdominios para evitar self-referrals.
- Configura "domain contains" con el dominio principal, no con subdominios individuales.
- Añade siempre el dominio principal a "List unwanted referrals".
- Establece `cookie_domain` en `auto` o elimínalo para compartir cookies entre subdominios.
- Nunca uses parámetros UTM en enlaces internos entre subdominios.
- No sobrescribas `campaign_source`, `campaign_medium` ni `campaign_name` en la etiqueta Google a menos que sea estrictamente necesario.

## Errores comunes que evita o menciona
- **No usar el mismo Measurement ID en todos los subdominios**: causa que cada subdominio se trate como fuente externa.
- **Configurar cada subdominio por separado en "Configure your domains"**: es suficiente con el dominio principal y la condición "contains".
- **Olvidar añadir el dominio a "Unwanted referrals"**: sin esto, el tráfico entre subdominios sigue apareciendo como referral.
- **Tener `cookie_domain` configurado a un subdominio específico en un contenedor y a otro en otro contenedor**: aunque no siempre causa self-referrals, es mala práctica y puede separar cookies.
- **Usar UTM en enlaces entre subdominios**: la sesión actual no cambia, pero la siguiente sesión puede heredar esos UTMs, distorsionando las fuentes.
- **Sobrescribir parámetros de campaña en la etiqueta Google con valores de subdominios**: puede forzar que el tráfico se atribuya incorrectamente.
- **Esperar cambios inmediatos**: los self-referrals no desaparecen al instante; pueden tardar hasta 90 días, aunque se nota una disminución en la primera semana.