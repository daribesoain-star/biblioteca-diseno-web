# cotizaciones_manual
**Fuente:** kame | https://help.kameone.cl/es/articles/10517925-manual-de-cotizaciones
## Qué enseña
El manual explica cómo crear, gestionar y dar seguimiento a cotizaciones en KAME ERP, cubriendo el ciclo completo desde la propuesta hasta su conversión en pedidos, facturas/boletas o guías de despacho. También detalla las acciones disponibles tras la aprobación o rechazo de una cotización.

## Lecciones accionables
- **Crear una cotización:** Ingresar al módulo de Cotizaciones → botón verde "Nuevo". Completar: ficha del cliente, fecha de vigencia, glosa, vendedor, lista de precio, observaciones técnicas.
- **Indicar tipo de inventario:** Marcar si la cotización es "inventariable" o no. Si es inventariable, seleccionar la bodega de salida de productos.
- **Agregar detalle de artículos:** Ingresar artículos, cantidades, seleccionar Unidad de Negocio, editar Precio Unitario y añadir Descuentos si es necesario.
- **Seleccionar condición de venta:** Elegir entre "Contado" o "Crédito".
- **Registrar cotización:** Presionar botón verde para guardar.
- **Acciones desde el menú de opciones (lista de cotizaciones):**
  - **Aprobar Cotizaciones:** Aprueba la cotización para generar documento de venta y guía de despacho.
  - **Generar PDF de Cotización:** Visualiza PDF en español.
  - **Generar PDF Cotización Inglés:** Visualiza PDF en inglés.
  - **Adjuntar archivos:** Permite subir archivos al registro.
  - **Copiar Documento:** Genera una nueva cotización con la misma información.
  - **Cambiar a Boleta Electrónica:** Si se seleccionó Factura por error, permite cambiar a Boleta.
  - **Agregar Seguimiento:** Añade comentarios como seguimiento del registro.
  - **Enviar Cotización por Mail:** Envía la cotización a los correos configurados en la ficha del cliente.
  - **Ver Seguimiento:** Visualiza los seguimientos ingresados.
  - **Rechazar Cotización:** Rechaza la cotización; se conserva el registro pero no permite continuar con la venta.
  - **Eliminar:** Elimina todo el registro.
- **Acciones tras aprobación:**
  - **Generar Documento de Pedido:** Crea un pedido para gestionar la venta.
  - **Generar Documento de Venta:** Emite Factura/Boleta al SII.
  - **Generar Guía de Despacho:** Emite la Guía de Despacho (este documento mueve el inventario y genera la salida de productos).
  - **Desaprobar Cotización:** Permite corregir datos desaprobando la cotización.
- **Rechazo de cotización:** Seleccionar un tipo de rechazo (creable desde Maestros > Tipo de rechazo) y añadir observación. El rechazo se puede reversar desde el menú de opciones.

## Reglas para agentes
- Usa "inventariable" solo cuando la cotización implique salida de productos de bodega; si no, desmarca esa opción.
- Cuando la cotización sea inventariable, siempre selecciona la bodega de salida antes de completar el detalle.
- Para mover inventario (generar salida de productos), usa exclusivamente la acción "Generar Guía de Despacho", no el documento de venta ni el pedido.
- Si necesitas corregir datos después de aprobar, usa "Desaprobar Cotización" antes de modificar; nunca edites directamente una cotización aprobada.
- Para enviar la cotización por correo, asegúrate de que los correos estén configurados en la ficha del cliente; de lo contrario, el envío fallará.
- Cuando rechaces una cotización, siempre selecciona un tipo de rechazo existente o créalo primero en Maestros > Tipo de rechazo.
- Para cambiar de Factura a Boleta después de creada la cotización, usa la acción "Cambiar a Boleta Electrónica"; no es posible el cambio inverso.

## Errores comunes que evita o menciona
- **No confundir el documento que mueve inventario:** La Guía de Despacho es la que genera la salida de productos, no la Factura/Boleta ni el Pedido.
- **No eliminar cotizaciones rechazadas si se necesita mantener trazabilidad:** El rechazo se puede reversar, conservando el registro.
- **No olvidar seleccionar la bodega cuando la cotización es inventariable:** Si no se selecciona, el sistema no podrá gestionar la salida de productos.
- **No enviar cotización por mail sin verificar correos en ficha del cliente:** El envío solo funciona si hay correos configurados previamente.
- **No modificar una cotización aprobada directamente:** Siempre desaprobar primero, luego editar y volver a aprobar.