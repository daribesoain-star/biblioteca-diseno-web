# factoring_manual
**Fuente:** kame | https://help.kameone.cl/es/articles/12813890-manual-de-factoring

## Qué enseña
Este manual explica cómo utilizar el módulo de Factoring en KAME ERP para simular y ceder documentos directamente desde el sistema, gestionando operaciones de factoring de forma ágil y conectada con Banco Security. Cubre desde el enrolamiento inicial hasta la aceptación del negocio y la cesión automática de documentos.

## Lecciones accionables
- **Enrolamiento en Banco Security:** Al ingresar al módulo de Simulación, si aparece un banner azul en la parte superior, haz clic en él para ser redirigido a la página del Banco Security e iniciar el proceso de enrolamiento. Este banner solo aparece si la empresa aún no está enrolada.
- **Crear una nueva simulación:** Dentro del módulo de Simulación, haz clic en el botón verde "Crear nueva" para iniciar el proceso.
- **Filtrar documentos:** Usa los filtros disponibles (por fecha, cliente o fecha de vencimiento) para localizar los documentos que pueden ser cedidos.
- **Identificar documentos no elegibles:** Los documentos que presenten un ícono específico (⚠️) no podrán ser utilizados en la simulación. Esta restricción es determinada directamente por Banco Security.
- **Enviar simulación:** Selecciona los documentos deseados y haz clic en "Enviar Simulación". El sistema solicitará una confirmación antes de continuar.
- **Revisar comprobante:** Tras la confirmación, el sistema mostrará un comprobante con el número de documentos seleccionados y el monto total a financiar.
- **Consultar detalle de simulación:** Ingresa en la simulación recientemente creada para ver el detalle completo, que incluye:
  - Cantidad de facturas
  - Fecha de envío
  - Plazo (en días)
  - Tasa (%) de interés aplicada
  - Estado de la simulación
  - Monto documento (total)
  - Monto financiado
  - Diferencia de precio
  - Comisión aplicada
  - IVA aplicado
  - Gastos asociados
  - Aplicación (saldo de procesos anteriores pendientes de cobrar)
  - Monto a Girar (monto a desembolsar después de descuentos)
- **Opciones de la botonera inferior:** En la parte inferior de la vista de detalle, hay tres opciones:
  - "Volver a Simulaciones": regresa al listado general.
  - "Actualizar Simulación": permite actualizar los datos de la simulación actual.
  - "Aceptar Negocio": confirma la aceptación del negocio y realiza automáticamente la cesión del documento.
- **Visualizar negocios aceptados:** Tras aceptar el negocio, el documento cedido puede visualizarse en el módulo de "Negocios Aceptados".

## Reglas para agentes
- Usa el banner azul en el módulo de Simulación solo si la empresa aún no está enrolada en Banco Security; si no aparece, el enrolamiento ya está completo.
- Nunca intentes incluir en una simulación documentos que presenten el ícono de restricción (⚠️), ya que serán rechazados por Banco Security.
- Siempre confirma la acción antes de hacer clic en "Enviar Simulación", ya que el sistema solicitará una confirmación explícita.
- Al aceptar un negocio, verifica que todos los datos en el detalle de simulación sean correctos, ya que la acción "Aceptar Negocio" es definitiva y realiza la cesión automática del documento.

## Errores comunes que evita o menciona
- Intentar usar documentos no elegibles (con ícono ⚠️) en la simulación; estos serán rechazados por Banco Security.
- Omitir el paso de enrolamiento en Banco Security; sin este, no se puede acceder al módulo de Simulación.
- No revisar el detalle completo de la simulación (tasa, comisión, gastos, monto a girar) antes de aceptar el negocio, lo que podría llevar a aceptar condiciones no deseadas.