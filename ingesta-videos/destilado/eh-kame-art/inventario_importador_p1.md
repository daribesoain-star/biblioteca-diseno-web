# inventario_importador
**Fuente:** kame | https://help.kameone.cl/es/articles/11818503-como-completar-el-importador-de-inventario

## Qué enseña
Guía paso a paso para rellenar el archivo Excel del importador de inventario en Kame, permitiendo cargar productos y sus existencias de forma masiva. Cubre desde la descarga de la plantilla base hasta la validación y carga exitosa en el sistema. Está diseñado para usuarios que inician con inventario o necesitan importar grandes volúmenes de una sola vez.

## Lecciones accionables
- **Acceso al importador:** Ruta en el sistema: Módulo **Inventario → Importador documentos**. Desde allí descargar el archivo Excel de ejemplo.
- **Columnas obligatorias del Excel:**
  - **Tipo de Movimiento:** Valores permitidos: `ENTRADA`, `SALIDA`, `TRASPASO`.
  - **Motivo de Movimiento:** Campo obligatorio. Consultar tabla de motivos disponibles (no listada en el artículo).
  - **Folio:** Campo obligatorio. Se puede indicar manualmente el número del movimiento.
  - **Folio Automatico:** Campo opcional. Para habilitarlo escribir `S` o `A`. Si se activa, el campo Folio puede dejarse con valor `1` y se asignará el correlativo automático.
  - **Bodega de Entrada y de Salida:** Condicional según tipo de movimiento:
    - `ENTRADA`: solo Bodega de Entrada.
    - `SALIDA`: solo Bodega de Salida.
    - `TRASPASO`: ambas bodegas.
    - El nombre de la bodega debe respetar mayúsculas y minúsculas exactas. Consultar tabla de bodegas existentes.
  - **Ficha:** Campo obligatorio. RUT de la ficha asociada (ej: RUT del proveedor para entrada por compra). Formato: `xx.xxx.xxx-x`.
  - **Fecha:** Campo obligatorio. Formato: `dd/mm/aaaa`.
  - **Glosa:** Campo opcional. Comentario para identificar el movimiento.
  - **SKU:** Campo obligatorio. SKU del artículo.
  - **Nombre Unidad de Negocio:** Campo condicional. Si la empresa tiene más de una unidad de negocio, indicar el nombre. Si solo hay una, puede ir en blanco.
  - **Cantidad:** Campo obligatorio. Cantidad del artículo que entra o sale.
  - **Precio Unitario:** Campo condicional. Si es `ENTRADA`, indicar el valor unitario. Si es `SALIDA` o `TRASPASO`, puede ir en blanco.
- **Validación previa a la carga:**
  - Verificar que no falte información obligatoria.
  - Revisar que los números estén sin símbolos ni letras.
  - Guardar el archivo con un nombre fácil de identificar.
- **Proceso de carga:** Volver a **Inventario → Importador documentos**, seleccionar o arrastrar el archivo guardado. El sistema valida la información y reporta errores o éxito.
- **Resultado:** Productos disponibles en Kame con stock inicial y precio de costo registrados.

## Reglas para agentes
- Usa el formato `dd/mm/aaaa` para la columna Fecha; nunca uses otro separador o formato.
- Usa el formato `xx.xxx.xxx-x` para la columna Ficha (RUT); respeta los puntos y guion exactos.
- Usa solo los valores `ENTRADA`, `SALIDA` o `TRASPASO` en la columna Tipo de Movimiento; nunca uses sinónimos o variaciones.
- Para habilitar Folio Automatico, escribe exactamente `S` o `A` en esa columna; nunca uses otras letras o palabras.
- Respeta mayúsculas y minúsculas exactas en los nombres de Bodega; nunca alteres la capitalización.
- Cuando el Tipo de Movimiento sea `ENTRADA`, completa siempre el Precio Unitario; cuando sea `SALIDA` o `TRASPASO`, déjalo en blanco.
- Nunca incluyas símbolos (como $, %, #) ni letras en las columnas numéricas (Cantidad, Precio Unitario, Folio).

## Errores comunes que evita o menciona
- **Información obligatoria faltante:** El sistema rechazará la carga si columnas obligatorias están vacías.
- **Números mal escritos:** No usar símbolos ni letras en campos numéricos (Cantidad, Precio Unitario, Folio).
- **Formato de fecha incorrecto:** Debe ser estrictamente `dd/mm/aaaa`; cualquier otro formato causará error.
- **Formato de RUT incorrecto:** Debe incluir puntos y guion (`xx.xxx.xxx-x`); omitirlos o usar otro formato generará error.
- **Nombres de bodega mal escritos:** No respetar mayúsculas/minúsculas o usar nombres inexistentes causará error de validación.
- **Folio Automatico mal configurado:** Usar valores distintos a `S` o `A` no activará la funcionalidad.
- **Tipo de movimiento no válido:** Solo se aceptan `ENTRADA`, `SALIDA` o `TRASPASO`; cualquier otro valor será rechazado.