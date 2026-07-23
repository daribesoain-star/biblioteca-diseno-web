# Consent v2 for Microsoft Clarity (Updated)
**Fuente:** AnalyticsMania | https://youtu.be/43U87jaDTLk

## Qué enseña (2-3 líneas)
Configuración obligatoria de la API de consentimiento v2 de Microsoft Clarity para cumplir con normativas en EEE, Reino Unido y Suiza antes del 31 de octubre de 2025. Explica tres opciones de implementación: Google Consent Mode, CMPs compatibles (CookieYes, próximamente Cookiebot y OneTrust) y configuración manual con Google Tag Manager. Muestra cómo verificar que las cookies `_clck` y `_clsk` solo se establezcan cuando el usuario da consentimiento.

## Lecciones accionables
- **Deshabilitar cookies en configuración del proyecto:** Ir a Microsoft Clarity → proyecto → Settings → Setup → sección "Cookies" → desactivar toggle "Cookies are set in the browser" (esto habilita consent mode).
- **Opción 1 - Google Consent Mode:** Si ya está implementado, Microsoft Clarity lo detectará automáticamente (funcionalidad esperada para mediados de septiembre 2025). No requiere configuración adicional.
- **Opción 2 - CMP soportado:** Verificar si tu CMP está en la lista de soporte (actualmente solo CookieYes confirmado; Cookiebot y OneTrust próximamente). Consultar documentación oficial de Microsoft Clarity.
- **Opción 3 - Configuración manual en GTM:**
  1. Crear variables de Data Layer para `ad_storage` y `analytics_storage` (ej: `cookiehub_marketing`, `cookiehub_analytics`).
  2. Crear tag Custom HTML con el código de la API v2:
     ```javascript
     <script>
     (function() {
       var adStorage = '{{DLV - cookiehub_marketing}}' === 'true' ? 'granted' : 'denied';
       var analyticsStorage = '{{DLV - cookiehub_analytics}}' === 'true' ? 'granted' : 'denied';
       window.clarity('consent', adStorage, analyticsStorage);
     })();
     ```
  3. Si el Data Layer ya devuelve `granted`/`denied`, usar versión simplificada:
     ```javascript
     <script>
     window.clarity('consent', '{{DLV - ad_storage}}', '{{DLV - analytics_storage}}');
     </script>
     ```
  4. Disparar el tag en evento de consentimiento (ej: `cookiehub_consent_update`).
  5. Asegurar que el tag de Microsoft Clarity se dispare antes (en "Initialization" o "Page View") que el tag de consentimiento.
- **Verificación:** Usar comando en consola del navegador: `window.clarity('consent')` → debe devolver `{ad_storage: "granted/denied", analytics_storage: "granted/denied"}`. Revisar cookies `_clck` y `_clsk` en Application → Cookies → dominio: deben aparecer solo cuando consentimiento es `granted`.

## Reglas para agentes
- Usa `window.clarity('consent', adStorage, analyticsStorage)` con sintaxis exacta de API v2 (parámetros con mayúscula inicial: `adStorage`, `analyticsStorage`).
- Nunca uses la sintaxis antigua de API v1: `window.clarity('set', 'consent', ...)`.
- Siempre dispara el tag de consentimiento DESPUÉS de que Microsoft Clarity se haya cargado (usa triggers de "Initialization" o "Page View" para Clarity, y "Custom Event" para consentimiento).
- Cuando el Data Layer tenga valores booleanos (`true`/`false`), conviértelos a `granted`/`denied` con código condicional; nunca los pases directamente.
- Verifica siempre con `window.clarity('consent')` en consola y revisando cookies `_clck`/`_clsk` en Application → Cookies.

## Errores comunes que evita o menciona
- **No implementar consentimiento antes del 31 de octubre de 2025:** Cada página vista generará un nuevo usuario y sesión, imposibilitando el seguimiento de funnels multi-página y fijando "páginas por sesión" en 1.
- **Confundir "Consent Mode" de Microsoft Clarity con "Consent Mode" de Microsoft Ads:** Son conceptos diferentes aunque técnicamente similares.
- **Usar API v1 en lugar de v2:** La sintaxis antigua `window.clarity('set', 'consent', ...)` aún funciona temporalmente pero será deprecada.
- **Asumir que el toggle automático de consentimiento ya está activo:** Aunque Microsoft dice que está habilitado por defecto en EEE/UK/CH, al momento del video aún no funcionaba; se recomienda deshabilitar cookies manualmente.
- **No verificar el orden de disparo de tags:** El tag de consentimiento debe ejecutarse después de que Microsoft Clarity esté cargado, de lo contrario `window.clarity` no existirá.
- **Ignorar el bug de vista previa en GTM:** A veces los tags aparecen como "unknown tag type" en preview mode; cerrar y reiniciar la vista previa soluciona el problema.