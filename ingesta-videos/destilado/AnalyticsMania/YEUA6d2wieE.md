# Google Tag Gateway. What is it and how to configure it?
**Fuente:** AnalyticsMania | https://youtu.be/YEUA6d2wieE

## Qué enseña (2-3 líneas)
Explica qué es Google Tag Gateway, una solución gratuita de Google en asociación con Cloudflare que permite enviar solicitudes de tracking de productos Google (GA4, GTM, Google Ads) a través de un subdirectorio del propio dominio del sitio web, evitando bloqueos de extensiones como ad blockers. Muestra cómo configurarlo desde Google Tag Manager o directamente en Google Analytics, y cuándo es recomendable usarlo frente a servidores de tagging.

## Lecciones accionables
- **Requisito principal:** El sitio web debe estar conectado a Cloudflare (u otro CDN compatible, aunque la integración nativa con Cloudflare es la más simple).
- **Configuración desde Google Tag Manager (recomendada):**
  1. Ir a Google Tag Manager → menú lateral → "Google Tag Gateway".
  2. Hacer clic en "Continue".
  3. Expandir el primer paso para definir el subdirectorio (por defecto `gtm` o `analytics`; se recomienda usar el sugerido por Google).
  4. Hacer clic en "Sign in into Cloudflare" → "Allow" para conectar GTM con Cloudflare.
  5. Hacer clic en "Complete setup".
- **Configuración desde Google Analytics (sin GTM):**
  1. Ir a Admin → Data Streams → seleccionar el stream del sitio web.
  2. Ir a "Configure tag settings" → "Admin" → "Google Tag Gateway".
  3. Hacer clic en "Not set up" y habilitar Google Tag Gateway (proceso similar al de GTM).
- **Verificación de funcionamiento:**
  - Abrir DevTools (F12) → pestaña Network → filtrar por el subdirectorio configurado (ej. `gtm` o `analytics`).
  - Recargar la página: deben aparecer solicitudes hacia `https://tudominio.com/gtm/...` en lugar de `google-analytics.com/g/collect`.
- **Si ya tienes código de GTM/GA en el source code:** No hay conflicto; Cloudflare añade su snippet al inicio y el código existente también usará el subdirectorio configurado. No se generan datos duplicados.
- **Para sitios con CMS limitado:** Cloudflare inyecta automáticamente el snippet de GTM o GA al cargar el HTML, sin necesidad de modificar el código fuente.
- **Compatibilidad con servidores de tagging:** Técnicamente se puede combinar, pero el video lo presenta como alternativa para quienes no usan server-side tagging. Si ya usas server-side con Stape y sus power-ups (custom loader, cookie keeper), ya obtienes los mismos beneficios.

## Reglas para agentes
- **Usa Google Tag Gateway cuando:** el sitio use principalmente productos Google (GA4, GTM, Google Ads) y no se tenga implementado server-side tagging, o cuando se quiera aumentar la precisión del tracking sin costos adicionales.
- **Nunca asumas que Google Tag Gateway reemplaza server-side tagging:** es una solución client-side que solo mejora la precisión de datos de productos Google, no de píxeles de terceros como Meta Pixel.
- **Verifica siempre que el subdirectorio configurado no esté bloqueado por CSP u otras políticas de seguridad del sitio.**
- **Si el sitio ya tiene server-side tagging con proxying a dominio propio (ej. Stape + custom loader), no es necesario activar Google Tag Gateway.**
- **Para sitios con múltiples dominios en Cloudflare:** la configuración desde el wizard de GTM aplica al dominio seleccionado; se puede habilitar/deshabilitar por dominio desde Cloudflare → Tag Management → Google Tag Gateway.

## Errores comunes que evita o menciona
- **No genera datos duplicados** si ya tenías código de GTM/GA en el source code; Cloudflare respeta el código existente y lo redirige al subdirectorio.
- **No mejora la precisión de píxeles no-Google** (ej. Meta Pixel); solo aplica a productos Google.
- **No es necesario migrar el dominio a Cloudflare si ya está conectado**; la migración es el paso más complejo, pero hay tutoriales específicos por plataforma (Namecheap, GoDaddy, etc.).
- **No confundir con server-side tagging:** la configuración mostrada es para tracking client-side; la configuración para server-side GTM es diferente y no se cubre en este video.
- **Si usas server-side tagging con proxying propio (Stape + custom loader + cookie keeper), ya obtienes los mismos beneficios** y no necesitas activar Google Tag Gateway.