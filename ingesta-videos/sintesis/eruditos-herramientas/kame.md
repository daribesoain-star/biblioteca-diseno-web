## Doctrina destilada (ingesta 2026-07-16)
> 60 fuentes destiladas (docs oficiales + tutoriales). Cada regla con su fuente.

### API y Autenticación
- Usa SIEMPRE `https://api.kameone.cl` como endpoint base — nunca `api.kame.cl` (no resuelve en DNS). (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Autenticación vía Auth0: `POST https://api.kameone.cl/oauth/token` con `Content-Type: application/json` y body `{"client_id":"...","client_secret":"...","audience":"https://api.kameone.cl/api","grant_type":"client_credentials"}`. El token tiene vigencia de **24 horas** → renovar diario automatizado. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Obtén credenciales API en Kame: **Datos de Empresa** → sección **Integración API**. Copia **Cliente ID** y **Cliente Secret**. (Fuente: api_como_integrar — https://help.kameone.cl/es/articles/13779849-como-integrar-tu-sistema-con-la-api)
- Rate limit oficial: 180 peticiones por minuto (~3 req/seg sostenidas). (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- No hay webhooks disponibles en los 31 endpoints ni en el centro de ayuda. Patrón disponible: polling (getVenta, getInformeVentas mensual, getDocumentoPDF como señal de aceptación SII). (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Formato de error de la API: `{"Estado":"Error","Id":…,"Fecha":…,"Error":[{"MemberNames":[…],"ErrorMessage":…}]}`. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Regla de oro: Simula el ingreso manual de una venta en Kame y usa esos mismos datos como referencia para construir tu JSON. Si funciona en la pantalla, funcionará en tu código. (Fuente: api_como_dominar — https://help.kameone.cl/es/articles/14005952-como-dominar-la-api-con-kame)

### Documentos Tributarios Electrónicos (DTE/CAF)
- Emitir venta por API: `POST /api/Documento/addVenta`. El tipo de DTE se elige en el campo `Documento` (ej. "Factura Electrónica"; para boleta "Boleta Electrónica"=39, "Boleta Exenta Electrónica"=41). (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- En addVenta, deja el campo `Folio:""` — Kame asigna el correlativo SII automáticamente. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Envía montos (Afecto, IVA, Total) **sin decimales**; Kame aplica redondeo SII (.5 hacia arriba, .4 hacia abajo). (Fuente: api_manual_integracion — https://help.kameone.cl/es/articles/12813902-manual-de-integracion-con-la-api)
- addVenta soporta hasta 4 impuestos adicionales al IVA, incluyendo "IVA ANTICIPADO FAENAMIENTO CARNE" e "IVA ANTICIPADO CARNE". (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Para el módulo de ventas, usar siempre el valor fijo `"venta"` en el campo Tipo de Documento. (Fuente: api_como_dominar — https://help.kameone.cl/es/articles/14005952-como-dominar-la-api-con-kame)
- Si usas "Casa Matriz" por defecto, el campo Sucursal debe quedar **vacío**. (Fuente: api_como_dominar — https://help.kameone.cl/es/articles/14005952-como-dominar-la-api-con-kame)
- Para relacionar el documento con una Orden de Compra, usa el código 801 en el campo de referencias. (Fuente: api_como_integrar — https://help.kameone.cl/es/articles/13779849-como-integrar-tu-sistema-con-la-api)
- Endpoint para PDF del DTE: `GET /api/Documento/getDocumentoPDF/{rutEmisor}/{tipoDocumento}/{folio}` — tipos 33, 34, 56, 61, 39, 41, 52; solo disponible si el documento ya fue ACEPTADO por el SII. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Endpoint para XML del DTE: `GET /api/Documento/getDocumentoXML/{rutEmisor}/{tipoDocumento}/{folio}` (trae el TED/timbre electrónico). (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Endpoint para Nota de crédito: `POST /api/Documento/addNotaCredito` (código referencia '1' anulación, '3' corrige monto). (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Gestión de Folios (CAF): Solo usuarios administradores pueden solicitar folios. Ruta: pestaña "Electrónico" → "Solicitud CAF SII". Los folios tienen vigencia de 6 meses; si no se usan, vencen y deben anularse manualmente en el portal SII. (Fuente: elec_folios_caf — https://help.kameone.cl/es/articles/13882092-gestion-de-folios-caf-como-solicitar-documentos-electronicos)
- Certificado Digital: Debe estar en formato PFX. Carga en botón rojo "Electrónico" → "Certificado Digital" → "Nuevo certificado", ingresa RUT del dueño y contraseña, arrastra el archivo .PFX. (Fuente: elec_certificado_digital — https://help.kameone.cl/es/articles/12961660-como-cargar-tu-certificado-digital)
- Si el RUT no existe en la API, se crea automáticamente la ficha del cliente. Si ya existe, no se sobrescriben datos en maestros. (Fuente: api_manual_integracion — https://help.kameone.cl/es/articles/12813902-manual-de-integracion-con-la-api)

### Ventas, Cotizaciones y Pedidos
- Crear cotización: Módulo Cotizaciones → botón verde "Nuevo" → completar ficha del cliente, fecha vigencia, glosa, vendedor, lista de precio, marcar "inventariable" o no → agregar artículos con cantidades y precios → seleccionar condición de venta → guardar. (Fuente: cotizaciones_manual — https://help.kameone.cl/es/articles/10517925-manual-de-cotizaciones)
- Acciones tras aprobar cotización: "Generar Documento de Pedido", "Generar Documento de Venta" (emite al SII), "Generar Guía de Despacho". Para corregir, primero "Desaprobar Cotización". (Fuente: cotizaciones_manual — https://help.kameone.cl/es/articles/10517925-manual-de-cotizaciones)
- Crear pedido manual: `"Registro de Pedidos"` → seleccionar tipo de documento final (ej. "Factura Electrónica"), completar campos, habilitar "Inventariable" y seleccionar bodega si aplica. (Fuente: pedidos_manual — https://help.kameone.cl/es/articles/9336313-manual-de-pedidos)
- Para facturación parcial desde pedido: cambiar las cantidades al generar la factura; el estado del pedido quedará como "parcial". (Fuente: pedidos_manual — https://help.kameone.cl/es/articles/9336313-manual-de-pedidos)
- Endpoints API: `POST /api/Documento/addCotizacion`, `POST /api/Documento/addPedido`, `GET /api/Documento/getVenta/{documento}/{numero}`. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Configurar crédito en ficha de cliente: `Maestros → Fichas`, habilitar sección de crédito e indicar monto asignado. Si el cliente supera el límite, el sistema bloquea la emisión. (Fuente: ventas_credito_clientes — https://help.kameone.cl/es/articles/9817200-manual-gestion-de-credito-para-clientes)
- Informe de Ventas: permite consultas con límite máximo de un año por rango de tiempo. Incluye detalle de productos, costos y margen de contribución. (Fuente: ventas_informes — https://help.kameone.cl/es/articles/15668799-manual-informes-de-venta)
- Informe de Comisiones: desglose de comisiones por vendedor sobre documentos emitidos. Informe de Cobro de Comisiones: solo documentos efectivamente cobrados. (Fuente: ventas_informes — https://help.kameone.cl/es/articles/15668799-manual-informes-de-venta)

### Compras y Órdenes de Compra
- Registrar Orden de Compra: Módulo "Registro de OC" → completar proveedor, fecha, glosa, tipo de compra, lista de precios, marcar "inventariable" si afecta stock, seleccionar bodega, ingresar artículos → "Registrar documento". (Fuente: compras_oc_manual — https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra)
- Aprobar OC: desde menú de opciones → "Aprobar OC". Para editar, primero desaprobar. (Fuente: compras_oc_manual — https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra)
- Generar recepción desde OC aprobada: "Generar recepción" → movimiento de entrada de inventario → confirmar. OC queda con estado "recepción completa". (Fuente: compras_oc_manual — https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra)
- Facturar OC (total o parcial): desde menú de OC → "Ingresar factura" → sistema genera borrador → ingresar folio → registrar. Para parcial, modificar cantidades antes de registrar. (Fuente: compras_oc_manual — https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra)
- Importar OC masivamente: usar "Importar documentos" → descargar CSV ejemplo → completar respetando estructura → cargar. (Fuente: compras_oc_manual — https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra)
- Registrar factura de compra manual: Módulo "Registro de Compras" → botón verde → seleccionar tipo → completar proveedor, fecha, folio, periodo libro, glosa, tipo de compra → elegir "inventariable" (con bodega) o "no inventariable" (con concepto de compras) → ingresar cantidades y precios → registrar. (Fuente: compras_registro — https://help.kameone.cl/es/articles/9324521-manual-de-registro-de-compras)
- Sincronizar documentos de compra: desde "Otras acciones" → "Sincronización de documentos". Opciones: "Desde el registro compra venta del SII", "Desde el SII (Portal Mi Pyme)", "Desde los documentos electrónicos recibidos". (Fuente: compras_registro — https://help.kameone.cl/es/articles/9324521-manual-de-registro-de-compras)
- Endpoint API para OC: `GET /api/Documento/getOrdenCompra/{numero}` — NO se pueden CREAR OC por API, solo consultar. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)

### Inventario
- Endpoints API: `GET /api/Inventario/getStock`, `getStockBodega/{bodega}`, `getStockArticulo/{articulo}`, `getStockArticuloByBodega`; `POST /api/Inventario/addInventario` (movimiento), `addArticulo`; `PUT /api/Inventario/updArticulo/{SKU}`. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Fórmula stock futuro: `Stock futuro = Stock actual - Cantidades en pedidos aprobados + Cantidades en OC aprobadas`. (Fuente: inventario_stock_futuro — https://help.kameone.cl/es/articles/10178649-manual-stock-futuro)
- Fórmula stock presente: `Stock actual - cantidades ingresadas en pedidos aprobados`. (Fuente: inventario_stock_presente — https://help.kameone.cl/es/articles/10166893-manual-stock-presente)
- Para habilitar stock futuro/presente: Super Usuario → Perfil → Opciones Avanzadas → Inventario → activar opción correspondiente. (Fuente: inventario_stock_futuro — https://help.kameone.cl/es/articles/10178649-manual-stock-futuro)
- Importador de inventario: columnas obligatorias del Excel: `Tipo de Movimiento` (ENTRADA/SALIDA/TRASPASO), `Motivo de Movimiento`, `Folio`, `Bodega de Entrada/Salida`, `Ficha` (formato xx.xxx.xxx-x), `Fecha` (dd/mm/aaaa), `SKU`, `Cantidad`. Para Folio Automático: escribir `S` o `A` en columna correspondiente. (Fuente: inventario_importador — https://help.kameone.cl/es/articles/11818503-como-completar-el-importador-de-inventario)
- Carpeta de Importación: crear desde OC inventariable y aprobada → menú de opciones → "Crear Carpeta de Importación". Al cerrar, el sistema traslada el costo total a la recepción y revaloriza existencias. (Fuente: inventario_carpeta_importacion — https://help.kameone.cl/es/articles/10774870-manual-carpeta-de-importacion)

### Contabilidad y Conciliación Bancaria
- Endpoints API: `POST /api/Contabilidad/addComprobante`, `GET /api/Contabilidad/getCuentaxCobrar`, `getCuentaxPagar`. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- Crear cuenta contable: `Maestros → Plan de Cuentas` → localizar "cuenta madre" (terminación en 00) → icono verde → asignar nombre → registrar. (Fuente: contabilidad_maestro — https://help.kameone.cl/es/articles/9761104-manual-maestro-de-contabilidad)
- Crear comprobante contable manual: Módulo Contabilidad → "Nuevo Comprobante" → completar Fecha, Tipo (Ingreso/Egreso/Traspaso), Folio, Comentario, Detalle (cuentas con Debe/Haber) → "Registrar comprobante". (Fuente: contabilidad_manual — https://help.kameone.cl/es/articles/9297989-manual-de-contabilidad)
- Cierre contable: "Cierres" → seleccionar meses → confirmar. Solo administrador. Mes cerrado bloquea nuevos movimientos. (Fuente: contabilidad_manual — https://help.kameone.cl/es/articles/9297989-manual-de-contabilidad)
- Conciliación bancaria - Activar cuenta: Plan de Cuentas → seleccionar cuenta del banco → marcar "Solicita datos de conciliación bancaria". (Fuente: Webinar Conciliacion Bancaria (Kame) — https://youtu.be/E9Sggwln4-o)
- Conciliación bancaria - Sincronizar cartola: Módulo Conciliación Bancaria → "Nueva Cartola" → "Sincronizar con el banco" (requiere integración contratada). (Fuente: Webinar Conciliacion Bancaria (Kame) — https://youtu.be/E9Sggwln4-o)
- Conciliación bancaria - Importar desde Excel: "Nueva Cartola" → "Importar" → cargar Excel con 5 campos (fecha, descripción, monto, etc.). Kame provee plantilla. (Fuente: Webinar Conciliacion Bancaria (Kame) — https://youtu.be/E9Sggwln4-o)
- Conciliación bancaria - Conciliar: "Conciliar automáticamente" para cruzar movimientos del mayor contable con cartola bancaria. (Fuente: Webinar Conciliacion Bancaria (Kame) — https://youtu.be/E9Sggwln4-o)
- Registro de Cobros: marcar factura pendiente → "Generar cobro" → seleccionar banco → registrar. Kame crea comprobante contable automático. (Fuente: Webinar Conciliacion Bancaria (Kame) — https://youtu.be/E9Sggwln4-o)

### Punto de Venta (POS)
- Para iniciar venta POS, primero realizar Apertura de Caja: `POS → Apertura de Cajas` → "Nueva Apertura de Caja" → completar Sucursal, Caja, Monto de Apertura, Comentario. (Fuente: pos_apertura_cierre_caja — https://help.kameone.cl/es/articles/11840191-manual-de-pos-apertura-y-cierre-de-caja)
- Para generar venta: `POS → Ingreso de Ventas` → seleccionar sucursal, caja, vendedor → elegir tipo documento (Boleta/Factura) → ingresar cliente o usar genérico → agregar artículos → seleccionar medio de pago → "Generar Documento". (Fuente: pos_ingreso_venta — https://help.kameone.cl/es/articles/11853851-manual-de-pos-ingreso-de-venta)
- Para editar cobro de documento POS: `POS → Listado de Documentos` → ubicar documento → menú de opciones → "Editar pago" → elegir forma de pago correcta → registrar nuevamente. (Fuente: pos_editar_cobro — https://help.kameone.cl/es/articles/11853899-manual-de-pos-como-editar-el-cobro-de-un-documento)
- Para devoluciones/cambios: ir a `Listado de Documentos` → buscar venta POS → menú de opciones → "Devolución / Cambio". En cambio, seleccionar obligatoriamente sucursal y bodega de salida. (Fuente: pos_devoluciones — https://help.kameone.cl/es/articles/14963425-manual-de-pos-devoluciones)
- Crear sucursal POS: `Maestros → Sucursales POS` → botón verde → completar obligatoriamente: Nombre, Dirección, Comuna, Ciudad, Teléfono, Código SII, Unidad de Negocio, Lista de Precio, Bodega. (Fuente: pos_maestro — https://help.kameone.cl/es/articles/15889516-manual-maestro-de-pos)
- Crear medio de pago: `Medios de Pago` → botón verde → indicar Nombre, Tipo (débito, crédito, transferencia, etc.) y asociar a Forma de Pago existente. Orden: primero crear formas de pago, luego medios de pago. (Fuente: pos_medios_pago — https://help.kameone.cl/es/articles/12113574-manual-de-pos-medios-de-pago)
- Regla de cuenta contable por tipo de medio de pago: Transferencia → cuenta con análisis de conciliación; Cheque → cuenta con análisis de ficha y documento; Débito/Crédito/Efectivo → sin análisis de conciliación. (Fuente: pos_medios_pago — https://help.kameone.cl/es/articles/12113574-manual-de-pos-medios-de-pago)

### Remuneraciones y Boletas de Honorarios
- Para registrar boleta de honorarios manualmente: `Módulo 'Boletas de Honorario'` → `'Boleta Honorarios'` → `'Crear nuevo Honorario'`, completar campos (Fecha, Tipo: honorario profesional o prestación de servicio, Folio, Ficha, Período del libro, Unidad de negocio), ingresar monto bruto primero, seleccionar tipo de retención (común, notarial, directorio o retención adicional) y guardar. (Fuente: honorarios_boleta — https://help.kameone.cl/es/articles/10629211-boleta-de-honorarios)
- Para sincronizar boletas con SII: `Módulo 'Boletas de Honorario'` → `'Boleta Honorarios'` → `'Sincronizar con SII'`, elegir unidad de negocio y período, hacer clic en 'Sincronizar'. Requisito: credenciales SII configuradas. (Fuente: honorarios_boleta — https://help.kameone.cl/es/articles/10629211-boleta-de-honorarios)
- Para crear fichas de trabajadores: `Maestros → Fichas` → botón verde "Nueva Ficha". Campos obligatorios: RUT, Razón Social, Giro, Dirección, Comuna, Ciudad, Teléfono, Email. Habilitar "Es Empleado". (Fuente: remuneraciones_proceso — https://help.kameone.cl/es/articles/13168519-manual-domina-el-proceso-de-remuneraciones)
- Para calcular sueldos: en `Acciones Masivas` del módulo Remuneraciones → "Calcular Sueldos" → elegir período → botón azul. El sistema actualiza cálculos de todas las remuneraciones. (Fuente: remuneraciones_proceso — https://help.kameone.cl/es/articles/13168519-manual-domina-el-proceso-de-remuneraciones)
- Para generar Previred: módulo Remuneraciones → "Acciones Masivas" → "Generar Previred" → indicar mes → generar → descargar archivo plano. (Fuente: remuneraciones_imposiciones — https://help.kameone.cl/es/articles/14708594-manual-declaraciones-de-imposiciones-y-libro-de-remuneraciones)
- Para generar LRE: módulo Remuneraciones → "Acciones Masivas" → "Generar LRE" → seleccionar periodo → descargar CSV. Revisar que fechas estén en formato DD/MM/AAAA antes de subir a DT. (Fuente: remuneraciones_imposiciones — https://help.kameone.cl/es/articles/14708594-manual-declaraciones-de-imposiciones-y-libro-de-remuneraciones)
- Para cerrar período de remuneraciones (solo administrador): módulo Remuneraciones → botón de cierre → desactivar switch. Período cerrado no permite modificaciones. (Fuente: remuneraciones_proceso — https://help.kameone.cl/es/articles/13168519-manual-domina-el-proceso-de-remuneraciones)

### Usuarios, Permisos y Planes
- Para gestionar usuarios y accesos: `Perfil → Usuarios y Accesos` (solo administradores). Se muestra Super Usuario, usuarios contratados y disponibles. (Fuente: usuarios_accesos — https://help.kameone.cl/es/articles/10581316-usuarios-y-accesos)
- Para restringir acceso a módulo: en desglose de accesos, hacer clic en icono del módulo. Tipos: Acceso completo, Sin acceso, Solo visualización. (Fuente: usuarios_accesos — https://help.kameone.cl/es/articles/10581316-usuarios-y-accesos)
- Permisos funcionales disponibles para: Ventas, Documentos, Compras, Electrónico, Cobranza, OC, Producción, RRHH, Cotizaciones, Pedidos, Honorarios, Requisiciones, Inventario, Rendiciones, Remuneraciones, Contabilidad, Maestros, Informes, Panel de control, Menú Electrónico. (Fuente: permisos_funcionales — https://help.kameone.cl/es/articles/10581318-permisos-funcionales)
- Planes y precios (sin IVA):
  - **KAME FREE:** Gratis de por vida. 1 usuario, 1 empresa. Incluye sincronización SII, dashboard, ventas, compras, cobros/pagos, contabilidad, flujo de caja.
  - **MI PYME:** UF 1/mes (anual UF 12/año). 1 usuario, 1 empresa. Incluye FREE + conciliación bancaria, IA, inventario, presupuesto, remuneraciones/honorarios, licitaciones, factoring, cobranza, cotizaciones/pedidos, facturación programada, OC.
  - **KAME ONE:** UF 1,83/mes (anual UF 22/año). 1 usuario, 1 empresa. Incluye MI PYME + facturación electrónica (PDF+XML). Capacitación 3h.
  - **KAME ERP:** UF 3,17/mes (anual UF 38/año). 2 usuarios, 1 empresa. Incluye KAME ONE + certificación electrónica, 3 módulos opcionales. Capacitación 6h.
  - **KAME OFERTA DEL MES:** UF 5/mes (anual UF 60/año). 5 usuarios, 1 empresa. Incluye ERP + conciliación bancaria, 1 módulo a elección, 3 tokens bancarios.
  - **KAME POS:** UF 1/mes (anual UF 12/año). 1 usuario, 1 empresa. 1.500 docs/mes (plan mensual) o 20.000 docs/año (plan anual). (Fuente: web_planes_precios — https://www.kame.cl/planes-precios-siigo-chile)
- Implementación gratis al contratar plan anual. Para mensual: 2UF (MI PYME y KAME ONE), 4UF (Contador y ERP). (Fuente: web_planes_precios — https://www.kame.cl/planes-precios-siigo-chile)
- Módulos adicionales disponibles: Activo Fijo, Integración Bancos, Facturación Electrónica, Certificación Electrónica, RRHH, Firma Electrónica, Producción, Rendición, API, KAME PAY, WooCommerce, Shopify, Marketplaces, Carpeta de Importación. (Fuente: web_planes_precios — https://www.kame.cl/planes-precios-siigo-chile)

### Errores comunes / anti-patrones
- **No usar `api.kame.cl`:** Ese dominio no resuelve en DNS; siempre usar `api.kameone.cl`. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- **No enviar Folio en addVenta:** Si envías un folio, el sistema puede rechazar o duplicar. Dejarlo vacío para asignación automática. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- **No enviar montos con decimales:** Kame espera enteros; los decimales causan errores de validación. (Fuente: api_manual_integracion — https://help.kameone.cl/es/articles/12813902-manual-de-integracion-con-la-api)
- **No asumir webhooks:** No hay webhooks disponibles; usar polling con getVenta o getInformeVentas. (Fuente: api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj)
- **No modificar stock en plataformas externas:** La sincronización e-commerce es unidireccional desde Kame hacia afuera; cambios en Shopify/Mercado Libre no se reflejan en Kame. (Fuente: ecommerce_integraciones — https://help.kameone.cl/es/articles/12580902-integraciones-e-commerce-y-marketplaces)
- **No emitir Factura de Compra Electrónica sin configurar artículo:** El artículo debe tener habilitado "inventariable" y "código de producto cambio de sujeto". (Fuente: compras_factura_electronica — https://help.kameone.cl/es/articles/10922563-manual-ingreso-de-facturas-de-compra-electronica-propia)
- **No olvidar sincronizar parámetros de remuneraciones:** Antes de calcular sueldos, sincronizar Parámetros Generales y AFP/Isapres para montos y topes actualizados. (Fuente: remuneraciones_proceso — https://help.kameone.cl/es/articles/13168519-manual-domina-el-proceso-de-remuneraciones)
- **No cerrar período contable sin verificar:** Mes cerrado bloquea creación de nuevos movimientos; solo administrador puede ejecutar. (Fuente: contabilidad_manual — https://help.kameone.cl/es/articles/9297989-manual-de-contabilidad)

### Fuentes de esta ingesta
- api_postman_oficial — https://documenter.getpostman.com/view/8240263/T17FCpKj
- api_manual_integracion — https://help.kameone.cl/es/articles/12813902-manual-de-integracion-con-la-api
- api_como_integrar — https://help.kameone.cl/es/articles/13779849-como-integrar-tu-sistema-con-la-api
- api_como_dominar — https://help.kameone.cl/es/articles/14005952-como-dominar-la-api-con-kame
- Kame One ERP en programa de TV Sabores — https://youtu.be/2HcY4EwX_Wk
- Controla y Automatiza tu Pyme con Kame ERP — https://youtu.be/VsZE3OJ0K6A
- Webinar Conciliacion Bancaria (Kame) — https://youtu.be/E9Sggwln4-o
- MyPyme ERP - Demo — https://youtu.be/ECHW1qnhhLE
- bancos_conciliacion — https://help.kameone.cl/es/articles/9448765-manual-de-conciliacion-bancaria
- cobranza_manual — https://help.kameone.cl/es/articles/9345665-manual-de-cobranza
- cobros_manual — https://help.kameone.cl/es/articles/10504288-manual-de-cobros
- compras_factura_electronica — https://help.kameone.cl/es/articles/10922563-manual-ingreso-de-facturas-de-compra-electronica-propia
- compras_oc_manual — https://help.kameone.cl/es/articles/9352667-manual-de-ordenes-de-compra
- compras_registro — https://help.kameone.cl/es/articles/9324521-manual-de-registro-de-compras
- contabilidad_maestro — https://help.kameone.cl/es/articles/9761104-manual-maestro-de-contabilidad
- contabilidad_manual — https://help.kameone.cl/es/articles/9297989-manual-de-contabilidad
- cotizaciones_manual — https://help.kameone.cl/es/articles/10517925-manual-de-cotizaciones
- ecommerce_integraciones — https://help.kameone.cl/es/articles/12580902-integraciones-e-commerce-y-marketplaces
- elec_certificado_digital — https://help.kameone.cl/es/articles/12961660-como-cargar-tu-certificado-digital
- elec_compras — https://help.kameone.cl/es/articles/15668793-manual-electronico-de-compras
- elec_folios_caf — https://help.kameone.cl/es/articles/13882092-gestion-de-folios-caf-como-solicitar-documentos-electronicos
- elec_formatos_factura — https://help.kameone.cl/es/articles/14538577-manual-formatos-de-factura-electronica-pdf
- elec_menu — https://help.kameone.cl/es/articles/10502829-menu-electronico
- factoring_cesion — https://help.kameone.cl/es/articles/10847799-como-realizar-la-cesion-de-una-factura
- factoring_manual — https://help.kameone.cl/es/articles/12813890-manual-de-factoring
- honorarios_boleta — https://help.kameone.cl/es/articles/10629211-boleta-de-honorarios
- honorarios_primera_orden — https://help.kameone.cl/es/articles/12063318-mi-primera-orden-de-boleta
- inventario_carpeta_importacion — https://help.kameone.cl/es/articles/10774870-manual-carpeta-de-importacion
- inventario_importador — https://help.kameone.cl/es/articles/11818503-como-completar-el-importador-de-inventario
- inventario_stock_futuro — https://help.kameone.cl/es/articles/10178649-manual-stock-futuro
- inventario_stock_presente — https://help.kameone.cl/es/articles/10166893-manual-stock-presente
- pedidos_manual — https://help.kameone.cl/es/articles/9336313-manual-de-pedidos
- permisos_funcionales — https://help.kameone.cl/es/articles/10581318-permisos-funcionales
- pos_apertura_cierre_caja — https://help.kameone.cl/es/articles/11840191-manual-de-pos-apertura-y-cierre-de-caja
- pos_ingreso_venta — https://help.kameone.cl/es/articles/11853851-manual-de-pos-ingreso-de-venta
- pos_medios_pago — https://help.kameone.cl/es/articles/12113574-manual-de-pos-medios-de-pago
- pos_devoluciones — https://help.kameone.cl/es/articles/14963425-manual-de-pos-devoluciones
- pos_editar_cobro — https://help.kameone.cl/es/articles/11853899-manual-de-pos-como-editar-el-cobro-de-un-documento
- pos_maestro — https://help.kameone.cl/es/articles/15889516-manual-maestro-de-pos
- remuneraciones_proceso — https://help.kameone.cl/es/articles/13168519-manual-domina-el-proceso-de-remuneraciones
- remuneraciones_imposiciones — https://help.kameone.cl/es/articles/14708594-manual-declaraciones-de-imposiciones-y-libro-de-remuneraciones
- usuarios_accesos — https://help.kameone.cl/es/articles/10581316-usuarios-y-accesos
- ventas_credito_clientes — https://help.kameone.cl/es/articles/9817200-manual-gestion-de-credito-para-clientes
- ventas_informes — https://help.kameone.cl/es/articles/15668799-manual-informes-de-venta
- web_planes_precios — https://www.kame.cl/planes-precios-siigo-chile
- web_facturacion_electronica — https://www.kame.cl/sistema-de-facturacion-electronica/
- web_pos — https://www.kame.cl/punto-de-venta-siigo-chile/