# Why Google Isn't Spending Your Google Ads Budget (and How to Fix)
**Fuente:** GrowMyAds | https://youtu.be/57dmkmi9vmE

## Qué enseña (2-3 líneas)
Explica por qué las campañas de Google Ads con estrategias de puja automática (Target ROAS o Target CPA) no gastan el presupuesto diario completo, incluso cuando hay conversiones. Muestra cómo diagnosticar el problema usando métricas de "impression share" y cómo ajustar la estrategia para aumentar el gasto sin sacrificar rendimiento.

## Lecciones accionables
- **Diagnóstico principal:** Ve a "Columnas" → "Modificar columnas" → "Métricas de competencia" y agrega:
  - "Search impression share" (porcentaje de impresiones)
  - "Search lost due to rank" (perdido por ranking)
  - "Search lost due to budget" (perdido por presupuesto)
- **Si "Search lost due to rank" es alto (ej. 75%) y "Search lost due to budget" es 0%:** El problema es tu puja. Google no puede pujar lo suficiente para entrar en más subastas sin violar tu objetivo de Target ROAS o Target CPA.
- **Si "Search impression share" es muy alto (ej. 97%) y "Search lost due to budget" es 0%:** Ya estás capturando casi todas las impresiones disponibles. No hay más volumen que obtener; el presupuesto no se gasta porque no hay más tráfico.
- **Para aumentar el gasto cuando el límite es el ranking:** Debes reducir tu objetivo de Target ROAS (ej. de 900% a 800%) o aumentar tu Target CPA. Esto le da a Google un techo más alto para pujar y entrar en más subastas.
- **No hagas ajustes diarios:** Google opera con un promedio de 30 días. Un día puede tener ROAS de 1100% y otro de 600%; el promedio debe acercarse a tu objetivo. Cambiar la puja a diario desestabiliza el aprendizaje de la puja automática.
- **Estrategias sin techo de rendimiento:** Si usas "Maximizar clics" o "Maximizar conversiones" sin objetivo de CPA/ROAS, el problema de gasto suele ser por falta de volumen de búsqueda (impression share cercano al 100%).

## Reglas para agentes
- **Usa "Search lost due to rank" y "Search lost due to budget" como primer diagnóstico** cuando una campaña con puja automática no gasta el presupuesto diario.
- **Nunca ajustes la puja (Target ROAS o Target CPA) a diario**; espera al menos 30 días para evaluar cambios.
- **Cuando "Search lost due to rank" > 50% y "Search lost due to budget" = 0%**, la solución es relajar el objetivo de rendimiento (bajar ROAS o subir CPA), no aumentar el presupuesto.
- **Cuando "Search impression share" > 95% y "Search lost due to budget" = 0%**, no hay más volumen disponible; no intentes forzar el gasto con pujas más altas.

## Errores comunes que evita o menciona
- **Confundir "no gastar presupuesto" con "problema de configuración":** El error es pensar que aumentar el presupuesto soluciona el gasto bajo, cuando el verdadero límite es la puja (Target ROAS/CPA).
- **Ajustar la puja basándose en un solo día bueno o malo:** Google deliberadamente alterna conversiones caras y baratas para promediar el objetivo en 30 días. Cambiar a diario rompe ese equilibrio.
- **Ignorar las métricas de "impression share":** Sin revisar "Search lost due to rank" vs "Search lost due to budget", no se puede distinguir entre un problema de puja o de volumen de mercado.
- **Asumir que "Maximizar clics" o "Maximizar conversiones" sin objetivo siempre gastará el presupuesto:** Si el impression share ya es casi 100%, el límite es la demanda, no la estrategia de puja.