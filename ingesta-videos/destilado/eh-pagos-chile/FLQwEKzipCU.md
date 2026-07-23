# Integración Webpay Plus 💳 + Woocommerce en Chile 🇨🇱
**Fuente:** eh-pagos-chile | https://youtu.be/FLQwEKzipCU

## Qué enseña (2-3 líneas)
El video explica el proceso completo para integrar Webpay Plus con WooCommerce en Chile: desde la solicitud de validación comercial en el formulario de Transbank, la instalación del plugin oficial, hasta la configuración en producción con el código de comercio y API key. También cubre la prueba de compra y la reutilización del código en cambios de dominio.

## Lecciones accionables
- Solicitar validación en el formulario de Transbank (enlace en descripción del video): seleccionar plataforma "WooCommerce", producto "Webpay Plus", e ingresar código de comercio (empieza con 5970, 12 dígitos exactos).
- Ingresar la dirección raíz del sitio (root address) asociada a la empresa, sin puntos y con guiones (ejemplo: `isabel-web-digital-net`).
- Completar datos del formulario: nombre del integrador, email (ejemplo: `Nano@example`), teléfono de contacto, confirmar "¿Eres el integrador?" = Sí, root en formato solicitado, nombre de tu empresa, nombre de la empresa asociada a la integración.
- Subir logo en formato GIF o PNG, dimensiones exactas: 130 x 59 píxeles.
- Agregar la URL de integración (donde se desarrolla el sitio, ej: `isabel.web.digital.net`), notas opcionales, y enviar.
- Esperar hasta 48 horas para recibir la validación y un nuevo código (API key o secret) desde Transbank.
- En WordPress: ir a Plugins → Añadir nuevo → buscar "Transbank" oficial → instalar y activar.
- Configurar el plugin Webpay: ingresar código de comercio de producción, API key/secret AV de producción, estado del pedido tras pago exitoso, y descripción corta.
- Realizar una compra de prueba creando un producto de $100 CLP o ajustando precio de uno existente.
- Si se cambia hosting o dominio (incluso subdominio), no es necesario repetir la validación: solo reinstalar el plugin e ingresar los mismos datos (código de comercio y API key).

## Reglas para agentes
- Usa el código de comercio que empieza con "5970" y tiene exactamente 12 dígitos cuando configures Webpay Plus.
- Nunca ingreses la URL raíz con puntos; reemplázalos por guiones en el formulario de validación.
- Siempre sube el logo con dimensiones 130x59 píxeles en formato GIF o PNG.
- Nunca envíes el formulario de validación sin haber verificado que el código de comercio y la URL raíz sean correctos.
- Espera siempre hasta 48 horas después del envío antes de contactar a soporte por la validación.
- Usa el plugin oficial de Transbank (primer resultado en el buscador de plugins de WordPress) para la integración.
- Cuando cambies de dominio o hosting, reinstala el plugin y reingresa el mismo código de comercio y API key sin solicitar nueva validación.

## Errores comunes que evita o menciona
- No ingresar la dirección raíz con puntos (debe ser con guiones, ej: `isabel-web-digital-net` en lugar de `isabel.web.digital.net`).
- Olvidar que el código de comercio siempre empieza con 5970 y tiene 12 dígitos.
- Subir un logo con dimensiones incorrectas (debe ser exactamente 130x59 píxeles, formato GIF o PNG).
- No esperar las 48 horas de validación antes de intentar configurar el plugin en producción.
- Pensar que al cambiar de hosting o dominio se debe repetir todo el proceso de validación (no es necesario, solo reinstalar el plugin).