# Missing purchases in Google Analytics 4? Here are 11 reasons
**Fuente:** AnalyticsMania | https://youtu.be/xalewOYMbts

## Qué enseña (2-3 líneas)
Este video explica las causas más comunes por las que faltan transacciones de compra en Google Analytics 4, desde bloqueadores de anuncios hasta errores de implementación técnica en el data layer. Proporciona soluciones prácticas para diagnosticar y corregir cada problema, incluyendo el uso de server-side tagging, verificación del data layer en modo preview y publicación correcta de cambios en Google Tag Manager.

## Lecciones accionables
- **Ad blockers:** Acepta que los datos nunca serán perfectos (usa datos "suficientemente buenos"). Alternativa: implementa server-side tagging con proxying desde tu propio dominio/subdominio para evitar bloqueos de extensiones como AdBlock, uBlock Origin, Ghostery.
- **Configuración estricta de privacidad en navegadores:** Usa server-side tagging con proxying para mitigar bloqueos en Brave o navegadores con configuraciones de terceros estrictas. Nota: es un juego del gato y el ratón, no hay garantía a largo plazo.
- **JavaScript deshabilitado:** Afecta a menos del 1% de usuarios. No es prioritario, pero tenlo presente como caso extremo.
- **Consent popup con rechazo:** Si el usuario rechaza el consentimiento y no disparas tags, perderás datos. Incluso con Google Consent Mode, no se rellena el 100% de los datos faltantes. Acepta la pérdida (ej. 20%) y trabaja con el 80% restante para tendencias y patrones.
- **Data layer de e-commerce incorrecto:** Debes seguir estrictamente la estructura de Google. Parámetros obligatorios: `transaction_id` (no `order_id` ni `id`), `value` (número sin signo de moneda ni código ISO), `currency` (código ISO, ej. "USD"), `items` (array con objetos que incluyan al menos `item_id`, `item_name`, `price`, `quantity`). Parámetros opcionales: `brand`, `category`. Revisa la documentación oficial de GA4 e-commerce (enlace en descripción del video).
- **Verificación en modo preview de GTM:** En la página de confirmación de pedido (thank you page), activa el modo preview de Google Tag Manager. Busca el evento `purchase` en la lista de eventos. Expándelo y verifica que el objeto `ecommerce` contenga `transaction_id`, `value`, `currency` y `items` con la estructura correcta. Si no aparece, el desarrollador debe corregir el data layer.
- **Publicación de cambios en GTM:** Ve a la vista "Overview" en GTM. Si ves "Workspace changes" (cambios sin publicar), los tags y triggers nuevos no están activos. Haz clic en "Submit", completa los pasos de publicación y espera a que estén en vivo.
- **Data layer push antes de redirección:** Si el data layer de compra se dispara en la página de pago justo antes de redirigir al usuario a la thank you page, el tag puede no ejecutarse. Pide al desarrollador que mueva el data layer push a la thank you page (después de la redirección) para dar tiempo al procesamiento.
- **Falta de parámetro `currency`:** El parámetro debe llamarse exactamente `currency` y su valor debe seguir el estándar ISO (ej. "USD", "EUR"). Sin él o con formato incorrecto, el tracking de compra no funciona.
- **Formato incorrecto de `value`:** El valor debe ser un número sin signo de moneda ni código ISO. Ejemplo correcto: `72.5`. Ejemplos incorrectos: `$72.5`, `72.5 USD`, `"72.5"`.
- **Retraso en procesamiento de datos:** Espera al menos 24-48 horas después de enviar datos de compra para verlos en GA4. Si después de ese tiempo aún faltan transacciones, el problema es otra causa.

## Reglas para agentes
- Usa `transaction_id` (no `order_id`, `id` ni otros nombres) cuando implementes el data layer de compra en GA4.
- Usa `currency` con código ISO de tres letras (ej. "USD") en cada evento de compra; nunca omitas este parámetro.
- Usa `value` como número decimal sin signo de moneda ni código ISO (ej. `72.5`); nunca incluyas "$", "€" ni "USD" dentro del valor.
- Nunca publiques cambios en Google Tag Manager sin antes verificar en modo preview que el evento `purchase` aparece con el objeto `ecommerce` completo en la thank you page.
- Nunca coloques el data layer push de compra en la página de pago si hay una redirección inmediata; muévelo siempre a la thank you page.
- Espera al menos 24 horas (idealmente 48) antes de diagnosticar datos faltantes como un error; el retraso de procesamiento es normal.

## Errores comunes que evita o menciona
- Olvidar publicar los cambios en Google Tag Manager después de configurar tags y triggers de compra.
- Usar nombres incorrectos en el data layer como `order_id` en lugar de `transaction_id`, o `id` en lugar de `item_id`.
- Incluir el signo de moneda o el código ISO dentro del parámetro `value` (ej. `$72.5` o `72.5 USD`).
- No incluir el parámetro `currency` en el evento de compra.
- Colocar el data layer push de compra en la página de pago justo antes de una redirección, causando que el tag no se ejecute.
- Asumir que Google Consent Mode rellena el 100% de los datos perdidos por rechazo de consentimiento.
- Confiar en que server-side tagging con proxying evitará permanentemente los bloqueadores de anuncios (mejoran con el tiempo).