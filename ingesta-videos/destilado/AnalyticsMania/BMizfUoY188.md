# Track Single Page Applications with Google Tag Manager and Google Analytics 4 (GA4) (2025)
**Fuente:** AnalyticsMania | https://youtu.be/BMizfUoY188

## Qué enseña
Enseña tres métodos para rastrear páginas vistas y eventos en aplicaciones de una sola página (SPA) usando Google Tag Manager y Google Analytics 4. Cubre desde la configuración básica con Enhanced Measurement hasta soluciones avanzadas con History Change Trigger y Data Layer personalizado, incluyendo la resolución de problemas como títulos desfasados y fragmentos de URL.

## Lecciones accionables
- **Verificar Enhanced Measurement de GA4 primero:** Ir a Admin → Data Streams → Stream → Enhanced Measurement → Mostrar configuración avanzada → Page Views → habilitar "Page changes based on browser history events". Probar en Debug View; si las page views subsecuentes aparecen con el page title correcto, el tracking automático funciona.
- **Si Enhanced Measurement falla, usar History Change Trigger:**
    1. Deshabilitar "Page changes based on browser history events" en GA4 para evitar duplicados.
    2. En GTM: Triggers → Nuevo → History Change → nombrar "All History Change Events".
    3. Habilitar variables integradas: Variables → Configurar → marcar todas las de "History".
    4. Refinar trigger: en el trigger creado, añadir condición: `History Source` equals `push_state` (o `pop_state` según el SPA). Nombrar "History Push State".
    5. Crear variables Data Layer:
        - `gtm.newUrl` → variable Data Layer → nombrar "DLV - New URL"
        - `gtm.oldUrl` → variable Data Layer → nombrar "DLV - Old URL"
    6. Crear tag de actualización: Copiar el GA4 Config tag → en Configuration Settings añadir parámetro `update` con valor `true`. Añadir `page_location` = `{{DLV - New URL}}` y `page_referrer` = `{{DLV - Old URL}}`. No asignar trigger. Nombrar "GA4 Config - Update".
    7. Crear tag de page view: Tag → Nuevo → Google Analytics → GA4 Event → Event Name: `page_view`. Parámetros: `page_location` = `{{DLV - New URL}}`, `page_referrer` = `{{DLV - Old URL}}`. Trigger: "History Push State".
    8. En el tag de page view: Advanced Settings → Tag Sequencing → "Fire a tag before this tag fires" → seleccionar "GA4 Config - Update".
- **Para SPA con fragmentos de URL (#):**
    1. Crear variable JavaScript: Variables → Nueva → JavaScript Variable → Global Variable Name: `window.location.href` → nombrar "JS - Full URL".
    2. En el trigger, usar `History Source` equals `pop_state` (si el SPA usa ese método).
    3. En los tags de actualización y page view, reemplazar `{{DLV - New URL}}` por `{{JS - Full URL}}`.
- **Método más robusto: Data Layer personalizado con desarrollador:**
    1. Solicitar al desarrollador que pushee al data layer en cada navegación:
        ```javascript
        window.dataLayer.push({
          event: 'virtual_page_view',
          pageURL: 'https://ejemplo.com/pagina-actual?utm_medium=...',
          pageTitle: 'Título de la página actual',
          previousPageURL: 'https://ejemplo.com/pagina-anterior' // opcional pero recomendado
        });
        ```
        - `pageURL` debe incluir protocolo, dominio, path y todos los parámetros de URL (UTM, gclid, etc.).
    2. En GA4 Config tag, si el evento `virtual_page_view` ocurre en carga inicial, añadir parámetro `send_page_view` = `false`.
    3. Crear trigger: Triggers → Nuevo → Custom Event → Event Name: `virtual_page_view`.
    4. Crear variables Data Layer: `pageURL` y `pageTitle`.
    5. Crear tag GA4 Event: Event Name: `page_view`. Parámetros: `page_location` = `{{DLV - pageURL}}`, `page_title` = `{{DLV - pageTitle}}`. Trigger: `virtual_page_view`.
    6. Crear tag de actualización: Copiar GA4 Config → parámetros: `update` = `true`, `page_location` = `{{DLV - pageURL}}`, `page_title` = `{{DLV - pageTitle}}`. Sin trigger.
    7. En tag de page view: Tag Sequencing → disparar el tag de actualización antes.
    8. Para evitar "rogue referral": si el desarrollador no puede enviar `previousPageURL`, en los tags de actualización y page view añadir `page_referrer` con valor vacío (dejar el campo en blanco).

## Reglas para agentes
- Usa `History Source` equals `push_state` cuando el SPA genere múltiples history change events y necesites filtrar el correcto.
- Usa `window.location.href` (variable JavaScript) cuando el SPA use fragmentos de URL (#) que no se reflejan en `gtm.newUrl`.
- Nunca uses el History Change Trigger si el SPA no cambia la URL; en ese caso, fuerza el método de Data Layer personalizado con el desarrollador.
- Nunca envíes `page_view` sin antes disparar el tag de actualización con `update` = `true` mediante Tag Sequencing.
- Siempre verifica en Debug View que el `page_title` coincida con la página actual; si está desfasado, migra al método de Data Layer personalizado.
- Siempre incluye `page_referrer` (aunque sea vacío) en el tag de actualización para mitigar problemas de atribución (rogue referral).

## Errores comunes que evita o menciona
- **Page title desfasado:** En SPA con History Change Trigger, el título puede pertenecer a la página anterior porque el URL cambia antes que el título. Se detecta en Debug View comparando `page_title` con `page_location`.
- **Fragmentos de URL ignorados:** `gtm.newUrl` y `page URL` no incluyen el contenido después de `#`. Se soluciona con `window.location.href`.
- **Múltiples History Change events por navegación:** Algunos SPA disparan `replace_state` y `push_state`; solo el `push_state` suele contener la URL correcta. Se filtra con `History Source`.
- **Scroll tracking roto en SPA:** GA4 no reinicia el scroll al navegar sin recargar; no se puede trackear scroll correctamente sin solución personalizada.
- **Site search tracking no funciona:** GA4 busca recargas completas de página; en SPA con búsqueda dinámica no se trackea automáticamente.
- **Timer trigger no se reinicia:** Al no recargar la página, el timer sigue corriendo entre "páginas virtuales".
- **Rogue referral:** Si no se envía `page_referrer` (aunque sea vacío), GA4 puede atribuir tráfico incorrectamente. La solución ideal es que el desarrollador incluya `previousPageURL` en el data layer.