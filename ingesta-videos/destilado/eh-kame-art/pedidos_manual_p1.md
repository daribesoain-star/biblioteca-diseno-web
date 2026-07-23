# pedidos_manual
**Fuente:** kame | https://help.kameone.cl/es/articles/9336313-manual-de-pedidos

## Qué enseña
Este manual explica cómo gestionar el ciclo completo de un pedido en KAME ERP: desde su creación y aprobación, pasando por el despacho con guía, hasta la facturación total o parcial. También cubre la importación masiva mediante archivo CSV y la exportación a Excel.

## Lecciones accionables
- **Crear un pedido manual:** Ir al módulo "Registro de Pedidos" → seleccionar tipo de documento final (ej. "Factura Electrónica"). Completar campos: Sucursal, Cliente, Fecha, Fecha de Vigencia, Glosa, Vendedor, Lista de precios, Observaciones. Habilitar "Inventariable" y seleccionar bodega si aplica. Para moneda extranjera, activar configuración, seleccionar moneda e ingresar tipo de cambio.
- **Agregar detalle del pedido:** Si es inventariable, seleccionar artículos; si no, ingresar detalle manualmente. Indicar cantidades, unidad de negocio, precio unitario y/o descuentos. Usar botón "+" en la primera línea para agregar más artículos. Seleccionar condición de venta y registrar.
- **Aprobar pedido:** Desde el menú de opciones del pedido, hacer clic en "Aprobar Pedido". En la ventana emergente, se puede agregar una observación y confirmar.
- **Generar guía de despacho:** Con el pedido aprobado, desde el menú de opciones seleccionar la opción para generar guía. Revisar vista previa, luego registrarla en el sistema o enviarla al SII.
- **Facturar:** Desde el menú de opciones del pedido, generar factura electrónica. Revisar vista previa (mantiene referencias del pedido y guía). Usar botón verde para registrar o botón rojo para enviar al SII.
- **Facturación parcial:** Al generar la factura, cambiar las cantidades a facturar (ej. de 10 a 5 unidades). El estado del pedido quedará como "parcial". Para facturar el resto, desde el menú de opciones registrar la siguiente factura; el sistema mostrará automáticamente la cantidad restante.
- **Exportar a Excel:** En el módulo de pedidos, hacer clic en el botón naranjo. El sistema descargará un archivo Excel en segundo plano.
- **Importar masivamente:** Hacer clic en el botón celeste. Descargar el archivo de ejemplo con formato admitido y leer instrucciones. Cargar el archivo CSV listo en la nube para que el sistema lo procese.

## Reglas para agentes
- Usa "Aprobar Pedido" desde el menú de opciones antes de generar cualquier guía de despacho o factura.
- Siempre revisa la vista previa de la guía de despacho y la factura antes de registrarlas o enviarlas al SII.
- Para facturación parcial, modifica manualmente las cantidades a facturar al generar la factura; no asumas que se factura el total.
- Nunca intentes facturar un pedido sin haber generado primero la guía de despacho asociada.
- Al importar pedidos, usa exclusivamente el formato CSV y sigue el ejemplo descargado del sistema; no uses otros formatos.

## Errores comunes que evita o menciona
- **No aprobar el pedido antes de despachar:** El sistema no permite generar guía de despacho si el pedido no ha sido aprobado primero.
- **Facturar cantidades incorrectas en facturación parcial:** Si no se cambian las cantidades al generar la factura, se facturará el total del pedido en lugar de una parte.
- **No verificar la vista previa antes de emitir:** Registrar o enviar al SII sin revisar puede generar documentos con errores.
- **Ignorar el tipo de documento final:** Seleccionar incorrectamente el tipo de documento (ej. Factura Electrónica vs. otro) al crear el pedido puede causar problemas en la facturación posterior.
- **No usar el formato CSV correcto en importaciones:** Cargar un archivo con formato incorrecto o sin seguir las instrucciones del ejemplo hará que el sistema no procese la importación.