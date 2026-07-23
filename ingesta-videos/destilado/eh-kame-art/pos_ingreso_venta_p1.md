# pos_ingreso_venta
**Fuente:** kame | https://help.kameone.cl/es/articles/11853851-manual-de-pos-ingreso-de-venta

## Qué enseña
Este manual explica cómo realizar la apertura de caja y el registro de ventas en el módulo POS de KAME ERP. Cubre el proceso completo desde habilitar la caja hasta generar documentos electrónicos (boleta o factura) con los datos del cliente, artículos y medio de pago.

## Lecciones accionables
- **Apertura de Caja:** Ir a **POS → Apertura de Cajas** → botón “Nueva Apertura de Caja”. Completar los campos:
  - **Sucursal:** seleccionar la sucursal correspondiente.
  - **Caja:** seleccionar número/nombre de caja asociado a la sucursal.
  - **Monto de Apertura:** ingresar el monto exacto con el que se inicia la jornada.
  - **Comentario:** texto opcional para identificar la apertura.
- **Generar una Venta:** Ir a **POS → Ingreso de Ventas**.
  - Seleccionar **sucursal**, **caja** (la que se aperturó) y **vendedor** que opera.
  - Elegir tipo de documento: **Boleta** o **Factura**.
  - Ingresar datos del cliente o seleccionar **cliente genérico**.
  - Seleccionar **lista de precios** a utilizar.
  - Agregar artículos buscando por **nombre** o **código**.
  - Elegir **medio de pago**: efectivo, tarjeta, transferencia, entre otros.
  - Hacer clic en **Generar Documento**.
- El sistema genera automáticamente la boleta o factura con toda la información de la venta.

## Reglas para agentes
- Siempre realizar la apertura de caja antes de registrar cualquier venta en el POS.
- Usa el módulo **POS → Apertura de Cajas** para iniciar la jornada y **POS → Ingreso de Ventas** para crear la venta.
- Nunca omitas seleccionar la sucursal, caja y vendedor antes de generar una venta.
- Selecciona el tipo de documento (Boleta o Factura) según corresponda al cliente.
- Si no hay cliente específico, usa la opción **cliente genérico**.

## Errores comunes que evita o menciona
- No realizar la apertura de caja antes de vender, lo que impide registrar movimientos.
- Olvidar seleccionar la sucursal y caja correctas al generar una venta.
- No elegir la lista de precios adecuada antes de agregar artículos.
- No seleccionar el medio de pago antes de hacer clic en “Generar Documento”.