# inventario_stock_presente
**Fuente:** kame | https://help.kameone.cl/es/articles/10166893-manual-stock-presente

## Qué enseña
Explica cómo habilitar y usar la funcionalidad "Stock Presente" en KAME ERP para conocer la disponibilidad real de artículos en bodega, restando del stock actual las reservas generadas por pedidos de clientes aprobados pero aún no despachados. Incluye configuración, interpretación en movimientos de inventario y consulta mediante el informe de bodegas.

## Lecciones accionables
- **Habilitar la funcionalidad:** El Super Usuario de la empresa debe ir a su perfil → **Opciones Avanzadas**. Localizar las opciones avanzadas de **Inventario**, activar la opción **"Muestra Información de Stock Presente en movimientos"** y registrar los cambios.
- **Visualización en movimientos:** Una vez habilitada, al facturar e indicar un artículo se mostrará el stock actual y el stock futuro. El stock presente se compone de: **Stock actual del artículo** menos **las cantidades ingresadas en pedidos aprobados**.
- **Ejemplo práctico:** Si el stock actual es 10 mesas y hay un pedido aprobado con 3 mesas, el stock presente es: **10 - 3 = 7**.
- **Consulta en informe de bodega:** Ir a **Informes → Inventario por Bodegas**. Antes de emitir el informe, habilitar el filtro de stock presente y luego generarlo. El informe se interpreta como: **Entrada - Salidas = Stock Actual (10) - Pedidos aprobados (3) = Stock presente (7)**.

## Reglas para agentes
- Usa la opción "Muestra Información de Stock Presente en movimientos" en Opciones Avanzadas de Inventario para habilitar la funcionalidad.
- Siempre calcula el stock presente como: stock actual menos cantidades en pedidos aprobados no despachados.
- Al facturar, verifica el stock presente antes de comprometer una venta para evitar sobreventas.
- Para consultar stock presente por bodega, usa el informe "Inventario por Bodegas" con el filtro de stock presente habilitado.

## Errores comunes que evita o menciona
- **Sobreventas:** No comprometer stock que ya está reservado en pedidos aprobados no despachados. El stock presente previene este error al mostrar la disponibilidad real.
- **Confundir stock actual con stock presente:** El stock actual no descuenta reservas; el stock presente sí lo hace restando pedidos aprobados.
- **No habilitar la funcionalidad:** Sin activar la opción en Opciones Avanzadas, no se visualizará el stock presente en movimientos ni en informes.