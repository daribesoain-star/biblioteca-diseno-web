# ventas_con_servicio
**Fuente:** kame | https://help.kameone.cl/es/articles/9858052-manual-ventas-con-servicio

## Qué enseña
Explica cómo crear un servicio en el sistema KAME, incorporarlo en una factura de venta y visualizar su información en los informes de ventas. Se enfoca en prestaciones que no implican movimiento de inventario, permitiendo un control claro y organizado de los servicios prestados.

## Lecciones accionables
- **Creación del servicio:** Ir a **Maestros → Servicio**. Hacer clic en el botón verde para crear un nuevo servicio.
- **Campos requeridos al crear servicio:** Nombre, SKU, unidad de medida, precio de venta neto.
- **Registro:** Una vez ingresados los datos, registrar el servicio. Aparecerá en el panel principal de servicios.
- **Factura de venta con servicio:** Ir a **Ventas → Nuevo Documento**. Seleccionar cliente y datos de venta.
- **Habilitar opción "Inventariable"** y seleccionar una bodega (solo si se incluyen productos físicos).
- **Seleccionar artículos a vender:** Indicar cantidades y precio unitario. Luego seleccionar el servicio creado previamente.
- **Nota clave:** Si solo se facturan servicios, **no es necesario seleccionar bodega**, ya que los servicios no mueven inventario.
- **Informe de Ventas:** Ir a **Informes → Informe de ventas**. Filtrar por el servicio y emitir el informe para ver el detalle del servicio facturado.

## Reglas para agentes
- Usa **Maestros → Servicio** para crear un nuevo servicio, no otro módulo.
- Cuando solo se facturen servicios, **nunca selecciones bodega** ni habilites "Inventariable".
- Para visualizar servicios facturados, usa siempre **Informes → Informe de ventas** y filtra por el servicio específico.
- Al crear un servicio, completa siempre nombre, SKU, unidad de medida y precio de venta neto antes de registrarlo.

## Errores comunes que evita o menciona
- **Seleccionar bodega al facturar solo servicios:** No es necesario y puede generar confusión, ya que los servicios no mueven inventario.
- **No crear el servicio antes de facturar:** El servicio debe estar registrado en Maestros → Servicio antes de poder seleccionarlo en un documento de venta.
- **Omitir el filtro por servicio en el informe de ventas:** Para ver el detalle específico del servicio facturado, es necesario filtrar por él; de lo contrario, el informe mostrará todos los ítems.