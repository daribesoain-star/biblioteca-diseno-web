# How to Analyze Facebook Ads Data the Right Way (The 2026 Guide)
**Fuente:** daradenney | https://youtu.be/CCsty8R0UaA

## Qué enseña
Enseña a analizar datos de Meta Ads (Facebook/Instagram) separando métricas primarias (qué funciona) de métricas secundarias (por qué funciona), con configuración de columnas en Ads Manager, uso de herramientas externas como Motion y Triple Whale, y un marco avanzado de análisis cualitativo de creativos que incluye formato, mensaje, creador y datos de segmentación.

## Lecciones accionables
- Configura en Ads Manager estas columnas exactas: **Delivery**, **Bid Strategy**, **Attribution Setting**, **Budget**, **Amount Spent**, **Purchases**, **Cost per Purchase**, **ROAS**, **Frequency**, **Reach**, **Impressions**, **Cost per Reach**, **CPM**, **Unique Outbound Click-Through Rate**, **Cost per Link Click**, **Hook Rate** (métrica personalizada), **Hold Rate** (métrica personalizada), **Video Average Play Time**, **Post Shares**.
- Para **Bid Strategy** usa "Highest Volume" si empiezas; para **Attribution Setting** usa "7-day click, 1-day view".
- Presupuesto mínimo sugerido para campañas ASC: **$100/día**; número mínimo de creativos en ASC para rendimiento óptimo: **20**.
- Fórmula exacta para **Hook Rate** (métrica personalizada en Ads Manager): `(Video Plays at 3 Seconds / Impressions) * 100`. Fórmula para **Hold Rate**: `(Video Plays at 15 Seconds o hasta el final si el video es menor a 15s / Impressions) * 100`.
- Ordena siempre los datos de **Amount Spent** de mayor a menor para priorizar lo que más gasta.
- Usa **Varos** para benchmarking de CPM y click-through rate por industria/producto/demografía.
- Para análisis avanzado de creativos, captura estos datos cualitativos: **formato** (UGC, testimonial, estático, carrusel, catálogo), **creador/celebridad/influencer**, **tipo de mensaje** (value-based, competitor comparison, negative marketing, problem-solution, question-based), **entorno/escenario** (coche, casa, exterior), **calidad de producción**.
- Revisa **Breakdown Data** en Ads Manager por **edad**, **género** y **placement** (Instagram vs Facebook, feed vs stories vs reels) para cada creativo.
- Usa **Motion** para reportes automáticos semanales de "top performing creatives", análisis por formato (estáticos vs video vs carrusel), comparación entre agencias partners, y análisis por tipo de creador.
- Para análisis de mensajería escalable: identifica si el mensaje apela a **problem-aware** vs **solution-aware** vs **unaware** segments; los mensajes más escalables suelen apelar al segmento más amplio (unaware/problem-aware).

## Reglas para agentes
- **Nunca optimices y analices al mismo tiempo**: primero completa el análisis, luego haz cambios.
- **Usa solo métricas primarias** (Amount Spent, Purchases, Cost per Purchase, ROAS) para decidir aumentos de presupuesto o pausas; no uses métricas secundarias para optimizar.
- **Nunca fuerces presupuesto a creativos con mejor ROAS aparente si Meta no les asigna gasto**: respeta el "breakdown effect" de Meta; probar lo contrario suele empeorar el rendimiento.
- **Alarma si Frequency supera 5 en los últimos 7 días**: indica que estás saturando a la misma audiencia y necesitas nuevos creativos o segmentación.
- **Siempre incluye datos cualitativos** (formato, creador, mensaje, entorno) en cualquier análisis de creativo; no te limites a métricas numéricas.
- **Usa Unique Outbound Click-Through Rate** en lugar del CTR estándar: el estándar incluye clics que no llegan al landing page (perfil, etc.), el unique outbound es el puro.
- **Si usas Triple Whale o Northbeam**, solo es necesario cuando gestionas múltiples canales de atribución (TV, podcasts, influencers, Google) y presupuestos grandes; para solo Meta Ads, Ads Manager es suficiente.

## Errores comunes que evita o menciona
- **Enfocarse en CTR, CPM o CPC como métricas principales**: estas son métricas secundarias que cuentan "por qué", no "qué funciona". El CTR puede ser bajo en audiencias broad sin ser malo.
- **Analizar creativos solo con datos numéricos (ROAS, CTR, hook rate)**: ignorar datos cualitativos como formato, creador, tipo de mensaje, entorno y ubicación del video (ej. estar en un coche vs en casa).
- **Detenerse en "versión B ganó" sin desglosar por qué**: falta analizar si el mensaje es escalable (apela a audiencias más amplias) vs mensajes que solo convierten rápido en fondo de embudo.
- **No usar Breakdown Data** (edad, género, placement) para entender a qué segmento específico atrae cada creativo.
- **Comparar creativos sin contexto de su propia cuenta ni de competidores**: el análisis completo debe incluir comparación con top performers propios y con estrategias de mensajería de la competencia.
- **Ignorar el "breakdown effect" de Meta**: asumir que un creativo con mejor ROAS debería recibir más presupuesto, cuando el algoritmo ya determinó que no escalaría igual de bien.