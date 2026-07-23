# Profitability Large Account Deep Dive w/Spencer Toft
**Fuente:** FoxwellDigital | https://youtu.be/aEA0DD7m7bI

## Qué enseña (2-3 líneas)
Spencer Toft desglosa un sistema de rentabilidad en tres niveles de Profit Contribution (PC1, PC2, PC3) para cuentas grandes, usando métricas por pedido y correlación histórica entre órdenes por día y gastos operativos por pedido. Enseña a proyectar ganancias mensuales y a decidir cuándo escalar presupuestos publicitarios basándose en la eficiencia operativa.

## Lecciones accionables
- **Definir PC1 (Profit Contribution 1):** Ingresos totales menos shipping, taxes, cost of goods, returns y discounts. Fórmula: `PC1 = Revenue - (Shipping + Taxes + COGS + Returns + Discounts)`.
- **Definir PC2 (Profit Contribution 2):** PC1 menos advertising y marketing expenses. Fórmula: `PC2 = PC1 - Advertising & Marketing`.
- **Definir PC3 (Profit Contribution 3):** PC2 menos operating expenses (payroll, etc.). Es el bottom line. Fórmula: `PC3 = PC2 - Operating Expenses`.
- **Contextualizar todo en base "per order":** Dividir cualquier métrica (PC1, PC2, PC3, overhead) entre el número de órdenes del período.
- **Calcular órdenes mensuales proyectadas:** `Orders per month = Current Orders Per Day (OPD) × Days in month`.
- **Calcular PC1 per order:** `AOV - (Shipping per order + Taxes per order + COGS per order + Returns per order + Discounts per order)`. Usar datos históricos del P&L divididos por número de órdenes.
- **Calcular PC2 per order:** `PC1 per order - CPA (Cost Per Acquisition)`.
- **Calcular PC3 per order:** `PC2 per order - Overhead expense per order`.
- **Estimar ganancia mensual:** `Orders per month × PC3 per order`.
- **Construir análisis de correlación histórica:** Usar X = Orders Per Day (OPD) e Y = Operating Expense per order. Ingresar datos mensuales (ej. enero 2023, febrero, marzo, abril, mayo). La fórmula de correlación arroja un coeficiente (0 = sin correlación, +1 = positiva perfecta, -1 = negativa perfecta).
- **Interpretar correlación negativa fuerte:** Si el coeficiente es cercano a -1, significa que al aumentar OPD, el operating expense per order disminuye. Esto permite ser más rentable aunque el CPA no mejore.
- **Estimar overhead expense per order futuro:** Usar la ecuación de regresión derivada de la correlación. Ingresar un X input (OPD proyectado) para obtener un Y output estimado.
- **Añadir margen de seguridad:** Si las proyecciones son ajustadas, agregar $1–$2 al overhead expense per order estimado para no sobreestimar rentabilidad.
- **Revisar cada 1–2 semanas:** Extrapolar resultados de las últimas dos semanas al mes completo para verificar si se está en un buen spot de rentabilidad.
- **Para marcas con múltiples productos:** Hacer el análisis para los top 3 productos por separado, no usar un blended AOV, ya que varía según el tráfico y comportamiento de compra.

## Reglas para agentes
- Usa PC1, PC2, PC3 como métricas jerárquicas de rentabilidad: PC1 = revenue neto de producto, PC2 = después de ads, PC3 = después de operativos.
- Siempre contextualiza en base "per order" dividiendo cualquier métrica agregada entre el número de órdenes del período.
- Cuando proyectes rentabilidad mensual, multiplica órdenes por día × días del mes × PC3 per order.
- Para estimar overhead expense per order futuro, usa correlación histórica OPD vs. overhead per order y añade $1–$2 de margen de seguridad si los márgenes son ajustados.
- No uses blended AOV para marcas con múltiples productos; segmenta por top 3 productos o por canal de tráfico.
- Revisa la rentabilidad cada 1–2 semanas extrapolando datos de las últimas dos semanas al mes completo.

## Errores comunes que evita o menciona
- **No confundir PC2 y PC3:** Algunos invierten el orden (restan operating expenses antes que advertising). Spencer prefiere restar advertising primero, luego operating expenses.
- **No confiar en correlaciones con pocos datos:** No usar una correlación con menos de 5–6 puntos de datos mensuales (ej. solo 3 meses no es fiable).
- **No usar AOV de Shopify sin ajustar:** Shopify recientemente excluye shipping, taxes y discounts del AOV. Hay que incluir todo manualmente.
- **No asumir que overhead expense per order es fijo:** Disminuye al escalar órdenes (correlación negativa). Ignorarlo lleva a subestimar rentabilidad al escalar.
- **No sobreestimar proyecciones:** Siempre añadir $1–$2 de colchón al overhead estimado si los márgenes son estrechos.
- **No mezclar productos en un solo cálculo:** Si los precios varían, hacer análisis separados por producto o top 3 productos.