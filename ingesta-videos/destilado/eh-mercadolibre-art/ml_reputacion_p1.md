# ml_reputacion
**Fuente:** mercadolibre | https://developers.mercadolibre.cl/es_ar/reputacion-de-vendedores
## Qué enseña
Explica cómo funciona la reputación del vendedor en Mercado Libre, incluyendo niveles, métricas de calidad (reclamos, cancelaciones, tiempo de entrega) y los límites por país. Muestra cómo obtener estos datos mediante la API de usuarios y cómo interpretar los campos de protección y exclusiones.

## Lecciones accionables
- **Endpoint para obtener reputación:** `GET https://api.mercadolibre.com/users/$USER_ID` con header `Authorization: Bearer $ACCESS_TOKEN`
- **Ejemplo de llamada:** `curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/users/128885`
- **Campos clave de la respuesta:**
  - `seller_reputation.level_id`: nivel de reputación (ej. `"5_green"`)
  - `seller_reputation.power_seller_status`: medalla Mercado Líder (`"silver"`, `"gold"`, `"platinum"`)
  - `seller_reputation.real_level`: nivel real durante protección (ej. `"red"`)
  - `seller_reputation.protection_end_date`: fecha fin de protección (ej. `"2019-12-27T00:00:00.000-04:00"`)
  - `seller_reputation.transactions.ratings`: ratios de calificaciones (`positive`, `neutral`, `negative`)
  - `seller_reputation.metrics.sales.completed`: ventas completadas en período
  - `seller_reputation.metrics.claims.rate`: tasa de reclamos
  - `seller_reputation.metrics.delayed_handling_time.rate`: tasa de envíos tardíos
  - `seller_reputation.metrics.cancellations.rate`: tasa de cancelaciones
  - Los valores reales durante protección están en el campo `excluded` dentro de cada métrica
- **Fórmulas de métricas:**
  - `claims_rate = ventas con reclamos / ventas totales`
  - `delayed handling time rate = ventas con despacho tardío / ventas despachadas con ME2`
  - `cancellations rate = cancelaciones que hace el vendedor / ventas totales`
- **Períodos de evaluación por país (ventas en últimos 60/120 días vs. historial 365 días):**

| País | Código | Umbral ventas (últimos 60d) | Período si >= umbral | Período si < umbral |
|------|--------|------------------------------|----------------------|----------------------|
| México | MLM | 40 ventas | Últimos 60 días | Últimos 365 días |
| Brasil | MLB | 60 ventas | Últimos 60 días | Últimos 365 días |
| Argentina | MLA | 50 ventas | Últimos 60 días | Últimos 365 días |
| Colombia | MCO | 60 ventas | Últimos 60 días | Últimos 365 días |
| Chile | MLC | 40 ventas | Últimos 60 días | Últimos 365 días |
| Uruguay | MLU | 25 ventas (últimos 120d) | Últimos 120 días | Últimos 365 días |
| Ecuador | MEC | 20 ventas (últimos 120d) | Últimos 120 días | Últimos 365 días |
| Perú | MPE | 20 ventas (últimos 120d) | Últimos 120 días | Últimos 365 días |

- **Límites por variable y país para cada nivel de reputación:**

**MLB (Brasil):**
| Variable | Líderes | Green | Yellow | Orange | Red |
|----------|---------|-------|--------|--------|-----|
| Claim | 1% | 2% | 4.5% | 8% | > 8% |
| Cancellations | 0.5% | 1.5% | 3.5% | 4% | > 4% |
| Delayed handling time | 6% | 10% | 18% | 22% | > 22% |

**MLA (Argentina) y MLM (México):**
| Variable | Líderes | Green | Yellow | Orange | Red |
|----------|---------|-------|--------|--------|-----|
| Claim | 1% | 1.5% | 3% | 6% | > 6% |
| Cancellations | 0.5% | 1% | 2.5% | 3% | > 3% |
| Delayed handling time | 8% | 10% | 15% | 22% | > 22% |

**MCO (Colombia), MLU (Uruguay), MLC (Chile):**
| Variable | Líderes | Green | Yellow | Orange | Red |
|----------|---------|-------|--------|--------|-----|
| Claim | 2.5% | 3.5% | 5.5% | 7% | > 7% |
| Cancellations | 1.5% | 2.5% | 7% | 9% | > 9% |
| Delayed handling time | 10% | 12% | 18% | 26% | > 26% |

**MEC (Ecuador):**
| Variable | Líderes | Green | Yellow | Orange | Red |
|----------|---------|-------|--------|--------|-----|
| Claim | 4% | 4% | 6% | 8% | > 8% |
| Cancellations | 3% | 3% | 8% | 11% | > 11% |
| Delayed handling time | 12% | 12% | 20% | 30% | > 30% |

**MPE (Perú):**
| Variable | Líderes | Green | Yellow | Orange | Red |
|----------|---------|-------|--------|--------|-----|
| Claim | 2% | 2% | 4.5% | 8% | > 8% |
| Cancellations | 2.5% | 2.5% | 7% | 9% | > 9% |
| Delayed handling time | 12% | 12% | 18% | 26% | > 26% |

- **Handling Time:** diferencia entre `ready_to_ship` y `shipped` (para Cross Docking: entre `in_hub` y `shipped`). Usar recurso `/schedule` para obtener horarios de despacho.
- **Excepciones en reclamos:** ciertas mediaciones se ignoran automáticamente si cumplen reglas específicas; casos excepcionales requieren contacto con CX.
- **Ventas no consideradas:** usuarios inhabilitados, fraudulentos, ventas con todos los pagos rechazados, ventas inválidas.
- **Requisito mínimo:** vendedores necesitan más de 10 ventas en historial para que se calcule la métrica de reclamos.

## Reglas para agentes
- Usa `GET https://api.mercadolibre.com/users/$USER_ID` con token válido para consultar reputación de cualquier vendedor.
- Cuando el vendedor está protegido, lee los valores reales dentro del campo `excluded` de cada métrica, no los valores principales.
- Para calcular el período de evaluación, verifica primero el país (site) y la cantidad de ventas en los últimos 60 días (o 120 para MLU, MEC, MPE) antes de decidir si usar 60/120 días o 365 días.
- Para evitar retrasos en handling time, consulta el recurso `/schedule` para conocer los horarios de despacho del vendedor.
- Nunca consideres ventas de usuarios inhabilitados, fraudulentos, con pagos rechazados o inválidas en los cálculos de métricas.
- Para vendedores con menos de 10 ventas en historial, no calcules la métrica de reclamos (claims).
- Para vendedores que no usan Mercado Envíos, asume delayed handling time rate = 0%.

## Errores comunes que evita o menciona
- **No confundir los valores principales con los reales durante protección:** cuando `protection_end_date` está presente, los valores visibles pueden ser favorables pero los reales están en `excluded`.
- **No usar el mismo período para todos los países:** cada site tiene umbrales y ventanas de tiempo diferentes (60, 120 o 365 días).
- **No ignorar que una orden con múltiples reclamos cuenta como una sola venta con reclamo** solo si todos los reclamos tienen tag `avoid_reputation`.
- **No olvidar que en carritos con múltiples pedidos en un mismo envío**, si el envío es tardío, afecta tantas veces como pedidos tenga el paquete.
- **No asumir que todas las cancelaciones afectan la métrica:** solo cuentan las cancelaciones que hace el vendedor sin reclamo de por medio.
- **No usar ventas canceladas por el vendedor o comprador como "ventas concretadas":** las ventas concretadas = total ventas - ventas canceladas.