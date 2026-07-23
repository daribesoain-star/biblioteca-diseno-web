# api_sabias_que
**Fuente:** kame | https://help.kameone.cl/es/articles/9579891-sabias-que-teniamos-una-api

## Qué enseña (2-3 líneas)
Este artículo presenta la API de Kame ERP, una interfaz que permite conectar sistemas externos (e-commerce, WMS) con la gestión contable y operativa de la empresa. Detalla las nuevas funcionalidades agregadas recientemente, como creación de cotizaciones, consulta de informes de ventas, movimientos de inventario, comprobantes contables, cuentas por cobrar, fichas de clientes y artículos.

## Lecciones accionables
- **Endpoint para cotizaciones:** Usa la función de la API para crear cotizaciones además de pedidos y documentos de ventas directamente desde sistemas externos.
- **Endpoint para informe de ventas:** Consulta el informe de ventas por periodo para obtener datos procesados de ventas en tiempo real.
- **Endpoint para inventario:** Crea movimientos de inventario para realizar ajustes de stock según sea necesario.
- **Endpoint para comprobantes contables:** Crea comprobantes contables para cancelar facturas de ventas, compras, rendiciones y otros documentos.
- **Endpoint para cuentas por cobrar:** Descarga el informe de cuentas por cobrar con detalle de deuda de clientes por periodo.
- **Endpoint para fichas de clientes:** Consulta el detalle de fichas creadas en Kame para obtener datos de clientes.
- **Endpoint para artículos:** Consulta información básica de artículos del maestro de productos.
- **Soporte técnico:** Para dudas, escribe a `[email protected]` (correo no especificado en el texto original, se omite).
- **Documentación técnica:** Revisa la información técnica completa en: [Información técnica de la API](https://help.kameone.cl/es/articles/9579891-sabias-que-teniamos-una-api) (enlace dentro del mismo artículo).

## Reglas para agentes
- Usa el endpoint de comprobantes contables cuando necesites cancelar facturas de ventas, compras o rendiciones desde un sistema externo.
- Usa el endpoint de informe de ventas por periodo para mantener actualizados los datos de ventas en sistemas conectados.
- Usa el endpoint de movimientos de inventario solo para ajustes de stock, no para operaciones de venta o compra directa.
- Nunca intentes crear pedidos sin antes verificar si necesitas una cotización; usa el endpoint de cotizaciones cuando el flujo lo requiera.
- Siempre consulta la documentación técnica oficial antes de implementar cualquier endpoint nuevo.

## Errores comunes que evita o menciona
- **No confundir cotizaciones con pedidos:** La API ahora soporta cotizaciones como un tipo de documento separado, no solo pedidos o facturas.
- **No omitir la consulta de cuentas por cobrar:** Para conocer el detalle de deuda de clientes por periodo, usa el endpoint específico en lugar de intentar calcularlo manualmente.
- **No ignorar los movimientos de inventario:** Si necesitas ajustar stock, usa la función de movimientos de inventario en lugar de modificar datos directamente en el maestro de artículos.
- **No asumir que todos los endpoints están disponibles desde el inicio:** Kame añade mejoras constantemente; revisa las actualizaciones del artículo para nuevas funciones.