# Integración de Mercado Pago - Cuentas de Prueba, Tokens y Public Keys
**Fuente:** eh-pagos-chile | https://youtu.be/ohQKF8NeDwU

## Qué enseña (2-3 líneas)
Este video explica cómo crear y configurar aplicaciones en Mercado Pago Developers, diferenciando entre credenciales de prueba y producción. También cubre la creación de cuentas de prueba (vendedor y comprador) para simular pagos, y detalla cuándo usar Access Token vs Public Key según el tipo de integración (Checkout Pro, Checkout API, Bricks).

## Lecciones accionables
- **Crear una aplicación en Mercado Pago Developers:**
  1. Ingresa a tu panel administrativo en `developers.mercadopago.com`.
  2. Ve a "Tus integraciones" y haz clic en "Crear aplicación".
  3. Completa los campos: nombre (ej. "YouTube tutorial"), solución ("Pagos online"), plataforma ("No" si es integración personalizada).
  4. Selecciona el producto: "Checkout API" si construyes tu propio formulario; "Checkout Pro" si usas el popup directo.
  5. Marca "Autorizar uso de datos personales", resuelve el captcha y haz clic en "Crear aplicación".
- **Obtener credenciales de prueba:**
  - En la aplicación creada, haz clic en "Credenciales de prueba".
  - Copia la **Public Key** (para frontend al crear preferencia) y el **Access Token** (para backend al validar y enviar pagos a la API).
- **Activar credenciales de producción:**
  - En la misma aplicación, ve a "Credenciales de producción".
  - Selecciona el tipo de industria (ej. "Educación, formación"), ingresa la URL del sitio web, autoriza y resuelve el captcha.
  - Reemplaza las credenciales de prueba por las de producción al lanzar la app.
- **Crear cuentas de prueba (test users):**
  - Solo disponible para integraciones con Checkout Pro (no para Checkout API).
  - En "Tus integraciones", selecciona una app que tenga habilitada la sección "Cuenta de prueba".
  - Crea al menos dos cuentas: una **vendedor** (para usar Access Token y APIs) y un **comprador** (para simular compras).
  - Las mismas cuentas de prueba pueden reutilizarse en todos los proyectos; no se pueden eliminar, solo actualizar créditos.
- **Probar pagos:**
  - Usa las tarjetas de prueba proporcionadas por Mercado Pago en la sección "Probar pagos" de la aplicación.
  - Marca "Ya hice la integración" y luego "Ya hice la prueba" para avanzar en la configuración.
- **Webhooks:** No son obligatorios para integraciones en tiempo real (Checkout API), pero pueden configurarse opcionalmente.

## Reglas para agentes
- Usa **Access Token** en el backend y **Public Key** en el frontend cuando integres Checkout API con formulario propio.
- Usa solo **Access Token** si integras directamente el formulario (el token se pasa a la URL de pago).
- Crea **dos cuentas de prueba** (vendedor y comprador) solo si usas Checkout Pro; para Checkout API no están disponibles.
- Nunca uses credenciales de prueba en producción; actívalas explícitamente desde "Credenciales de producción" antes del lanzamiento.
- No intentes eliminar cuentas de prueba existentes; solo puedes actualizar sus créditos.
- Cuando selecciones "¿Usas una plataforma de e-commerce?", responde "No" si la integración es personalizada, incluso si usas WooCommerce o Shopify (a menos que esté en la lista oficial).

## Errores comunes que evita o menciona
- **Confundir credenciales de prueba con producción:** Las de prueba solo sirven en sandbox; al migrar a producción, debes activar y reemplazar por las credenciales de producción.
- **Usar cuentas de prueba en Checkout API:** No están disponibles para este tipo de integración; solo aplican para Checkout Pro.
- **No crear cuentas de prueba separadas:** Para Checkout Pro necesitas un vendedor (dueño de las APIs) y un comprador (simula la compra); no uses la misma cuenta para ambos roles.
- **Olvidar marcar "No" en plataforma de e-commerce:** Si seleccionas "Sí" sin que tu plataforma esté en la lista, la configuración se bloquea.
- **Ignorar la verificación de identidad (ATP):** Al crear la aplicación, puede requerir una verificación adicional; pausa el proceso y completa el ATP antes de continuar.