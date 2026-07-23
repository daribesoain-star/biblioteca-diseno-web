# api_como_integrar
**Fuente:** kame | https://help.kameone.cl/es/articles/13779849-como-integrar-tu-sistema-con-la-api

## Qué enseña (2-3 líneas)
Guía paso a paso para conectar un sistema externo (e-commerce, CRM, ERP propio) con la API de Siigo KAME, automatizando facturación, inventario y contabilidad. Explica cómo obtener credenciales, configurar automatismos, estructurar datos en JSON y resolver errores de integración.

## Lecciones accionables
- **Obtener credenciales:** Inicia sesión en Siigo KAME → ve a **Datos de Empresa** → sección **Integración API**. Copia el **Cliente ID** y **Cliente Secret**.
- **Solicitar token de acceso:** Usa Cliente ID y Cliente Secret para obtener un **TOKEN**. El token tiene vigencia de **24 horas**. Programa tu sistema para renovarlo automáticamente cada día.
- **Configurar "Piloto Automático":** Solicita al equipo de soporte la activación de:
  - Aprobación automática de pedidos (documentos ingresados por API quedan aprobados de inmediato).
  - Rebaja de inventario automática (stock se actualiza al realizar una venta externa).
  - Envío automático al SII (facturas se emiten y envían sin intervención manual).
- **Módulos disponibles:**
  - **Ventas:** Crear facturas, boletas, guías de despacho; consultar PDFs; generar enlaces de pago.
  - **Inventario:** Crear productos nuevos; consultar stock en tiempo real.
  - **Contable:** Cargar comprobantes contables; consultar listas de clientes, vendedores y artículos.
- **Estructura JSON requerida:**
  - **Encabezado:** Usuario (email de auditoría), tipo de documento (DTE), RUT del cliente, razón social.
  - **Totales y Condiciones:** Fecha de emisión, forma de pago (crédito o contado), montos.
    - **Regla crítica:** Los montos (afecto, IVA y total) deben ir **siempre sin decimales**. El sistema aplica automáticamente las reglas de redondeo del SII.
  - **Detalles:** Lista de productos con descripción, cantidad, precio unitario y descuentos.
  - **Referencias:** Para relacionar el documento con una Orden de Compra (código 801) u otros folios previos.
- **Resolución de problemas:** Si la integración arroja error, guarda el archivo JSON exacto que intentaste enviar. Contacta al soporte de Siigo KAME y adjunta dicho archivo para análisis técnico.

## Reglas para agentes
- Usa el **Cliente ID** y **Cliente Secret** obtenidos de la sección Integración API en Datos de Empresa para autenticarte.
- Renueva el **TOKEN** cada **24 horas** automáticamente; nunca uses un token expirado.
- Envía los montos (afecto, IVA, total) **siempre sin decimales** en el JSON; nunca incluyas puntos ni comas.
- Cuando ocurra un error, guarda el **JSON exacto** que enviaste y adjúntalo al contacto con soporte; nunca reenvíes sin análisis.
- Para relacionar documentos, usa el **código 801** para Órdenes de Compra en el campo de referencias.

## Errores comunes que evita o menciona
- **Token expirado:** El token dura 24 horas; si no se renueva, la conexión se interrumpe.
- **Montos con decimales:** Enviar montos con decimales causa errores; deben ir sin decimales (el sistema aplica redondeo SII automáticamente).
- **Estructura JSON incorrecta:** No incluir encabezado, totales, detalles o referencias en el formato correcto genera fallos.
- **No guardar el JSON de error:** Si no se conserva el JSON exacto que falló, el soporte no puede diagnosticar el problema.