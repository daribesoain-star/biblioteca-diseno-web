# honorarios_primera_orden
**Fuente:** kame | https://help.kameone.cl/es/articles/12063318-mi-primera-orden-de-boleta

## Qué enseña (2-3 líneas)
Explica cómo crear una Orden de Boleta de Honorarios desde cero en el módulo de Boletas de Honorarios de KAME ERP, y cómo asociarla posteriormente a una boleta de honorarios sincronizada desde el SII. Cubre el llenado de campos obligatorios, el detalle de servicios y las acciones disponibles tras guardar la orden.

## Lecciones accionables
- Ingresa al módulo **"Boletas de Honorarios"** y selecciona la sección **"Órdenes de Boletas"**.
- Haz clic en el **botón verde** en la parte superior para crear una **"Nueva Orden de Boleta"**.
- Completa los siguientes campos obligatorios:
  - **Fecha**: fecha de emisión de la orden.
  - **Tipo de boleta**: seleccionar entre *Honorarios Profesionales* o *Prestación de Servicios*.
  - **Ficha de la persona**: persona a quien se asocia la boleta.
  - **Unidad de negocio**: unidad que asumirá el gasto.
  - **Fecha de pago**: fecha en que se pagará el servicio.
  - **Comentario asociado**: observación opcional.
- En el detalle del servicio (aparecerá en el PDF), agrega:
  - Descripción del servicio
  - Fecha de presentación
  - Cantidad de servicios
  - Precio unitario
  - Los montos totales se calculan automáticamente.
- Al guardar, la orden aparece en el listado de registros. Desde las opciones de la orden puedes:
  - Ver detalle de los servicios
  - Visualizar el PDF (descargar o enviar por correo)
  - Registrar la boleta manualmente
  - Enviar la orden por mail
  - Desaprobar la orden (para modificaciones)
  - Cerrar manualmente la orden
- Para asociar una boleta sincronizada desde el SII:
  1. Ve a la sección **"Boletas de Honorarios"** y busca el honorario deseado.
  2. En el menú de opciones del honorario, haz clic en **"Asociar a Orden de Boleta"**.
  3. En el cuadro de diálogo, selecciona la orden correspondiente (solo se muestran órdenes asociables).
  4. Verifica que el honorario quede asociado en el listado de boletas.

## Reglas para agentes
- Usa el módulo **"Boletas de Honorarios"** → sección **"Órdenes de Boletas"** para crear órdenes nuevas.
- Siempre completa los campos: Fecha, Tipo de boleta, Ficha de la persona, Unidad de negocio, Fecha de pago.
- Para asociar una boleta sincronizada, usa la opción **"Asociar a Orden de Boleta"** desde el menú del honorario.
- Nunca intentes asociar una orden que no esté visible en el cuadro de diálogo; solo se muestran órdenes válidas para asociación.
- Si necesitas modificar una orden, primero **desapruébala** desde las opciones de la orden.

## Errores comunes que evita o menciona
- No omitir el detalle del servicio (descripción, fecha, cantidad, precio unitario), ya que es la información que aparece en el PDF.
- No olvidar que los montos totales se calculan automáticamente, no se ingresan manualmente.
- No intentar asociar una orden que no esté aprobada o que ya esté cerrada; el sistema solo muestra órdenes asociables.
- No confundir el tipo de boleta: seleccionar correctamente entre *Honorarios Profesionales* o *Prestación de Servicios*.