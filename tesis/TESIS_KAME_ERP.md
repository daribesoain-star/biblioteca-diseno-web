# TESIS — Kame ERP (Siigo Kame): dominar la plataforma y su API

**Qué es:** marco de referencia accionable para operar e integrar **Kame ERP** de punta a punta, destilado de 60 fuentes reales (54 artículos oficiales de help.kameone.cl + kame.cl, la colección Postman oficial de la API, 5 videos Kame) con QA anti-alucinación (cada regla lleva su URL fuente, verificada contra los destilados; `qa_urls_eh.py` = 0 URLs falsas). **Fecha:** 2026-07-16. **Pipeline:** skill `ingesta-conocimiento` (fábrica multi-IA a disco). **Materia prima:** `~/Projects/biblioteca-diseno-web/ingesta-videos/eruditos-herramientas/kame/`. **Doctrina completa:** `estudio-sintetico/biblioteca/fundamentos/eruditos-herramientas/kame.md`. **Núcleo API verificado en vivo:** `~/Downloads/CLAUDECODE/alimentos-agrocomercial/KAME_API_BOLETA_RESEARCH.md`.

---

## 1. Qué es Kame y por qué importa al ecosistema de Dari

Kame ERP (marca actual **Siigo Kame**) es un ERP chileno para pymes: factura electrónica ante el SII, ventas, compras, inventario, contabilidad completa (IFRS), remuneraciones, honorarios, punto de venta y conexiones a e-commerce. Dari lo opera en Agrocomercial (empresa `comercial` = COMERCIAL AGROALIMENTOS SPA). El interés concreto: **emitir documentos tributarios (boleta/factura) desde sistemas propios** — el POS "Caja Amigo" (cajamigo) para los locales de Alimentos Agrocomercial — usando la **API oficial de Kame** como columna, y entender el resto del ERP para futuras integraciones (inventario, contabilidad, cobranza).

**Distinción crítica (fuente local):** existen DOS "APIs" en el ecosistema. (1) El **wrapper de Nacho** (`integracion.agrocomercial.cl`, 154 endpoints en `agro-inventario/docs/KAME_API_MAP.md`) es SOLO LECTURA + 2 escrituras de inventario — **no emite documentos**. (2) La **API OFICIAL de Kame** (`api.kameone.cl`) sí emite DTE. Toda emisión pasa por la oficial.

---

## 2. Mapa de módulos (el ERP como espejo de la API)

La regla de oro oficial de integración es "el ERP es tu espejo": los campos de la API reflejan exactamente los de la pantalla → para construir un JSON, se simula la operación manual y se copian esos datos. Por eso dominar el ERP y dominar la API son la misma tarea.

| Módulo del ERP | Qué resuelve | Su vía por API |
|---|---|---|
| **Facturación electrónica / DTE** | Emisión y envío al SII de 33/34/39/41/52/56/61; certificado .PFX; folios CAF | `addVenta`, `addNotaCredito`, `getDocumentoPDF/XML` |
| **Ventas / Cotizaciones / Pedidos** | Cotizar → pedido → factura (parcial incluido); crédito de clientes; informes con margen | `addCotizacion`, `addPedido`, `addVenta`, `getVenta`, `getInformeVentas` |
| **Compras / OC** | OC → recepción (entra a inventario) → factura; sincronizar compras desde el SII | `getOrdenCompra` (solo lectura; no se crean OC por API) |
| **Inventario** | Stock presente/futuro (fórmulas), importador Excel, carpeta de importación (costeo real) | `getStock*`, `addInventario`, `addArticulo`, `updArticulo` |
| **Contabilidad** | Plan de cuentas, comprobantes, cierres, estados financieros | `addComprobante`, `getCuentaxCobrar/xPagar` |
| **Bancos / Cobranza / Factoring** | Conciliación bancaria, cobros/pagos con asiento automático, cesión AEC | `getInformeCobros`, `getInformePagos` |
| **Remuneraciones / Honorarios** | Cálculo de sueldos, Previred, LRE; boletas de honorarios con retención | (opera en el ERP; no expuesto en la API pública) |
| **Punto de Venta (POS)** | Apertura/cierre de caja, ingreso de venta, medios de pago, devoluciones | emite el mismo DTE que `addVenta` |
| **E-commerce / Marketplaces** | Sincroniza pedidos/inventario con ML, Falabella, Paris, Ripley, Shopify, WooCommerce, Jumpseller | integración nativa; stock unidireccional Kame→plataforma |
| **Usuarios / Permisos** | Acceso por módulo, permisos funcionales, planes | credenciales API por empresa |

---

## 3. La API como columna — guía de integración

1. **Autenticar:** `POST https://api.kameone.cl/oauth/token` (Auth0 client_credentials, JSON), token Bearer 24 h → renovar diario. Base **`api.kameone.cl`**, jamás `api.kame.cl` (no resuelve). Llaves por empresa en "Datos de Empresa → Integración API". Rate limit 180 req/min.
2. **Emitir:** `POST /api/Documento/addVenta` con `Documento`="Boleta Electrónica" (39) o "Factura Electrónica" (33), `Folio:""` (Kame asigna el correlativo SII), montos SIN decimales, `Vendedor`/`Bodega`/`SKU` que existan en el maestro. La API valida que las líneas cuadren con el encabezado.
3. **Confirmar SII:** hacer polling de `getDocumentoPDF/{rut}/{39}/{folio}` — solo responde cuando el DTE fue ACEPTADO por el SII (no hay webhooks). `getDocumentoXML` trae el TED/timbre para renderizar un ticket propio.
4. **Requisitos previos del RUT emisor:** certificado .PFX cargado, folios CAF tipo 39 solicitados desde "Electrónico → Solicitud CAF SII" (admin, vigencia 6 meses), certificación SII, y 3 configuraciones que activa Soporte (aprobación automática de pedidos, rebaja de inventario, envío automático al SII).

---

## 4. DTE / SII — lo que NO se puede alucinar (Chile)

- **Códigos DTE que maneja Kame:** 33 Factura · 34 Factura Exenta · **39 Boleta** · **41 Boleta Exenta** · 52 Guía de Despacho · 56 Nota de Débito · 61 Nota de Crédito. (verificados en getDocumentoPDF/XML)
- **Folios CAF:** vigencia **6 meses**, se solicitan desde Kame (admin), se anulan en el portal SII si vencen.
- **Certificado digital:** formato **.PFX** exclusivamente.
- **Referencias SII:** Orden de Compra = código **801** en el campo `Referencia`.
- **Redondeo:** montos enteros; Kame aplica redondeo SII (.5↑ / .4↓).
Toda otra afirmación tributaria debe llevar fuente o marcarse [NO VERIFICADO]. Kame es tributario: un dato inventado en un código DTE, plazo o folio puede rechazar documentos reales.

---

## 5. Planes y economía (UF sin IVA, 2026-07-16)

La API ("API de Conexión") aparece desde **KAME ONE** (UF 1,83/mes o UF 22/año) hacia arriba; KAME FREE y MI PYME **no** la traen. **KAME POS** (UF 1/mes, 1.500 DTE/mes; o UF 12/año, 20.000 DTE/año) es el plan de caja, pero no está publicado si incluye la API de Conexión (gap G4) → probablemente la emisión por API requiere un plan ERP con API además/en vez del POS. Implementación gratis en planes anuales. Detalle y matriz de módulos en la KB §10.

---

## 6. Gaps abiertos (soporte@kame.cl)

Nueve gaps que solo Kame confirma, ninguno bloquea la arquitectura: **G1** string exacto de `Documento` boleta · **G2** cómo marcar "cobrado" en caja · **G3** tramos/excedente de DTE · **G4** plan mínimo con API · **G5** webhooks · **G6** PDF ticket 80mm · **G7** multi-empresa · **G8** contingencia sin internet · **G9** Middify soportado. Detalle en KB §Gaps.

---

## 7. Cómo usar esta tesis

- **Integrar Kame (código):** ir directo a KB §1 (API) + §2 (DTE) + el research base verificado en vivo. El stub de cajamigo (`kame.py`) se cablea con: URL base correcta, Auth0, payload `addVenta`, polling de PDF.
- **Operar un módulo del ERP:** KB §3–§9 tiene el paso-a-paso por pantalla (menús, campos obligatorios, gotchas).
- **Cotizar/elegir plan:** KB §10 (tabla de planes con columna "API de Conexión").
- **Skill puente:** `erudito-kame` (gatillo → apunta a esta tesis + KB). Contacto dudas API: soporte@kame.cl.
