# The RIGHT Way to Set Up Google Ads Conversion Tracking for Shopify
**Fuente:** GrowMyAds | https://youtu.be/nokE0Z5ntRo

## Qué enseña (2-3 líneas)
Este video enseña dos métodos para configurar el seguimiento de conversiones de Google Ads en Shopify: uno sencillo usando la app "Google & YouTube" de Shopify, y otro más avanzado mediante la instalación manual de un tag de Google Ads con código personalizado. Recomienda implementar ambos como respaldo, pero configurando solo uno como primario para evitar el doble conteo.

## Lecciones accionables
- **Método 1 (App Google & YouTube):**
  - En Shopify, busca e instala la app "Google & YouTube" desde el buscador de apps.
  - Conecta tu cuenta de Google Ads y crea o vincula tu cuenta de Merchant Center.
  - Ve a Settings > Conversion tracking dentro de la app y verifica que esté activado.
  - En Google Ads, ve a Tools > Data Manager > Shopify > Direct connection > Authorize e ingresa tu tienda.
  - Cuando aparezca el mensaje "you already have conversion measurement set up", haz clic en "Add" para mantener la configuración existente.
  - Activa "Customer match" (turn on) para crear listas de clientes.
  - En "Use case", selecciona "Audiences" y marca "This data was collected and be shared in compliance", luego haz clic en "Continue".
  - La app crea automáticamente la conversión llamada "Google shopping app purchase".
  - Edita la conversión: configura "Click-through window" en 30 días, "Attribution" en "Data driven", y marca "Every conversion" como primario.
- **Método 2 (Tag manual de Google Ads):**
  - En Google Ads, ve a Goals > Summary > Create conversion action > Add a conversion action manually.
  - Selecciona "Purchase", nómbralo (ej. "Purchase Shopify" o "Shopify purchase"), marca "Primary", "Use different value for each conversion" (para pasar revenue dinámicamente), "Count: Every", "Click-through conversion window: 30 days", "Attribution: Data driven", "Enhanced conversions: Managed through Google Ads tag", desactiva "Enable enhanced CPC".
  - Haz clic en "Done" > "Save and continue".
  - Ve a "Tag setup" > "Install the tag yourself" > "Event snippet" para obtener el código.
  - Alternativamente, usa "Tag manager" para obtener el "Conversion ID" (ej. 414-xxxx-xx) y "Conversion label".
  - En Shopify, ve a Settings > Custom pixel > Add custom pixel, nómbralo "Google ads conversion tracking".
  - Reemplaza el código predeterminado con el código proporcionado en la descripción del video (contiene placeholders para `aw` y `conversion ID`).
  - Busca en el código las tres ubicaciones donde aparece `aw` y `conversion ID`, y reemplázalas con tu "Conversion ID" real.
  - En la tercera ubicación (donde aparece `conversion ID` y `conversion label`), pega también tu "Conversion label".
  - Haz clic en "Save" y luego "Connect".
  - Prueba el tag: realiza una compra de prueba en Shopify (usa un gateway de pago ficticio como "bogus payment gateway") y verifica con una extensión como "Tag Explorer" que el tag se dispare en la página de confirmación.
  - Revisa en Google Ads al día siguiente para confirmar que el tag aparezca como "Active" y que los valores de conversión se registren correctamente.
- **Configuración de respaldo (ambos métodos):**
  - Si tienes ambos tags (app + manual), ve a Google Ads > Goals > Summary.
  - Decide cuál será el tag primario (ej. el manual) y cuál el secundario (ej. "Google shopping app purchase").
  - En el tag secundario, ve a "Action optimization" y cámbialo a "Secondary" para que siga recolectando datos pero no cuente en las columnas de conversiones de campañas ni entrene el smart bidding.

## Reglas para agentes
- Usa "Data driven attribution" para la atribución de conversiones de e-commerce en Shopify.
- Usa "Use different value for each conversion" para pasar dinámicamente el revenue real de cada compra.
- Nunca dejes dos tags de conversión como "Primary" al mismo tiempo, ya que duplicarías las conversiones.
- Configura siempre "Click-through conversion window" en 30 días a menos que el ciclo de venta sea más largo (ej. 90 días).
- Desactiva "Enable enhanced CPC" en la configuración del tag de conversión manual, ya que no es necesario para el seguimiento.
- Verifica el tag manual al día siguiente de implementarlo para confirmar que las conversiones se registren correctamente.

## Errores comunes que evita o menciona
- **Doble conteo de conversiones:** Si tienes tanto la app "Google & YouTube" como el tag manual configurados como "Primary", las conversiones se duplicarán. Solución: establecer uno como "Primary" y el otro como "Secondary".
- **La app "Google & YouTube" puede fallar o no pasar información correctamente:** Es poco común pero ocurre, por lo que se recomienda tener el tag manual como respaldo.
- **No verificar el tag después de implementarlo:** El tag puede aparecer como "Inactive" hasta que se registre la primera conversión. Se debe probar con una compra real o de prueba y revisar al día siguiente.
- **Usar el código predeterminado del pixel personalizado de Shopify:** No funciona para Google Ads; se debe reemplazar con el código específico proporcionado en el video (con placeholders para `aw`, `conversion ID` y `conversion label`).
- **No cambiar el "Conversion ID" en las tres ubicaciones del código:** Si solo se cambia en una, el tag no funcionará correctamente.
- **Confundir "Conversion ID" con "Conversion label":** El ID es el número largo (ej. 414-xxxx-xx) y el label es un código alfanumérico corto; ambos son necesarios en la tercera ubicación del código.