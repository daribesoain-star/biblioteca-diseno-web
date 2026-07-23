# Custom JavaScript variable in Google Tag Manager (+3 use cases)
**Fuente:** AnalyticsMania | https://youtu.be/C-gfQLVjc8A

## Qué enseña
Cómo crear y usar variables de JavaScript personalizado en Google Tag Manager para extraer, transformar y reestructurar datos del sitio web. Muestra tres casos prácticos: detectar el momento del día del visitante, extraer la primera parte del path de la URL, y transformar estructuras de data layer no estándar al formato requerido por GA4.

## Lecciones accionables
- Para crear una variable de JavaScript personalizado: ir a Variables → Nueva → Configuración de variable → JavaScript personalizado
- La función debe ser **anónima** (sin nombre): `function() { ... }` y debe contener un `return`
- **No usar** etiquetas `<script>` dentro del editor de JavaScript personalizado (solo acepta código JS, no HTML)
- **Nunca** hacer `dataLayer.push()` dentro de una variable de JavaScript personalizado — puede ejecutarse múltiples veces sin garantía de unicidad
- Para acceder a variables de GTM dentro del código JS usar dobles llaves: `{{Page Path}}`
- JavaScript es **case sensitive**: `pagepath` ≠ `pagePath`

### Caso 1: Momento del día (mañana/tarde/noche)
```javascript
function() {
  var currentTime = new Date();
  var currentHour = currentTime.getHours();
  if (currentHour >= 5 && currentHour < 12) {
    return "morning";
  } else if (currentHour >= 12 && currentHour < 17) {
    return "afternoon";
  } else if (currentHour >= 17 && currentHour < 21) {
    return "evening";
  } else {
    return "night";
  }
}
```
- Usar como valor de un parámetro de evento en GA4 (ej: `time_of_day`)
- Registrar como dimensión personalizada en GA4 para reportes

### Caso 2: Primera parte del page path
```javascript
function() {
  var pagePath = {{Page Path}};
  return pagePath.split('/')[1];
}
```
- `split('/')` divide el path usando slash como separador
- Los índices en JavaScript empiezan en 0: `[0]` es el string vacío antes del primer slash, `[1]` es el primer segmento
- En homepage (path = `/`) devuelve string vacío

### Caso 3: Transformar estructura de data layer a formato GA4
- Crear variable de data layer para `products` (input)
- Crear variable JS personalizado que itera sobre el array y reestructura:
```javascript
function() {
  var products = {{DLV - products}};
  var items = [];
  for (var i = 0; i < products.length; i++) {
    var product = products[i];
    var item = {
      item_id: product.product_id,
      item_name: product.product_name,
      price: product.price,
      quantity: product.quantity
    };
    items.push(item);
  }
  return items;
}
```
- Usar esta variable como valor del parámetro `items` en el tag de compra de GA4
- Crear variables de data layer separadas para: `transaction_number` (transaction_id), `order_total` (value), `currency_code` (currency), `coupon_code` (coupon)

## Reglas para agentes
- Usa `function() { return ... }` siempre para variables JS personalizadas — nunca funciones nombradas
- Nunca incluyas `dataLayer.push()` dentro de una variable JS personalizada; usa etiquetas HTML personalizadas para eso
- Siempre verifica que la función tenga un `return` — sin él la variable devuelve `undefined`
- Cuando uses `split()`, recuerda que los índices empiezan en 0; el primer segmento útil suele ser `[1]`
- Para probar código JS antes de implementarlo, usa la consola de DevTools del navegador
- Siempre nombra las variables con prefijo descriptivo (ej: `CJS - time of day`)

## Errores comunes que evita o menciona
- **No usar etiquetas script**: el editor JS personalizado acepta solo código JavaScript, no HTML
- **No hacer dataLayer.push() dentro de la variable**: GTM no garantiza que se ejecute una sola vez, causando múltiples pushes
- **No olvidar que JavaScript es case sensitive**: los nombres de variables y métodos deben coincidir exactamente
- **No asumir que el page path siempre tiene segmentos**: en la homepage, `split('/')[1]` devuelve string vacío
- **No usar estructuras de data layer no estándar directamente en GA4**: hay que transformarlas con JS personalizado para que coincidan con el esquema de e-commerce de GA4