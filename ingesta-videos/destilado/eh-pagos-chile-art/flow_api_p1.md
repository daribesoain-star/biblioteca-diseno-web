# flow_api
**Fuente:** pagos-chile | https://www.flow.cl/docs/api.html
## Qué enseña (2-3 líneas)
Documenta la API REST de Flow para integración de pagos en Chile, incluyendo creación de pagos, suscripciones, reembolsos, clientes, cupones y liquidaciones. Explica autenticación mediante firma HMAC-SHA256 con ApiKey/SecretKey, endpoints de producción y sandbox, y el flujo de notificaciones asíncronas vía callback.

## Lecciones accionables
- **Autenticación obligatoria**: firmar TODOS los parámetros (excepto `s`) con HMAC-SHA256 usando tu SecretKey. Orden alfabético ascendente por nombre del parámetro, concatenar como `nombreParametrovalor`. Ejemplo: parámetros `apiKey=XXXX`, `currency=CLP`, `amount=5000` → string a firmar: `"amount5000apiKeyXXXXcurrencyCLP"`. El hash resultante se envía en el parámetro `s`.
- **Endpoints base**: Producción: `https://www.flow.cl/api` | Sandbox: `https://sandbox.flow.cl/api`
- **Obtener ApiKey y SecretKey**: desde tu cuenta Flow en `https://www.flow.cl/app/web/misDatos.php` (producción) o `https://sandbox.flow.cl/app/web/misDatos.php` (sandbox)
- **Crear pago (POST /payment/create)**: enviar `apiKey`, `commerceOrder` (string, orden del comercio), `subject` (string, descripción), `amount` (number, monto), `email` (string, email pagador), `urlConfirmation` (URI, callback donde Flow notifica el pago), `urlReturn` (URI, redirección post-pago). Opcionales: `currency` (CLP por defecto), `paymentMethod` (integer, ID del medio de pago; 9 = todos), `timeout` (segundos para expiración), `optional` (JSON clave-valor), `merchantId` (para comercio integrador), `payment_currency`. Respuesta: `{ "url": "https://api.flow.cl", "token": "...", "flowOrder": 8765456 }`. Redirigir al pagador con: `url + "?token=" + token`
- **Crear cobro por email (POST /payment/createEmail)**: mismos parámetros que `payment/create` más `forward_days_after` (días para re-notificar), `forward_times` (veces de re-notificación). Flow envía el email automáticamente.
- **Obtener estado de pago por token (GET /payment/getStatus)**: parámetros: `apiKey`, `token` (recibido en callback), `s`. Respuesta incluye `flowOrder`, `commerceOrder`, `status` (1 = pagado), `amount`, `currency`, `fee`, `balance`, `transferDate`, `paymentData.media` (ej: "webpay"), `pending_info` (si está pendiente).
- **Obtener estado por commerceId (GET /payment/getStatusByCommerceId)**: parámetros: `apiKey`, `commerceId` (string), `s`.
- **Obtener estado por flowOrder (GET /payment/getStatusByFlowOrder)**: parámetros: `apiKey`, `flowOrder` (number), `s`.
- **Estado extendido (GET /payment/getStatusExtended y /getStatusByFlowOrderExtended)**: igual que los anteriores pero retorna además `mediaType` ("Crédito"), `cardLast4Numbers`, `installments`, `autorizationCode`, `lastError` (código y mensaje del último intento fallido).
- **Listar pagos del día (GET /payment/getPayments)**: parámetros: `apiKey`, `date` (yyyy-mm-dd), `start` (default 0), `limit` (default 10, max 100), `s`. Respuesta paginada: `{ total, hasMore (1/0), data: [...] }`.
- **Listar transacciones del día (GET /payment/getTransactions)**: misma estructura que getPayments.
- **Crear reembolso (POST /refund/create)**: parámetros: `apiKey`, `refundCommerceOrder` (string, orden de reembolso del comercio), `receiverEmail` (email del receptor), `amount` (monto), `urlCallBack` (URI donde Flow notifica resultado), `commerceTrxId` o `flowTrxId` (identificador de la transacción original), `s`. Respuesta: `{ token, flowRefundOrder, status: "created", amount, fee }`.
- **Cancelar reembolso (POST /refund/cancel)**: parámetros: `apiKey`, `token` (del reembolso), `s`.
- **Obtener estado reembolso (GET /refund/getStatus)**: parámetros: `apiKey`, `token`, `s`.
- **Crear cliente (POST /customer/create)**: parámetros: `apiKey`, `name`, `email`, `externalId` (ID del comercio), `s`. Respuesta: `{ customerId: "cus_...", creditCardType, last4CardDigits, status }`.
- **Editar cliente (POST /customer/edit)**: parámetros: `apiKey`, `customerId`, opcionales `name`, `email`, `externalId`, `s`.
- **Eliminar cliente (POST /customer/delete)**: parámetros: `apiKey`, `customerId`, `s`. No debe tener suscripciones activas ni importes pendientes.
- **Obtener cliente (GET /customer/get)**: parámetros: `apiKey`, `customerId`, `s`.
- **Listar clientes (GET /customer/list)**: parámetros: `apiKey`, `start`, `limit`, `filter` (nombre), `status`, `s`.
- **Registrar tarjeta de crédito de cliente (POST /customer/register)**: parámetros: `apiKey`, `customerId`, `url_return` (URI callback), `s`. Respuesta: `{ url, token }`. Redirigir al cliente con `url + "?token=" + token`. Flow notifica POST a `url_return` con `token`. Luego llamar `customer/getRegisterStatus`.
- **Obtener resultado registro tarjeta (GET /customer/getRegisterStatus)**: parámetros: `apiKey`, `token` (recibido en callback), `s`. Respuesta: `{ status: "1", customerId, creditCardType, last4CardDigits }`.
- **Eliminar registro tarjeta (POST /customer/unRegister)**: parámetros: `apiKey`, `customerId`, `s`. Si se elimina, Flow enviará cobro por email en lugar de cargo automático.
- **Cargo automático a cliente (POST /customer/charge)**: parámetros: `apiKey`, `customerId`, `amount`, `subject`, `commerceOrder`, opcionales `currency`, `optionals` (JSON), `s`. Requiere tarjeta registrada previamente. Respuesta: objeto PaymentStatus.
- **Cobro a cliente con auto-detección (POST /customer/collect)**: parámetros: `apiKey`, `customerId`, `commerceOrder`, `subject`, `amount`, `urlConfirmation`, `urlReturn`, opcionales `currency`, `paymentMethod`, `byEmail` (1 = forzar email), `forward_days_after`, `forward_times`, `ignore_auto_charging` (1 = ignorar cargo automático aunque tenga tarjeta), `optionals`, `timeout`, `s`. Si tiene tarjeta registrada → cargo automático; si no → link de pago; si `byEmail=1` → cobro por email.
- **Cobro masivo (POST /customer/batchCollect)**: parámetros: `apiKey`, `urlCallBack`, `urlConfirmation`, `urlReturn`, `batchRows` (array JSON de objetos CollectObject con `customerId`, `commerceOrder`, `subject`, `amount`, `currency`, `optionals`), opcionales `byEmail`, `forward_days_after`, `forward_times`, `timeout`, `s`. Respuesta: `{ token, receivedRows, acceptedRows, rejectedRows }`. Asíncrono: Flow notifica POST a `urlCallBack` con `token` cuando procesa el lote.
- **Obtener estado lote batchCollect (GET /customer/getBatchCollectStatus)**: parámetros: `apiKey`, `token`, `s`. Respuesta: `{ token, createdDate, processedDate, status, collectRows: [...] }`.
- **Reversar cargo (POST /customer/reverseCharge)**: parámetros: `apiKey`, `commerceOrder` o `flowOrder`, `s`. Solo dentro de 24 horas desde las 14:00 hrs del día del cargo. Respuesta: `{ status: "1", message: "Reverse charge was successful" }`.
- **Listar cargos de cliente (GET /customer/getCharges)**: parámetros: `apiKey`, `customerId`, `start`, `limit`, `filter`, `fromDate`, `status`, `s`.
- **Listar intentos fallidos de cargo (GET /customer/getChargeAttemps)**: parámetros: `apiKey`, `customerId`, `start`, `limit`, `filter`, `fromDate`, `commerceOrder`, `s`.
- **Listar suscripciones de cliente (GET /customer/getSubscriptions)**: parámetros: `apiKey`, `customerId`, `start`, `limit`, `filter`, `s`.
- **Crear plan de suscripción (POST /plans/create)**: parámetros: `apiKey`, `planId` (string sin espacios, ej: "PlanMensual"), `name`, `amount`, `interval` (1=diario, 2=semanal, 3=mensual, 4=anual), opcionales `currency` (CLP default), `interval_count` (default 1), `trial_period_days` (default 0), `days_until_due` (default 3), `periods_number` (número de períodos), `urlCallback`, `charges_retries_number` (default 3), `currency_convert_option` (1=al pago, 2=al importe), `s`.
- **Obtener plan (GET /plans/get)**: parámetros: `apiKey`, `planId`, `s`.
- **Editar plan (POST /plans/edit)**: parámetros: `apiKey`, `planId`, opcionales `name`, `currency`, `amount`, `interval`, `interval_count`, `trial_period_days`, `days_until_due`, `periods_number`, `urlCallback`, `charges_retries_number`, `currency_convert_option`, `s`. Si el plan tiene suscriptores, solo se puede modificar `trial_period_days`.
- **Eliminar plan (POST /plans/delete)**: parámetros: `apiKey`, `planId`, `s`. No permite nuevas suscripciones, pero las activas continúan.
- **Listar planes (GET /plans/list)**: parámetros: `apiKey`, `start`, `limit`, `filter` (nombre), `status` (1=activo, 0=eliminado), `s`.
- **Crear suscripción (POST /subscription/create)**: parámetros: `apiKey`, `planId`, `customerId`, opcionales `subscription_start` (yyyy-mm-dd), `couponId`, `trial_period_days` (sobrescribe el del plan), `periods_number` (sobrescribe el del plan), `s`. Respuesta: `{ subscriptionId: "sus_...", planId, customerId, status, next_invoice_date, discount, invoices }`.
- **Obtener suscripción (GET /subscription/get)**: parámetros: `apiKey`, `subscriptionId`, `s`.
- **Listar suscripciones de un plan (GET /subscription/list)**: parámetros: `apiKey`, `planId`, `start`, `limit`, `filter` (nombre cliente), `status`, `s`.
- **Cambiar trial de suscripción (POST /subscription/changeTrial)**: parámetros: `apiKey`, `subscriptionId`, `trial_period_days`, `s`. Solo si aún no inicia o trial vigente.
- **Cancelar suscripción (POST /subscription/cancel)**: parámetros: `apiKey`, `subscriptionId`, `at_period_end` (0=inmediata, 1=al final del período), `s`.
- **Agregar cupón a suscripción (POST /subscription/addCoupon)**: parámetros: `apiKey`, `subscriptionId`, `couponId`, `s`. Reemplaza descuento existente.
- **Eliminar cupón de suscripción (POST /subscription/deleteCoupon)**: parámetros: `apiKey`, `subscriptionId`, `s`. No elimina descuento del cliente.
- **Agregar item adicional a suscripción (POST /subscription/addItem)**: parámetros: `apiKey`, `subscriptionId`, `itemId`, `s`.
- **Eliminar item adicional de suscripción (POST /subscription/deleteItem)**: parámetros: `apiKey`, `subscriptionId`, `itemId`, `s`.
- **Cambiar plan de suscripción (POST /subscription/changePlan)**: parámetros: `apiKey`, `subscriptionId`, `newPlanId`, opcional `startDateOfNewPlan` (YYYY-mm-dd, dentro del ciclo actual), `s`. Respuesta incluye `balance`, `new_amount`, `old_amount`.
- **Previsualizar cambio de plan (POST /subscription/changePlanPreview)**: mismos parámetros que changePlan. Respuesta incluye `balance`, `next_invoice_date`, `old_plan`, `new_plan`.
- **Cancelar cambio de plan programado (POST /subscription/changePlanCancel)**: parámetros: `apiKey`, `subscriptionId`, `s`. Respuesta: `{ success: true }`.
- **Crear item adicional de suscripción (POST /subscription_item/create)**: parámetros: `apiKey`, `name`, `currency`, `amount` (negativo = descuento, positivo = recargo), `s`.
- **Obtener item adicional (GET /subscription_item/get)**: parámetros: `apiKey`, `itemId`, `s`.
- **Editar item adicional (POST /subscription_item/edit)**: parámetros: `apiKey`, `itemId`, opcionales `name`, `amount`, `changeType` ("to_future" solo futuras, "all" actuales y futuras), `s`.
- **Eliminar item adicional (POST /subscription_item/delete)**: parámetros: `apiKey`, `itemId`, `changeType` ("to_future" o "all"), `s`.
- **Listar items adicionales (GET /subscription_item/list)**: parámetros: `apiKey`, `start`, `limit`, `filter`, `status` (1=activo, 0=inactivo), `s`.
- **Crear cupón (POST /coupon/create)**: parámetros: `apiKey`, `name`, opcionales `percent_off` (0-100, 2 decimales), `currency` (solo para monto), `amount` (monto descuento), `duration` (1=definida, 0=indefinida), `times` (veces si duración definida), `max_redemptions`, `expires` (yyyy-mm-dd), `s`.
- **Editar cupón (POST /coupon/edit)**: parámetros: `apiKey`, `couponId`, `name` (solo editable el nombre), `s`.
- **Eliminar cupón (POST /coupon/delete)**: parámetros: `apiKey`, `couponId`, `s`. No elimina descuentos ya aplicados.
- **Obtener cupón (GET /coupon/get)**: parámetros: `apiKey`, `couponId`, `s`.
- **Listar cupones (GET /coupon/list)**: parámetros: `apiKey`, `start`, `limit`, `filter`, `status`, `s`.
- **Obtener invoice (GET /invoice/get)**: parámetros: `apiKey`, `invoiceId`, `s`. Respuesta incluye `subscriptionId`, `amount`, `status`, `due_date`, `payment`, `paymentLink`, `chargeAttemps`.
- **Cancelar invoice pendiente (POST /invoice/cancel)**: parámetros: `apiKey`, `invoiceId`, `s`.
- **Registrar pago externo de invoice (POST /invoice/outsidePayment)**: parámetros: `apiKey`, `invoiceId`, `date` (yyyy-mm-dd), `comment`, `s`.
- **Listar invoices vencidos (GET /invoice/getOverDue)**: parámetros: `apiKey`, `start`, `limit`, `filter`, `planId`, `s`.
- **Reintentar cobro de invoice vencido (POST /invoice/retryToCollect)**: parámetros: `apiKey`, `invoiceId`, `s`.
- **Obtener liquidación por fecha (GET /settlement/getByDate)**: parámetros: `apiKey`, `date` (yyyy-mm-dd), `s`. Deprecated para fechas posteriores al 01-06-2021.
- **Obtener liquidación por ID (GET /settlement/getById)**: parámetros: `apiKey`, `id`, `s`. Deprecated para IDs posteriores al 01-06-2021.
- **Buscar liquidaciones por rango (GET /settlement/search)**: parámetros: `apiKey`, `startDate`, `endDate`, opcional `currency`, `s`. Retorna encabezados. Para detalle completo usar `/settlement/getByIdv2`.
- **Obtener liquidación v2 (GET /settlement/getByIdv2)**: parámetros: `apiKey`, `id`, `s`. Retorna SettlementV2 con `summary` y `detail`.
- **Crear comercio asociado (POST /merchant/create)**: parámetros: `apiKey`, `id`, `name`, `url`, `s`.
- **Editar comercio asociado (POST /merchant/edit)**: parámetros: `apiKey`, `id`, `name`, `url`, `s`.
- **Eliminar comercio asociado (POST /merchant/delete)**: parámetros: `apiKey`, `id`, `s`.
- **Obtener comercio asociado (GET /merchant/get)**: parámetros: `apiKey`, `id`, `s`.
- **Listar comercios asociados (GET /merchant/list)**: parámetros: `apiKey`, `start`, `limit`, `filter`, `status` (0=pendiente, 1=aprobado, 2=rechazado), `s`.
- **Paginación**: todos los servicios de lista usan `start` (default 0) y `limit` (default 10, max 100). Respuesta: `{ total, hasMore (1=hay más, 0=no), data: [...] }`. Iterar sumando `limit` a `start` mientras `hasMore = 1`.
- **Códigos de error de intentos de pago** (obtenibles vía `getStatusExtended`):
  | Código | Descripción |
  |--------|-------------|
  | -1 | Tarjeta inválida |
  | -11 | Excede límite de reintentos de rechazos |
  | -2 | Error de conexión |
  | -3 | Excede monto máximo |
  | -4 | Fecha de expiración inválida |
  | -5 | Problema en autenticación |
  | -6 | Rechazo general |
  | -7 | Tarjeta bloqueada |
  | -8 | Tarjeta vencida |
  | -9 | Transacción no soportada |
  | -10 | Problema en la transacción |
  | 999 | Error desconocido |
- **Tarjetas de prueba Sandbox Chile**: número `4051885600446623`, cualquier fecha expiración, CVV `123`. Simulación banco: Rut `11111111-1`, clave `123`. Para Servipag/Multicaja/Mach/Cryptocompra: simulador con botón aceptar.
- **Tarjetas de prueba Perú/México**: número `5293138086430769`, cualquier fecha, CVV `123`.
- **Tarjetas de prueba suscripciones Perú**: Aceptado: `5293138086430769` | Rechazado: `4551708161768059` (inscripción exitosa en ambos casos).
- **Clientes API oficiales**: PHP en `https://github.com/flowcl/PHP-API-CLIENT`. Postman Collections descargables para cada funcionalidad (Payment, Customer, Plans, Subscription, Coupon, Invoices, Refund, Settlements, Merchant). Variables de entorno Postman: `apiKey`, `secretKey`, `Hosting` (sandbox.flow.cl o www.flow.cl).

## Reglas para agentes
- Usa HMAC-SHA256 para firmar TODOS los parámetros excepto `s`; ordena alfabéticamente por nombre del parámetro antes de concatenar.
- Nunca incluyas el parámetro `s` en el string a firmar; agrégalo después de obtener el hash.
- Usa `POST` para crear, editar, eliminar recursos; usa `GET` para consultas y listados.
- Siempre usa `urlConfirmation` (callback) en payment/create y payment/createEmail; Flow notificará POST con `token` que debes usar en `payment/getStatus`.
- Nunca confíes solo en la redirección del pagador (`urlReturn`); siempre verifica el estado del pago mediante el callback de `urlConfirmation`.
- Para cargos automáticos, primero registra la tarjeta del cliente con `customer/register` y verifica con `customer/getRegisterStatus`.
- Para reversar un cargo, hazlo dentro de las 24 horas desde las 14:00 hrs del día del cargo; usa `commerceOrder` o `flowOrder`.
- Para eliminar un cliente, asegúrate de que no tenga suscripciones activas ni importes pendientes.
- Para editar un plan con suscriptores activos, solo puedes modificar `trial_period_days`.
- Para eliminar un plan, las suscripciones activas continúan su ciclo; solo se impiden nuevas suscripciones.
- Para paginación, itera incrementando `start` en `limit` mientras `hasMore` sea 1; `limit` máximo es 100.
- Para liquidaciones posteriores al 01-06-2021, usa `/settlement/search` y `/settlement/getByIdv2` en lugar de los métodos deprecados.
- Usa el ambiente Sandbox (`sandbox.flow.cl/api`) para pruebas; usa tarjetas de prueba específicas según el país (Chile: `4051885600446623`, Perú/México: `5293138086430769`).

## Errores comunes que evita o menciona
- **No firmar correctamente**: omitir el orden alfabético o incluir `s` en el string a firmar causa error de autenticación (HTTP 401).
- **Confundir urlReturn con urlConfirmation**: `urlReturn` es para redirigir al pagador después del pago; `urlConfirmation` es el callback donde Flow envía el token para verificar el estado real del pago. No usar solo `urlReturn` para confirmar pagos.
- **No verificar el estado del pago en el callback**: recibir el token en `urlConfirmation` y no llamar a `payment/getStatus` para obtener el resultado real.
- **Usar métodos deprecados para liquidaciones**: para liquidaciones posteriores al 01-06-2021, usar `/settlement/search` y `/settlement/getByIdv2`; los métodos antiguos (`getByDate`, `getById`) no funcionarán correctamente.
- **Intentar editar campos no permitidos en planes con suscriptores**: solo `trial_period_days` es editable si el plan tiene clientes suscritos.
- **Eliminar cliente con suscripciones activas**: la API rechazará la eliminación si el cliente tiene suscripciones activas o importes pendientes.
- **Reversar fuera del plazo de 24 horas**: el servicio `reverseCharge` solo funciona dentro de las 24 horas desde las 14:00 hrs del día del cargo.
- **No manejar paginación correctamente**: ignorar `hasMore` o no incrementar `start` puede dejar datos sin consultar.
- **Usar tarjetas de prueba incorrectas**: para Chile usar `4051885600446623`; para Perú/México usar `5293138086430769`; para suscripciones Perú usar las tarjetas específicas de aceptado/rechazado.
- **No considerar que batchCollect es asíncrono**: el servicio responde inmediatamente con un token, pero el procesamiento del lote ocurre después; debes implementar el callback en `urlCallBack` para recibir la notificación y luego consultar con `getBatchCollectStatus`.
- **Enviar parámetros opcionales en formato incorrecto**: `optional` y `optionals` deben ser JSON válido, ej: `{"rut":"9999999-9","nombre":"cliente 1"}`.