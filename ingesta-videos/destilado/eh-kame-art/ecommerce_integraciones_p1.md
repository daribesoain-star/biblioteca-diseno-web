# ecommerce_integraciones
**Fuente:** kame | https://help.kameone.cl/es/articles/12580902-integraciones-e-commerce-y-marketplaces

## Qué enseña
Este manual explica cómo conectar Kame ERP con marketplaces (Mercado Libre, Falabella, Paris, Ripley, Walmart) y plataformas e-commerce (Shopify, WooCommerce, Jumpseller) para centralizar ventas, inventario y facturación. Detalla el flujo bidireccional de datos, el proceso de implementación en 5 días hábiles y las credenciales exactas requeridas por cada plataforma.

## Lecciones accionables
- **Sincronización de ventas:** Todos los pedidos generados en la tienda online o marketplace se registran automáticamente en Kame, eliminando la entrada manual de datos.
- **Sincronización de inventario:** Kame actúa como fuente central de verdad (Single Source of Truth). Cualquier actualización de stock en Kame (compras, ajustes, ventas por otros canales) se refleja automáticamente en todas las plataformas conectadas.
- **Emisión de documentos fiscales:** Kame automatiza el envío de boletas y facturas electrónicas al SII. El cliente decide si el envío es automático o manual.
- **Entrega de comprobantes al cliente final:**
  - **Marketplaces (Mercado Libre, Falabella, Paris, Ripley):** El PDF del comprobante se sube automáticamente al portal del marketplace; el cliente lo descarga desde su cuenta.
  - **E-commerce (Shopify, WooCommerce, Jumpseller):** El PDF se envía automáticamente al correo electrónico registrado por el cliente.
- **Credenciales requeridas por plataforma:**

| Plataforma | Credenciales Requeridas | Proceso de Obtención |
|---|---|---|
| Mercado Libre | URL Única de Login | Se solicita a soporte; el cliente debe hacer login con la cuenta de mayores permisos. |
| Falabella | USER ID y API KEY | Se obtienen desde la sección API en Integraciones dentro del Seller Center. |
| Paris Marketplace | API KEY | Se obtiene en Mi cuenta → Integraciones. |
| Walmart | CLIENT ID y CLIENT SECRET | Se generan en el Walmart Developer Portal bajo PRODUCTION KEYS. Requiere la cuenta del propietario. |
| Ripley | Usuario, Contraseña de Seller Center y API KEY de MIRAKL | La API Key se obtiene en Ajustes Personales → Clave de API. |
| Shopify | URL tienda y Código de colaborador | Kame solicita acceso; el cliente debe aceptar la propuesta de conexión. |
| WooCommerce | Email cuenta acceso y Token de integración | El Token se genera en Ajustes → Avanzado → API REST, con permiso Lectura/Escritura. |
| Jumpseller | LOGIN y AUTH TOKEN | Se encuentran en la sección API de la configuración de la cuenta. |

- **Proceso de implementación (5 días hábiles):**
  1. **Preparación y configuración inicial:** Contactar al equipo de soporte; se realizan configuraciones iniciales en Kame (selección de bodega, vendedor por defecto, etc.).
  2. **Recolección de credenciales:** El equipo de Kame solicita las credenciales de acceso (API Keys, Tokens, etc.) de forma segura.
  3. **Conexión, pruebas y puesta en marcha:** El equipo técnico realiza la conexión y pruebas internas; notifica cuando la integración está activa y hace seguimiento.

## Reglas para agentes
- Usa Kame como la única fuente de verdad para el stock; nunca modifiques inventario directamente en la plataforma externa (Shopify, Mercado Libre, etc.) porque no se sincronizará de vuelta a Kame.
- Configura la integración con una sola bodega designada en Kame; solo los movimientos de inventario que afecten a esta bodega activarán la sincronización de stock.
- Nunca determines el precio del producto desde Kame; el precio lo define la plataforma de venta (e-commerce o marketplace).
- Siempre registra manualmente la cobranza de los documentos generados por la integración; no se marcan como "cobrados" automáticamente.
- Para WooCommerce, genera el Token de integración en Ajustes → Avanzado → API REST con permiso Lectura/Escritura.
- Para Walmart, usa las PRODUCTION KEYS del Walmart Developer Portal con la cuenta del propietario.

## Errores comunes que evita o menciona
- **Flujo de stock unidireccional:** Las modificaciones de inventario hechas directamente en Shopify, Mercado Libre, etc., no se sincronizan de vuelta hacia Kame. Siempre actualiza el stock desde Kame.
- **Precios no sincronizados desde Kame:** El precio de los productos lo determina la plataforma de venta, no Kame.
- **Bodega única:** La integración solo funciona con una bodega designada; movimientos en otras bodegas no activan la sincronización.
- **Cobranza no automática:** Los documentos generados no se marcan como cobrados automáticamente; requiere registro manual.