# How to track events in Google Analytics 4 
**Fuente:** AnalyticsMania | https://youtu.be/e0iA4_CtZOU
## Qué enseña (2-3 líneas)
Este tutorial explica los cuatro tipos de eventos en Google Analytics 4: automáticos, medición mejorada, recomendados y personalizados. Muestra cómo configurarlos usando Google Tag Manager, incluyendo la creación de triggers, variables y tags, y cubre las funciones de "crear evento" y "modificar evento" dentro de la interfaz de GA4.

## Lecciones accionables
- **Eventos automáticos de sitio web:** `first_visit`, `session_start`, `user_engagement` (se dispara cuando un visitante pasa al menos 10 segundos en una página y navega a otra página).
- **Medición mejorada:** Ir a *Admin > Data Streams > [tu stream web] > Enhanced Measurement*. Activar/desactivar eventos individualmente con el ícono de engranaje.
  - **Scroll tracking:** Se dispara al 90% del alto de la página. No puede rastrear otros umbrales (25%, 50%, 75%).
  - **Outbound click:** Se dispara cuando un clic en un enlace va a un dominio diferente al del sitio.
  - **Site search:** Requiere que la URL de resultados contenga un parámetro de consulta (ej: `?q=`). Por defecto reconoce `q`, `s`, `search`, `query`, `keyword`. Para agregar otro: en el engranaje de Site Search, escribe el nombre del parámetro separado por coma.
  - **Form interaction:** "Personally I hate it, it's very unreliable". Recomienda deshabilitarlo.
  - **Video engagement:** Solo funciona con reproductores de YouTube incrustados. No funciona con Vimeo ni reproductores personalizados.
  - **File download:** Lista fija de tipos de archivo soportados. No se puede modificar ni extender.
- **Eventos recomendados:** Buscar "recommended GA4 events" en Google. Para e-commerce, usar exactamente: `purchase`, `add_to_cart`, `begin_checkout`, `refund`. Para login, usar `login` con parámetro `method` (lowercase). Para formularios, se puede usar `generate_lead` o un nombre personalizado.
- **Configurar evento recomendado (login) con GTM:**
  1. Crear trigger tipo *Custom Event*, nombre exacto: `login`.
  2. Crear tag tipo *GA4 Event*, measurement ID desde variable constante.
  3. Event name: `login`.
  4. Parámetro opcional: `method` (lowercase) con variable que devuelva el método de login.
  5. Trigger: el custom event creado.
- **Eventos personalizados:** Ejemplo: rastrear clics en enlaces del menú.
  1. Crear trigger *Just Links*.
  2. En preview, identificar variable consistente (ej: `click classes` contiene `site-nav-link main`).
  3. Refinar trigger: "Some Link Clicks" > "Click Classes" > "contains" > `site-nav-link main`.
  4. Crear tag *GA4 Event*, event name: `menu_link_click`.
  5. Parámetros: `link_url` (variable `Click URL`), `link_text` (variable `Click Text`).
  6. Trigger: el trigger refinado.
- **Crear evento desde interfaz GA4:** *Admin > Events > Create Event*. Reglas basadas en eventos existentes. Ejemplo: crear evento `thank_you_page` cuando `event_name` = `page_view` Y `page_location` contiene `thank-you`. Máximo 50 reglas por propiedad. No aplica a datos históricos.
- **Modificar eventos:** *Admin > Events > Modify Event*. Último recurso ("duct tape solution"). Máximo 50 reglas. No aplica a datos históricos.
- **Ver datos en reports:** *Reports > Engagement > Events* (después de 24 horas). Para análisis avanzado: *Explore > Blank*, dimensiones `link_url`, `link_text`, `event_name`, métrica `event_count`, filtro `event_name` = `menu_link_click`.

## Reglas para agentes
- Usa `event_name` exactamente como aparece en la documentación de Google para eventos recomendados de e-commerce (`purchase`, `add_to_cart`, `begin_checkout`, `refund`).
- Cuando configures un trigger en GTM, usa el nombre del evento exactamente como aparece en el data layer (todo minúsculas, ej: `login`).
- Para el parámetro `method` del evento `login`, usa siempre minúsculas.
- Nunca uses la función "Modify Events" de GA4 si puedes corregir el error en el tag de GTM o en el código del desarrollador.
- Nunca confíes en el tracking automático de "Form Interaction" de Enhanced Measurement; desactívalo y configura tracking manual.
- Cuando crees un tag GA4 Event en GTM, usa siempre una variable constante para el Measurement ID en lugar de pegarlo manualmente.
- Para eventos personalizados, envía siempre parámetros adicionales (como `link_url` y `link_text`) para poder diferenciar las instancias en los reports.
- Después de verificar que los tags funcionan en preview mode, publica los cambios en GTM (Submit > Publish).
- Espera al menos 24 horas para que los eventos aparezcan en los reports estándar de GA4.

## Errores comunes que evita o menciona
- **Scroll tracking limitado:** Solo rastrea al 90% del alto de la página; no puede configurarse para otros umbrales (25%, 50%, 75%).
- **Form interaction poco fiable:** Se dispara demasiado frecuentemente o no se dispara en absoluto en algunos formularios. Recomienda deshabilitarlo.
- **File download con lista fija:** No se puede modificar la lista de tipos de archivo soportados para descargas automáticas.
- **Video engagement solo para YouTube:** No funciona con Vimeo ni reproductores personalizados.
- **Duplicación de eventos en preview:** Al usar GTM con Enhanced Measurement, pueden aparecer dos eventos de clic (uno de GTM y otro de Enhanced Measurement). No causa datos duplicados porque Enhanced Measurement no rastrea clics en menús.
- **Bug en preview de GTM:** A veces muestra "unknown tag type" aunque el tag haya disparado correctamente.
- **Retrasos en Debug View:** Ocasionalmente hay demoras; refrescar la vista puede ayudar.
- **Crear eventos desde interfaz GA4:** No aplica a datos históricos, solo a partir del momento de creación. Máximo 50 reglas.
- **Modificar eventos desde interfaz GA4:** No aplica a datos históricos. Es una solución temporal ("duct tape") que puede causar problemas de troubleshooting si se mezcla con configuraciones en GTM.