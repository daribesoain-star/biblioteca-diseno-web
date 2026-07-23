# Google Analytics 4 audiences not populating in Google Ads? Here are the solutions
**Fuente:** AnalyticsMania | https://youtu.be/08JTO8B7d8o

## Qué enseña (2-3 líneas)
Este video explica por qué las audiencias de Google Analytics 4 no se transfieren ni aparecen en Google Ads, y detalla las causas más comunes: configuraciones incorrectas de enlace, consentimiento, Google Signals, NPA y parámetros técnicos. Proporciona pasos concretos para diagnosticar y solucionar cada problema.

## Lecciones accionables
- **Verificar tamaño de audiencia en GA4:** Ve a `Admin > Data Display > Audiences`. Si la audiencia tiene menos de 10-100 usuarios, es probable que no se propague en Google Ads. Necesitas más tráfico o hacer la audiencia más amplia.
- **Confirmar enlace GA4-Google Ads:** Ve a `Admin > Product Links > Google Ads Links`. Si no ves tu cuenta de Google Ads, haz clic en "Link", selecciona la cuenta, completa los pasos y espera 1-2 días.
- **Habilitar publicidad personalizada en el enlace:** En `Admin > Product Links > Google Ads Links`, haz clic en el enlace existente. Si en "Personalized advertising" aparece "Disabled", haz clic para editar, activa el toggle "Enable personalized advertising" y guarda. Espera al día siguiente.
- **Esperar tiempo de propagación:** Si acabas de vincular GA4 con Google Ads (hace horas), las audiencias no se poblarán de inmediato. Requieren tiempo para acumular datos.
- **Revisar Consent Mode:** Usa el modo de previsualización de Google Tag Manager. En la pestaña "Consent", verifica que `ad_user_data` y `ad_personalization` estén en estado `granted` para los usuarios que dieron consentimiento. Si están `denied`, las audiencias no se poblarán.
- **Habilitar Google Signals:** Ve a `Admin > Data Collection > Google Signals data collection`. Asegúrate de que el toggle esté activado (ON). Si está desactivado, haz clic en "Turn on" y completa los pasos.
- **Verificar regiones de Google Signals:** En la misma sección de Google Signals, haz clic en el ícono de engranaje. Confirma que todas las regiones relevantes estén habilitadas (ej. "307 out of 307 allowed"). Si alguna región está deshabilitada (ej. Alemania), los visitantes de esa región no se incluirán en las audiencias.
- **Revisar eventos y propiedades marcados como NPA (Non-Personalized Ads):** Ve a `Admin > Events`. Busca el evento usado en tu audiencia. Si tiene la etiqueta "NPA", haz clic en los tres puntos y selecciona "Mark as not NPA" para desmarcarlo. Haz lo mismo en `Admin > Custom Definitions > Custom Dimensions` para propiedades de usuario.
- **Verificar parámetro `allow_google_signals` en GTM:** En Google Tag Manager, ve a tu etiqueta principal de GA4. En la configuración, busca el parámetro `allow_google_signals`. Usa el modo de previsualización para confirmar que su valor sea `true` cuando se da consentimiento. Si es `false`, la audiencia no se poblará.
- **Verificar parámetro `allow_ad_personalization_signals` en GTM:** En la misma etiqueta de GA4, busca el parámetro `allow_ad_personalization_signals`. Debe ser `true`. Si es `false`, las señales de personalización de anuncios se deshabilitan y las audiencias no se poblarán.
- **Revisar código gtag.js directamente:** Si no usas GTM, busca en el código fuente de tu sitio los parámetros `allow_google_signals` y `allow_ad_personalization_signals`. Ambos deben tener valor `true`.

## Reglas para agentes
- Usa `Admin > Product Links > Google Ads Links` para verificar el enlace entre GA4 y Google Ads antes de cualquier otra acción.
- Cuando revises Consent Mode, usa el modo de previsualización de GTM y verifica los estados `ad_user_data` y `ad_personalization` en la pestaña "Consent"; nunca asumas que están `granted` sin verificarlo.
- Siempre espera al menos 24-48 horas después de hacer cambios (enlace, Google Signals, consentimiento) antes de concluir que una audiencia no se propaga.
- Si una audiencia no se propaga, revisa primero el tamaño de la audiencia en GA4; si es menor a 100 usuarios, no intentes otras soluciones hasta aumentar el tráfico o ampliar la definición.
- Cuando verifiques Google Signals, nunca solo actives el toggle; también revisa la configuración regional en el ícono de engranaje para asegurar que todas las regiones relevantes estén habilitadas.
- Para eventos o propiedades marcados como NPA, usa la opción "Mark as not NPA" desde los tres puntos; no edites manualmente el evento o propiedad.
- Si usas gtag.js directamente, busca en el código fuente los parámetros `allow_google_signals` y `allow_ad_personalization_signals`; nunca confíes en que están configurados correctamente sin inspeccionar el código.

## Errores comunes que evita o menciona
- **Audiencia demasiado pequeña:** Tener menos de 10-100 usuarios en GA4 evita que la audiencia se propague en Google Ads, incluso si todo lo demás está correcto.
- **Publicidad personalizada deshabilitada en el enlace:** Aunque GA4 y Google Ads estén vinculados, si "Personalized advertising" está desactivado en la configuración del enlace, las audiencias no se poblarán.
- **Consent Mode mal configurado:** Incluso si el usuario hace clic en "I agree", si el estado de consentimiento de `ad_user_data` y `ad_personalization` permanece `denied` por un error de configuración, las audiencias no se acumulan.
- **Google Signals deshabilitado o restringido por región:** Tener Google Signals apagado o deshabilitado en ciertas regiones impide que los visitantes de esas áreas se incluyan en las audiencias de Google Ads.
- **Eventos o propiedades marcados como NPA:** Si un evento o propiedad de usuario usado en una audiencia está marcado como NPA (non-personalized ads), toda la audiencia queda bloqueada para Google Ads.
- **Parámetros `allow_google_signals` o `allow_ad_personalization_signals` en `false`:** Estos parámetros, ya sea en GTM o en código gtag.js, si están en `false` deshabilitan la inclusión en audiencias de Google Ads, incluso si Google Signals está activado globalmente.
- **Confundir el tamaño de audiencia en GA4 con el de Google Ads:** Una audiencia con 5,000 usuarios en GA4 no significa que todos aparezcan en Google Ads; Google Ads solo incluye a los usuarios que encuentra en su propia base de datos, por lo que el número siempre será menor.