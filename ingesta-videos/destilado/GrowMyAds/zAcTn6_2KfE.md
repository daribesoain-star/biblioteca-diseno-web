# How to Decrease CPCs & Wasted Ad Spend When Using Smart Bidding (EASY Trick)
**Fuente:** GrowMyAds | https://youtu.be/zAcTn6_2KfE

## Qué enseña (2-3 líneas)
Cómo usar una estrategia de puja de portafolio (portfolio bid strategy) con un límite máximo de CPC para corregir el sobrecosto en campañas de Smart Bidding (Target CPA) cuando Google está pujando demasiado alto en ciertos clics. Explica el cálculo matemático para determinar el CPC máximo necesario según la tasa de conversión y el CPA objetivo, y cómo aplicar un tope sin estrangular el aprendizaje automático.

## Lecciones accionables
- **Calcular el CPC máximo necesario:** Divide el CPA objetivo entre el número promedio de clics por conversión. Ejemplo del video: CPA objetivo = $35, tasa de conversión = 17% (1 conversión cada ~6 clics) → CPC máximo = 35 / 6 = $5.83.
- **Ir a Google Ads:** Tools → Budget & Bidding → Bid Strategies → crear nueva "Portfolio bid strategy".
- **Configurar la portfolio bid strategy:**
  - Nombrar con convención: `TCPA_[valor]_MaxCPC_[límite]_[fecha]` (ej. `TCPA_35_MaxCPC_14_Sept5`).
  - Seleccionar la campaña problemática (una sola campaña dentro de la portfolio).
  - Establecer Target CPA igual al que ya tenía la campaña (ej. $35).
  - Activar "Advanced options" → marcar "Maximum bid limit".
  - **No usar el CPC máximo calculado ($5.83) directamente** porque mata el volumen de conversiones. En su lugar, usar un límite más alto que recorte solo los picos excesivos. Ejemplo: si el CPC promedio actual es ~$7, fijar el límite en ~$14 (el doble) o incluso un poco más.
- **Revisar datos previos:** Antes de aplicar, verificar en la campaña: CPA actual, CPC promedio, tasa de conversión, y buscar en "Search terms" los clics con CPC muy alto (ej. $18, $22) sin conversiones.
- **Monitoreo diario obligatorio:** Revisar el rendimiento cada día durante al menos 1-2 semanas. Si Google sigue sin alcanzar el CPA objetivo, reducir gradualmente el límite máximo de CPC (ej. de $14 a $12, luego a $10) según los datos.
- **Documentar la fecha de inicio** en el nombre de la estrategia para comparar datos "antes vs. después".

## Reglas para agentes
- **Usa una portfolio bid strategy con "Maximum bid limit"** cuando una campaña con Smart Bidding (Target CPA o Target ROAS) no alcanza su objetivo a pesar de tener buena estructura, keywords, anuncios, landing page y oferta.
- **Nunca establezcas el límite máximo de CPC igual al CPC promedio calculado** (CPA objetivo / clics por conversión). Siempre dale al menos el doble de margen al algoritmo para no destruir el volumen de conversiones.
- **Siempre nombra la portfolio bid strategy con la fecha de creación** (ej. `TCPA_35_MaxCPC_14_Sept5`) para poder rastrear cuándo se aplicó y comparar rendimiento.
- **Revisa los "Search terms" antes de aplicar** para identificar clics con CPC desproporcionadamente alto (ej. 3x-10x el promedio) sin conversiones.
- **Si el volumen de conversiones cae drásticamente** tras aplicar el límite, pregúntale al cliente si prefiere mantener volumen aunque el CPA esté por encima del objetivo, o sacrificar volumen para alcanzar el CPA exacto.

## Errores comunes que evita o menciona
- **Aplicar el CPC máximo calculado directamente** (ej. $5.83) pensando que así se alcanzará el CPA objetivo. Esto mata el volumen de conversiones porque el algoritmo pierde libertad para pujar en clics de alta intención.
- **Configurar el límite máximo y olvidarse de la estrategia.** El creador insiste en que hay que revisar a diario y ajustar progresivamente (ej. bajar de $14 a $12 si no mejora).
- **Asumir que Google "price fixea" los clics** sin verificar primero la estructura de la campaña, las palabras clave, los anuncios y la landing page. Solo se debe recurrir a este truco táctico cuando todo lo demás está optimizado.
- **No tener la conversación con el cliente** sobre la posible pérdida de volumen antes de aplicar el límite. Si el cliente prioriza volumen sobre CPA exacto, no se debe usar este truco.