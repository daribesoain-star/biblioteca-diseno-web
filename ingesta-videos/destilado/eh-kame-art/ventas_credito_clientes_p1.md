# ventas_credito_clientes
**Fuente:** kame | https://help.kameone.cl/es/articles/9817200-manual-gestion-de-credito-para-clientes

## Qué enseña
Enseña a configurar y gestionar el control de crédito para clientes en Kame ERP, incluyendo la asignación de límites de crédito en fichas de clientes, la validación automática al momento de venta, y el bloqueo de emisión de documentos cuando se supera el límite. También cubre la activación de controles adicionales para cotizaciones y pedidos, y el uso de informes de cuentas por cobrar para revisar documentos pendientes.

## Lecciones accionables
- **Configurar crédito en ficha de cliente:** Ir a **Maestros → Fichas**, seleccionar la ficha del cliente, habilitar la sección de crédito e indicar el monto del crédito asignado.
- **Validación al momento de venta:** Si el cliente tiene documentos adeudados que suman más del monto del crédito asignado, el sistema muestra un mensaje de bloqueo. Para no perder cambios, se puede registrar el documento desde el botón verde, pero **no se podrá emitir** (queda no válido) mientras el crédito esté al límite.
- **Revisar documentos pendientes:** Al aparecer el mensaje de morosidad, se puede acceder al informe de **Cuentas por Cobrar** que muestra el detalle de cada documento pendiente.
- **Activar control en cotizaciones o pedidos:** El Super Usuario de la empresa o el equipo de Soporte de Kame puede habilitar opciones especiales para que, al aprobar una cotización o pedido, aparezca el mismo mensaje de bloqueo y no permita aprobar hasta regularizar la deuda. Para solicitar activación, contactar a Soporte.
- **Notificaciones por correo (Consejo PRO):** Cada vez que se apruebe una cotización o pedido, llegará un correo con toda la información, funcionando como un asistente personal de notificaciones.

## Reglas para agentes
- Usa **Maestros → Fichas** para configurar el crédito en la ficha del cliente; no uses otra ruta.
- Cuando el cliente tenga documentos adeudados que superen el monto del crédito, **nunca** emitas el documento; solo regístralo como no válido desde el botón verde.
- Para activar control de crédito en cotizaciones o pedidos, **siempre** solicita la intervención del Super Usuario de la empresa o del equipo de Soporte de Kame; no lo intentes configurar manualmente.
- **Nunca** ignores el mensaje de morosidad al momento de venta; revisa el informe de Cuentas por Cobrar para ver el detalle de documentos pendientes.

## Errores comunes que evita o menciona
- **Perder cambios del documento:** Si se intenta cerrar o salir sin registrar, se pierden los datos. El manual indica usar el botón verde para registrar el documento aunque no se pueda emitir.
- **No activar el control en cotizaciones/pedidos:** Por defecto, el control de crédito solo aplica a ventas directas; para cotizaciones y pedidos se requiere activación expresa por parte del Super Usuario o Soporte.
- **Ignorar las notificaciones por correo:** El manual recomienda usarlas como aliado para estar al tanto de aprobaciones y no perder detalle del proceso de ventas.