# Founders Forum: Is Your Meta Tracking Broken?
**Fuente:** FoxwellDigital | https://youtu.be/S_UtpQUoMFU

## Qué enseña
Este episodio desglosa cómo auditar y optimizar el tracking de Meta (Facebook/Instagram) para e-commerce, diferenciando entre la integración nativa de Shopify, herramientas de terceros como Elevar o Edge Tag, y la configuración server-side (CAPI). Explica cómo detectar duplicados, interpretar Events Manager y cuándo vale la pena invertir en soluciones avanzadas según el volumen de tráfico e ingresos.

## Lecciones accionables
- **Auditar duplicados en Meta Events Manager:** Ve a la pestaña "Test Events" en Events Manager, navega por tu funnel de compra y observa si aparecen múltiples eventos "Purchase". Si ves un evento con prefijo "sh" en el event ID, ese proviene de la app de Shopify; cualquier otro sin ese prefijo es duplicado y debe eliminarse.
- **Verificar correlación pixel-server:** En Events Manager, haz clic en cada evento (ej. Purchase) y revisa los dos gráficos de línea (pixel events vs. server events). Deben estar estrechamente correlacionados; los server events deben ser iguales o mayores que los pixel events. Si hay más pixel events, hay eventos duplicados desde otra fuente (GTM, theme code, Event Setup Tool).
- **Configurar redundancia con event ID:** Para cada evento, envía tanto el pixel event (vía JavaScript) como el server event (vía CAPI) con un event ID único. Meta deduplica automáticamente: si ambos llegan, conserva el pixel event y descarta el server event. Si el pixel falla (bloqueador de anuncios, error de navegador), el server event asegura la captura.
- **Detectar fuentes de eventos duplicados:** Revisa en orden: (1) Meta Event Setup Tool (herramienta sin código en Events Manager), (2) código hardcodeado en el theme de Shopify (busca el pixel ID en el código fuente), (3) contenedores de Google Tag Manager (GTM) olvidados o instalados por terceros.
- **Implementar server-side tracking en TikTok:** Usa la app de TikTok en Shopify (ya incluye server-side, llamado "eAPI") o configúralo vía GTM. La estructura es idéntica a Meta: pixel events + server events con deduplicación. La única diferencia técnica es que TikTok usa "Complete Payment" en lugar de "Purchase".
- **Para Google Ads:** Activa Enhanced Conversions (equivalente a Advanced Matching de Meta) y server-side tracking vía GA4 + GTM. Pasa parámetros de usuario (nombre, email, teléfono) junto con cada evento para mejorar el match rate.
- **Evaluar si necesitas herramientas de terceros (Elevar, Edge Tag):** Si tu tienda genera menos de ~$X en ingresos o bajo volumen de tráfico, la integración nativa de Shopify + Meta/TikTok es suficiente. El lift incremental de estas herramientas suele ser de 7-9% (no 10-15%+). Solo vale la pena si ese porcentaje impacta significativamente tu bottom line en campañas de retargeting.
- **Usar el test de eventos para verificar parámetros:** En "Test Events", revisa que cada evento pase correctamente: product name, price, value, currency, event ID. Si falta algún parámetro, el match rate (EMQ score) se reduce.

## Reglas para agentes
- **Usa siempre** la configuración redundante (pixel + server-side con event ID único) para cada evento de conversión, especialmente Purchase, Add to Cart y View Content.
- **Nunca** instales más de una fuente de tracking para el mismo evento (ej. no tengas la app de Shopify + GTM + código en theme + Event Setup Tool todos disparando "Purchase").
- **Verifica** en Events Manager que los server events sean >= pixel events para eventos down-funnel (Purchase, Add to Cart). Si hay más pixel events, busca y elimina la fuente duplicada.
- **Cuando audites**, comienza siempre por "Test Events" en Meta Events Manager antes de revisar código o GTM.
- **Para tiendas pequeñas** (< $X en ingresos mensuales), usa solo la integración nativa de Shopify con Meta y TikTok; no implementes herramientas de terceros hasta que el volumen justifique el costo y mantenimiento.
- **En TikTok**, trata "Complete Payment" como el equivalente de "Purchase" en Meta; no uses nombres de evento personalizados.

## Errores comunes que evita o menciona
- **Duplicación de eventos por "demasiados cocineros":** Tener la app de Shopify + GTM + Event Setup Tool + código en theme disparando el mismo evento. Solución: auditar con Test Events y eliminar fuentes redundantes.
- **Confundir datos de terceros (Triple Whale, Northbeam) con datos que recibe Meta:** Esos pixeles de terceros no alimentan la optimización de Meta; solo sirven para reporting interno. No reemplazan el pixel nativo ni CAPI.
- **Creer que sin server-side tracking "estás muerto":** Falso. La integración nativa de Shopify captura la mayoría de los datos. El server-side (CAPI) da un lift de ~8-13% en eventos capturados, pero no es crítico para tiendas pequeñas.
- **Ignorar el Event Setup Tool de Meta:** Es una fuente común de eventos duplicados porque es "sin código" y fácil de olvidar. Revisarlo siempre en una auditoría.
- **Asumir que más pixel events que server events es normal:** Para eventos down-funnel, debe haber igual o más server events. Si hay más pixel events, hay duplicación desde otra fuente.
- **No usar event ID en la configuración server-side:** Sin event ID, Meta no puede deduplicar correctamente y puede contar dos veces la misma conversión.