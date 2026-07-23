# pos_medios_pago
**Fuente:** kame | https://help.kameone.cl/es/articles/12113574-manual-de-pos-medios-de-pago

## Qué enseña
Explica la configuración secuencial de formas de pago y medios de pago en KAME ERP, detallando cómo asociarlos correctamente a cuentas contables según el tipo de transacción (débito, crédito, efectivo, transferencia, cheque). El objetivo es asegurar un flujo ordenado de ventas, pagos y conciliaciones contables.

## Lecciones accionables
- **Orden obligatorio:** Primero crear las formas de pago en `Maestros → Formas de Pago`, luego crear los medios de pago en `Maestros → Medios de pago`.
- **Crear una forma de pago:** Ir a `Maestros → Formas de Pago`, hacer clic en el botón verde, indicar nombre y seleccionar las cuentas contables asociadas. Tipos posibles: Débito, Crédito, Cheque, Caja, Transferencia.
- **Crear un medio de pago:** Ir a `Maestros → Medios de pago`, botón verde, indicar nombre (ej. "Efectivo"), seleccionar tipo de forma de pago (débito, crédito, cheque, caja, transferencia) y vincularlo a la forma de pago ya creada.
- **Regla de cuenta contable por tipo de medio de pago:**

| Tipo de Medio de Pago | Requisito de Cuenta Contable |
|---|---|
| Débito | No debe tener análisis de conciliación |
| Crédito | No debe tener análisis de conciliación |
| Efectivo | No debe tener análisis de conciliación |
| Transferencia | Debe tener análisis de conciliación |
| Cheque | Debe tener análisis de ficha y documento |

- **Vinculación condicional:** Las formas de pago disponibles para asociar a un medio de pago dependen de la cuenta contable de la forma de pago. Ejemplo: para crear un medio de pago en efectivo, solo se verán formas de pago cuya cuenta contable no tenga análisis de conciliación.

## Reglas para agentes
- Usa siempre el orden "primero formas de pago, luego medios de pago" para evitar errores de vinculación.
- Nunca asocies un medio de pago de tipo Transferencia a una cuenta contable sin análisis de conciliación.
- Nunca asocies un medio de pago de tipo Cheque a una cuenta contable que no tenga análisis de ficha y documento.
- Verifica que la cuenta contable de la forma de pago cumpla con el requisito específico del tipo de medio de pago antes de crear la vinculación.

## Errores comunes que evita o menciona
- Crear medios de pago sin haber creado primero las formas de pago correspondientes.
- Asociar un medio de pago a una forma de pago cuya cuenta contable no coincide con el tipo de medio (ej. Transferencia sin análisis de conciliación).
- Usar cuentas contables con análisis de conciliación para medios de pago de Débito, Crédito o Efectivo, lo que impediría su correcta visualización y asociación.
- No configurar las cuentas contables con análisis de ficha y documento para medios de pago tipo Cheque, generando errores en la gestión de cheques.