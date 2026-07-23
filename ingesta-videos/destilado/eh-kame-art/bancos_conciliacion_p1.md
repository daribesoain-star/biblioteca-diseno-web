# bancos_conciliacion
**Fuente:** kame | https://help.kameone.cl/es/articles/9448765-manual-de-conciliacion-bancaria

## Qué enseña (2-3 líneas)
El módulo de conciliación bancaria de KAME permite enlazar los movimientos de pagos y cobros registrados en el sistema con los movimientos de la cartola bancaria. Enseña a crear cuentas corrientes, registrar o importar cartolas bancarias, y conciliar movimientos de forma manual o automática para mantener un control financiero preciso.

## Lecciones accionables
- **Crear una cuenta corriente:**
  - Ruta: `Maestros --> Cuentas Corrientes`
  - Hacer clic en el botón verde para crear nueva cuenta.
  - Campos obligatorios:
    - **Banco:** Seleccionar institución bancaria.
    - **Cuenta Contable:** Seleccionar cuenta contable a ligar.
    - **Token Bancario:** Seleccionar token del banco si existe; de lo contrario, dejar en blanco.
    - **Tipo Numero Mov. Predeterminado:** Elegir entre "por periodo" o "un número en específico".
    - **Cuenta corriente:** Ingresar número de cuenta corriente.
    - **Numero convenio banco:** Opcional.
  - Finalizar: Registrar la cuenta corriente.

- **Crear una cartola bancaria:**
  - Ruta: Módulo de conciliación → botón verde.
  - Seleccionar la cuenta corriente de la cartola.
  - Completar campos:
    - Número de cartola
    - Periodo
    - Saldo inicial
    - Saldo final
  - **Métodos para ingresar movimientos:**
    1. **Manual:** Hacer clic en "agregar". Ventana emergente con campos:
       - Fecha
       - Comentario
       - Tipo de movimiento
       - Número de movimiento
       - Monto de movimiento
       - Hacer clic en "Agregar línea".
    2. **Por Importador:** Hacer clic en "importar". Descargar archivo con formato e instrucciones de llenado. Cargar archivo completado.
    3. **Sincronizar (con token bancario):** Hacer clic en "Sincronizar con Banco". El sistema carga los movimientos automáticamente.
  - Finalizar: Hacer clic en "Registrar cartola".

- **Conciliar cartola:**
  - Localizar la cartola en el módulo de conciliación.
  - Desde el menú de opciones, seleccionar "Conciliar".
  - Se visualizan dos listas: movimientos de cartola no conciliados y movimientos contables no conciliados.
  - **Formas de conciliar:**
    1. **Manual:** Seleccionar un movimiento de cartola y un movimiento contable → hacer clic en botón azul "Conciliar Manual".
    2. **Automático:** Hacer clic en botón verde "Conciliar Automáticamente".

- **Condición para conciliación correcta:** Los movimientos de banco (cartola) deben tener la misma información que los movimientos contables.

## Reglas para agentes
- Usa la ruta `Maestros --> Cuentas Corrientes` para crear una cuenta corriente nueva.
- Usa el botón verde para crear cuentas corrientes y cartolas bancarias.
- Usa "Conciliar Manual" (botón azul) cuando selecciones manualmente un movimiento de cartola y uno contable.
- Usa "Conciliar Automáticamente" (botón verde) para conciliación masiva sin selección manual.
- Nunca intentes conciliar movimientos si la información entre cartola y contabilidad no coincide exactamente.
- Nunca dejes el campo "Token Bancario" vacío si cuentas con token; si no tienes, déjalo en blanco.

## Errores comunes que evita o menciona
- **Movimientos no conciliables:** La conciliación (manual o automática) no funcionará si los movimientos de banco (cartola) no tienen la misma información que los movimientos contables.
- **Omisión de token bancario:** Si se cuenta con token bancario, debe seleccionarse; de lo contrario, la sincronización automática no estará disponible.
- **Campos incompletos en cuenta corriente:** No registrar correctamente banco, cuenta contable, tipo de número de movimiento o número de cuenta corriente puede impedir la creación.
- **Cartola sin registrar:** Luego de ingresar/importar/sincronizar movimientos, es obligatorio hacer clic en "Registrar cartola" para guardar la cartola completa.