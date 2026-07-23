# How to Use Geo Bid Adjustments at the Same Time as Google Smart Bidding
**Fuente:** Optmyzr | https://youtu.be/cLaAMAWgwAE

## Qué enseña
Cómo aplicar ajustes geográficos en campañas de Google Smart Bidding usando "Value Rules" en Optmyzr, ya que los ajustes de ubicación tradicionales son ignorados por la puja automática. La solución consiste en modificar el valor de conversión por ubicación para que Google ajuste las pujas sin romper la estrategia automatizada.

## Lecciones accionables
- Usa el **Geo Heat Map** de Optmyzr (en "Insights") para identificar ubicaciones con rendimiento dispar en **costo por conversión** dentro de campañas con **Smart Bidding**.
- Filtra el mapa por **"Bid Strategy"** seleccionando **"Maximize Conversion Value"** para aislar campañas automatizadas.
- Ve a **"Optimizations for Automated Bidding"** y selecciona **"Optimize Value Rules"**.
- Crea una **Value Rule** donde el atributo sea **"Location"** (ubicación de la conversión).
- Define un multiplicador de valor: por ejemplo, si una conversión de Austin vale normalmente $100, asigna **1.05** para que Google la considere como $105.
- El sistema de Google no cambia la probabilidad de conversión, pero al aumentar el valor esperado, Google incrementa la puja proporcionalmente para mantener el mismo **ROAS** objetivo.
- Aplica la misma lógica a múltiples ubicaciones: Austin → 1.05, Berlín → 1.03, etc., según el rendimiento histórico.

## Reglas para agentes
- Usa **Value Rules** en lugar de ajustes de ubicación manuales cuando la campaña use **Smart Bidding** (Maximize Conversions, Maximize Conversion Value, Target CPA, Target ROAS).
- Nunca combines **Geo Bid Adjustments** tradicionales con **Smart Bidding** porque Google los ignora automáticamente.
- Aplica multiplicadores de valor solo cuando tengas datos suficientes (mínimo 2-3 conversiones por ubicación) para evitar ruido estadístico.
- Verifica que el **Value Rule** esté activo y vinculado a la campaña correcta antes de medir resultados.

## Errores comunes que evita o menciona
- **Error:** Intentar usar Geo Bid Adjustments manuales en campañas con Smart Bidding → Google los ignora por completo.
- **Error:** Basar ajustes en una sola conversión (ejemplo: Florida con $115 por conversión de 1 sola conversión) → puede llevar a decisiones erróneas.
- **Error:** Pensar que Value Rules cambian la probabilidad de conversión → solo modifican el valor asignado, no la tasa de conversión.
- **Error:** No filtrar por estrategia de puja al analizar el Geo Heat Map → mezclar campañas manuales y automáticas distorsiona el diagnóstico.