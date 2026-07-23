# compras_factura_electronica
**Fuente:** kame | https://help.kameone.cl/es/articles/10922563-manual-ingreso-de-facturas-de-compra-electronica-propia

## Qué enseña (2-3 líneas)
Este manual explica cómo configurar y emitir Facturas de Compra Electrónica (propias) en Kame ERP para respaldar adquisiciones a proveedores que no emiten facturas de venta. Cubre la configuración obligatoria del artículo como inventariable con código de producto cambio de sujeto, y el proceso completo de emisión desde el módulo de compras.

## Lecciones accionables
- **Configuración inicial obligatoria:** Ir a **Maestros → Artículos** o **Maestros → Servicios**, seleccionar el ítem a usar, y habilitar la opción **"inventariable"**. Al activarla, se despliega un campo donde se debe indicar el **código de producto cambio de sujeto**. Guardar los cambios.
- **Emisión de Factura de Compra:** Ir al **módulo de compras** y generar un nuevo documento. Seleccionar:
  - Ficha del proveedor
  - Tipo de compra
  - Comprador
  - Lista de precio
  - Glosa correspondiente
- **Habilitar opción inventariable** en el documento para poder seleccionar el artículo/servicio previamente configurado.
- **Ingresar datos del ítem:**
  - Cantidades
  - Unidad de negocio
  - Precio unitario
- **Visualizar desglose de IVA** y luego emitir el documento.
- **Casos de uso para emitir Factura de Compra:**
  - Compras a personas naturales no contribuyentes del IVA
  - Adquisiciones internacionales (especialmente servicios digitales)
  - Compras exentas de IVA

## Reglas para agentes
- Usa la opción **"inventariable"** tanto en la configuración del artículo como en el documento de compra; si no está habilitada en ambos, el SII rechazará el documento por falta de información.
- Siempre asigna un **código de producto cambio de sujeto** al artículo cuando actives la opción inventariable en Maestros.
- Nunca emitas una Factura de Compra sin haber configurado previamente el artículo/servicio como inventariable con su código de cambio de sujeto.
- Selecciona siempre el artículo/servicio configurado desde la lista que aparece al habilitar "inventariable" en el documento.

## Errores comunes que evita o menciona
- **No configurar el artículo como inventariable** antes de emitir: el SII rechazará la factura por falta de información.
- **Omitir el código de producto cambio de sujeto** en la configuración del artículo: la opción inventariable no funcionará correctamente.
- **No habilitar la opción inventariable en el documento** antes de seleccionar el artículo: no se podrá agregar el ítem configurado.