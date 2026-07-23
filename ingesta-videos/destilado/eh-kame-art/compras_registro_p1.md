# compras_registro
**Fuente:** kame | https://help.kameone.cl/es/articles/9324521-manual-de-registro-de-compras

## Qué enseña (2-3 líneas)
Este manual explica cómo registrar facturas de compra en el módulo de Registro de Compras de KAME ERP, diferenciando entre compras inventariables (que afectan inventario) y no inventariables. También cubre acciones masivas (pagos y eliminación), importación/exportación de documentos (CSV, XML, Excel) y sincronización con plataformas externas como el SII y Portal Mi Pyme.

## Lecciones accionables
- **Acceso al módulo:** Ingresar al módulo "Registro de Compras" ubicado en el panel lateral izquierdo de la pantalla.
- **Registro manual de factura:**
  - Hacer clic en el botón verde para registrar un nuevo documento.
  - Seleccionar tipo de documento, ej. "Factura Electrónica".
  - Completar campos obligatorios: proveedor, fecha, folio, periodo libro, glosa, tipo de compra, comprador, lista de precios.
  - Elegir si la compra es **inventariable** (mueve inventario) o **no inventariable** (requiere seleccionar un concepto de compras en el detalle).
  - Para compras inventariables: seleccionar la bodega correspondiente.
  - Indicar: cantidades, unidad de negocio, precio unitario, descuento (si aplica).
  - Seleccionar impuestos adicionales si corresponde; marcar "IVA no recuperable" si aplica.
  - Seleccionar condición de venta y registrar el documento.
- **Opciones del menú contextual (por documento):**
  - Adjuntar Archivo: subir PDF relacionado.
  - Nota de Crédito: generar nota de crédito al documento.
  - Copiar documento: duplicar el registro.
  - Nota de Débito: generar nota de débito al documento.
  - Ver comprobante contable: visualizar registro contable desde contabilidad.
  - Generar pago: pagar la factura desde el registro de pagos.
  - Eliminar: eliminar la factura.
- **Acciones masivas:**
  - Seleccionar uno o más documentos en el módulo.
  - Elegir entre: "registrar pagos" o "eliminar documentos".
- **Otras acciones (botón "Otras acciones"):**
  - **Importación de documentos:**
    - Desde archivo CSV: descargar archivo de ejemplo y seguir instrucciones de llenado; cargar el CSV.
    - Desde archivo XML: cargar el XML de cada documento; el documento queda registrado automáticamente.
  - **Exportación de documentos:**
    - Exportar a Excel: exporta los documentos del periodo filtrado.
    - Exportar facturas hacia el portal del SII: exporta a Excel por cada periodo.
  - **Sincronización de documentos:**
    - Desde el registro compra venta del SII: integra documentos de compra que figuren en el Registro de Compra y Venta del SII.
    - Desde el SII (Portal Mi Pyme): integra documentos de compra del Portal Mi Pyme (recomendado si la empresa emite documentos de venta desde el SII).
    - Desde los documentos electrónicos recibidos: integra documentos enviados por proveedores a la casilla de intercambio (recomendado si la empresa emite documentos con Kame).

## Reglas para agentes
- Usa "inventariable" cuando la compra afecte stock y requiera selección de bodega; usa "no inventariable" cuando no afecte inventario y requiera un concepto de compras.
- Nunca omitas la selección de bodega para compras inventariables.
- Siempre selecciona "IVA no recuperable" solo si corresponde según la legislación aplicable.
- Para importación masiva, usa siempre formato CSV con la estructura del archivo de ejemplo proporcionado por el sistema.
- Para sincronización, usa "Desde el SII (Portal Mi Pyme)" si la empresa emite documentos de venta desde el SII; usa "Desde los documentos electrónicos recibidos" si la empresa emite documentos con Kame.
- Nunca exportes documentos sin antes filtrar el periodo deseado en el módulo.

## Errores comunes que evita o menciona
- No seleccionar correctamente si la compra es inventariable o no, lo que puede causar desajustes en el inventario.
- Olvidar seleccionar la bodega para compras inventariables.
- No marcar "IVA no recuperable" cuando corresponde, generando errores contables.
- Usar el tipo de sincronización incorrecto (ej. usar Portal Mi Pyme cuando la empresa emite con Kame, o viceversa).
- No filtrar el periodo antes de exportar a Excel, exportando datos no deseados.
- Cargar archivos CSV sin seguir la estructura del archivo de ejemplo, provocando errores de importación.