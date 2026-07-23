# ventas_informes
**Fuente:** kame | https://help.kameone.cl/es/articles/15668799-manual-informes-de-venta

## Qué enseña (2-3 líneas)
Este manual detalla los 8 informes del módulo de Ventas de KAME ERP, diseñados para analizar cumplimiento tributario, desempeño de vendedores, rentabilidad de productos y control diario de caja. Cada reporte responde a una necesidad específica: desde el Libro de Ventas (alineado con SII) hasta el Cierre Caja (cuadre diario de formas de pago). Proporciona criterios para seleccionar el informe según el objetivo comercial o financiero.

## Lecciones accionables
- **Libro de Ventas:** Incluye resumen correlativo de boletas, facturas, notas de crédito y notas de débito emitidas, detallando montos netos, IVA e impuestos específicos. Útil para auditorías internas y declaración mensual F29.
- **Informe de Ventas:** Permite consultas con límite máximo de un año por rango de tiempo. Incluye detalle de productos vendidos, costos de adquisición/fabricación y margen de contribución real. Filtros dinámicos por categorías, sucursales o productos.
- **Informe de Comisiones:** Desglose detallado de comisiones devengadas por cada vendedor en un rango de tiempo, calculadas sobre todos los documentos emitidos (facturas y boletas) a su nombre.
- **Informe de Cobro de Comisiones:** Muestra comisiones asociadas únicamente a documentos que ya han sido efectivamente recaudados o cobrados en el sistema. Protege liquidez pagando solo por ventas reales.
- **Informe de Guías:** Listado detallado de Guías de Despacho emitidas, indicando explícitamente su estado de facturación (asociadas a factura final o pendientes).
- **Informe Listas de Precios de Ventas:** Visualización de artículos organizados por listas de precios (mayorista, detalle, convenios, promociones).
- **Informe Análisis Comercial Ventas:** Consolidado de montos facturados agrupados por cliente, vendedor, canales de venta o unidades de negocio.
- **Informe Cierre Caja:** Detalle exhaustivo de todos los documentos emitidos durante la jornada y sus formas de pago (efectivo, tarjetas débito/crédito, transferencias). Permite cuadre diario de caja.

## Reglas para agentes
- Usa el **Informe de Ventas** solo cuando el rango de consulta sea menor o igual a un año; nunca excedas ese límite.
- Usa el **Informe de Cobro de Comisiones** en lugar del Informe de Comisiones cuando se requiera verificar que los pagos a vendedores solo se hagan sobre documentos efectivamente cobrados.
- Usa el **Libro de Ventas** para cualquier solicitud de datos tributarios alineados con SII o para preparar la declaración F29.
- Usa el **Informe de Guías** para verificar trazabilidad logística y evitar fugas de inventario; revisa siempre el estado de facturación de cada guía.
- Usa el **Informe Cierre Caja** para cuadrar ingresos diarios; verifica que el dinero físico e ingresos digitales coincidan con el sistema.
- Nunca combines datos del Informe de Comisiones con el Informe de Cobro de Comisiones sin aclarar que el primero incluye documentos no cobrados y el segundo solo cobrados.

## Errores comunes que evita o menciona
- **No usar el Informe de Ventas con rangos mayores a un año:** el sistema tiene un límite máximo de un año por consulta.
- **Confundir el Informe de Comisiones con el de Cobro de Comisiones:** el primero calcula sobre documentos emitidos (incluye no cobrados), el segundo solo sobre documentos efectivamente recaudados; usarlos indistintamente puede generar pagos de comisiones sobre ventas incobrables.
- **Omitir el estado de facturación en el Informe de Guías:** no revisar si una guía está pendiente de factura puede causar fugas de inventario o incumplimiento de plazos legales.
- **No realizar el cuadre diario con el Informe Cierre Caja:** saltarse este paso puede generar brechas entre el dinero físico/digital y lo registrado en el sistema.