# Como Configurar Mercado Pago en Woocommerce WordPress
**Fuente:** eh-pagos-chile | https://youtu.be/DHsmoRzqF_Q

## Qué enseña (2-3 líneas)
Este tutorial explica paso a paso cómo integrar Mercado Pago como pasarela de pago en una tienda WooCommerce, permitiendo recibir pagos con tarjetas de crédito, débito y efectivo. Cubre desde la instalación del plugin oficial, la obtención de credenciales de producción y prueba, hasta la configuración de métodos de pago transparentes y retiro de fondos.

## Lecciones accionables
- **Instalar plugin oficial:** Ir a Plugins > Añadir nuevo, buscar "Mercado Pago", instalar y activar "Mercado Pago Payments for WooCommerce" (desarrollado por Mercado Pago)
- **Acceder a configuración:** Ir a WooCommerce > Mercado Pago o WooCommerce > Pagos para ver las opciones: "Checkout Pro", "Compras con tarjetas guardadas o saldo Mercado Pago", "Checkout personalizado" (para débito/crédito) y efectivo
- **Obtener credenciales de producción:** En Mercado Pago, ir a Configuración > Credenciales > Activar credenciales, seleccionar industria (ej. "General Services"), ingresar URL del sitio (ej. "ocelotcafe.com"), autorizar y copiar "Public Key" y "Access Token" de la sección "Credenciales de producción"
- **Obtener credenciales de prueba:** En la misma pantalla de credenciales, cambiar a la pestaña "Credenciales de prueba" y copiar los valores correspondientes
- **Pegar credenciales en WordPress:** En WooCommerce > Mercado Pago, pegar Public Key y Access Token de producción en los campos correspondientes, hacer clic en "Guardar y continuar"; repetir para credenciales de prueba
- **Configurar nombre y categoría:** En el paso 2, ingresar nombre del negocio (ej. "Bear Coffee"), identificador de actividad (ej. "MP") y categoría (ej. "General Services"), guardar
- **Configurar método de pago con tarjeta:** Seleccionar "Checkout personalizado" > "Configurar", activar "checkout transparente" (formulario en el sitio), personalizar título (ej. "Tarjeta de Débito y Crédito"), activar conversión de moneda automática y "pago más rápido con tarjetas guardadas", guardar cambios
- **Configurar tasas y comisiones:** En Mercado Pago, ir a la sección "checkouts" > expandir, elegir entre tasa instantánea (ej. 3.49% + 4 pesos MXN) o tasa diferida (ej. 2.95% a 30 días), guardar
- **Activar modo prueba:** En WooCommerce > Mercado Pago, cambiar "Modo de operación" a "Prueba", guardar cambios
- **Probar con tarjetas de prueba:** Usar las tarjetas de prueba proporcionadas por Mercado Pago (enlace en la configuración), agregar producto al carrito, seleccionar pago con tarjeta, ingresar datos de prueba (número, titular, fecha de vencimiento, código de seguridad), elegir cuotas y colocar pedido
- **Configurar pagos en efectivo:** En WooCommerce > Pagos, seleccionar método de efectivo, activar, configurar título, elegir métodos disponibles (ej. OXXO, BBVA, Santander), definir días de vigencia para el pago (ej. 3 días), guardar
- **Retirar dinero:** En Mercado Pago, ir a "Tu dinero" > "Retirar dinero", ingresar monto (mínimo 25 unidades de moneda local), transferir a cuenta bancaria vinculada
- **Activar cuotas sin interés:** En Mercado Pago, ir a "Vender en cuotas sin interés", seleccionar cantidad de meses a ofrecer (ej. hasta 12 meses), guardar

## Reglas para agentes
- Usa el plugin oficial "Mercado Pago Payments for WooCommerce" cuando integres Mercado Pago en WooCommerce
- Usa credenciales de producción solo cuando la tienda esté en modo ventas reales; usa credenciales de prueba para testear
- Nunca mezcles credenciales de producción con modo prueba ni viceversa
- Nunca dejes la tienda en modo prueba cuando estés recibiendo pagos reales; cambia a "Ventas" (producción)
- Usa el checkout transparente cuando quieras que el cliente ingrese datos de tarjeta en tu sitio; usa Checkout Pro si prefieres redirigir a Mercado Pago para mayor confianza del cliente
- Verifica que el nombre del titular de la cuenta bancaria coincida exactamente con el de la cuenta de Mercado Pago al vincularla

## Errores comunes que evita o menciona
- Confundir credenciales de producción con las de prueba al pegarlas en los campos incorrectos, lo que impide que funcione el pago
- Olvidar cambiar el modo de operación de "Prueba" a "Ventas" (producción) cuando la tienda ya está en funcionamiento real
- No activar las credenciales correctamente en Mercado Pago (seleccionar industria, autorizar, resolver captcha)
- No configurar los días de vigencia para pagos en efectivo, lo que puede dar plazos incorrectos al cliente
- No vincular una cuenta bancaria en Mercado Pago para poder retirar los fondos recibidos