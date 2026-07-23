# 4 Proven Automation Plays That Consistently Grow Ecommerce Profits | ALM 10
**Fuente:** Optmyzr | https://youtu.be/QplC-zjbu_E

## Qué enseña (2-3 líneas)
Este episodio presenta cuatro estrategias de automatización probadas para ecommerce, desde el pruning inteligente de keywords broad match hasta la creación de campañas DSA dinámicas desde cualquier hoja de cálculo, pasando por bidding basado en ganancias reales (no solo ROAS) y la automatización completa de campañas Shopping usando datos de negocio (margen, inventario, clima). El enfoque central es que la automatización no reemplaza la estrategia humana, sino que la amplifica ejecutándola con precisión y consistencia.

## Lecciones accionables

- **Play 1 – Pruning automático de keywords (regla del "Purgatorio"):**
    - Empieza siempre con **broad match** para maximizar alcance.
    - Configura una regla en Optmyzr (o scripts) que revise el rendimiento de cada keyword como entidad (no search terms).
    - Si una keyword en broad match **sobrepasa** tu umbral de ROAS → agrégala automáticamente en **exact match** en el mismo ad group (para tomar control preciso).
    - Si una keyword en broad match **rinde por debajo** del umbral → pásala primero a **phrase match**; si sigue bajo, pásala a **exact match**; si aún no funciona, **pausa** la keyword.
    - **Capa adicional obligatoria:** Crea una segunda regla que analice **search terms individuales**. Si un search term tiene alto ROAS y volumen de conversiones, agrégalo también en exact match.
    - **Mensualmente:** Reestructura moviendo todos los exact match que se acumularon a una campaña "top keyword" con presupuesto abierto y un portfolio bidding strategy con CPC cap más alto.

- **Play 2 – DSA dinámicos desde cualquier fuente de datos (sin Merchant Center):**
    - Si no tienes feed de producto, usa cualquier **hoja de cálculo (spreadsheet)** que se actualice diariamente como fuente.
    - Con el **Campaign Automator de Optmyzr**, genera campañas DSA segmentadas por **prioridad de negocio** (P1, P2, P3).
    - Crea ad groups alineados con cada **página de oferta** y genera miles de variaciones de anuncios dinámicos que incluyan: **geo-targeting, precio, ratings, características del producto**.
    - Esto es más simple que usar Ad Customizers de Google Ads y no requiere preparación manual en Editor.
    - **Métrica clave a monitorear:** **Conversiones por impresión** (no es métrica nativa de Google, hay que calcularla). Esta métrica captura toda la cadena de valor desde impresión hasta conversión.

- **Play 3 – Profit Bidding (de Smart Bidding a bidding basado en ganancia real):**
    - Reemplaza la optimización por ROAS por optimización por **Profit on Ad Spend (POS)** o margen en dólares.
    - Usa una **matriz de 4 cuadrantes** para decidir el ajuste de bid:
        - **POS por debajo del target + ratio RPC/CPC bajando** → baja el bid **significativamente**.
        - **POS por debajo del target + ratio RPC/CPC subiendo** → baja el bid **ligeramente** (vas mejorando).
        - **POS por encima del target + ratio RPC/CPC subiendo** → sube el bid **significativamente**.
        - **POS por encima del target + ratio RPC/CPC bajando** → sube el bid **ligeramente**.
    - **Proxy para ICC (Incremental Cost per Click):** Como ICC no es métrica disponible en Google Ads ni en la API, usa la **evolución del ratio (Revenue per Click / CPC)** comparando dos períodos (ej. últimos 7 días vs. los 7 días anteriores). Si el ratio sube, estás ganando más profit.
    - Implementa esta matriz como reglas en Optmyzr usando expresiones que comparen períodos.

- **Play 4 – Automatización completa desde datos de negocio (Shopping + PMax + clima):**
    - Reúne 3 dimensiones de datos de negocio: **precios competitivos** (scraping), **margen por SKU**, **prioridad de inventario**.
    - Traduce estos datos a **custom labels en Merchant Center** (ej. etiquetas que combinen competitividad + margen + prioridad).
    - Genera campañas Shopping separadas para cada intersección de estas 3 dimensiones (estructura granular dinámica).
    - Alinea **portfolio bid strategies** con el margen real que gana el retailer en cada grupo.
    - **Capa de activación geo-climática:** Crea campañas PMax y Discovery que solo promocionen **best sellers** (definidos por regla: ej. "SKUs con >10 conversiones en el último trimestre"). Actívalas solo cuando las condiciones climáticas (temperatura, sol) en una ciudad específica disparen la demanda. Cambia la geo automáticamente según el clima del día siguiente.

## Reglas para agentes

- **Usa broad match como punto de partida siempre** para maximizar alcance, luego deja que la automatización decida el match type final.
- **Nunca dejes una keyword broad match sin evaluar** después de un período de recolección de datos; aplica la regla del purgatorio automáticamente.
- **Siempre empareja el pruning de keywords con una regla de search terms** para capturar términos altamente rentables que no son la keyword exacta.
- **Cuando uses DSA desde spreadsheet, actualiza la fuente a diario** para que los anuncios reflejen precios, disponibilidad y ofertas en tiempo real.
- **Nunca optimices solo por ROAS** si tu objetivo es ganancia; usa Profit on Ad Spend (POS) o margen en dólares como métrica de decisión.
- **Usa el ratio RPC/CPC como proxy de ICC** cuando el incremental cost per click no esté disponible; compáralo entre dos períodos para decidir dirección del bid.
- **En estructuras Shopping complejas, alinea cada campaña con una combinación única de margen, competitividad e inventario**; no mezcles SKUs con diferentes perfiles de rentabilidad en la misma campaña.
- **Activa campañas climáticas solo cuando las condiciones meteorológicas locales superen un umbral** (ej. temperatura >25°C en una ciudad); desactívalas automáticamente cuando cambien.

## Errores comunes que evita o menciona

- **Confiar ciegamente en broad match sin control:** Broad match da alcance masivo pero también mucho gasto desperdiciado. La solución no es evitarlo, sino automatizar el pruning para quedarse solo con lo que funciona.
- **Optimizar solo por ROAS ignorando el margen:** ROAS no es igual a ganancia. Un ROAS alto puede ocultar márgenes bajos. Hay que incorporar el margen real en dólares en las decisiones de bidding.
- **No usar el proxy correcto para ICC:** Como el Incremental Cost per Click no es una métrica disponible en Google Ads, intentar calcularlo directamente lleva a error. Usar el ratio RPC/CPC comparado entre períodos es el proxy correcto.
- **Tratar el DSA como una campaña única y genérica:** Los DSA funcionan mucho mejor cuando se segmentan por prioridad de negocio (P1, P2, P3) y se generan anuncios dinámicos ultra específicos desde datos de negocio, no desde páginas web genéricas.
- **Ignorar la métrica "conversiones por impresión":** Muchos se enfocan solo en tasa de conversión o ROAS, pero "conversiones por impresión" captura toda la cadena de valor y revela si realmente estás generando volumen o solo eficiencia en pocas ventas.
- **No actualizar la estructura mensualmente:** Acumular keywords en exact match sin reordenarlas en una campaña dedicada con presupuesto abierto desperdicia el potencial de esas keywords ganadoras.