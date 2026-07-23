# ml_envios
**Fuente:** mercadolibre | https://developers.mercadolibre.com.ar/es_ar/mercado-envios

## Qué enseña
Documenta cómo gestionar las modalidades de envío (ME1, ME2, Custom, Not Specified) en Mercado Libre, incluyendo la consulta de preferencias de envío por usuario, categoría, dominio y user product, así como la validación previa de modos de envío disponibles antes de publicar o editar un ítem. Cubre la nueva convivencia de múltiples logísticas para un mismo User Product (ej: cross_docking + fulfillment + self_service).

## Lecciones accionables

### Consultar servicios de envío disponibles por país
- **Endpoint:** `GET https://api.mercadolibre.com/sites/$SITE_ID/shipping_methods`
- **Headers:** `Authorization: Bearer $ACCESS_TOKEN`
- **Ejemplo:** `curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/sites/MLA/shipping_methods`
- **Respuesta clave:** Array de objetos con campos `id`, `name`, `type`, `shipping_modes` (ej: `["me2"]`), `company_name`, `min_time`, `max_time` (en horas), `currency_id`, `free_options` (ej: `["country"]`), `status` (ej: `"active"`).
- **Códigos de error:** `401` (invalid access token), `404` (invalid_site_id).

### Consultar preferencias de envío de un usuario
- **Endpoint:** `GET https://api.mercadolibre.com/users/$USER_ID/shipping_preferences`
- **Headers:** `Authorization: Bearer $ACCESS_TOKEN`
- **Ejemplo:** `curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/users/12345678/shipping_preferences`
- **Campos críticos de respuesta:**
  - `modes`: lista de modos habilitados (`custom`, `not_specified`, `me2`, `me1`).
  - `option`: `"in"` (ME2 activo para todas las publicaciones), `"out"` (ya no activo), `"trial"` (solo algunas publicaciones), `null` (nunca activo).
  - `tags`: incluye `optional_me1_allowed` (ME1 opcional, ME2 mandatorio) o `optional_me2_allowed` (ME1 predeterminado, ME2 opcional), `turbo`, `flex2_migration`.
  - `logistics`: array con objetos `{ mode, types: [{ type, services, default, status }] }`.
  - `services`: lista de IDs de servicios disponibles.
  - `free_configurations`: reglas de envío gratis (`condition.type`: `"all"`, `rule.free_mode`: `"country"`).
  - `label`: configuración de impresión (`page_size`: `"a4"`, `page_format`: `"pdf"`).
- **Códigos de error:** `401` (authorization value not present, invalid access token).

### Consultar modos de envío de una categoría
- **Endpoint:** `GET https://api.mercadolibre.com/categories/$CATEGORY_ID/shipping_preferences`
- **Headers:** `Authorization: Bearer $ACCESS_TOKEN`
- **Ejemplo:** `curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/categories/MLA418448/shipping_preferences`
- **Respuesta clave:**
  - `dimensions`: objeto con `height`, `width`, `length`, `weight` (valores base default de la categoría).
  - `logistics`: array con objetos `{ types: ["default"], mode: "me1" }`, `{ types: ["drop_off","xd_drop_off","self_service","cross_docking","fulfillment"], mode: "me2" }`, etc.
  - `restricted`: `true` si hay restricción de ME2.
  - `me2_restrictions`: valores posibles: `fbm_non_totable`, `flex_ne`, `cbt_fulfillment`, `bulky_drop_off`, `farma`, `fragile`, `bulky_cross_docking`, `bulky_fulfillment`.
- **Códigos de error:** `404` (Category not found).

### Consultar atributos de shipping por dominio
- **Endpoint:** `GET https://api.mercadolibre.com/catalog_domains/$DOMAIN_ID/shipping_attributes`
- **Headers:** `Authorization: Bearer $ACCESS_TOKEN`
- **Ejemplo:** `curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/catalog_domains/MLA-AUTOMOTIVE_TIRES/shipping_attributes`
- **Respuesta:** `{ domain_id, attributes: [{ id, type, unit, index, ranges }] }` — atributos que determinan la preferencia de envío (dimensiones, peso, etc.).
- **Códigos de error:** `404` (Domain does not exist).

### Consultar servicios de logística de un User Product (nuevo recurso)
- **Endpoint:** `GET https://api.mercadolibre.com/customers/marketplace/sites/{SITE_ID}/user-products/{USER_PRODUCT_ID}/contracts/shippability/services`
- **Headers:** `Content-Type: application/json`, `Accept: application/json`
- **Query param opcional:** `legacy_attributes=true` (incluye mapeo a `mode` y `logistic_type` heredados).
- **Ejemplo:** `curl -X GET 'https://api.mercadolibre.com/customers/marketplace/sites/MLA/user-products/MLAU1234567890/contracts/shippability/services?legacy_attributes=true'`
- **Respuesta:** `{ services: [{ type: "distribution", direction: "forward", flavor: "gm"|"pharma"|"super"|null, speed: "standard"|"turbo"|null, distribution_attributes: [{ stock_origin: "sender"|"meli", transport_by: "sender"|"meli"|"commercial-carrier", network_provider: "meli"|"external" }], network: { nodes: { "888": { collect_node_type: "sender_node"|"meli_node" } } }, legacy_attributes: { logistic_type, mode } }] }`
- **Mapeo de recursos heredados a nuevo formato:**
  | Recurso Heredado | Nuevo Recurso |
  |---|---|
  | `mode: "me2"` | `type: "distribution"` o `type: "technology"` (con `network_provider: "meli"`) |
  | `mode: "me1"` | `type: "technology"` (con `network_provider: "external"`) |
  | `mode: "custom"` | `type: "display_only"` |
  | `logistic_type: "drop_off"` | `distribution_attributes.transport_by: "commercial-carrier"` |
  | `logistic_type: "cross_docking"` | `distribution_attributes.transport_by: "meli"` + nodos `sender_node` |
  | `logistic_type: "xd_drop_off"` | `distribution_attributes.transport_by: "meli"` + nodos `meli_node` |
  | `logistic_type: "fulfillment"` | `distribution_attributes.stock_origin: "meli"` |
  | `logistic_type: "self_service"` | `type: "technology"` + `distribution_attributes.transport_by: "sender"` |
- **Nota:** Un User Product puede tener múltiples servicios simultáneamente (ej: Cross Docking + Fulfillment + Self-Service).

### Validar modos de envío de un ítem para un usuario (POST)
- **Endpoint:** `POST https://api.mercadolibre.com/users/$USER_ID/shipping_modes`
- **Headers:** `Authorization: Bearer $ACCESS_TOKEN`, `x-multichannel: true`, `X-Format-New: true`, `Content-Type: application/json`
- **Body (ejemplo):**
```json
{
  "site_id": "MLB",
  "item_id": "MLB3856335025",
  "seller_id": 378277780,
  "title": "Título de teste",
  "item_price": 500,
  "item_currency": "BRL",
  "category_id": "MLB1626",
  "catalog": {
    "domain_id": "MLB-WASHING_MACHINES",
    "attributes": [
      { "id": "BRAND", "value_name": "Electrolux" },
      { "id": "GTIN", "value_name": "7896584070767" },
      { "id": "SELLER_PACKAGE_HEIGHT", "value_name": "105 cm" },
      { "id": "SELLER_PACKAGE_WEIGHT", "value_name": "34400 g" }
    ]
  },
  "listing_type_id": "gold_pro",
  "buying_mode": "buy_it_now",
  "condition": "new",
  "channels": [{ "id": "marketplace" }],
  "new_format": true,
  "verbose": false
}
```
- **Respuesta:** `{ channels: { marketplace: { available_modes: [{ mode, logistic_types: [{ type, default, attributes: { dimensions, costs, free_shipping, local_pick_up, adoption, tags } }], shipping_attributes: {...} }], warnings, channel_id } } }`
- **Atributos de respuesta por modo:**
  - `dimensions`: `"optional"`, `"clear"` (requerido), `"not_allowed"`.
  - `costs`: `"required"`, `"not_allowed"`, `"optional"`.
  - `free_shipping`: `"mandatory"`, `"optional"`, `"not_allowed"`.
  - `local_pick_up`: `"optional"`, `"not_allowed"`.
- **Nota:** Si no se envía `item_id`, se validan reglas genéricas. Se recomienda enviar `item_id`, `seller_id`, `category_id`, `channels`, `catalog`, `domain`, `attributes`, `new_format` y `verbose` para respuesta precisa.

### Consultar un ítem (información de envío)
- **Endpoint:** `GET https://api.mercadolibre.com/items/$ITEM_ID`
- **Headers:** `Authorization: Bearer $ACCESS_TOKEN`
- **Ejemplo:** `curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/items/MLA1718222111`
- **Campos de envío en respuesta:**
  - `shipping.mode`: `"me2"`, `"me1"`, `"custom"`, `"not_specified"`.
  - `shipping.logistic_type`: `"cross_docking"`, `"drop_off"`, `"fulfillment"`, `"self_service"`, `"xd_drop_off"`.
  - `shipping.tags`: `["self_service_out", "mandatory_free_shipping"]`.
  - `shipping.free_shipping`: `true`/`false`.
  - `shipping.local_pick_up`: `true`/`false`.
  - `shipping.dimensions`: `null` o string con dimensiones.

## Reglas para agentes

- Usa `GET /users/$USER_ID/shipping_preferences` para validar los modos de envío activos de un vendedor ANTES de publicar o editar un ítem.
- Usa `GET /categories/$CATEGORY_ID/shipping_preferences` para identificar las opciones de envío disponibles para una categoría específica.
- Usa `GET /catalog_domains/$DOMAIN_ID/shipping_attributes` para obtener los atributos de dimensión/peso requeridos para ME2 en un dominio.
- Usa `POST /users/$USER_ID/shipping_modes` con `item_id` y atributos completos para validar si un modo de envío específico es permitido para un ítem existente.
- Usa `GET /customers/marketplace/sites/{SITE_ID}/user-products/{USER_PRODUCT_ID}/contracts/shippability/services` con `legacy_attributes=true` para consultar servicios logísticos de un User Product ya publicado (nuevo recurso).
- Nunca asumas que un User Product tiene una única logística; maneja múltiples servicios simultáneos (cross_docking + fulfillment + self_service) cuando el endpoint los devuelva.
- Nunca uses el recurso heredado `/users/$USER_ID/shipping_modes` para validaciones sobre publicaciones ya creadas (UPs); usa el nuevo endpoint de servicios.
- Siempre verifica el campo `option` en `shipping_preferences`: si es `"in"`, ME2 es mandatorio; si es `"trial"`, solo aplica a algunas publicaciones.
- Siempre revisa `tags` en `shipping_preferences`: `optional_me1_allowed` significa ME2 mandatorio y ME1 opcional; `optional_me2_allowed` significa ME1 predeterminado y ME2 opcional.
- Nunca modifiques la configuración predeterminada de envío de un usuario por API; el vendedor debe contactar a su asesor comercial para cambios.
- Siempre incluye los headers `x-multichannel: true` y `X-Format-New: true` en el POST de validación de modos de envío.
- Nunca ignores el campo `me2_restrictions` en la respuesta de categoría; valores como `bulky_drop_off`, `farma`, `fragile` indican restricciones que inhabilitan ME2.

## Errores comunes que evita o menciona

- **Error 401 "invalid access token"** en cualquier endpoint: el token es inválido o expiró. Validar y renovar el access_token.
- **Error 401 "authorization value not present"** en `GET /users/$USER_ID/shipping_preferences`: falta el header `Authorization: Bearer $ACCESS_TOKEN`.
- **Error 404 "invalid_site_id"** en `GET /sites/$SITE_ID/shipping_methods`: el site_id no existe. Validar el código de país (MLA, MLB, MLM, MLC, MCO, MLU, MPE, MEC).
- **Error 404 "Category not found"** en `GET /categories/$CATEGORY_ID/shipping_preferences`: el category_id no existe. Validar contra la API de categorías.
- **Error 404 "Domain does not exist"** en `GET /catalog_domains/$DOMAIN_ID/shipping_attributes`: el domain_id no existe. Obtenerlo de `/categories` o de la respuesta de `/items`.
- **No validar las preferencias de envío del usuario antes de publicar** puede resultar en que el ítem se publique con modos de envío no soportados por la cuenta del vendedor.
- **Asumir que un User Product tiene una única logística** cuando el nuevo comportamiento permite múltiples logísticas simultáneas (cross_docking + fulfillment + self_service). Esto impacta en la gestión de stock, que es diferente por modalidad.
- **Usar el recurso heredado `/users/$USER_ID/shipping_modes` para UPs ya publicados** en sites donde el nuevo formato está activo. Usar el nuevo endpoint de servicios con `legacy_attributes=true` durante la migración.
- **No enviar `item_id` en el POST de validación** resulta en una validación genérica que puede no reflejar las reglas específicas del ítem existente.
- **Ignorar los atributos de shipping por dominio** (`catalog_domains/$ID/shipping_attributes`) puede causar que faltes atributos de dimensión/peso requeridos para ME2.