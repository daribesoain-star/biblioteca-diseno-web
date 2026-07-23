# The Complete Q4 Shopping PPC Checklist (Includes Performance Max)
**Fuente:** Optmyzr | https://youtu.be/v7VBRXkLMZA

## Qué enseña (2-3 líneas)
Este video enseña a preparar y optimizar campañas de Shopping en Google Ads para el Q4, cubriendo análisis de rendimiento, construcción de estructuras granulares, sincronización con inventario y automatización de optimizaciones tanto para campañas Standard Shopping como Performance Max. Se enfoca en el uso de herramientas específicas de Optmyzr para lograr eficiencia y escalabilidad.

## Lecciones accionables
- **Analizar rendimiento con Shopping Analysis Tool:** Combina atributos del feed (ej. `product type`, `brand`, `price`) con métricas de Google Ads (ej. `conversions`, `cost per conversion`). Ejemplo: agregar datos por rango de precio para identificar qué precio es más rentable y cuál deja de serlo.
- **Auditar el feed con Shopping Feed Audits:** Ejecuta una revisión de salud del feed que identifica productos rechazados, razones (ej. `mismatched domains`, `missing value`, `invalid currency`), y problemas como títulos que exceden 40 caracteres (se cortan después de 30-40 caracteres en la interfaz). Usa la opción de habilitar/deshabilitar auditorías opcionales como `product type`.
- **Construir campañas Performance Max con Shopping Campaign Builder:** Selecciona atributo para dividir (ej. `brand` con 97% de cobertura). Configura `daily budget` combinado, `feed label`, ubicaciones, y convención de nombres. Si hay más de 100 campañas, usa el filtro para lanzar solo un subconjunto. Ejemplo: estructura por margen (alto, medio, bajo) para asignar presupuestos diferenciados.
- **Construir campañas Standard Shopping con el mismo Builder:** Similar a Performance Max, pero sin límite de 100 campañas. Puedes crear 388 campañas por `brand` + `item ID`. Edita presupuestos y pujas en bulk desde la vista previa.
- **Sincronizar campañas con inventario usando Product Group Refresher:** Configura automatización diaria para que las campañas se actualicen automáticamente cuando entren/salgan productos del feed. Selecciona campaña existente o creada con Builder, previsualiza adiciones/eliminaciones, y programa la frecuencia (ej. cada día).
- **Optimizar Performance Max excluyendo listing groups de bajo rendimiento con Rule Engine:** Crea reglas tipo "if-then": si es campaña Performance Max, ha tenido `impressions` y `clicks`, pero `conversions = 0`, entonces excluye esos listing groups. Automatiza la ejecución o recibe notificaciones para revisión manual.
- **Optimizar Standard Shopping con reglas preconstruidas:** Usa estrategias como "Find expensive product groups and reduce bids" (reduce puja 10% si CPA es 1.5x mayor que el CPA de la campaña) o "Add negatives for search queries with high cost and zero conversions" (añade como negativo a nivel de ad group).
- **Usar herramientas de un clic para Standard Shopping:** `Manage Shopping Bids`, `Negative Tool for Shopping`, y `Attribute Bidder` permiten revisar sugerencias y aplicar cambios con un solo clic.
- **Monitorear KPIs con alertas:** En el dashboard, añade alertas para métricas clave (ej. `cost per conversion`) con desviación permitida (ej. 10% arriba/abajo). Configura alertas a nivel de campaña Shopping seleccionando `campaign type = Shopping`. Integra con Slack o Microsoft Teams.
- **Proyectar gasto con Spend Projection:** Usa datos históricos de los últimos años y patrones de gasto reciente para pronosticar el gasto mínimo y máximo diario hasta una fecha (ej. 30 de noviembre). La herramienta dirige a `Optimized Budgets` para reasignar presupuesto entre campañas.

## Reglas para agentes
- Usa `Shopping Analysis Tool` para agregar datos por atributo del feed (ej. `price range`, `product type`) cuando necesites identificar qué segmentos de producto son más rentables o cuándo un precio deja de ser rentable.
- Nunca ignores productos rechazados en el feed; usa `Shopping Feed Audits` para obtener la razón exacta (ej. `mismatched domains`, `missing value`) y corregir antes del Q4.
- Cuando construyas campañas Performance Max, no crees más de 100 campañas por cuenta; si el atributo genera más, usa filtros para seleccionar solo un subconjunto o cambia la estructura (ej. por margen en lugar de por marca).
- Programa `Product Group Refresher` con frecuencia diaria durante el Q4 para mantener campañas sincronizadas con el inventario cambiante.
- Usa `Rule Engine` para excluir listing groups de Performance Max que tengan `impressions > 0`, `clicks > 0`, y `conversions = 0`; automatiza la exclusión o revisa manualmente antes de aplicar.
- Para Standard Shopping, aplica reglas preconstruidas como reducir puja 10% cuando el CPA del producto group sea 1.5x mayor que el CPA de la campaña.
- Configura alertas de presupuesto y CPA con una desviación permitida mínima del 10% para evitar notificaciones por ruido estadístico.
- Usa `Spend Projection` antes de Black Friday para anticipar picos de gasto y reasignar presupuesto con `Optimized Budgets` hacia campañas de mayor rendimiento.

## Errores comunes que evita o menciona
- **Títulos de producto demasiado largos:** Se cortan después de 30-40 caracteres y solo se expanden en desktop; el feed audit lo señala para que los acortes.
- **Productos sin atributos requeridos:** El feed audit identifica productos que faltan `price`, `availability`, etc., y los marca como errores a corregir.
- **Crear demasiadas campañas Performance Max:** El límite es 100; el Builder muestra un error si se excede y sugiere filtrar o cambiar la estructura.
- **No sincronizar campañas con inventario cambiante:** Durante el Q4, productos entran/salen constantemente; el `Product Group Refresher` automatiza la actualización diaria para evitar anunciar productos agotados.
- **Mantener listing groups de bajo rendimiento en Performance Max:** La regla en `Rule Engine` identifica grupos con impresiones y clics pero cero conversiones para excluirlos automáticamente.
- **Ignorar picos de gasto estacionales:** `Spend Projection` usa datos históricos de años anteriores para anticipar aumentos de gasto en Black Friday y permite planificar presupuestos.
- **No usar alertas con desviación permitida:** Sin configurar una desviación (ej. 10%), se reciben notificaciones por cambios mínimos irrelevantes en el CPA.