# api_manual_integracion
**Fuente:** kame | https://help.kameone.cl/es/articles/12813902-manual-de-integracion-con-la-api

## Qué enseña (2-3 líneas)
Este manual explica cómo conectar sistemas externos con la API de Kame ERP para automatizar procesos comerciales, contables y de inventario. Cubre desde la autenticación y configuración inicial hasta la construcción de JSON para crear documentos de venta, consultar datos y gestionar errores.

## Lecciones accionables
- **Obtener credenciales:** Inicia sesión en Kame, ve a “Datos de empresa” y extrae **Cliente ID** y **Cliente Secret**.
- **Generar token de acceso:** Realiza una llamada al endpoint de autenticación con Cliente ID y Cliente Secret. El token tiene validez de **24 horas**; automatiza su renovación diaria.
- **Configuraciones clave (requieren activación por Soporte):**
  - Aprobación automática de pedidos
  - Rebaja automática de inventario (solo si manejas inventario físico)
  - Envío automático al SII
- **Endpoints principales:**
  - **Módulo Ventas:**
    - `ADD Cotizaciones`: crea cotizaciones completas (no admite parcialidades)
    - `ADD Pedidos`: crea pedidos que permiten despachos parciales
    - `ADD Ventas`: crea Factura, Boleta, Guía de despacho (puede vincularse a pedido usando campo `Referencia`)
    - `ADD Notas de Crédito`: sobre documentos existentes
    - `GET Pedido`: devuelve info completa de un pedido
    - `GET Ventas`: detalle de venta en JSON
    - `GET Documento PDF`: obtiene PDF de venta validada por SII (solo si aceptado)
    - `GET XML`: devuelve DTE (XML) del documento (solo si aceptado)
    - `GET Link de Camepay`: genera enlace de pago en línea; si el cliente paga, el documento se marca como cobrado automáticamente
    - `GET Informe de Ventas`: informe mensual de ventas (limitado a períodos mensuales, no anuales)
  - **Módulo Inventario:**
    - `Movimiento de Inventario`: crea entradas, salidas o traspasos de stock
    - `ADD/UPDATE Artículos`: crea o actualiza productos
    - `GET Stock`: stock disponible (por artículo, por bodega o general)
  - **Módulo Compras:**
    - `GET Compra`: consulta documentos de compra ya ingresados (no se pueden crear Órdenes de Compra ni descargar XML de compras por API)
  - **Módulo Contabilidad:**
    - `ADD Comprobantes Contables`: inyecta comprobantes contables o ajustes
    - `GET Cuentas por Cobrar / Pagar`: consulta reportes financieros
  - **Maestros:**
    - `GET Lista de Vendedores`
    - `GET Lista de Unidades de Negocio`
    - `GET Lista de Fichas (Clientes)`
    - `GET Lista de Artículos`
- **Estructura JSON para ADD Ventas:**
  - **Campos de encabezado:**
    - `Usuario`: email de usuario existente en Kame (solo auditoría)
    - `Documento`: tipo de DTE (factura, boleta, guía)
    - `Sucursal`: opcional, puede dejarse vacío
    - `Root`: RUT del cliente
    - `Tipo de Documento`: “venta”
    - `Folio`: **dejar vacío** (Kame asigna correlativo SII automáticamente)
    - Datos del cliente: Razón Social, Giro, Ciudad, Dirección, Comuna, Teléfono, Email
  - **Campos de totales y condiciones:**
    - `Fecha`: fecha de emisión
    - `Comentario`: glosa general
    - `Forma de Pago`: crédito o contado
    - `Fecha de Crédito`: obligatoria si forma de pago es crédito
    - `Montos`: Afecto, IVA y Total (sin decimales; Kame aplica redondeo SII: .5 hacia arriba, .4 hacia abajo)
    - `Vendedor`: opcional, debe existir previamente en Kame
  - **Campos de detalle (array de ítems):**
    - `Descripción`: nombre del ítem
    - `Cantidad`: número de unidades
    - `Precio Unitario`: valor por unidad
    - `Descuento`: si aplica
    - `Total`: resultado de (Cantidad x Precio)
    - La API valida que la suma de totales de líneas coincida con montos del encabezado
  - **Campos de referencia:**
    - `Referencia`: vincula documentos (ej. Orden de Compra del cliente)
    - Usar códigos oficiales SII (ej. “Orden de Compra” = 801)
- **Creación de fichas (clientes):** Si el RUT no existe, la API crea automáticamente la ficha. Si el RUT ya existe, no se sobrescriben datos en maestros (solo se usan los del JSON para ese documento puntual).

## Reglas para agentes
- Usa el token de acceso en el encabezado de **todas** las solicitudes posteriores a la autenticación.
- Renueva el token automáticamente cada **24 horas** para mantener la comunicación activa.
- Deja el campo `Folio` **siempre vacío** en ADD Ventas; Kame asigna el correlativo SII automáticamente.
- Envía los montos (Afecto, IVA, Total) **sin decimales**; Kame aplica redondeo SII (.5 hacia arriba, .4 hacia abajo).
- Para consultas de informe de ventas, limita el período a **mensual** (nunca anual).
- Si el RUT del cliente ya existe en Kame, no sobrescribas datos maestros; los datos del JSON solo aplican al documento puntual.
- Para vincular un documento de venta a un pedido existente, usa el campo `Referencia` con el código SII correspondiente (ej. 801 para Orden de Compra).
- Nunca intentes crear Órdenes de Compra ni descargar XML de compras por API; no está soportado.

## Errores comunes que evita o menciona
- **Error en totales:** La API valida que la suma de totales de las líneas de detalle coincida con los montos del encabezado. Si hay discrepancia, la solicitud falla.
- **Redondeo incorrecto:** Enviar decimales en los montos puede causar errores; Kame espera valores enteros y aplica redondeo SII.
- **Token expirado:** No renovar el token cada 24 horas interrumpe todas las solicitudes.
- **Folio asignado manualmente:** Dejar el campo `Folio` con valor en lugar de vacío genera conflicto con la asignación automática del SII.
- **Consulta de informe anual:** Intentar obtener un informe de ventas por período mayor a un mes (ej. anual) no está permitido.
- **Documento no aceptado por SII:** Intentar obtener PDF o XML de un documento que aún no ha sido aceptado por el SII devuelve error.
- **Sobrescritura de datos de cliente:** Asumir que los datos del JSON actualizan la ficha maestra del cliente cuando el RUT ya existe; en realidad solo aplican al documento.
- **Error en integración:** Si ocurre un error, guarda el JSON exacto enviado y contacta al equipo de Soporte de Kame con ese JSON para análisis.