# Foxwell Founders Jam Session
**Fuente:** FoxwellDigital | https://youtu.be/mg9wZ8t-1WY

## Qué enseña (2-3 líneas)
Discusión técnica sobre Advantage+ Shopping Campaigns (ASC) de Facebook, centrada en problemas de solapamiento de audiencias, gestión de exclusiones de clientes existentes y estrategias para mantener la incrementalidad. Explica cómo ASC cambia fundamentalmente la filosofía de segmentación al combinar prospección y retargeting sin exclusiones, y cómo esto afecta la frecuencia, el rendimiento a largo plazo y la necesidad de estructuras de campaña complementarias.

## Lecciones accionables
- **Configura el desglose "Audience Type" en Facebook Ads Manager** para ver cuánto gasto de ASC va a clientes existentes vs. nuevos: ve a *Breakdowns > Delivery > Audience Type*. Si no aparece, actívalo en *Ad Account Settings*.
- **Para evitar que ASC se convierta en una campaña de super-retargeting**, establece el control deslizante de "New customer percentage" en **0%** (no dejarlo sin togglear, porque Facebook asume 100% de audiencia existente). Verifica en el desglose que no haya gasto en "Existing customers".
- **Duplica y relanza ASC cada ~10-14 días** cuando la frecuencia suba a 4-5 en ese periodo con un gasto de $4k-5k/día, para reiniciar el ciclo y evitar la fatiga de audiencia.
- **Para mantener incrementalidad en cuentas grandes ($500k-700k/mes)**, ejecuta campañas de testing de creativos separadas con exclusión de visitantes recientes (ej. 14-30 días) y excluye también engagadores, forzando a Facebook a buscar usuarios más fríos.
- **Usa ASC para productos individuales o bundles específicos** cuando tengas múltiples productos con diferentes tasas de conversión o CPAs; no mezcles productos dispares en una sola ASC porque Facebook priorizará el más fácil de vender.
- **Para exclusions robustas en ASC**, sube listas CSV de clientes manualmente en lugar de usar integraciones como Klaviyo, que tienen menor tasa de match post-iOS.
- **En campañas manuales tradicionales**, mantén exclusiones de compradores a 180 días como mínimo; no incluyas visitantes o engagadores en la lista de "existing customers" a nivel de cuenta porque contamina la señal.
- **Usa ventana de atribución de 7-day click** para ASC, no 1-day click, para darle más contexto al algoritmo.
- **Para probar si ASC está trayendo usuarios incrementales**, ejecuta una campaña de testing con exclusión de visitantes de 14-30 días y engagadores, y compara el CPA vs. ASC.

## Reglas para agentes
- **Nunca** incluyas visitantes del sitio o engagadores en la lista de "Existing customers" a nivel de cuenta de ASC; solo sube compradores reales.
- **Usa** el desglose "Audience Type" en Facebook para monitorear semanalmente qué porcentaje del gasto de ASC va a clientes existentes vs. nuevos.
- **Cuando** la frecuencia de ASC supere 4-5 en 10 días con gasto alto, duplica la campaña y relánzala inmediatamente.
- **Nunca** ejecutes múltiples ASC para el mismo producto en el mismo país sin segmentar por producto o bundle diferente.
- **Siempre** establece el control deslizante de "New customer percentage" explícitamente (0% o 1%) en lugar de dejarlo sin tocar.
- **Cuando** tengas cuentas grandes (>$500k/mes en Facebook), complementa ASC con campañas de testing de creativos que excluyan visitantes de 14-30 días.
- **Usa** listas CSV de clientes subidas manualmente para exclusiones en lugar de integraciones API con terceros.
- **Nunca** asumas que ASC está trayendo usuarios fríos; verifica con desgloses y campañas de testing separadas.

## Errores comunes que evita o menciona
- **No dejar el control de "New customer percentage" sin togglear**: Facebook asume 100% de audiencia existente, convirtiendo ASC en una campaña de super-retargeting.
- **No asumir que ASC es 100% prospección fría**: en realidad toca una mezcla de usuarios "tibios" (warm/gray) y puede saturarse con clientes existentes si no se controla.
- **No incluir visitantes del sitio en la lista de "existing customers" a nivel de cuenta**: contamina la señal de aprendizaje de Facebook y puede generar un ciclo negativo de baja calidad.
- **No ejecutar múltiples ASC para el mismo producto en el mismo país**: causa solapamiento de audiencia y Facebook compite contra sí mismo, aumentando frecuencia y CPAs.
- **No monitorear la frecuencia en ASC**: puede dispararse rápidamente (ej. frecuencia 4-5 en 10 días con $4k-5k/día de gasto), requiriendo duplicación y relanzamiento.
- **No verificar el desglose "Audience Type"**: muchos anunciantes no saben que pueden ver cuánto gasto va a clientes existentes vs. nuevos.
- **Asumir que ASC funciona igual para cuentas grandes que para pequeñas**: en cuentas grandes (>$500k/mes), ASC tiende a retargetear clientes existentes porque es más fácil/barato, reduciendo la incrementalidad.
- **No excluir suscriptores existentes en negocios de suscripción**: Facebook sigue sirviendo anuncios a usuarios que ya compraron una suscripción porque no tiene contexto del ciclo de vida del cliente.
- **Usar ventana de atribución de 1-day click en ASC**: limita la capacidad del algoritmo para optimizar correctamente.