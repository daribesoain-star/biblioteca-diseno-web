# transbank_webpay
**Fuente:** pagos-chile | https://www.transbankdevelopers.cl/documentacion/webpay-plus

## Qué enseña (2-3 líneas)
Enseña a integrar Webpay Plus, el producto de Transbank para autorizar pagos con tarjetas de crédito o débito Redcompra en sitios web de comercios. Cubre el flujo completo de creación, confirmación, estado, anulación/reversa y captura diferida de transacciones, tanto para comercios simples como para modalidad Mall. Incluye ejemplos de código en Java, PHP, C#, Ruby, Python y Node.js.

## Lecciones accionables
- **Crear una transacción (Webpay Plus simple):** Usa `Transaction.create(buyOrder, sessionId, amount, returnUrl)`. El token devuelto tiene una vida de **5 minutos**. La respuesta incluye `token` y `url`. Redirige al tarjetahabiente con un formulario POST que contenga un input oculto `token_ws` con el valor del token.
- **Confirmar una transacción:** Usa `Transaction.commit(token)`. Para verificar aprobación, comprueba que `response_code` sea exactamente **0** y `status` sea exactamente **AUTHORIZED`.
- **Obtener estado de una transacción:** Usa `Transaction.status(token)`. Disponible hasta **7 días** desde la creación.
- **Reversar o anular una transacción:** Usa `Transaction.refund(token, amount)`. El método determina automáticamente si es reversa o anulación según condiciones del producto.
- **Capturar una transacción (captura diferida):** Usa `Transaction.capture(token, buyOrder, authorizationCode, amount)`. Solo aplica para comercios configurados con captura diferida. El monto a capturar debe ser menor o igual al autorizado originalmente.
- **Webpay Plus Mall:** Usa `MallTransaction.create(buyOrder, sessionId, returnUrl, details)` donde `details` es un arreglo de objetos con `amount`, `commerce_code` y `buy_order` por cada tienda. Cada subtransacción se verifica individualmente: `response_code == 0` y `status == AUTHORIZED`.
- **Anular en Mall:** Usa `MallTransaction.refund(token, childBuyOrder, childCommerceCode, amount)`.
- **Capturar en Mall:** Usa `MallTransaction.capture(token, commerceCodeStore, childBuyOrder, authorizationCode, amount)`.
- **Configuración de SDK:** Usa `Transaction.buildForIntegration("commerceCode", "APIKey")` para integración o `buildForProduction` para producción. También se puede usar un objeto `Options`.
- **Formulario de redirección:** Debe ser un formulario HTML con método POST, acción = URL devuelta, e input oculto `token_ws` con el token. No usar iframe.
- **Manejo de retornos:** La URL `return_url` siempre recibe datos por POST (excepto en API v1.1+ donde la redirección es GET). En caso de pago abortado en integración, el retorno es POST.
- **Flujos de retorno posibles:**
  | Flujo | Variables recibidas |
  |-------|---------------------|
  | Normal (aprobado/rechazado) | `token_ws` |
  | Timeout (4 min prod, 10 min integración) | `TBK_ID_SESION`, `TBK_ORDEN_COMPRA` |
  | Pago abortado (botón anular) | `TBK_TOKEN`, `TBK_ID_SESION`, `TBK_ORDEN_COMPRA` |
  | Error en formulario + volver al sitio | `token_ws`, `TBK_TOKEN`, `TBK_ID_SESION`, `TBK_ORDEN_COMPRA` |
- **Tarjeta de prueba:** VISA `4051885600446623`, CVV `123`, fecha de vencimiento futura. Autenticación: RUT `11.111.111-1`, clave `123`.
- **Recomendaciones de seguridad:** Escaneos de vulnerabilidad cada 3 meses, componentes actualizados, comunicaciones cifradas, WAF/IPS, seguir OWASP Top Ten, control de accesos, contraseñas robustas, respaldo de información, monitoreo constante, auditorías externas anuales.

## Reglas para agentes
- Usa `Transaction.create()` con un `buy_order` único por transacción (ej: `nombre-empresa-328493`) para evitar conflictos en integración.
- Nunca uses iframe para Webpay Plus; el formulario de pago podría no desplegarse correctamente.
- Siempre verifica que `response_code == 0` y `status == "AUTHORIZED"` para considerar una transacción como aprobada.
- En Mall, verifica cada subtransacción individualmente; no asumas que todas fueron aprobadas aunque el flujo general sea exitoso.
- Para captura diferida, ejecuta `capture()` solo una vez por autorización; el monto capturado debe ser ≤ monto autorizado.
- En anulaciones Mall, siempre especifica el `child_commerce_code` y `child_buy_order` de la tienda específica.
- No muestres el voucher de Transbank; debes mostrar solo el voucher desde el sitio del comercio.
- No invoques `acknowledgeTransaction()`; ya no es necesario porque la confirmación lo hace automáticamente.
- Para consultar estado después de un error inesperado, usa `status(token)` dentro de los 7 días posteriores a la creación.

## Errores comunes que evita o menciona
- **Token expirado:** El token de transacción tiene una vida de **5 minutos**; si no se usa a tiempo, caduca y no puede utilizarse para el pago.
- **Timeout en formulario Webpay:** El formulario de pago tiene un tiempo máximo de **4 minutos en producción** y **10 minutos en integración**. Si se excede, la transacción se aborta automáticamente y se reciben `TBK_ID_SESION` y `TBK_ORDEN_COMPRA`.
- **Confundir variables de retorno:** En pago abortado, el token llega como `TBK_TOKEN`, no como `token_ws`. En timeout no llega ningún token.
- **No verificar cada subtransacción en Mall:** Es posible que el emisor autorice algunas tiendas y rechace otras; debes revisar `response_code` y `status` por cada detalle.
- **Usar iframe para Webpay Plus:** No se recomienda porque el formulario de pago podría no desplegarse correctamente.
- **No migrar de SOAP a REST:** La modalidad SOAP será deprecada; se debe migrar a REST para continuar operando. REST elimina la reversa automática, da control total al comercio y permite nuevas funcionalidades como anulaciones débito/prepago y reintento.
- **Error crítico en plugin WooCommerce:** Las versiones 1.12.1, 1.12.2 y 1.13.0 pueden causar error crítico. Se debe desinstalar manualmente la carpeta del plugin e instalar la versión compatible v1.14.0 (requiere PHP 8.2).