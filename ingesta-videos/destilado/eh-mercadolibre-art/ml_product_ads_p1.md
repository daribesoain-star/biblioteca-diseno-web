# ml_product_ads
**Fuente:** mercadolibre | https://developers.mercadolibre.cl (guía Product Ads) (guía Product Ads) (guía Product Ads)

## Qué enseña
Enseña a gestionar campañas de anuncios de productos en Mercado Libre mediante la API de Product Ads, incluyendo la consulta de anunciantes, campañas, anuncios y sus métricas. Cubre dos modalidades de gestión (Automático y Personalizado) y explica los endpoints para monitorear rendimiento, presupuestos y objetivos.

## Lecciones accionables

### Requisitos para usar Product Ads
- El usuario debe tener reputación amarilla o superior.
- Deben haber transcurrido al menos 15 días desde el registro en Mercado Libre.
- Mínimo de ventas: 1 para empresas, 10 para individuos.
- No tener facturas vencidas.

### Consultar anunciantes (advertiser_id)
- **Endpoint:** `GET /advertising/advertisers?product_id=$PRODUCT_ID`
- **Header obligatorio:** `Authorization: Bearer $ACCESS_TOKEN`, `Content-Type: application/json`, `Api-Version: 1`
- **Parámetro obligatorio:** `product_id` (valores: `PADS`, `DISPLAY`, `BADS`)
- **Ejemplo de llamada:**
  ```
  curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' -H 'Content-Type: application/json' -H 'Api-Version: 1' https://api.mercadolibre.com/advertising/advertisers?product_id=PADS
  ```
- **Respuesta:** Array de objetos con campos `advertiser_id`, `site_id`, `advertiser_name`, `account_name`.
- **Error común:** Si el usuario no tiene habilitado el producto, devuelve `404 - No permissions found for user_id`.

### Detalle de un anuncio
- **Endpoint:** `GET /advertising/$ADVERTISER_SITE_ID/product_ads/ads/$ITEM_ID`
- **Header:** `api-version: 2`
- **Ejemplo:**
  ```
  curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' -H 'api-version: 2' https://api.mercadolibre.com/advertising/MLM/product_ads/ads/MLM12345678
  ```
- **Campos de respuesta clave:** `item_id`, `campaign_id`, `price`, `title`, `status`, `has_discount`, `catalog_listing`, `logistic_type`, `listing_type_id`, `domain_id`, `buy_box_winner`, `recommended`, `metrics_summary`.

### Search y métricas de campañas
- **Endpoint:** `GET /advertising/$ADVERTISER_SITE_ID/advertisers/$ADVERTISER_ID/product_ads/campaigns/search`
- **Header:** `api-version: 2`
- **Parámetros opcionales:**
  - `limit` (por defecto 50)
  - `offset` (por defecto 0)
  - `date_from` (YYYY-MM-DD, obligatorio si se solicitan metrics)
  - `date_to` (YYYY-MM-DD, obligatorio si se solicitan metrics)
  - `metrics`: lista separada por coma. Valores posibles: `clicks`, `prints`, `ctr`, `cost`, `cost_usd`, `cpc`, `acos`, `organic_units_quantity`, `organic_units_amount`, `organic_items_quantity`, `direct_items_quantity`, `indirect_items_quantity`, `advertising_items_quantity`, `cvr`, `roas`, `sov`, `direct_units_quantity`, `indirect_units_quantity`, `units_quantity`, `direct_amount`, `indirect_amount`, `total_amount`
  - `aggregation` (por defecto: `sum`)
  - `aggregation_type` (por defecto: `campaign`)
  - `metrics_summary` (booleano, por defecto: `false`)
- **Filtros disponibles:** `?filters[campaign_ids]=`, `?filters[campaign_id]=`, `?filters[status]=` (active, paused)
- **Ejemplo:**
  ```
  curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' -H 'api-version: 2' 'https://api.mercadolibre.com/advertising/MLA/advertisers/882927/product_ads/campaigns/search?limit=1&offset=0&date_from=2025-12-01&date_to=2025-12-30&metrics=clicks,prints,ctr,cost,cpc,acos,organic_units_quantity,organic_units_amount,organic_items_quantity,direct_items_quantity,indirect_items_quantity,advertising_items_quantity,cvr,roas,sov,direct_units_quantity,indirect_units_quantity,units_quantity,direct_amount,indirect_amount,total_amount'
  ```

### Métricas diarias de campañas
- Mismo endpoint que search, agregando `&aggregation_type=DAILY`
- La respuesta agrupa por fecha con campos: `date`, `clicks`, `prints`, `ctr`, `cost`, `cpc`, `acos`, etc.

### Métricas sumarizadas de campañas
- Mismo endpoint, agregando `&metrics_summary=true`
- La respuesta incluye un objeto `metrics_summary` adicional con totales agregados.

### Detalle y métricas de una campaña específica
- **Endpoint:** `GET /advertising/$ADVERTISER_SITE_ID/product_ads/campaigns/$CAMPAIGN_ID`
- **Parámetros opcionales adicionales:** `impression_share`, `top_impression_share`, `lost_impression_share_by_budget`, `lost_impression_share_by_ad_rank`, `acos_benchmark`
- **Ejemplo:**
  ```
  curl GET -H 'api-version: 2' -H 'Authorization: Bearer $ACCESS_TOKEN' 'https://api.mercadolibre.com/advertising/$ADVERTISER_SITE_ID/product_ads/campaigns/$CAMPAIGN_ID?date_from=2025-12-01&date_to=2025-12-30&metrics=clicks,prints,ctr,cost,cpc,acos,organic_units_quantity,organic_units_amount,organic_items_quantity,direct_items_quantity,indirect_items_quantity,advertising_items_quantity,cvr,roas,sov,direct_units_quantity,indirect_units_quantity,units_quantity,direct_amount,indirect_amount,total_amount,impression_share,top_impression_share,lost_impression_share_by_budget,lost_impression_share_by_ad_rank,acos_benchmark'
  ```

### Search y métricas de todos los anuncios
- **Endpoint:** `GET /advertising/$ADVERTISER_SITE_ID/advertisers/$ADVERTISER_ID/product_ads/ads/search`
- **Filtros disponibles:** `?filters[item_id]=`, `?filters[statuses]=` (active, paused, hold, idle, delegated, revoked), `?filters[channel]=`, `?filters[price]=`, `?filters[buy_box_winner]=`, `?filters[condition]=`, `?filters[current_level]=`, `?filters[deferred_stock]=`, `?filters[domains]=`, `?filters[logistic_types]=`, `?filters[listing_types]=`, `?filters[official_stores]=`, `?filters[recommended]=`, `?filters[campaign_id]=`, `?filters[campaigns]=`, `?filters[brand_value_id]=`, `?filters[brand_value_name]=`
- **Parámetros opcionales adicionales:** `sort` (asc/desc), `sort_by` (nombre del atributo)
- **Ejemplo:**
  ```
  curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' -H 'api-version: 2' 'https://api.mercadolibre.com/advertising/MLM/advertisers/35300/product_ads/ads/search?limit=1&offset=0&date_from=2024-01-01&date_to=2024-02-28&metrics=clicks,prints,ctr,cost,cpc,acos,organic_units_quantity,organic_units_amount,organic_items_quantity,direct_items_quantity,indirect_items_quantity,advertising_items_quantity,cvr,roas,sov,direct_units_quantity,indirect_units_quantity,units_quantity,direct_amount,indirect_amount,total_amount'
  ```

### Métricas de un anuncio específico
- **Endpoint:** `GET /advertising/$ADVERTISER_SITE_ID/product_ads/ads/$ITEM_ID`
- **Ejemplo:**
  ```
  curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' -H 'api-version: 2' 'https://api.mercadolibre.com/advertising/$ADVERTISER_SITE_ID/product_ads/ads/$ITEM_ID?date_from=2024-01-01&date_to=2024-02-28&metrics=clicks,prints,ctr,cost,cpc,acos,organic_units_quantity,organic_units_amount,organic_items_quantity,direct_items_quantity,indirect_items_quantity,advertising_items_quantity,cvr,roas,sov,direct_units_quantity,indirect_units_quantity,units_quantity,direct_amount,indirect_amount,total_amount'
  ```

### Estrategias de campaña
- `strategy` puede ser: `PROFITABILITY`, `INCREASE`, `VISIBILITY`
- `roas_target`: Retorno sobre inversión publicitaria. Debe ser >= 1x y <= 35x.
  - ROAS bajo: busca más ventas y mayor alcance, menor rentabilidad por venta.
  - ROAS alto: busca mayor rentabilidad por venta, menor volumen de ventas.

### Estados de anuncios
| Estado | Significado |
|--------|-------------|
| `active` | Anuncio activo |
| `paused` | Anuncio pausado |
| `hold` | Ítem deshabilitado en publicidad (pausado o sin stock a nivel marketplace) |
| `idle` | Ítem disponible para publicidad pero no en ninguna campaña |
| `delegated` | Ítem delegado a otro advertiser (el owner ya no puede operar) |
| `revoked` | Ítem devuelto al dueño por el advertiser al que fue prestado |

### Notas importantes sobre métricas
- Rango de fechas máximo: 90 días hacia atrás.
- La información se actualiza a las 10:00 hrs GMT-3.
- Solo se puede solicitar un `aggregation_type` a la vez.
- A partir de enero 2026, las respuestas incluyen `roas_target`. El campo `acos_target` seguirá visible hasta el 30 de marzo de 2026 como métrica opcional. Fórmula: ACOS = (1/ROAS) x 100.

### Endpoints que serán descontinuados (a partir del 26 de febrero de 2026)
- `GET /advertising/product_ads/items/$ITEM_ID`
- `GET /advertising/$ADVERTISER_SITE_ID/product_ads/items/$ITEM_ID`
- `GET /advertising/advertisers/$ADVERTISER_ID/product_ads/items`
- `GET /advertising/$ADVERTISER_SITE_ID/advertisers/$ADVERTISER_ID/product_ads/items/search`
- `GET /advertising/product_ads/campaigns/$CAMPAIGN_ID`
- `GET /advertising/advertisers/$ADVERTISER_ID/product_ads/campaigns`
- `GET /advertising/product_ads/campaigns/$CAMPAIGN_ID/metrics`
- `GET /advertising/product_ads_2/campaigns/$CAMPAIGN_ID/metrics`
- `GET /advertising/product_ads/campaigns/$CAMPAIGN_ID/ads/metrics`
- `GET /advertising/product_ads_2/campaigns/$CAMPAIGN_ID/ads/metrics`
- `GET /advertising/product_ads/ads/search`

## Reglas para agentes
- Usa siempre `api-version: 2` en los headers de los endpoints de Product Ads.
- Usa `product_id=PADS` al consultar anunciantes para Product Ads.
- Incluye `date_from` y `date_to` (formato YYYY-MM-DD) siempre que solicites métricas.
- Nunca uses los endpoints listados como "descontinuados" después del 26 de febrero de 2026; devolverán error 404.
- Filtra por `status=active` o `status=paused` en campañas; para anuncios usa `statuses=active,paused,idle`.
- Para métricas diarias, agrega `&aggregation_type=DAILY` al endpoint correspondiente.
- Para métricas sumarizadas, agrega `&metrics_summary=true`.
- Usa `roas_target` como indicador estándar de performance a partir de enero 2026; `acos_target` es opcional hasta marzo 2026.
- Valida que el usuario cumpla los requisitos (reputación amarilla+, 15 días de registro, ventas mínimas, sin facturas vencidas) antes de operar.
- Para paginación, usa `limit` (máx. 50 por defecto) y `offset` (empieza en 0).
- Aplica filtros con la estructura `?filters[nombre_del_filtro]=valor`.

## Errores comunes que evita o menciona
- **Error 404 - No permissions found for user_id:** El usuario no tiene habilitado el producto de publicidad. Debe acceder a Mercado Libre > Mi perfil > Publicidad para activarlo.
- **Error 404 en endpoints descontinuados:** A partir del 26 de febrero de 2026, los endpoints legados devolverán 404. Solo usar los endpoints publicados en la documentación actual.
- **No incluir date_from/date_to al solicitar metrics:** El sistema valida que estén presentes si se solicitan campos de métricas.
- **Solicitar múltiples aggregation_type a la vez:** Solo se puede solicitar un tipo de agregación por llamada.
- **Usar rango de fechas mayor a 90 días:** Las métricas solo están disponibles para los últimos 90 días hacia atrás.
- **No considerar el status "hold":** Un ítem con `manufacturing_time` (stock diferido) no se mostrará como anuncio; se priorizan anuncios con stock inmediato.
- **Confundir ACOS con ROAS:** A partir de enero 2026, ROAS es el indicador estándar. ACOS = (1/ROAS) x 100.