# When to Switch from Max Conv. to tCPA (Most Get This Wrong)
**Fuente:** GrowMyAds | https://youtu.be/qnQhW-PcUds

## Qué enseña (2-3 líneas)
Cómo y cuándo migrar correctamente una campaña de Google Ads de la estrategia de puja "Maximizar conversiones" a "CPA objetivo" (tCPA), explicando el volumen mínimo de conversiones necesario, el mecanismo de "techo" que impone tCPA, y el proceso de escalonamiento gradual para evitar ahogar el gasto del presupuesto.

## Lecciones accionables
- **Regla de volumen mínimo:** No migrar a tCPA hasta tener al menos **30 conversiones en los últimos 30 días**. Idealmente 50+ para mayor seguridad.
- **Procedimiento de migración paso a paso:**
  1. Revisar que no haya ineficiencias internas (malas keywords, anuncios deficientes) antes de cambiar la puja.
  2. Ir a configuración de campaña → Estrategia de puja → seleccionar "Establecer un costo por adquisición objetivo".
  3. **NO** fijar el CPA objetivo por debajo del CPA actual del período de 30 días. Ejemplo concreto del video: si el CPA actual es $307, establecer tCPA en **$320** (aproximadamente 4-5% por encima).
  4. Dejar correr la campaña con ese tCPA durante **al menos una semana** verificando consistencia en volumen y gasto.
  5. Luego, **escalonar hacia abajo** ("stair step") reduciendo el tCPA gradualmente hasta alcanzar la meta deseada (ej: de $320 → $300 → $280 → $250).
- **Parámetros técnicos clave:**
  - tCPA funciona como un **techo** (ceiling): Google evita subastas que superen ese costo, por lo que entrará a menos subastas que en Maximizar conversiones.
  - Maximizar conversiones sin CPA: Google gasta todo el presupuesto sin importar el CPA, entrando a todas las subastas posibles.
  - Maximizar conversiones con CPA objetivo: Google intenta promediar el CPA en un período de 30 días, entrando solo a subastas donde cree posible cumplir el objetivo.
- **Estrategia alternativa para grandes presupuestos:** Ejecutar campañas con Maximizar conversiones y controlar eficiencia mediante **límites de presupuesto** (budget caps) en lugar de usar tCPA. Ejemplo: campaña de $10,000/día en Max Conv., reduciendo presupuesto si el CPA sube demasiado.

## Reglas para agentes
- **Usa tCPA solo cuando** la campaña tenga al menos 30 conversiones en los últimos 30 días; si tiene menos, mantén Maximizar conversiones.
- **Nunca** establezcas un tCPA por debajo del CPA actual del período de 30 días al migrar; siempre ponlo un 5-10% por encima para dar margen.
- **Nunca** saltes directamente a tu CPA objetivo final desde Maximizar conversiones; escala hacia abajo gradualmente (stair step).
- **Usa Maximizar conversiones sin tCPA** cuando quieras maximizar volumen sin restricción de eficiencia, controlando solo con el presupuesto diario.
- **Verifica** que no haya ineficiencias en keywords, anuncios o segmentación antes de cambiar la estrategia de puja.

## Errores comunes que evita o menciona
- **Error #1:** Migrar a tCPA con solo 5 conversiones en el historial de la campaña. Resultado: la campaña "se ahoga" (suffocated campaign), deja de gastar el presupuesto completo y no genera volumen.
- **Error #2:** Fijar el tCPA directamente en el objetivo final deseado (ej: $250) cuando el CPA actual es más alto (ej: $307). Resultado: Google elimina la mayoría de subastas, mata el volumen de conversiones y el gasto se desploma.
- **Error #3:** No entender que tCPA es un techo (ceiling) que restringe las subastas elegibles, no una meta flexible. Google evitará subastas caras incluso si eso significa no gastar el presupuesto.
- **Error #4:** Asumir que Google puede "regalar" conversiones al CPA deseado sin datos históricos suficientes para entrenar el modelo de puja.