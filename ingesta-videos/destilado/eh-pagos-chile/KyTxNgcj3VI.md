# Aprende a integrar Mercado Pago API paso a paso fácil
**Fuente:** eh-pagos-chile | https://youtu.be/KyTxNgcj3VI

## Qué enseña
Este video explica cómo integrar la API directa de Mercado Pago en un proyecto web, permitiendo personalizar completamente el formulario de pago (a diferencia del checkout estándar). Cubre el proceso completo: tokenización de tarjetas, creación de un servicio backend para procesar pagos, y la implementación del frontend con un modal personalizado, todo usando el asistente Cursor AI.

## Lecciones accionables
- **Crear servicio backend de pago:** Usa el prompt: *"I need you to create a new service, a new service to make payments with Mercado Pago using the same SD card. This endpoint should be able to receive all the card information, tokenize it, and then successfully process the payment for our product"*
- **Implementar servicio en rutas:** Usa el prompt: *"I need you to implement this service within the payment process routes. Then give me the complete URL that I should use on the frontend side to call this endpoint"*
- **Crear modal frontend:** Usa el prompt: *"I need you to create a new modal inside the item of API Integration. When the user clicks directly on the 'Pay' button, this modal needs to be displayed. The fields we need inside are all those related to Mercado Pago payments. I'll leave you the body of all the fields we need to send"*
- **Crear servicio frontend:** Usa el prompt: *"Create a new service within the API Folder for payment creation. The URL we need to use is the following and the method is post"*
- **Corregir error de año de expiración:** Si recibes error "invalid expiration year", el backend espera año de 4 dígitos (ej. 2030), no de 2 (ej. 30). Añade 2000 al año recibido en la validación del servicio.
- **Corregir error de parámetros:** Si recibes error "error processing payment difum beans" o "param spins", verifica que el `payment_method_id` coincida con el tipo de tarjeta (Visa, Mastercard, etc.) y que no falten parámetros requeridos como `notification_url`.
- **Usar ngrok:** Mercado Pago requiere HTTPS para seguridad. Usa ngrok para exponer tu servidor local.
- **Probar con tarjetas de prueba:** Usa las tarjetas de prueba de Mercado Pago (ej. número 23, mes 11, año 2030, titular "aproger@gmail.com", RFC y número de identificación de prueba).
- **Enviar payload de error para depuración:** Copia el objeto del error y úsalo en el prompt: *"This is the payload and this is the error I got from the front side"* para que Cursor lo corrija.
- **Configurar respuesta de éxito:** Después del pago exitoso, adapta la respuesta para mostrar un modal de éxito con: payment ID, status, amount, fecha, cardholder, número de cuotas, payment method, email del pagador, identificación y token ID.

## Reglas para agentes
- Usa el entorno Sandbox de Mercado Pago para todas las pruebas antes de producción.
- Usa ngrok para exponer servicios locales cuando Mercado Pago requiera HTTPS.
- Valida que el año de expiración sea de 4 dígitos (ej. 2030) en el backend; si recibes 2 dígitos (ej. 30), conviértelos añadiendo 2000.
- Nunca devuelvas información completa de la tarjeta en la respuesta de éxito (solo token ID, últimos 4 dígitos y tipo de pago).
- Asegúrate de que `payment_method_id` coincida exactamente con el tipo de tarjeta enviada (Visa, Mastercard, Amex, etc.).
- Incluye siempre el campo `notification_url` en la solicitud de pago, aunque sea opcional en pruebas.
- Usa el token ID devuelto para pagos recurrentes o membresías, no la información de la tarjeta original.
- Verifica que el servicio backend tenga validación de campos obligatorios (card number, security code, expiration month/year, cardholder name, identification).

## Errores comunes que evita o menciona
- **Error "invalid expiration year":** Ocurre cuando el backend espera año de 4 dígitos pero recibe 2 dígitos. Solución: convertir el año añadiendo 2000 en la validación.
- **Error "error processing payment difum beans" o "param spins":** Causado por inconsistencia en parámetros enviados a Mercado Pago, como `payment_method_id` que no coincide con el tipo de tarjeta, o falta de campos requeridos como `notification_url`.
- **Error de tokenización:** Puede ocurrir si el formato de los datos de la tarjeta no es el esperado por el SDK de Mercado Pago.
- **No usar HTTPS:** Mercado Pago requiere conexión segura; sin ngrok o un certificado SSL, la integración fallará.
- **No guardar el token ID:** Para pagos recurrentes, es necesario almacenar el token ID devuelto, no la información de la tarjeta.
- **Usar datos reales en pruebas:** Siempre usar tarjetas de prueba de Mercado Pago en el entorno Sandbox.