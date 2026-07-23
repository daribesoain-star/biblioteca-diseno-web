# pos_devoluciones
**Fuente:** kame | https://help.kameone.cl/es/articles/14963425-manual-de-pos-devoluciones
## Qué enseña (2-3 líneas)
El manual explica cómo gestionar devoluciones totales o parciales y cambios de productos desde el POS de KAME ERP. Detalla la configuración de permisos por rol, la localización de la venta original, y la generación automática de Notas de Crédito (NC) y nuevas boletas según el tipo de transacción. Cubre dos casos: devolución de productos (genera solo NC) y cambio de productos (genera NC + nueva boleta), incluyendo el cálculo de diferencias de pago o vuelto.

## Lecciones accionables
- **Configuración previa obligatoria:** Ir a **Maestros → Roles** y activar el permiso de "Devoluciones" para el rol del usuario que gestionará devoluciones. Solo usuarios con ese rol habilitado pueden procesar devoluciones.
- **Localizar venta original:** Ir al **Listado de Documentos**, buscar la venta emitida desde POS, y desde el menú de opciones de esa venta seleccionar **"Devolución / Cambio"**.
- **Para devolución de productos (Caso 1):**
  1. En la ventana emergente, seleccionar tipo de devolución.
  2. Seleccionar los artículos y cantidades a devolver.
  3. Indicar el motivo de la devolución.
  4. Registrar en el sistema o emitir al SII.
  - **Nota:** Al abrir la ventana, solo se puede seleccionar "Devolución Completa". Al modificar las cantidades de los artículos, la opción cambia automáticamente a "Devolución Parcial".
  - El sistema genera una **Nota de Crédito (NC)** con la cantidad de productos devueltos.
- **Para cambio de productos (Caso 2):**
  1. Seleccionar **"Cambio de Producto"** en la ventana emergente.
  2. Seleccionar artículos y cantidades a cambiar.
  3. Seleccionar la **sucursal** donde se realizará el cambio y la **bodega** de donde saldrán los nuevos productos.
  4. Seleccionar los nuevos artículos con sus cantidades.
  5. Ingresar el motivo del cambio.
  6. Revisar el desglose de montos:
     - **a) Cliente debe Pagar:** Cuando el monto de los nuevos artículos es mayor al valor de los artículos devueltos. El cliente paga la diferencia.
       - Saldo NC (A favor): Monto de artículos devueltos (venta original)
       - Nueva Boleta (A cobrar): Monto de nuevos artículos
       - Cliente debe Pagar: Diferencia a favor de la empresa
     - **b) Vuelto a favor:** Cuando el monto de los nuevos artículos es menor al valor de los artículos devueltos. La empresa devuelve dinero al cliente.
       - Saldo NC (A favor): Monto de artículos devueltos (venta original)
       - Nueva Boleta (A cobrar): Monto de nuevos artículos
       - Vuelto a Favor: Diferencia a favor del cliente
  7. Registrar o emitir el cambio.
  - El sistema genera: **una NC por los artículos devueltos** + **una nueva boleta con los artículos entregados**.

## Reglas para agentes
- Usa **Maestros → Roles** para activar el permiso de "Devoluciones" antes de que cualquier usuario pueda gestionar devoluciones.
- Solo usuarios con el rol que tenga habilitado el permiso de devoluciones pueden procesar devoluciones o cambios.
- Para iniciar una devolución o cambio, la venta original debe haber sido emitida desde el POS de KAME ERP.
- Siempre localiza la venta en el **Listado de Documentos** y selecciona **"Devolución / Cambio"** desde el menú de opciones de esa venta.
- Cuando selecciones "Devolución Completa" y luego modifiques cantidades, el sistema cambiará automáticamente a "Devolución Parcial"; no fuerces una selección manual.
- Para cambios, selecciona obligatoriamente la **sucursal** y la **bodega** de donde saldrán los nuevos productos.
- Revisa el desglose de montos en cambios para determinar si el cliente debe pagar o recibir vuelto.
- Registra o emite al SII según corresponda; ambos casos generan la documentación automáticamente.

## Errores comunes que evita o menciona
- **No tener el permiso de devoluciones activado:** Sin la configuración en Maestros → Roles, el usuario no podrá gestionar devoluciones.
- **Intentar hacer devolución sin venta previa emitida desde POS:** La devolución o cambio requiere que exista una venta original emitida desde el POS de KAME.
- **Confundir tipos de transacción:** Las devoluciones generan solo NC; los cambios generan NC + nueva boleta. No aplicar el flujo correcto según el caso.
- **No ajustar cantidades para devolución parcial:** Si solo se selecciona "Devolución Completa" sin modificar cantidades, no se podrá hacer una devolución parcial; el sistema cambia automáticamente al modificar cantidades.
- **Omitir selección de sucursal y bodega en cambios:** Es obligatorio indicar la sucursal y bodega de salida de los nuevos productos; de lo contrario, el cambio no se procesa correctamente.
- **No revisar el desglose de montos en cambios:** Puede llevar a errores en el cobro o devolución de diferencias al cliente.