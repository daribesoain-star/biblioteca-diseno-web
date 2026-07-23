# compras_oc_manual
**Fuente:** kame | https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra

## Qué enseña (2-3 líneas)
Enseña a gestionar el ciclo completo de órdenes de compra en KAME ERP: registro, aprobación, recepción, facturación total o parcial, exportación a Excel e importación masiva en CSV. Explica cómo mantener trazabilidad y control de stock, monedas, bodegas y estados del documento.

## Lecciones accionables
- **Registro de OC:** Ir al módulo “Registro de OC” desde el menú principal. Completar: proveedor, fecha, glosa. El folio se asigna automáticamente. La dirección se completa según el proveedor seleccionado.
- **Configuraciones adicionales:** Definir tipo de compra, lista de precios, marcar “inventariable” para que afecte stock, y seleccionar bodega.
- **Moneda y tipo de cambio:** El sistema permite distintas monedas, pero el tipo de cambio debe ingresarse manualmente.
- **Ingreso de productos:** Seleccionar artículos, indicar cantidades y precios. Usar botón “+” para agregar más productos.
- **Forma de pago:** Completar y hacer clic en “Registrar documento” para guardar la OC.
- **Acciones desde menú de opciones:** Consultar seguimiento, agregar comentarios/estados, aprobar OC, visualizar PDF, adjuntar archivos, copiar o eliminar el documento.
- **Aprobación:** Seleccionar “Aprobar OC” desde el menú del documento, ingresar observación si es necesario y confirmar. Para editar una OC ya registrada, primero desaprobarla.
- **Generar recepción:** Seleccionar “Generar recepción” desde la OC aprobada. El sistema lleva al movimiento de entrada de inventario. Confirmar desde el botón verde. La OC queda con estado “recepción completa”.
- **Facturación total:** Seleccionar “Ingresar factura” desde el menú de la OC. El sistema genera borrador con proveedor, productos y valores. Ingresar el folio de la factura y registrar. La OC queda con estado “facturación completa”.
- **Facturación parcial:** Modificar cantidades de productos antes de registrar la factura. El sistema deja la OC con estado “parcial”. Ejemplo: orden de 10 unidades, facturar 5 y completar después.
- **Nota sobre factura ya integrada:** Si la factura ya existe en el sistema, al ingresar el folio desde la OC, el sistema preguntará si se desea sobrescribir (unificar ambos registros en uno solo).
- **Exportar a Excel:** Seleccionar el periodo a consultar y usar la opción de exportación. El sistema descarga automáticamente un archivo Excel con el detalle.
- **Importación masiva:** Usar opción “Importar documentos”. Descargar archivo de ejemplo en formato CSV, completarlo respetando la estructura indicada y cargarlo en el sistema.

## Reglas para agentes
- Usa “Registrar documento” solo después de completar proveedor, fecha, glosa, tipo de compra, lista de precios, bodega, detalle de productos y forma de pago.
- Nunca intentes editar una OC sin desaprobarla primero; primero usa “Aprobar OC” y luego desaprueba si necesitas cambios.
- Siempre ingresa el tipo de cambio manualmente cuando trabajes con monedas distintas a la local.
- Para facturación parcial, modifica las cantidades de productos antes de registrar la factura, no después.
- Cuando la factura ya existe en el sistema, confirma la sobrescritura solo si deseas unificar ambos registros.
- Para importación masiva, respeta estrictamente la estructura del archivo CSV de ejemplo proporcionado por el sistema.

## Errores comunes que evita o menciona
- **Editar OC sin desaprobar:** Si necesitas modificar una orden ya registrada, primero debes desaprobarla; de lo contrario, el sistema no permitirá cambios.
- **No ingresar tipo de cambio manualmente:** El sistema no lo calcula automáticamente; debes ingresarlo a mano al trabajar con monedas extranjeras.
- **Facturar sin haber generado recepción:** El flujo correcto es: registro → aprobación → recepción → facturación. Saltar pasos puede causar inconsistencias en stock y estados.
- **Sobrescribir factura sin verificar:** Si la factura ya existe en el sistema, al ingresar el folio desde la OC, el sistema preguntará si deseas sobrescribir. Asegúrate de que sea la misma factura antes de confirmar.
- **No respetar estructura del CSV en importación masiva:** El sistema proporciona un archivo de ejemplo; cualquier desviación en el formato puede causar errores en la carga.