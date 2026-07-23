# Microsoft Ads Conversion Tracking (2026), including Enhanced Conversions (with Google Tag Manager)
**Fuente:** AnalyticsMania | https://youtu.be/EN8s8PJK-0g

## Qué enseña
Configurar el seguimiento de conversiones de Microsoft Ads (incluyendo Enhanced Conversions) usando Google Tag Manager. Cubre la creación del UET tag, el envío de eventos de conversión con revenue y currency, la implementación de enhanced conversions con email/phone hasheado, y la integración con consent mode de Google.

## Lecciones accionables
- Crear un UET tag en Microsoft Ads: ir a **Conversions > UET tag > Create > Create UET tag**, asignar nombre, seleccionar industria, desmarcar Microsoft Clarity si no se necesita, elegir "I'll install the tag myself", mantener consent mode deshabilitado inicialmente.
- Copiar el **UET Tag ID** desde la interfaz de Microsoft Ads.
- En GTM: crear nuevo tag, buscar "Microsoft" en tag configuration, pegar el UET Tag ID, seleccionar **track type: Page load**, trigger: **Initialization - All Pages**.
- Instalar la extensión Chrome **UET Tag Helper** para depuración.
- Para crear un conversion goal en Microsoft Ads: ir a **Conversions > Conversion goals > Create > Business website > Manual setup**, seleccionar categoría (ej. Purchase), elegir **Event**, asignar nombre (ej. "purchase"), marcar **"Conversion action value may vary"**, seleccionar moneda, definir default value (fallback), elegir **Count: All** para purchases o **Unique** para leads.
- Anotar el valor de **action** (ej. "purchase") que aparece en la configuración manual del conversion goal.
- En GTM: crear tag de conversión copiando el UET tag, cambiar **track type** a **Custom conversion**, en **Action** pegar el mismo valor del conversion goal (ej. "purchase"), dejar **Category** y **Label** vacíos si no se usaron.
- Para revenue: crear variable de **Data Layer Variable** con nombre `ecommerce.value` (o el que corresponda), asignarla al campo **Revenue Value** del tag.
- Para currency: usar variable `ecommerce.currency` o valor fijo (ej. "EUR").
- Trigger del tag de conversión: **Custom Event** con nombre exacto del evento en data layer (ej. "purchase").
- Para Enhanced Conversions: en Microsoft Ads, editar el conversion goal, activar **Enhanced conversions**, aceptar términos, copiar el nombre del parámetro **pID**.
- En GTM: crear variable **Data Layer Variable** para `userEmail` (o el nombre exacto en data layer).
- Crear variable **Custom JavaScript** con código:
  ```javascript
  function() {
    return {
      email: {{DLV - userEmail}}
    };
  }
  ```
  (Si también hay phone: `email: {{DLV - userEmail}}, phone: {{DLV - userPhone}}`)
- En el tag de conversión (purchase), hacer clic en **Add Parameter**, nombre: `pID`, valor: la variable Custom JavaScript creada.
- Para consent mode: en el UET tag de página, habilitar **Enable consent updates from GTM** (experimental) si ya se usa Google Consent Mode v2.
- En Microsoft Ads: editar el UET tag, en "install the tag myself", habilitar **Enable consent mode**.
- Publicar cambios en GTM con **Submit**; esperar hasta 24 horas para que el UET tag aparezca como "verified" y las conversiones comiencen a registrarse.

## Reglas para agentes
- Usa **track type: Custom conversion** para eventos de conversión en GTM, no Page load.
- Usa el valor exacto de **action** del conversion goal de Microsoft Ads en el campo Action del tag de GTM.
- Cuando envíes enhanced conversions, el parámetro debe llamarse **pID** (todo minúsculas) y su valor debe ser un **objeto JavaScript**, no un string plano.
- Si el conversion goal tiene **label**, debes mapearlo en el campo Label del tag de GTM; si no tiene, déjalo vacío.
- Para revenue, usa una variable de data layer que contenga el valor numérico, no un string.
- Nunca habilites consent mode en el UET tag de Microsoft Ads si no operas en regiones donde sea requerido (ej. Unión Europea).
- Siempre prueba con **UET Tag Helper** o revisando la pestaña Network > filtrar por "bing" en DevTools antes de publicar.

## Errores comunes que evita o menciona
- No confundir el **UET Tag ID** (para el tag de página) con el **action** del conversion goal (para el tag de conversión).
- No olvidar que el tag de página (Page load) debe dispararse en **Initialization - All Pages**, no en otro trigger.
- Si el conversion goal usa **Count: Unique**, no usar **All** en la configuración de Microsoft Ads.
- El revenue value debe enviarse como número, no como string; usar variable de data layer numérica.
- Enhanced conversions requiere que el email/phone esté disponible en data layer **antes** o **junto con** el evento de conversión; si solo está disponible después, no funcionará con el checkbox de enhanced conversions en el tag de página.
- No esperar ver conversiones inmediatamente en Microsoft Ads; el estado "unverified" puede durar hasta 24 horas.
- Si se usa consent mode de Google, el checkbox "Enable consent updates from GTM" es experimental; requiere pruebas adicionales.