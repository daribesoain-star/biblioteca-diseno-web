## Doctrina destilada (ingesta 2026-07-16)
> 17 fuentes destiladas (docs oficiales + tutoriales). Cada regla con su fuente.

### Comisiones y costos por pasarela en Chile
- **Transbank Webpay Plus:** Débito ~1,75% | Crédito ~2,35% (sujeto a tasas de intercambio reguladas) (Fuente: laudus_top5_pasarelas — https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/)
- **Flow:** 2,49% a 3,19% + IVA según día de liquidación (mismo día, 1 día hábil o 3 días hábiles); comisión fija de "200 pesos" por transacción más variable según método de pago (Fuente: laudus_top5_pasarelas — https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/; FLOW.CL - Recibe pago por internet fácilmente en Chile — https://youtu.be/01oXloaXb-k)
- **Mercado Pago Checkout Pro (Chile):** 3,19% débito·crédito (Fuente: vendercontarjeta_alternativas — https://vendercontarjeta.cl/webpay-plus-alternativas/)
- **Getnet (Santander):** Débito desde 0,58% + UF fija por transacción; Crédito desde 1,46% + UF fija (Fuente: laudus_top5_pasarelas — https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/)
- **Compraquí (BancoEstado):** ~1,49% + IVA generalizado para crédito y débito (Fuente: laudus_top5_pasarelas — https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/)
- **Khipu Link Pago (transferencia):** 1,49% (Fuente: vendercontarjeta_alternativas — https://vendercontarjeta.cl/webpay-plus-alternativas/)
- **Payku Standard:** 3,51% (2,95% + IVA) (Fuente: vendercontarjeta_alternativas — https://vendercontarjeta.cl/webpay-plus-alternativas/)
- **SumUp Link:** 3,45% (2,9% + IVA) (Fuente: vendercontarjeta_alternativas — https://vendercontarjeta.cl/webpay-plus-alternativas/)

### Integración técnica y endpoints
- **Webpay Plus:** Crear transacción con `Transaction.create(buyOrder, sessionId, amount, returnUrl)`. El token tiene vida de **5 minutos**. Confirmar con `Transaction.commit(token)`; verificar `response_code == 0` y `status == "AUTHORIZED"` (Fuente: transbank_webpay — https://www.transbankdevelopers.cl/documentacion/webpay-plus)
- **Webpay Plus WooCommerce:** Solicitar validación en formulario de Transbank con código de comercio de 12 dígitos que empieza con "5970"; URL raíz sin puntos, con guiones (ej: `isabel-web-digital-net`). Subir logo en formato GIF o PNG con dimensiones exactas de 130 x 59 píxeles. Esperar hasta 48 horas para recibir validación y API key/secret (Fuente: Integración Webpay Plus 💳 + Woocommerce en Chile 🇨🇱 — https://youtu.be/FLQwEKzipCU)
- **Webpay Plus - Generación de llaves:** `openssl genrsa -out <código_comercio>.key 2048`; generar certificado con `openssl x509 -req -days 1460 -in <código_comercio>.csr -signkey <código_comercio>.key -out <código_comercio>.crt`. El "Common Name" del CSR debe ser exactamente el código de comercio (no el nombre de la empresa). Dejar "A challenge password" vacío (Fuente: Transbank WebPay - Generar Llaves — https://youtu.be/ss_iOcf5s7Y)
- **Flow API:** Endpoint base: Producción `https://www.flow.cl/api` | Sandbox `https://sandbox.flow.cl/api`. Crear pago con `POST /payment/create`; parámetros requeridos: `apiKey`, `commerceOrder`, `subject`, `amount`, `email`, `urlConfirmation`, `urlReturn`. Firmar TODOS los parámetros (excepto `s`) con HMAC-SHA256 usando SecretKey, orden alfabético ascendente por nombre del parámetro, concatenar como `nombreParametrovalor` (Fuente: flow_api — https://www.flow.cl/docs/api.html)
- **Fintoc (pago por transferencia):** Endpoint `POST https://api.fintoc.com/v2/checkout_sessions`. Autenticación con header `Authorization: YOUR_TEST_SECRET_API_KEY` (usar `sk*test*` para modo test). Parámetros requeridos: `amount` (integer, CLP sin decimales), `currency` (`CLP` o `MXN`), `success_url`, `cancel_url` (Fuente: fintoc_payments — https://docs.fintoc.com/docs/overview-payment-initiation.md)
- **Mercado Pago Checkout API:** Usar **Public Key** en frontend y **Access Token** en backend. Crear aplicación en `developers.mercadopago.com` > "Tus integraciones" > "Crear aplicación"; para Checkout API seleccionar producto "Checkout API" (Fuente: Integración de Mercado Pago - Cuentas de Prueba, Tokens y Public Keys — https://youtu.be/ohQKF8NeDwU)
- **Mercado Pago WooCommerce:** Instalar plugin oficial "Mercado Pago Payments for WooCommerce"; obtener "Public Key" y "Access Token" desde Configuración > Credenciales > "Credenciales de producción" (Fuente: Como Configurar Mercado Pago en Woocommerce WordPress — https://youtu.be/DHsmoRzqF_Q)
- **Mercado Pago API - Backend:** Usar ngrok para exponer servidor local con HTTPS (requerido por Mercado Pago). Corregir error "invalid expiration year" asegurando que el backend reciba año de 4 dígitos (ej. 2030), no de 2 (ej. 30) (Fuente: Aprende a integrar Mercado Pago API paso a paso fácil — https://youtu.be/KyTxNgcj3VI)

### Cuentas de prueba y sandbox
- **Webpay Plus - Tarjeta de prueba:** VISA `4051885600446623`, CVV `123`, fecha de vencimiento futura. Autenticación: RUT `11.111.111-1`, clave `123` (Fuente: transbank_webpay — https://www.transbankdevelopers.cl/documentacion/webpay-plus)
- **Flow - Tarjeta de prueba Sandbox Chile:** número `4051885600446623`, cualquier fecha expiración, CVV `123`. Simulación banco: Rut `11111111-1`, clave `123`. Perú/México: número `5293138086430769`, cualquier fecha, CVV `123` (Fuente: flow_api — https://www.flow.cl/docs/api.html)
- **Fintoc - Datos de prueba Chile:** RUT `41614850-3`, password `jonsnow`, cuenta `422159212` (esperar 5 segundos). México: Número `5555555555` (esperar 5 segundos) (Fuente: fintoc_payments — https://docs.fintoc.com/docs/overview-payment-initiation.md)
- **Mercado Pago - Modo pruebas:** En WooCommerce, cambiar "Modo de operación" a "Prueba" y usar tarjetas de prueba de Mercado Pago. Crear cuentas de prueba (vendedor y comprador) solo para Checkout Pro, no para Checkout API (Fuente: Como Configurar Mercado Pago en Woocommerce WordPress — https://youtu.be/DHsmoRzqF_Q; Integración de Mercado Pago - Cuentas de Prueba, Tokens y Public Keys — https://youtu.be/ohQKF8NeDwU)
- **Flow - Entorno de pruebas:** Usar el sandbox (`https://sandbox.flow.cl/api`) para probar integraciones antes de producción (Fuente: FLOW.CL - Recibe pago por internet fácilmente en Chile — https://youtu.be/01oXloaXb-k)

### Conversión y optimización de pagos
- **Mercado Pago - Retiro de dinero:** Desde "Tu dinero" > "Retirar dinero" con monto mínimo de 25 unidades de moneda local (Fuente: Como Configurar Mercado Pago en Woocommerce WordPress — https://youtu.be/DHsmoRzqF_Q)
- **Mercado Pago Argentina - Facturación:** Facturar el 100% del monto que paga el cliente, no el neto recibido después de comisiones (Fuente: GUÍA DEFINITIVA para COBRAR con MERCADO PAGO (en 2026) — https://youtu.be/_6xpHzGMFZY)
- **Tiendanube - Activación Mercado Pago:** Desde "Configuración" > "Métodos de pago" > "Activar" > aceptar permisos e iniciar sesión. Mantener activadas todas las opciones de pago por defecto (sin cuenta, con cuenta, tarjetas guardadas, efectivo OXXO, meses sin intereses) (Fuente: Configura tu PASARELA DE PAGO en minutos | Tutorial Tiendanube 2025 🤓 — https://youtu.be/a1kcyzSDPlc)
- **Airwallex Shopify - Conversión:** Configurar "like-for-like settlement" para que el cliente pague en su moneda local y recibas el pago en esa misma moneda sin conversión forzada a USD. Aceptar más de 160 métodos de pago globales y locales (iDeal, Afterpay, Klarna) (Fuente: Best Shopify Payment Gateway For International Sellers (2026) — https://youtu.be/8OwofzubJbE)

### Elección multi-pasarela para e-commerce
- **Estrategia recomendada:** Combinar Webpay Plus (débito/crédito tradicional) + Flow o Mercado Pago (alternativa con mejor conversión) + Fintoc o Khipu (transferencia bancaria de bajo costo). Esto cubre tarjetas, transferencias y wallets (Fuente: vendercontarjeta_alternativas — https://vendercontarjeta.cl/webpay-plus-alternativas/)
- **Priorizar pasarelas con menor comisión para montos altos:** Getnet (0,58% débito) o Compraquí (1,49%) para transacciones grandes; Flow o Mercado Pago (3,19-3,44%) para montos bajos donde la conversión es crítica (Fuente: laudus_top5_pasarelas — https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/)
- **Para e-commerce internacional en Shopify:** Airwallex permite liquidación en moneda local del cliente sin conversión forzada a USD, con transferencias gratuitas a más de 120 países (95% llega el mismo día) (Fuente: Best Shopify Payment Gateway For International Sellers (2026) — https://youtu.be/8OwofzubJbE)
- **Para negocios físicos + online:** Square (2,6% + $0.10, terminal $300) o Stripe (2,9% + $0.30, terminal $350); PayPal Zettle (2,9% + $0.50, terminal $200 con chip SIM) (Fuente: Comparing TOP 5 Payment Processors for Small Business (2025: Stripe, Square, PayPal, etc) — https://youtu.be/74ZabaUrDkM)

### Errores comunes / anti-patrones
- **No verificar `response_code == 0` y `status == "AUTHORIZED"` al confirmar transacción Webpay Plus** — puede aceptar pagos no autorizados (Fuente: transbank_webpay — https://www.transbankdevelopers.cl/documentacion/webpay-plus)
- **Enviar año de expiración de 2 dígitos (ej. 30) en Mercado Pago API** — causa error "invalid expiration year"; debe ser 4 dígitos (ej. 2030) (Fuente: Aprende a integrar Mercado Pago API paso a paso fácil — https://youtu.be/KyTxNgcj3VI)
- **Usar cuentas de prueba de Mercado Pago para Checkout API** — las cuentas de prueba solo funcionan para Checkout Pro, no para Checkout API (Fuente: Integración de Mercado Pago - Cuentas de Prueba, Tokens y Public Keys — https://youtu.be/ohQKF8NeDwU)
- **Dejar "A challenge password" relleno al generar CSR para Webpay Plus** — debe estar completamente vacío (Fuente: Transbank WebPay - Generar Llaves — https://youtu.be/ss_iOcf5s7Y)
- **Usar nombre de empresa en "Common Name" del CSR de Webpay Plus** — debe ser exactamente el código de comercio (merchant code) (Fuente: Transbank WebPay - Generar Llaves — https://youtu.be/ss_iOcf5s7Y)
- **No firmar parámetros con HMAC-SHA256 en Flow API** — todos los parámetros (excepto `s`) deben firmarse en orden alfabético ascendente (Fuente: flow_api — https://www.flow.cl/docs/api.html)
- **Facturar el neto recibido en Mercado Pago** — debe facturarse el 100% del monto que paga el cliente, no el neto después de comisiones (Fuente: GUÍA DEFINITIVA para COBRAR con MERCADO PAGO (en 2026) — https://youtu.be/_6xpHzGMFZY)

### Fuentes de esta ingesta
- FLOW.CL - Recibe pago por internet fácilmente en Chile — https://youtu.be/01oXloaXb-k
- Como Configurar Mercado Pago en Woocommerce WordPress — https://youtu.be/DHsmoRzqF_Q
- Integración Webpay Plus 💳 + Woocommerce en Chile 🇨🇱 — https://youtu.be/FLQwEKzipCU
- Aprende a integrar Mercado Pago API paso a paso fácil — https://youtu.be/KyTxNgcj3VI
- Integración de Mercado Pago - Cuentas de Prueba, Tokens y Public Keys — https://youtu.be/ohQKF8NeDwU
- GUÍA DEFINITIVA para COBRAR con MERCADO PAGO (en 2026) — https://youtu.be/_6xpHzGMFZY
- Configura tu PASARELA DE PAGO en minutos | Tutorial Tiendanube 2025 🤓 — https://youtu.be/a1kcyzSDPlc
- Best Shopify Payment Gateway For International Sellers (2026) — https://youtu.be/8OwofzubJbE
- Comparing TOP 5 Payment Processors for Small Business (2025: Stripe, Square, PayPal, etc) — https://youtu.be/74ZabaUrDkM
- Transbank WebPay - Generar Llaves — https://youtu.be/ss_iOcf5s7Y
- fintoc_payments — https://docs.fintoc.com/docs/overview-payment-initiation.md
- flow_api — https://www.flow.cl/docs/api.html
- laudus_top5_pasarelas — https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/
- transbank_webpay — https://www.transbankdevelopers.cl/documentacion/webpay-plus
- vendercontarjeta_alternativas — https://vendercontarjeta.cl/webpay-plus-alternativas/