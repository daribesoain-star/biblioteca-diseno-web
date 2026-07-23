# eCommerce Database Design: Diagram & Explanation
**Fuente:** https://youtu.be/1HamqOuv2Cw | destilado 2026-07-22

## Qué enseña
Diseño completo de base de datos relacional para eCommerce, cubriendo 14 requisitos funcionales desde cuentas de usuario hasta promociones. Explica cada tabla, sus relaciones y el razonamiento detrás de decisiones de diseño como jerarquías de categorías, atributos de producto flexibles y separación carrito/pedido.

## Lecciones accionables

- **Usa tabla `site_user` con email como login**: almacena ID (PK), email (usado para login y contacto), teléfono y password encriptado. No incluye username a menos que sea necesario.
- **Diseña direcciones con tabla separada `address` y tabla puente `user_address`**: permite que una dirección sea compartida por múltiples usuarios (ej.同一 domicilio). Incluye columna `is_default` booleana para dirección predeterminada.
- **Implementa `user_payment_method` con tipo de pago referenciado**: FK a `payment_type` (valores: "credit card", "PayPal", etc.), campo `provider` (Mastercard, Visa), `account_number`, `expiry_date` y `is_default`. Advertencia: cumplir regulaciones PCI-DSS si almacenas datos de tarjeta; alternativa: usar procesador externo.
- **Jerarquía de categorías con self-join**: tabla `product_category` con campo `parent_category_id` que referencia su propio `id`. Permite niveles infinitos sin tablas separadas para subcategorías.
- **Separación producto vs. variante**: tabla `product` (nombre, descripción, imagen) para ítems genéricos (ej. "Slim T-Shirt"). Tabla `product_item` (SKU, precio, stock, imagen) para cada combinación de atributos (ej. "Slim T-Shirt, Negro, Talla M").
- **Atributos flexibles con patrón EAV**: tabla `variation` (nombre: "Size", "Color") vinculada a categoría. Tabla `variation_option` (valores: "S", "M", "L", "Black", "White"). Tabla puente `product_configuration` conecta `product_item` con múltiples `variation_option`.
- **Carrito separado del pedido**: tabla `shopping_cart` vinculada a usuario (no invitados). `shopping_cart_item` almacena `product_item_id` y `quantity`. Al convertir a pedido, se crea `shop_order` (evita usar "order" por ser palabra reservada SQL).
- **Congela precio en `order_line`**: almacena `price` en el momento de la compra, porque los precios de `product_item` pueden cambiar.
- **Promociones con fechas y descuento porcentual**: tabla `promotion` con `discount_rate` (porcentaje), `start_date`, `end_date`. Tabla puente `promotion_category` para relación muchos-a-muchos con categorías.
- **Reviews vinculadas a `order_line`**: tabla `user_review` con FK a `order_line` (no a `product` directamente), asegurando que solo usuarios que compraron puedan reseñar. Incluye `rating` (1-5) y `comment`.

## Reglas para agentes

- **Usa `shop_order` en lugar de `order`** como nombre de tabla para evitar conflictos con palabra reservada SQL.
- **Nunca almacenes contraseñas en texto plano** en el campo `password` de `site_user`; siempre encripta.
- **Usa tabla separada `country`** referenciada por FK desde `address` en lugar de almacenar país como texto libre.
- **Implementa `is_default` booleano** en tablas puente (`user_address`, `user_payment_method`) para permitir un único valor predeterminado por usuario.
- **Usa self-join en `product_category`** con `parent_category_id` para jerarquías, no tablas separadas por nivel.
- **Separa `product` (genérico) de `product_item` (SKU concreto)** cuando un producto tenga variantes (talla, color, etc.).
- **Usa patrón EAV (variation + variation_option + product_configuration)** para atributos de producto flexibles, pero considera tablas dedicadas si el volumen de productos es muy alto y necesitas validación de tipos de datos.
- **Almacena el precio en `order_line`** en el momento del pedido, no consultes desde `product_item` que puede cambiar.
- **Vincula `user_review` a `order_line`** no a `product`, para garantizar que solo clientes que compraron puedan reseñar.
- **Usa `shopping_cart` separado de `shop_order`** para permitir que el carrito persista sin datos de pedido (fecha, dirección, método de pago).

## Errores comunes

- **Usar "order" como nombre de tabla**: conflictos con SQL; usar "shop_order" en su lugar.
- **Almacenar dirección como campos planos en la tabla de usuario**: impide compartir direcciones entre usuarios y dificulta actualizaciones.
- **No separar producto de variante**: lleva a duplicar registros de producto por cada combinación de talla/color, o a no poder gestionar stock por variante.
- **Ignorar la congelación de precios en pedidos**: si el precio de un producto cambia después de que un cliente compra, el histórico del pedido mostrará el precio incorrecto.
- **Permitir reseñas sin verificar compra**: abre la puerta a reseñas falsas; vincular a `order_line` asegura autenticidad.
- **No usar tabla puente para muchos-a-muchos**: por ejemplo, saltarse `product_configuration` y meter IDs de variación directamente en `product_item` como columnas, lo cual rompe la flexibilidad.
- **Almacenar datos de tarjeta de crédito sin cumplir PCI-DSS**: mejor usar un procesador externo y solo almacenar un token o referencia.