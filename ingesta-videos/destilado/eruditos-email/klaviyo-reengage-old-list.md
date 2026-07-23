# klaviyo-reengage-old-list
**Fuente:** https://help.klaviyo.com/hc/en-us/articles/10767213384859 | canal temático: email | destilado 2026-07-09

## Qué enseña (2-3 líneas)
Reactivar una lista antigua puede recuperar perfiles valiosos, pero también puede dañar la reputación del remitente y la entregabilidad si se contacta a perfiles inactivos o inválidos.  
La estrategia correcta es filtrar, limpiar, dividir, reintroducir la marca y suprimir o eliminar a quienes no respondan.

## Lecciones accionables
- Antes de enviar a una lista antigua, decide explícitamente:
  - si realmente necesitas contactar esa lista;
  - por qué la marca quiere hacerlo ahora;
  - a quiénes exactamente vas a contactar.
- Considera como no comprometidos a los emails que no han interactuado con la marca en más de 1 año.
- En Klaviyo, crea un segmento para identificar perfiles de alto riesgo con estas condiciones:
  - `If someone is or is not in a list > is in Old Contact List`
  - `Placed Order zero times in the last 365 days`
  - `Active on Site zero times in the last 365 days`
  - `Opened Email zero times in the last 365 days where Apple Privacy Open = false`
  - `Clicked Email zero times in the last 365 days`
- Suprime esos perfiles si no han interactuado con la marca en 365 días; son poco propensos a responder y elevan el riesgo de problemas de reputación.
- Antes de contactar una lista antigua, limpia emails potencialmente inválidos.
- Si la lista lleva mucho tiempo sin uso, considera eliminar emails organizacionales o corporativos, porque tienen mayor probabilidad de estar inactivos.
- Usa servicios de limpieza de listas o herramientas de entregabilidad de terceros; Klaviyo menciona Kickbox como opción recomendada.
- Antes de volver al email, reconstruye reconocimiento de marca con retargeting en canales publicitarios.
- Usa integraciones de Klaviyo con Facebook y Google Ads para impactar a contactos antiguos antes del envío de reactivación.
- No envíes a toda la lista antigua al mismo tiempo.
- Usa la función de batch sending de Klaviyo para dividir el envío en lotes más pequeños distribuidos en el tiempo.
- Para listas grandes, divide la lista antigua en varias listas menores: exporta la lista, sepárala y vuelve a subir los grupos pequeños a Klaviyo.
- Entre intentos de reactivación a contactos antiguos, intercala envíos a contactos comprometidos para reducir el impacto negativo sobre entregabilidad.
- El contenido de reactivación debe reintroducir la marca, porque los contactos antiguos pueden haberla olvidado.
- No incluyas la lista antigua dentro de campañas normales dirigidas a perfiles comprometidos.
- Usa un sunset flow como intento final de reactivación cuando quieras una secuencia automatizada.
- En este caso, el sunset flow puede activarse por la lista antigua, aunque normalmente se active por segmento.
- Después del sunset flow, elimina o suprime a quienes no respondan.
- Usa una campaña de reactivación cuando quieras un único email, no una secuencia.
- Después de la campaña de reactivación, suprime a los contactos que no interactúen.
- Tras la reactivación, mantén una limpieza periódica de lista para conservar buena entregabilidad y asegurar que los envíos lleguen a inbox.

## Reglas para agentes
- Usa el umbral de 365 días para clasificar contactos antiguos sin compras, actividad en sitio, aperturas válidas o clics.
- Usa `Apple Privacy Open = false` al evaluar aperturas para no contar aperturas infladas por privacidad de Apple.
- Nunca recomiendes enviar una lista antigua completa de una sola vez.
- Nunca mezcles una lista antigua con campañas habituales para contactos comprometidos.
- Usa limpieza de lista antes de cualquier reactivación de contactos antiguos.
- Usa batch sending o listas pequeñas cuando la lista antigua sea grande.
- Usa retargeting en Facebook o Google Ads antes del email cuando sea posible.
- Usa sunset flow cuando la reactivación requiera una secuencia y eliminación posterior de no respondedores.
- Usa campaña de reactivación cuando baste un email único.
- Suprime o elimina perfiles que no respondan después del intento de reactivación.
- Mantén higiene periódica de lista después de la campaña o flujo.

## Errores comunes que evita o menciona
- Contactar perfiles que llevan más de 1 año sin interacción.
- Enviar a emails inválidos o probablemente inactivos.
- No eliminar correos organizacionales antiguos con alta probabilidad de estar abandonados.
- Enviar toda la lista antigua en un único disparo.
- Mezclar contactos antiguos con campañas normales para audiencias comprometidas.
- No reintroducir la marca a contactos que probablemente ya la olvidaron.
- No suprimir a quienes no interactúan tras la reactivación.
- Descuidar la limpieza periódica de lista después del esfuerzo inicial.