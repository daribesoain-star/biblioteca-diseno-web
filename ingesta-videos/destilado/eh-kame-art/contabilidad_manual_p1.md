# contabilidad_manual
**Fuente:** kame | https://help.kameone.cl/es/articles/9297989-manual-de-contabilidad

## Qué enseña
El módulo de contabilidad de KAME funciona como un repositorio central que registra todos los comprobantes contables generados por otros módulos, además de permitir el registro manual de comprobantes adicionales. Explica cómo crear comprobantes (ingreso, egreso, traspaso), generar aperturas contables automáticas, importar/exportar datos masivamente mediante CSV y Excel, y realizar cierres contables mensuales o anuales que bloquean la creación de nuevos movimientos en periodos cerrados.

## Lecciones accionables
- **Crear un nuevo comprobante:** Ingresar al módulo de Contabilidad → hacer clic en “Nuevo Comprobante” → completar los campos: Fecha, Tipo de comprobante (Ingreso / Egreso / Traspaso), Folio, Comentario, Detalle del comprobante (cuentas contables involucradas con saldo en Debe o Haber). Para agregar más líneas, usar el botón azul en la primera línea. Finalizar con clic en “Registrar comprobante”.
- **Acciones posteriores sobre un comprobante:** Desde el menú de opciones se puede: a. Imprimir, b. Copiar Documento, c. Eliminar.
- **Generar apertura contable:** Hacer clic en “Generar Apertura” → seleccionar entre las opciones listadas. La apertura automática considera todos los movimientos contables del periodo anterior.
- **Importar desde archivo CSV:** Usar el botón “Otras Acciones” → “Importar desde Archivo” → descargar el ejemplo de formato CSV proporcionado para realizar la importación masiva de documentos contables.
- **Exportar a Excel:** Usar el botón “Otras Acciones” → “Generar Excel” → el sistema inicia la descarga automática del archivo Excel con todos los documentos de contabilidad.
- **Cierres contables:** Hacer clic en “Cierres” → seleccionar meses individuales o tildar todos los meses de un año → confirmar. Una vez cerrado un mes, no se podrá generar ningún documento o movimiento nuevo en ese mes. Solo el usuario administrador puede ejecutar esta opción.
- **Búsqueda de cierres:** Desde la pantalla de Cierres, se pueden realizar búsquedas por periodo.

## Reglas para agentes
- Usa “Nuevo Comprobante” para registrar cualquier transacción contable manual; selecciona obligatoriamente Tipo (Ingreso, Egreso o Traspaso) y asigna cada movimiento a una cuenta contable en Debe o Haber.
- Cuando generes apertura contable, usa la opción “Generar Apertura” y verifica que el sistema incluya automáticamente todos los movimientos del periodo anterior.
- Para importaciones masivas, usa exclusivamente el formato CSV de ejemplo proporcionado por el sistema; no uses otros formatos.
- Para exportar datos, usa “Otras Acciones” → “Generar Excel”; no intentes extraer datos por otros medios.
- Nunca intentes crear, modificar o eliminar movimientos en un mes que ya haya sido cerrado contablemente.
- Solo el usuario con rol administrador puede ejecutar la opción de “Cierres”; los usuarios sin ese rol no deben intentarlo.

## Errores comunes que evita o menciona
- **No registrar comprobantes después de un cierre:** Una vez cerrado un mes en contabilidad, no se puede generar ningún documento o movimiento nuevo en ese mes. Esto bloquea la creación de comprobantes, por lo que se debe verificar el estado del periodo antes de registrar.
- **No confundir tipos de comprobante:** Los tipos disponibles son Ingreso, Egreso y Traspaso; seleccionar uno incorrecto puede desbalancear los registros contables.
- **No omitir el detalle del comprobante:** Es obligatorio seleccionar las cuentas contables involucradas y asignar el saldo en Debe o Haber; un detalle incompleto impide registrar el comprobante.
- **No usar formatos incorrectos para importación:** La importación masiva solo acepta archivos CSV con la estructura del ejemplo proporcionado; otros formatos causarán errores.
- **No realizar cierres sin ser administrador:** La opción de Cierres solo puede ejecutarla el usuario administrador; otros usuarios verán la opción pero no podrán completar la acción.