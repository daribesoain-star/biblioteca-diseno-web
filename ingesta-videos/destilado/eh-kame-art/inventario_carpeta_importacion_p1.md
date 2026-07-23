# inventario_carpeta_importacion
**Fuente:** kame | https://help.kameone.cl/es/articles/10774870-manual-carpeta-de-importacion

## Qué enseña (2-3 líneas)
Guía paso a paso para gestionar el ciclo completo de importación en KAME ERP: desde la configuración inicial de conceptos contables, creación de la carpeta de importación, recepción de artículos, registro de gastos directos e indirectos, hasta el cierre de la carpeta y el registro de la Declaración de Ingreso (DIN) para saldar la cuenta puente.

## Lecciones accionables
- **Configuración inicial obligatoria:** Ir a *Maestros → Conceptos de Compra*. Crear concepto “Importaciones” y asociarlo a la cuenta contable *Importaciones en Tránsito*. Esta cuenta acumula costos hasta el cierre de la carpeta.
- **Creación de la carpeta:** Ir al módulo *Orden de Compra (OC)*. Crear una OC **inventariable** y aprobarla. Solo OC aprobadas permiten generar la carpeta. Desde el menú de opciones de la OC, seleccionar “Crear Carpeta de Importación”. Personalizar nombre y comentarios, luego registrar.
- **Recepción de artículos:** Desde la misma OC que originó la carpeta, generar la recepción de mercancía desde el menú de opciones. El costo inicial es el valor primario (ejemplo: Producto A: 10 uds x $10.000 = $100.000; Producto B: 25 uds x $50.000 = $1.250.000; Total Recepción = $1.350.000).
- **Registro de gastos de compra (facturas):** Ingresar facturas con gastos asociados desde el módulo de *Compras* y asociarlas a la carpeta. Usar el Concepto de Compras creado inicialmente. **Nota:** La factura de compra de los artículos no se incluye aquí.
- **Registro de otros gastos asociados:** Gastos indirectos sin factura (ej. fletes, seguros) deben registrarse manualmente en el módulo de *Contabilidad* para aumentar la cuenta *Importaciones en Tránsito*.
- **Cierre de la carpeta:** Desde el menú de opciones de la carpeta, seleccionar “Cerrar”. El sistema traslada el costo total actualizado a la recepción del inventario y revaloriza las existencias.
- **Registro de la DIN (Declaración de Ingreso):** Ir al módulo de *Compras*, registrar la DIN usando el mismo concepto configurado inicialmente. Esto salda el saldo pendiente de la cuenta *Importaciones en Tránsito*.
- **Verificación final:** Emitir el Mayor de la cuenta *Importaciones en Tránsito* para confirmar saldo cero.

## Reglas para agentes
- Usa el concepto “Importaciones” asociado a la cuenta *Importaciones en Tránsito* para todas las facturas y la DIN relacionadas con la carpeta.
- Solo crea la carpeta de importación desde una OC **inventariable** y **aprobada**.
- No incluyas la factura de compra de los artículos en el detalle de gastos de la carpeta; regístrala por separado.
- Registra todos los gastos indirectos sin factura en *Contabilidad* antes de cerrar la carpeta.
- Cierra la carpeta solo después de haber ingresado todos los documentos y gastos.
- Registra la DIN después del cierre de la carpeta para saldar la cuenta puente.

## Errores comunes que evita o menciona
- **No aprobar la OC antes de crear la carpeta:** Solo las OC aprobadas permiten generar la Carpeta de Importación.
- **Olvidar configurar el concepto de compras:** Sin el concepto asociado a *Importaciones en Tránsito*, el flujo contable no funciona correctamente.
- **Incluir la factura de compra de artículos en los gastos de la carpeta:** La factura de compra no se registra en el detalle de gastos; solo facturas de gastos asociados.
- **No registrar gastos indirectos sin factura:** Estos deben ingresarse manualmente en contabilidad para que se acumulen en la cuenta puente.
- **Cerrar la carpeta antes de tener todos los gastos registrados:** El cierre traslada el costo total; si faltan gastos, el costo real será incorrecto.
- **No registrar la DIN después del cierre:** La cuenta *Importaciones en Tránsito* quedará con saldo pendiente si no se registra la Declaración de Ingreso.