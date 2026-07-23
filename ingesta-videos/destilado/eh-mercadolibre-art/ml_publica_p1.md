# ml_publica
**Fuente:** mercadolibre | https://developers.mercadolibre.com.ar/es_ar/publica-productos

## Qué enseña
Enseña a publicar, consultar y gestionar artículos (ítems) en Mercado Libre usando la API REST. Cubre desde la estructura del JSON de creación, atributos obligatorios (título, precio, categoría, moneda, condición), hasta el manejo de variaciones, garantías, tags, imágenes y la nueva modalidad User Products. También detalla validaciones, errores comunes y el uso del campo `item_condition` como reemplazo de `condition`.

## Lecciones accionables
- **Endpoint de creación de ítem:** `POST https://api.mercadolibre.com/items` con header `Authorization: Bearer $ACCESS_TOKEN` y `Content-Type: application/json`.
- **Endpoint de consulta de ítem:** `GET https://api.mercadolibre.com/items/$ITEM_ID` con header `Authorization: Bearer $ACCESS_TOKEN`.
- **Estructura mínima del JSON para publicar:**
  ```json
  {
    "title": "Item de test - No Ofertar",
    "category_id": "MLA3530",
    "price": 350,
    "currency_id": "ARS",
    "available_quantity": 10,
    "buying_mode": "buy_it_now",
    "condition": "new",
    "listing_type_id": "gold_special",
    "sale_terms": [
      { "id": "WARRANTY_TYPE", "value_name": "Garantía del vendedor" },
      { "id": "WARRANTY_TIME", "value_name": "90 días" }
    ],
    "pictures": [
      { "source": "http://mla-s2-p.mlstatic.com/968521-MLA20805195516_072016-O.jpg" }
    ],
    "attributes": [
      { "id": "BRAND", "value_name": "Marca del producto" },
      { "id": "EAN", "value_name": "7898095297749" }
    ]
  }
  ```
- **Campos obligatorios:** `title`, `category_id`, `price`, `currency_id`, `available_quantity`, `buying_mode`, `condition` (o `item_condition` en `attributes`).
- **Para ítems reacondicionados:** obligatorio cargar garantía en `sale_terms` con al menos 90 días. Usar `WARRANTY_TYPE` y `WARRANTY_TIME`.
- **Para pago inmediato (solo Mercado Pago):** incluir `"tags": ["immediate_payment"]` en el JSON de creación.
- **Para publicar en Tienda Oficial:** agregar el campo `official_store_id` (ej: `"official_store_id": 1`).
- **Para crear ítem con stock cero en Fulfillment (solo AR, MX, BR):** enviar `"available_quantity": 0`. El ítem se crea con `status: "paused"` y `sub_status: ["out_of_stock"]`.
- **Para consultar atributos válidos de una categoría:** `GET https://api.mercadolibre.com/categories/$CATEGORY_ID/attributes`.
- **Para consultar `sale_terms` de una categoría:** `GET https://api.mercadolibre.com/categories/$CATEGORY_ID/sale_terms`.
- **Para verificar si una categoría exige Mercado Pago:** `GET https://api.mercadolibre.com/sites/categories/$CATEGORY_ID` y revisar campo `"immediate_payment": "required"`.
- **Para modificar título (solo si `sold_quantity` es 0):** `PUT https://api.mercadolibre.com/items/$ITEM_ID` con campo `title`.
- **Imágenes:** enviar hasta 6 URLs en el array `pictures` con formato `{"source": "URL"}`. No usar servidores lentos.
- **Variaciones:** usar array `variations` con `attribute_combinations` (ej: color, talle) y `available_quantity` por variante.
- **Identificador SKU:** usar el atributo `SELLER_SKU` dentro de `attributes`.
- **Condición del ítem (nuevo método):** usar `"item_condition"` dentro de `attributes` con valores: `"Nuevo"` (id `2230284`), `"Usado"` (id `2230581`), `"Reacondicionado"` (id `2230582`). El campo `condition` sigue disponible por retrocompatibilidad.
- **Género (GENDER):** atributo tipo lista con valores: `Mujer`, `Hombre`, `Niñas`, `Niños`, `Sin género`, `Sin género infantil`, `Bebés`. Si el título hace referencia a un género diferente al especificado, la API devuelve error `error.item.attribute.business_conditional.value_name`.
- **Tags de ítem relevantes:**
  | Tag | Descripción |
  |-----|-------------|
  | `immediate_payment` | Solo acepta Mercado Pago |
  | `test_item` | Ítem de prueba |
  | `good_quality_picture` / `good_quality_thumbnail` | Imágenes de buena calidad |
  | `poor_quality_picture` / `poor_quality_thumbnail` | Imágenes de mala calidad |
  | `catalog_listing_eligible` | Elegible para catálogo |
  | `not_market_price` | Precio poco competitivo |
  | `relist` | Ya fue republicado, no se puede republicar de nuevo |
  | `free_relist` | Republicado gratuitamente |
  | `adoption_required` | Envío no especificado, debe adoptar ME2 |
  | `mandatory_free_shipping` | Precio supera mínimo para envío gratis |
- **Códigos de error comunes:**
  | Código | Mensaje | Solución |
  |--------|---------|----------|
  | `item.category_id.invalid` | Category $CATEGORY_ID does not exist. | Consultar categorías válidas por site. |
  | `body.invalid_fields` | The fields [$FIELD_ID] are invalid for requested call. | Consultar campos válidos en `/categories/$CATEGORY_ID`. |
  | `seller.unable_to_list` | The seller is not allowed to publish. | Identificar `cause` en response y consultar `/users#options`. |
- **Respuesta HTTP 206:** ocurre cuando no se pudo obtener algún dato (location, geolocation, seller_address). Revisar header `X-Content-Missing`.
- **User Products:** para nuevos desarrollos, usar el nuevo modelo User Products. El campo `title` no debe enviarse en la publicación en ese modelo.

## Reglas para agentes
- Usa `POST https://api.mercadolibre.com/items` para crear un ítem nuevo; nunca uses otro endpoint para crear.
- Usa `GET https://api.mercadolibre.com/items/$ITEM_ID` con el token del propietario para ver `available_quantity`; sin token propietario ese campo no aparece.
- Para ítems usados en moda/deportes (AR, BR, MX, CO): establece `available_quantity` = 1; al vender, el ítem pasa a `status: closed`.
- Nunca incluyas en el título: información de beneficios (devoluciones, envío gratis, cuotas), condición del producto (nuevo/usado/reacondicionado), colores (usa variaciones), stock, marcas de terceros (salvo para indicar compatibilidad con formato "para" o "compatible con").
- Para productos compatibles con marca propia: estructura título como `[Nombre producto] + [Marca propia] + “para” o “compatible con” + [Marcas compatibles]`.
- Para productos compatibles sin marca: estructura título como `[Nombre producto] + “para” o “compatible con” + [Marcas compatibles]`.
- Nunca uses signos de puntuación ni símbolos en el título; separa palabras con espacios.
- Si el dominio requiere GENDER, verifica que el título no haga referencia a un género distinto al especificado en el atributo; de lo contrario la API rechazará la publicación.
- Para ítems reacondicionados: la garantía debe ser de 90 días o más; usa `WARRANTY_TYPE` y `WARRANTY_TIME` en `sale_terms`.
- Para publicar en Tienda Oficial: incluye siempre `official_store_id` en el JSON.
- Para activar pago inmediato: agrega el tag `"immediate_payment"` en el array `tags`.
- Para categorías con `"immediate_payment": "required"`: no intentes usar otro método de pago; la API lo rechazará.
- Para modificar el título: solo hazlo si `sold_quantity` es 0; de lo contrario, la API rechazará el cambio.
- Para crear ítems de prueba: usa usuarios de test y agrega el tag `"test_item"`.
- Nunca incluyas videos de YouTube en publicaciones nuevas (desactivado desde el 9 de septiembre de 2024); usa Clips en su lugar.
- Para publicar en Fulfillment con stock cero: envía `"available_quantity": 0`; el ítem se creará pausado.
- Usa el predictor de categorías antes de publicar para evitar moderación por categoría incorrecta.

## Errores comunes que evita o menciona
- **Error por categoría inexistente:** `item.category_id.invalid` — ocurre si se envía un `category_id` que no existe en el site. Solución: consultar categorías disponibles con `GET /sites/$SITE_ID/categories`.
- **Error por campos inválidos:** `body.invalid_fields` — ocurre si se envía un campo no soportado por la categoría. Solución: consultar campos válidos en `/categories/$CATEGORY_ID`.
- **Error por vendedor no habilitado:** `seller.unable_to_list` — el vendedor no puede publicar por alguna causa (reputación, restricciones). Solución: revisar el campo `cause` en la respuesta y consultar `/users#options`.
- **Error por género inválido en título:** `error.item.attribute.business_conditional.value_name` con mensaje `Attribute [GENDER] is not valid` — ocurre si el título hace referencia a un género diferente al especificado en el atributo GENDER. Solución: alinear el título con el valor de GENDER.
- **Error por uso de `exclusive_channel`:** el atributo fue eliminado; usar el array `channels` en su lugar.
- **Error por intentar republicar un ítem ya republicado:** el tag `relist` impide una nueva republicación.
- **Error por imágenes de mala calidad:** los tags `poor_quality_picture` / `poor_quality_thumbnail` indican que las imágenes no cumplen con los estándares; se recomienda reemplazarlas.
- **Error por precio no competitivo:** el tag `not_market_price` indica que el precio está fuera del rango competitivo; se sugiere ajustarlo.
- **Error por falta de garantía en reacondicionados:** si no se especifica garantía de al menos 90 días, la publicación puede ser rechazada o moderada.
- **Error por intentar modificar título con ventas:** si `sold_quantity` > 0, el PUT al campo `title` será rechazado.
- **Error por servidores lentos en imágenes:** usar servidores lentos para alojar imágenes puede generar desventajas al publicar (timeouts, fallos).