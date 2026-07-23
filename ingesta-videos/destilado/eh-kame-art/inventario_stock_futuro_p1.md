# inventario_stock_futuro
**Fuente:** kame | https://help.kameone.cl/es/articles/10178649-manual-stock-futuro

## Qué enseña
Explica cómo habilitar y usar la herramienta de stock futuro en KAME ERP para proyectar la disponibilidad real de artículos, considerando stock actual, pedidos aprobados (restan) y órdenes de compra aprobadas (suman). Permite anticipar quiebres de stock y optimizar la planificación comercial y de compras.

## Lecciones accionables
- **Habilitar la funcionalidad:** El Super Usuario debe ir a su perfil → **Opciones Avanzadas** → localizar dentro de Inventario la opción **"Muestra Información de Stock Futuro en movimientos"** → habilitarla y registrar los cambios. Si hay dificultades, solicitar soporte a KAME.
- **Fórmula exacta del stock futuro:**  
  `Stock futuro = Stock actual del artículo (saldo a la fecha en bodega) - Cantidades en pedidos aprobados + Cantidades en órdenes de compra aprobadas`
- **Ejemplo práctico:** Stock actual = 10 mesas; Pedido aprobado = 3 mesas; OC aprobada = 4 mesas → Stock futuro = 10 - 3 + 4 = 11.
- **Visualización en movimientos:** Al facturar y seleccionar un artículo, se muestra el stock actual y el stock futuro en la misma interfaz.
- **Informe de Bodega:** Ir a **Informes → Inventario por Bodegas**, habilitar el filtro de stock futuro antes de emitir el informe. El reporte muestra:
  - Entradas - Salidas = Stock en bodega (ej: 10)
  - Stock en bodega - Pedidos aprobados = Stock presente (ej: 7)
  - Stock presente + OC aprobadas = Stock futuro (ej: 11)
- **Interpretación del informe:** La columna de stock futuro refleja la proyección final disponible para vender tras considerar compromisos y reposiciones.

## Reglas para agentes
- Usa la fórmula `stock actual - pedidos aprobados + OC aprobadas` para calcular el stock futuro en cualquier consulta de inventario.
- Habilita siempre la opción avanzada **"Muestra Información de Stock Futuro en movimientos"** antes de intentar visualizar el stock futuro en transacciones.
- Al generar el informe **Inventario por Bodegas**, activa el filtro de stock futuro antes de emitirlo; de lo contrario, no aparecerá la columna correspondiente.
- Nunca confundas "stock presente" (stock en bodega menos pedidos aprobados) con "stock futuro" (stock presente más OC aprobadas).
- Solo considera pedidos y órdenes de compra en estado **aprobados** para el cálculo; ignora borradores o rechazados.

## Errores comunes que evita o menciona
- **No habilitar la opción avanzada:** Sin activar "Muestra Información de Stock Futuro en movimientos", el sistema no mostrará el stock futuro en ninguna pantalla de movimiento.
- **Interpretar mal el informe:** Confundir "Stock en bodega" (10) con "Stock presente" (7) o "Stock futuro" (11). La lectura correcta es: Stock en bodega - Pedidos aprobados = Stock presente; Stock presente + OC aprobadas = Stock futuro.
- **Olvidar filtrar en el informe:** Si no se activa el filtro de stock futuro antes de emitir el reporte de Inventario por Bodegas, la columna de stock futuro no se genera.
- **No considerar el estado de aprobación:** Incluir pedidos u órdenes de compra no aprobados distorsiona la proyección del stock futuro.