# ventas_con_inventario
**Fuente:** kame | https://help.kameone.cl/es/articles/10119809-manual-ventas-con-inventario

## Qué enseña
Explica cómo crear artículos inventariables en KAME ERP, registrar su ingreso de stock, y utilizarlos en facturas de venta para mantener actualizado el inventario. También cubre la visualización de datos mediante el informe de ventas.

## Lecciones accionables
- **Crear artículo inventariable:** Ir a **Maestros → Artículos**, hacer clic en el botón verde de creación. Ingresar: nombre, SKU, unidad de medida, precio unitario. Guardar para que aparezca en el panel principal.
- **Requisito previo a la venta:** Realizar un ingreso de stock para el artículo desde el módulo de **Inventario** (ver manual de inventario).
- **Facturar con inventario:** Ir a **Ventas → Nuevo Documento**. Activar el botón **"Inventariable"** y seleccionar la bodega correspondiente. Luego, elegir el artículo en el detalle del documento.
- **Consultar informe de ventas:** Ir a **Informes → Informe de Ventas**. Filtrar por artículo si se desea y emitir el informe para visualizar los servicios facturados.

## Reglas para agentes
- Usa "Inventariable" en el documento de venta solo si el artículo tiene stock ingresado previamente.
- Nunca factures un artículo inventariable sin antes haber registrado su ingreso de stock en el módulo de Inventario.
- Siempre selecciona la bodega correcta al activar el botón de inventariable en la factura.
- Para consultar ventas de un artículo específico, filtra por artículo en el Informe de Ventas.

## Errores comunes que evita o menciona
- **No realizar ingreso de stock antes de la venta:** Si no se registra el ingreso de stock, el artículo no podrá utilizarse correctamente en la factura y el inventario no se actualizará.
- **No activar el botón "Inventariable":** Si no se activa, el sistema no permitirá seleccionar artículos con control de inventario en el documento de venta.
- **No seleccionar la bodega:** Sin bodega asignada, la transacción no podrá descontar stock correctamente.