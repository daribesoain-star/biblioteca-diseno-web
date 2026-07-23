# fintoc_payments
**Fuente:** pagos-chile | https://docs.fintoc.com/docs/overview-payment-initiation.md

## Qué enseña (2-3 líneas)
Enseña a implementar pagos one-time en CLP o MXN mediante la API Checkout Session de Fintoc, usando una página de checkout alojada por Fintoc. Cubre la creación de sesiones, redirección del usuario, manejo de webhooks post-pago y los dos escenarios de flujo de fondos: "Fintoc collects" (Fintoc recibe y luego transfiere) y "Direct payments" (el dinero va directo a la cuenta del comercio, solo en Chile).

## Lecciones accionables
- **Endpoint para crear Checkout Session:** `POST https://api.fintoc.com/v2/checkout_sessions`
- **Autenticación:** Header `Authorization: YOUR_TEST_SECRET_API_KEY` (usar `sk*test*` para modo test)
- **Parámetros requeridos en el body:**
  - `amount` (integer, en la unidad más pequeña de la moneda: CLP sin decimales, MXN en centavos)
  - `currency` (string, `CLP` o `MXN`)
  - `success_url` (string, URL a la que redirigir tras pago exitoso)
  - `cancel_url` (string, URL a la que redirigir si el usuario cancela)
- **Parámetros opcionales clave:**
  - `customer_data` (object): incluye `tax_id` (object con `type` y `value`), `name`, `email`, `metadata`. Requerido si se usará Refunds.
  - `metadata` (object): pares clave-valor para información adicional (ej: `{"order": "987654321"}`)
  - `payment_method_types` (array de strings): `["bank_transfer"]`, `["card"]` o ambos
  - `payment_method_options` (object): para pre-seleccionar institución, ej: `{"bank_transfer": {"sender_account": {"institution_id": {"value": "cl_banco_estado"}}}}`
  - `line_items` (array de objects): cada item con `quantity` (integer) y `price_data` (object con `currency`, `unit_amount`, `product_data` con `name` e `image_url` opcional)
- **Respuesta exitosa:** Incluye `redirect_url` (ej: `https://pay.fintoc.com/checkout/cs_li5531onlFDi235`) para redirigir al usuario
- **SDKs backend:** Python (`pip install fintoc`) y Node (`npm install fintoc`)
- **Bancos soportados en Chile (con sus IDs):**

| Banco | Fintoc Bank ID |
|-------|----------------|
| Banco Estado | `cl_banco_estado` |
| Banco BCI | `cl_banco_bci` |
| Banco BICE | `cl_banco_bice` |
| Banco de Chile - Edwards - Citi | `cl_banco_de_chile` |
| Banco Falabella | `cl_banco_falabella` |
| Banco Itaú | `cl_banco_itau` |
| Banco Ripley | `cl_banco_ripley` |
| Banco Santander | `cl_banco_santander` |
| Banco Consorcio | `cl_banco_consorcio` |
| Scotiabank | `cl_banco_scotiabank` |
| Mercado Pago | `cl_mercado_pago` |
| Mach | `cl_mach` |
| Tenpo | `cl_tenpo` |
| Banco Security | `cl_banco_security` |
| Tapp | `cl_tapp_caja_los_andes` |
| Banco Internacional | `cl_banco_internacional` |
| Coopeuch - Dale | `cl_banco_coopeuch` |
| Copec Pay | `cl_copec_pay` |
| Prepago Los Heroes | `cl_prepago_los_heroes` |
| BBVA | `cl_banco_bbva` |
| HSBC | `cl_banco_hsbc` |

- **Límites de transacción en Chile (CLP):**

| Banco | Nuevo destinatario | Destinatario existente | Monto mínimo |
|-------|-------------------|----------------------|--------------|
| Banco BCI | MultiPass: $250.000 / BciPass: $600.000 (máx 1 transacción en primeras 24h) | MultiPass: $5.000.000 / BciPass: $7.000.000 | $1 |
| Banco de Chile | $350.000 | DigiPass/Mi Pass: $5.000.000 / DigiCard: $2.000.000 | $1 |
| Banco Santander | $250.000 (máx 1 transacción en primeras 24h) | $5.000.000 | $1.000 |
| Banco Estado | Cuenta Rut: $100.000 / Otras cuentas: $250.000 (máx 1 transacción en primeras 24h) | Cuenta Rut: $1.000.000 / Otras cuentas: $5.000.000 / Cuenta Rut a digital: $100.000 / Otras a digital: $250.000 | $1 |
| Banco Itaú | $300.000 (máx 1 transacción en primeras 24h) | $7.000.000 | $1 |
| Banco Falabella | A Banco Estado: $200.000 / Otras cuentas: $1.000.000 | Cuenta Vista: $2.000.000 / Cuenta Corriente: $7.000.000 | $1 |
| Scotiabank | $300.000 (máx 1 transacción en primeras 24h) | $5.000.000 | $1 |
| BICE | $250.000 | BICE GO acumulado diario: $5.000.000 / BICE GO transferencia única: $2.500.000 / Cuenta Corriente: $7.000.000 | $1 |
| Banco Ripley | $250.000 | Acumulado diario: $7.000.000 / Transferencia única: $2.000.000 | $1 |

- **México:** Sin límites por transacción ni diarios. Soporta todas las instituciones participantes en SPEI.
- **Webhooks a manejar:**
  - `checkout_session.finished`: sesión terminada (pago puede estar pendiente)
  - `checkout_session.expired`: sesión expiró
  - `payment_intent.succeeded`: pago exitoso
  - `payment_intent.failed`: pago fallido
  - `payment_intent.requires_action`: pago requiere acción (ej: aprobación multi-firma en cuentas business)
- **Datos de prueba para Chile:** RUT `41614850-3`, password `jonsnow`, cuenta `422159212` (esperar 5 segundos)
- **Datos de prueba para México:** Número `5555555555` (esperar 5 segundos)
- **Escenarios de flujo de fondos:**
  - **Fintoc collects:** El dinero va a cuenta de Fintoc, luego Fintoc paga al comercio (recomendado para e-commerce). Fondos llegan al día hábil siguiente.
  - **Direct payments:** El dinero va directo a la cuenta del comercio (solo Chile, solo bank_transfer). Fondos instantáneos pero requiere reconciliación manual.

## Reglas para agentes
- Usa `sk*test*` como prefijo de Secret Key en modo test; usa `pk*test*` para Public Key.
- Crea siempre el Checkout Session desde el backend, nunca desde el frontend, para evitar alteración maliciosa de campos.
- Representa montos como enteros en la unidad más pequeña de la moneda (CLP sin decimales, MXN en centavos). Ej: MXN 10.29 = `1029`.
- Incluye `customer_email` en la creación del Checkout Session si planeas usar el producto Refunds.
- Escucha eventos vía webhooks en el backend; nunca confíes en callbacks del cliente para determinar el estado final del pago.
- Para pagos que excedan los límites de transacción o con RUT de empresa, limita la sesión a los bancos con flujos especiales: Banco Estado, Banco de Chile, Banco Santander.
- Si envías `customer_data` con `tax_id` y ya existe un Customer con ese mismo tax_id, la API retorna error `409 Conflict`; en ese caso, reutiliza el Customer existente enviando su `id` en el parámetro `customer`.
- Para pre-seleccionar un método de pago, usa `payment_method_types` y `payment_method_options` con el `institution_id` correspondiente.
- Para pagos que requieren aprobación multi-firma (business accounts), maneja el evento `payment_intent.requires_action` e informa al cliente.

## Errores comunes que evita o menciona
- **No crear sesiones desde el frontend:** Un usuario malicioso podría alterar `amount`, `currency` u otros campos.
- **No esperar callbacks del cliente:** El cliente podría cerrar el navegador antes de que el callback se ejecute, o un cliente malicioso podría manipular la respuesta.
- **Confundir unidades de moneda:** CLP no tiene decimales (350000 = CLP 350.000), MXN usa centavos (350000 = MXN 3.500,00).
- **No incluir `customer_email` si se usará Refunds:** Es requerido para poder procesar reembolsos.
- **Ignorar el evento `payment_intent.requires_action`:** En pagos business, el pago puede quedar pendiente de aprobación multi-firma; hay que informar al cliente y esperar el evento final (`succeeded` o `failed`).
- **No verificar límites de transacción por banco:** Si el monto excede el límite del banco seleccionado, el pago fallará. Fintoc oculta automáticamente los bancos no disponibles si se envía `customer_data`.