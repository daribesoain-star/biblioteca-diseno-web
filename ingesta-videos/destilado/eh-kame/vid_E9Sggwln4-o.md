# Webinar Conciliacion Bancaria (Kame)
**Fuente:** kame | https://youtu.be/E9Sggwln4-o

## Qué enseña (2-3 líneas)
Explica la importancia de la conciliación bancaria como herramienta de control de caja para evitar quiebras por flujo, y muestra paso a paso cómo realizarla en Kame: desde registrar facturas y pagos hasta sincronizar cartolas bancarias y cruzar movimientos automática o manualmente.

## Lecciones accionables
- **Crear cuenta contable bancaria con datos de conciliación:** Ir a Plan de Cuentas, seleccionar o crear la cuenta del banco, y marcar "Solicita datos de conciliación bancaria" para habilitar el módulo de conciliación.
- **Registrar facturas de venta y compra:** Usar el módulo de facturación (electrónica se integra con SII automáticamente; manual para documentos de papel). Esto genera los documentos que luego se pagan.
- **Usar "Registro de Cobros" para pagos de clientes:** Ir a Registro de Cobros, marcar la factura pendiente, hacer clic en "Generar cobro", seleccionar el banco y registrar. Kame crea automáticamente el comprobante contable (Debe: Banco / Haber: Deudores por venta).
- **Usar "Registro de Pagos" para pagos a proveedores:** Ir a Registro de Pagos, marcar la factura del proveedor, hacer clic en "Generar pago", seleccionar el banco y registrar. Kame genera el asiento (Debe: Proveedores / Haber: Banco).
- **Sincronizar cartola bancaria automáticamente:** En el módulo de Conciliación Bancaria, crear una "Nueva Cartola" y usar el botón "Sincronizar con el banco" (requiere integración contratada). Kame trae los movimientos de la cuenta corriente.
- **Importar cartola desde Excel si no hay integración:** En "Nueva Cartola", usar el botón "Importar" y cargar un archivo Excel con 5 campos específicos (fecha, descripción, monto, etc.). Kame provee una plantilla de ejemplo.
- **Conciliar movimientos:** En la pantalla de conciliación, hacer clic en "Conciliar automáticamente" para que Kame cruce los movimientos del mayor contable con la cartola bancaria. También se puede arrastrar un movimiento de la columna "No conciliados" a "Conciliados" manualmente.
- **Verificar comprobantes contables:** Hacer clic en el candado junto a cada cobro/pago registrado para ver el asiento contable generado automáticamente (cuentas de debe y haber).
- **Consultar el libro mayor del banco:** Ir a Contabilidad > Balance > Libro Mayor, seleccionar la cuenta bancaria para ver todos los movimientos contables que se comparan con la cartola.
- **Configurar múltiples cuentas corrientes:** Se pueden crear tantas cuentas bancarias como se necesiten, cada una con su propia conciliación. Crear la cuenta contable en Plan de Cuentas y asociarle los datos de la cuenta corriente (número, token bancario para integración).

## Reglas para agentes
- La conciliación bancaria compara el libro mayor de la cuenta contable del banco con la cartola bancaria (estado de cuenta del banco).
- La periodicidad recomendada es diaria o semanal; mientras más frecuente, más rápido se detectan fraudes o errores.
- Los cheques girados y no cobrados son una diferencia justificada común: en contabilidad ya se registró la salida, pero en la cartola bancaria aún no aparece el cobro.
- Para movimientos sin respaldo tributario (ej. comisiones bancarias), la cartola bancaria puede servir como respaldo temporal mientras llega la factura.
- Las órdenes de compra no son documentos contables formales; el registro contable se hace contra la factura del proveedor, no contra la OC.
- Los préstamos del dueño a la empresa requieren un contrato de mutuo y pago de impuesto de timbre; se registran como ingreso de dinero (aumenta banco, aumenta obligación con el dueño) y luego como pago al proveedor.

## Errores comunes que menciona
- **No conciliar el banco regularmente:** Lleva a tomar decisiones basadas en información contable que no refleja la realidad de la caja, pudiendo causar problemas de liquidez y quiebra.
- **Tener diferencias sin justificar entre contabilidad y cartola:** Si el saldo contable no coincide con el saldo bancario, la información no es fidedigna para la toma de decisiones.
- **No detectar fraudes por falta de conciliación:** Ejemplo: cheques falsificados con IA que se cobran sin que la empresa lo sepa, o comisiones bancarias cobradas dos veces.
- **Registrar pagos contra órdenes de compra sin factura:** La OC no es un documento tributario válido; si se paga contra ella, debe registrarse como "anticipo a proveedores" hasta que llegue la factura.
- **No tener respaldo de gastos sin documentos tributarios:** Gastos como viáticos o compras a personas naturales deben respaldarse con boletas u otros comprobantes para evitar problemas en fiscalizaciones del SII.
- **Confundir el registro de pago con la conciliación:** El pago se registra en el módulo de cobros/pagos (genera contabilidad), pero la conciliación es un paso aparte en el módulo de Conciliación Bancaria donde se comparan esos movimientos con la cartola.