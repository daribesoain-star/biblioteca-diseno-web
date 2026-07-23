# ml_catalogo
**Fuente:** mercadolibre | https://developers.mercadolibre.cl/es_ar/que-es-catalogo

## Qué enseña (2-3 líneas)
Explica cómo los vendedores pueden crear y gestionar publicaciones en el catálogo de Mercado Libre, compitiendo por la Página de Producto (PdP) con contenido provisto por la plataforma (títulos, fotos, descripciones y ficha técnica). Detalla los métodos de publicación directa, optin desde ítems tradicionales, auto-optin, sincronización de condiciones de venta, y el sistema de competencia para ganar visibilidad en los primeros resultados de búsqueda.

## Lecciones accionables
- **Publicación directa en catálogo:** Usar `POST /items` con los campos obligatorios `catalog_product_id` (obtenido de `/products/search`) y `catalog_listing: true`. Ejemplo de payload:
  ```json
  {
    "site_id": "MLA",
    "title": "Item de test no ofertar",
    "category_id": "MLA1055",
    "price": 10000000,
    "currency_id": "ARS",
    "available_quantity": 1,
    "buying_mode": "buy_it_now",
    "listing_type_id": "gold_special",
    "pictures": [],
    "attributes": [...],
    "catalog_product_id": "MLA6005934",
    "catalog_listing": true
  }
  ```
  Endpoint: `https://api.mercadolibre.com/items`

- **Optin desde ítem tradicional (sin variaciones):** `POST /items/catalog_listings` con body:
  ```json
  {
    "item_id": "MLM1477978125",
    "catalog_product_id": "MLM15996654"
  }
  ```

- **Optin desde ítem tradicional (con variaciones):** Enviar `variation_id` en el body:
  ```json
  {
    "item_id": "MLM1477978125",
    "variation_id": 174997747229,
    "catalog_product_id": "MLM15996654"
  }
  ```
  **Regla:** Si el ítem original tiene variaciones, se debe crear una publicación de catálogo por cada variación (un POST por cada `variation_id`).

- **Verificar sincronización entre ítem tradicional y catálogo:** `GET /public/buybox/sync/$ITEM_ID` con header `x-public: True`. Respuestas:
  - `"status": "SYNC"` → sincronizado
  - `"status": "UNSYNC"` → no sincronizado

- **Corregir sincronización:** `POST /public/buybox/sync` con header `x-public: True` y body:
  ```json
  { "id": "MLA1361070453" }
  ```
  Respuesta: `200 OK` en éxito, `422/500` en error.

- **Identificar auto-optin:** Buscar el tag `catalog_boost` en la respuesta de `GET /items/$ITEM_ID`. También se puede filtrar por vendedor:
  ```
  GET /users/$SELLER_ID/items/search?status=active&tags=catalog_boost
  ```

- **Consultar estado de competencia en catálogo:** `GET /items/$ITEM_ID/price_to_win?version=v2`. Campos clave de la respuesta:
  - `status`: `winning` (ganando), `competing` (perdiendo), `sharing_first_place` (comparte primer lugar), `listed` (no compite)
  - `price_to_win`: precio sugerido para ser más competitivo
  - `boosts`: array con condiciones de venta que mejoran chances:
    - `fulfillment` (Mercado Envíos Full)
    - `free_installments` (cuotas sin interés)
    - `free_shipping` (envío gratis)
    - `shipping_collect` (Mercado Envíos Colecta)
    - `same_day_shipping` (envío en el día)
  - Cada boost tiene estado: `boosted`, `not_boosted`, `opportunity`, `not_apply`
  - `visit_share`: `maximum` (winning/competing), `medium` (sharing_first_place), `minimum` (listed)
  - `competitors_sharing_first_place`: número de vendedores compartiendo primer lugar
  - `reason`: array con motivos si `status` es `listed`

- **Razones por las que una publicación no compite (campo `reason`):**

| Reason | Explicación |
|--------|-------------|
| `non_trusted_seller` | Vendedor marcado como no confiable |
| `reputation_below_threshold` | Reputación del vendedor insuficiente |
| `item_reputation_below_threshold` | Reputación de la publicación insuficiente |
| `winner_has_better_reputation` | Ganador tiene mejor reputación |
| `manufacturing_time` | Publicación tiene manufacturing time |
| `temporarily_winning_manufacturing_time` | Ganando temporalmente con manufacturing time |
| `temporarily_competing_manufacturing_time` | Compitiendo temporalmente con manufacturing time |
| `temporarily_winning_best_reputation_available` | Ganando temporalmente como mejor reputación disponible |
| `temporarily_competing_best_reputation_available` | Compitiendo temporalmente como mejor reputación disponible |
| `item_paused` | Publicación pausada |
| `item_not_opted_in` | No ha hecho optin o es ítem de test |
| `shipping_mode` | Método de envío inferior al ganador (ME2 > ME1 > Custom > Not Specified) |
| `newbie_program_seller` | Límite de ventas del programa de despegue alcanzado |

- **Obtener publicación ganadora de una PDP:** `GET /products/$PRODUCT_ID` → campo `buy_box_winner` contiene el `item_id`, `price`, `seller_id`, `shipping`, etc.

- **Listar todas las publicaciones que compiten en una PDP:** `GET /products/$PRODUCT_ID/items`. Respuesta paginada con `paging.total`, `paging.offset`, `paging.limit` y array `results`.

- **Filtros para listado de PDP:**

| Parámetro | Valor | Explicación |
|-----------|-------|-------------|
| `official_store` | `all` | Solo Tiendas Oficiales |
| `official_store_id` | `id` | Tienda Oficial específica |
| `discount` | `10-100` | Descuento >= 10% |
| `price` | `100-200` | Rango de precio |
| `shipping` | `fulfillment` | Logística fulfillment |
| `shipping` | `mercadoenvios` | Sin fulfillment |
| `shipping_cost` | `free` | Envío gratis |
| `shipping_time` | `sameday` / `nextday` | Usar con `b.buyer_zones` |
| `seller_id` | `id` | Por ID de vendedor |

- **Notificaciones de cambio de estado de competencia:** Suscribirse al tópico `Item competition`.

- **Eliminar/pausar publicación de catálogo:** `PUT /items/$ITEM_ID` (ID de la publicación de catálogo). Nota: pausar la publicación de marketplace NO pausa la de catálogo.

- **Códigos de error en publicación en catálogo:**

| Code_id | Razón | Solución |
|---------|-------|----------|
| 4400 | Falta `catalog_product_id` o GTIN | Enviar al menos uno |
| 4402 | Producto inactivo | Enviar `catalog_product_id` activo |
| 417 | `catalog_product_id` no corresponde a la categoría | Enviar ID correcto |
| 418 | `catalog_product_id` no concuerda con parent/children | Enviar ID que corresponda |
| 4310 | Vendedor infringió políticas de propiedad intelectual | No puede ofrecer ese producto |

## Reglas para agentes
- Usa `catalog_listing: true` en el POST de creación directa para generar un ítem de catálogo.
- Usa `POST /items/catalog_listings` para hacer optin desde un ítem tradicional existente.
- Envía `variation_id` en el body del optin si el ítem original tiene variaciones; de lo contrario, la API responderá error 400 con `cause_id: 216`.
- Nunca omitas `catalog_product_id` en el POST de optin; la API responderá error 400 con `cause_id: 369`.
- Verifica que el `catalog_product_id` esté activo antes de publicar; si está inactivo, la API responderá error 4402.
- Confirma que la ficha técnica del producto coincida exactamente con el `catalog_product_id`; diferencias pueden generar reclamos, cancelaciones y suspensión de cuenta.
- Usa el header `x-public: True` en las llamadas a `/public/buybox/sync` y `/public/buybox/sync/$ITEM_ID`.
- Para identificar auto-optin, busca el tag `catalog_boost` en la respuesta del ítem.
- Consulta `GET /items/$ITEM_ID/price_to_win?version=v2` para obtener el precio competitivo (`price_to_win`) y los boosts disponibles.
- Si el status es `listed`, revisa el array `reason` para identificar por qué no compite y aplicar mejoras.
- Para filtrar publicaciones de una PDP, usa los parámetros `official_store`, `official_store_id`, `discount`, `price`, `shipping`, `shipping_cost`, `shipping_time` y `seller_id`.
- Nunca asumas que pausar la publicación de marketplace pausa la de catálogo; deben gestionarse por separado mediante `PUT /items/$ITEM_ID` con el ID de la publicación de catálogo.

## Errores comunes que evita o menciona
- **Error 400 - cause_id 216:** "Item doesn't have a variation with id null" → ocurre al hacer optin sin enviar `variation_id` cuando el ítem original tiene variaciones. Solución: incluir `variation_id` en el body.
- **Error 400 - cause_id 369:** "The payload is missing the following properties: [catalog_product_id]" → ocurre al omitir `catalog_product_id` en el optin. Solución: siempre incluir el campo.
- **Error 400 - cause_id 389:** "Item cannot be catalog listing" → ocurre cuando el ítem de marketplace no está productizado (no tiene `catalog_product_id`). Solución: primero asociar el ítem a un producto de catálogo.
- **Error 4400:** Falta `catalog_product_id` o GTIN. Solución: enviar al menos uno de los dos.
- **Error 4402:** Producto inactivo. Solución: usar un `catalog_product_id` activo.
- **Error 417:** `catalog_product_id` no corresponde a la categoría. Solución: verificar que el ID pertenezca al dominio de la categoría.
- **Error 418:** `catalog_product_id` no concuerda con parent/children. Solución: usar IDs que correspondan a la jerarquía del producto.
- **Error 4310:** Vendedor infringió políticas de propiedad intelectual. Solución: no puede ofrecer ese producto nuevamente.
- **Publicaciones eliminadas automáticamente (OPTOUT):** Mercado Libre puede cambiar `status` a `closed` o `catalog_listing` a `false` si el producto es fraudulento, tiene inconsistencias o restricciones legales. Verificar cambios en `/items` y notificaciones.
- **Desincronización:** Si un ítem tradicional pierde sincronización con su ítem de catálogo (status `UNSYNC`), usar `POST /public/buybox/sync` para corregirlo.