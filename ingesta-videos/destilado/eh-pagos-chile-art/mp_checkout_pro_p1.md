# mp_checkout_pro
**Fuente:** pagos-chile | https://www.mercadopago.cl/developers/es/docs/checkout-pro/overview

## Qué enseña (2-3 líneas)
Checkout Pro es una solución de pago prediseñada de Mercado Pago que permite a los clientes comprar en tu sitio web y pagar en el entorno seguro de Mercado Pago, ya sea con su cuenta o como invitados. La documentación cubre el proceso completo de integración: desde la creación de una aplicación y preferencias de pago, hasta la configuración de notificaciones, pruebas y salida a producción.

## Lecciones accionables
- **Requisitos previos obligatorios:**
  - Cuenta de vendedor en Mercado Pago (crear en https://www.mercadopago.cl)
  - Certificado SSL (Secure Sockets Layer) para navegación segura
- **Proceso de integración (8 pasos secuenciales):**
  1. Crear una aplicación desde "Tus integraciones"
  2. Configurar el ambiente de desarrollo
  3. Crear y configurar una **preferencia de pago** (incluye: monto, medios de pago, detalles, otros)
  4. Configurar las URLs de retorno
  5. Agregar el SDK al frontend e inicializar el checkout
  6. Configurar las notificaciones de pago (Webhooks e IPN)
  7. Probar la integración (realizar compras de prueba)
  8. Salir a producción
- **Funcionalidades clave que ofrece:**
  - Personalización: financiamiento en cuotas, URL de retorno tras aprobar el pago, apariencia y estilo del botón de pago, medios de pago combinables y customizables
  - Conversión: cobro ágil con medios guardados en Mercado Pago, opción de pago como invitado, medios online y offline (tarjetas y dinero en cuenta), recuperación de pagos rechazados
  - Aprobación: tecnología 3DS 2.0 para autenticación, herramientas de prevención de fraudes, validación con datos específicos de industria
  - Seguridad: protocolos OWASP y PCI DSS, verificación de identidad, reconocimiento facial con FaceAuth
- **Medios de pago disponibles:** Tarjeta de crédito o débito, Cuenta Mercado Pago y Cuotas sin Tarjeta
- **Disponibilidad por país:** AR, BR, CL, CO, MX, PE, UY
- **Configuraciones adicionales documentadas:**
  - Configurar reembolsos y cancelaciones
  - Excluir medios de pago
  - Restringir compras a usuarios registrados
  - Crear preferencia para múltiples ítems
  - Mostrar valor de envío
  - Cambiar fecha de vencimiento
  - Esquema de apertura con redirect externo
  - Configurar descripción de factura
  - Configurar la apariencia del botón de pago
  - Conversión de anuncios
  - Habilitar modo binario
  - Definir vigencia de preferencia
  - Configurar notificaciones opcionales
- **Recursos para IA:** Incluye MCP Server (Beta) con herramientas disponibles, casos de uso y troubleshooting; también "Biblioteca de prompts" y "Comandos para IA"
- **Comparativa de soluciones:**
  | Característica | Checkout Pro | Checkout API | Checkout Bricks |
  |---|---|---|---|
  | Esfuerzo de integración | Medio | Alto | Medio |
  | Nivel de personalización | Medio | Alto | Medio |
  | Diseño | Listo para configurar | - | Listo para configurar |
  | Experiencia de cobro | En Mercado Pago | En tu sitio | En tu sitio |
  | Pagos recurrentes | - | Sí | Sí |
  | Medios de pago | TC/TD, Cuenta MP, Cuotas sin Tarjeta | TC/TD, Cuenta MP | TC/TD, Cuenta MP |

## Reglas para agentes
- USA Checkout Pro cuando necesites una solución prediseñada con redirección a Mercado Pago y mínimo esfuerzo de integración
- USA la opción de "usuario invitado" para maximizar conversión sin exigir cuenta de Mercado Pago
- CONFIGURA siempre Webhooks e IPN en el paso 6 del proceso de integración para recibir notificaciones de pago
- USA el endpoint de "Tus integraciones" (https://www.mercadopago.com.ar/developers/panel/app) para crear la aplicación inicial
- NUNCA expongas credenciales en el frontend; sigue las buenas prácticas de seguridad de credenciales
- USA el MCP Server (Beta) para conectar agentes de IA directamente a la documentación técnica
- VERIFICA que el país del vendedor esté en la lista de disponibilidad (AR, BR, CL, CO, MX, PE, UY) antes de integrar
- USA el modo binario solo cuando necesites aprobación o rechazo inmediato sin estados intermedios
- CONFIGURA URLs de retorno personalizadas para controlar la experiencia post-pago del cliente

## Errores comunes que evita o menciona
- **No tener certificado SSL:** Es requisito previo obligatorio para la navegación segura y protección de datos
- **Saltarse la creación de aplicación:** El proceso comienza obligatoriamente desde "Tus integraciones"
- **No configurar notificaciones:** Webhooks e IPN son esenciales para recibir actualizaciones de estado de pago
- **No probar la integración:** Se debe realizar compras de prueba antes de salir a producción
- **Ignorar la recuperación de pagos rechazados:** Checkout Pro incluye esta funcionalidad para mejorar conversión
- **No diferenciar entre soluciones:** Checkout Pro es para experiencia en Mercado Pago, no para checkout en tu propio sitio (eso es Checkout API o Bricks)
- **No configurar URLs de retorno:** Sin ellas, el cliente no regresa a tu sitio después del pago
- **Exponer credenciales en código cliente:** Se menciona explícitamente en "Buenas prácticas de credenciales" mantenerlas seguras