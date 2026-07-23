# api_postman_oficial
**Fuente:** kame | https://documenter.getpostman.com/view/8240263/T17FCpKj
## Qué enseña
La colección oficial "API Kame ERP" (31 endpoints) documenta autenticación Auth0, emisión de documentos (factura/boleta/guía/NC/cotización/pedido), inventario, contabilidad, maestros y cobros/pagos, con payloads JSON, rate limit y formato de errores. Verificado en vivo 2026-07-16.
## Lecciones accionables
- **Base URL oficial:** `https://api.kameone.cl` (host vivo tras Cloudflare). `api.kame.cl` NO resuelve en DNS — es un error frecuente.
- **Autenticación Auth0 client_credentials:** `POST https://api.kameone.cl/oauth/token`, `Content-Type: application/json`, body `{"client_id":"...","client_secret":"...","audience":"https://api.kameone.cl/api","grant_type":"client_credentials"}`. Devuelve token Bearer con vigencia **24 horas** → renovar diario automatizado.
- **Credenciales por empresa:** el Cliente ID + Cliente Secret viven en "Datos de empresa → Integración API" — cada RUT emisor tiene sus propias llaves.
- **Rate limit oficial: 180 peticiones por minuto** ("las cuotas se van a ir ampliando a medida que pasa el tiempo"). ~3 req/seg sostenidas.
- **Emitir venta (boleta/factura/guía):** `POST /api/Documento/addVenta` — "Crea documentos de venta (Factura, Boleta, Guía de despacho)". El tipo se elige en el campo `Documento` (ej. "Factura Electrónica"; para boleta "Boleta Electrónica"=39, "Boleta Exenta Electrónica"=41 — string exacto de boleta pendiente de confirmar con soporte).
- **Campos clave del JSON addVenta:** `Usuario` (email Kame, auditoría) · `Documento` (tipo DTE) · `TipoDocumento:"VENTA"` (fijo) · `Rut`+datos cliente (si el RUT no existe, crea la ficha automáticamente) · `Folio:""` (Kame asigna el correlativo SII automáticamente) · `Fecha` · `FormaPago` ("1" contado / "2" crédito + array `Cuotas`) · `Afecto/Exento/Descuento/ValorImpto1/total` (montos SIN decimales, redondeo SII .5↑) · `Bodega` + `EsInventariable:"S"` · `Vendedor` (debe existir en el maestro) · `Detalle[]` (Descripcion, Cantidad, PrecioUnitario, Descuento, Total, UnidadMedida, UnidadNegocio, Articulo/SKU, TipoArticulo) · `Referencia` con códigos SII (Orden de Compra=801). La API valida que la suma de líneas cuadre con el encabezado.
- **Impuestos específicos:** addVenta soporta hasta 4 impuestos además del IVA, incluyendo "IVA ANTICIPADO FAENAMIENTO CARNE" e "IVA ANTICIPADO CARNE".
- **Nota de crédito:** `POST /api/Documento/addNotaCredito` (código referencia '1' anulación, '3' corrige monto).
- **Cotización / Pedido:** `POST /api/Documento/addCotizacion` · `POST /api/Documento/addPedido`.
- **Consultar venta:** `GET /api/Documento/getVenta/{documento}/{numero}`.
- **PDF del DTE:** `GET /api/Documento/getDocumentoPDF/{rutEmisor}/{tipoDocumento}/{folio}` — tipos 33, 34, 56, 61, 39, 41, 52; solo disponible si el documento ya fue ACEPTADO por el SII (sirve de señal de aceptación).
- **XML del DTE:** `GET /api/Documento/getDocumentoXML/{rutEmisor}/{tipoDocumento}/{folio}` (trae el TED/timbre electrónico).
- **Link de pago KamePay:** `GET /api/Documento/getLinkKamePay/{documento}/{folio}` (tipos permitidos incluyen Boleta Electrónica).
- **Informe de ventas:** `GET /api/Documento/getInformeVentas?fechaDesde&fechaHasta&page&per_page` — períodos MENSUALES máximo.
- **Orden de compra:** `GET /api/Documento/getOrdenCompra/{numero}` — NO se pueden CREAR OC por API, solo consultar.
- **Inventario:** `GET /api/Inventario/getStock` · `getStockBodega/{bodega}` · `getStockArticulo/{articulo}` · `getStockArticuloByBodega`; `POST /api/Inventario/addInventario` (movimiento) · `addArticulo`; `PUT /api/Inventario/updArticulo/{SKU}`.
- **Contabilidad:** `POST /api/Contabilidad/addComprobante` · `GET /api/Contabilidad/getCuentaxCobrar` · `getCuentaxPagar`.
- **Maestros:** `GET /api/Maestro/getListFicha?rut=` (clientes) · `getListArticulo?Sku=` · `getListVendedor` · `getListUnidadNegocio` · `POST /api/Maestro/addUnidadNegocio`.
- **Cobros/Pagos:** `GET /api/Cobro/getInformeCobros` · `GET /api/Pago/getInformePagos`.
- **Formato de error (verificado en vivo, sin credenciales, 2026-07-16):** `{"Estado":"Error","Id":…,"Fecha":…,"Error":[{"MemberNames":[…],"ErrorMessage":…}]}`.
- **NO hay webhooks** en los 31 endpoints ni en el centro de ayuda (0 resultados). Patrón disponible: polling (getVenta, getInformeVentas mensual, getDocumentoPDF como señal de aceptación SII).
## Reglas para agentes
- Usa SIEMPRE base `https://api.kameone.cl` — nunca `api.kame.cl` (no resuelve).
- Renueva el token Auth0 cada <24h; cachéalo, no pidas uno por request.
- Para emitir boleta deja `Folio:""` y monta los montos SIN decimales.
- Antes de emitir por API, verifica que el vendedor y (si inventariable) el SKU/bodega existan en el maestro de esa empresa.
- No dependas de webhooks: implementa polling con backoff respetando 180 req/min.
## Errores comunes que evita o menciona
- Usar `api.kame.cl` (host inexistente) → fallo de DNS.
- Enviar montos con decimales o folio manual en boleta → rechazo de validación.
- Asumir notificación push de aceptación SII: NO existe, hay que consultar getDocumentoPDF.
