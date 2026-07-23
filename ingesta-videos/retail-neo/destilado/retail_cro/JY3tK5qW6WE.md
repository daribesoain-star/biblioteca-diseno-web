# Fixing the Most Overlooked Mobile Filtering Issue
**Fuente:** retail_cro | https://youtu.be/JY3tK5qW6WE

## Qué enseña
Cuando los filtros aplicados no se muestran claramente en la vista de lista de productos en móvil, los usuarios se sienten confundidos, pierden el rastro de su selección y pueden asumir erróneamente que no hay productos disponibles. La solución es mostrar una vista general de filtros aplicados sobre la lista de productos o resultados de búsqueda.

## Lecciones accionables
- Implementa una vista general de filtros aplicados **sobre la lista de productos móvil** (no solo dentro del panel de filtros) para que el usuario confirme filtros activos y entienda el alcance de los resultados de un vistazo.
- Usa uno de dos métodos para mostrar múltiples filtros (>2-3):
  - **Lista de desplazamiento horizontal**: trunca el filtro más a la derecha para indicar que hay más fuera de pantalla. Muestra el número total de filtros en texto sobre la lista (ej: "4 filtros aplicados"). Añade una barra de desplazamiento horizontal para reforzar que se puede hacer scroll.
  - **Apilamiento en múltiples filas**: mantén todos los filtros visibles sin interacción extra. En sitios con muchas especificaciones, incluye el tipo de filtro junto al valor (ej: "thread count 200" en vez de solo "200") para evitar ambigüedades con valores numéricos (precio, dimensiones, etc.).
- En el apilamiento, ten en cuenta que aplicar 8 o más filtros puede empujar la lista de productos fuera del viewport, aunque en pruebas esto ocurrió raramente y solo con usuarios avanzados.
- Para eliminación de filtros: **no cierres la interfaz de filtros tras deseleccionar uno** (como hace Amazon), ya que obliga al usuario a reabrirla repetidamente para eliminar múltiples filtros.

## Reglas para agentes
- Muestra siempre los filtros aplicados en la vista de lista de productos, nunca solo dentro del panel de filtros.
- Cuando uses desplazamiento horizontal, trunca el filtro más a la derecha y muestra el número total de filtros en texto sobre la lista.
- Incluye una barra de desplazamiento horizontal cuando uses el método de lista desplazable.
- En filtros apilados, incluye el tipo de filtro junto al valor cuando haya valores numéricos que puedan ser ambiguos.
- Nunca cierres la interfaz de filtros después de que el usuario deseleccione un solo filtro.

## Errores comunes que evita o menciona
- **Williams-Sonoma y Walmart**: obligan al usuario a reabrir la interfaz de filtros solo para ver qué filtros están aplicados.
- **Hamleys**: los usuarios que aplican múltiples filtros y hacen scroll pierden el rastro de lo estrecha que es su lista, asumiendo que no hay productos adecuados.
- **Nike**: aunque hay 6 filtros aplicados, no hay indicación directa en la lista de productos, forzando al usuario a volver al panel de filtros para verlos o eliminarlos.
- **Amazon**: la interfaz de filtros se cierra tras deseleccionar un filtro, obligando a reabrirla repetidamente para eliminar varios filtros.
- **Wayfair**: el cuarto filtro en la lista horizontal es apenas visible, haciendo que los usuarios piensen que solo hay 3 filtros aplicados.