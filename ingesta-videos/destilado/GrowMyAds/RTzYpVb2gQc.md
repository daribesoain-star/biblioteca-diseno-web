# How & When to Use Data Exclusions in Google Ads
**Fuente:** GrowMyAds | https://youtu.be/RTzYpVb2gQc

## Qué enseña
Explica qué son las exclusiones de datos en Google Ads, cuándo aplicarlas cuando falla el seguimiento de conversiones en campañas con Smart Bidding (tcpa o troas), y cómo evitar que el algoritmo aprenda de períodos con datos corruptos. Incluye un paso a paso real dentro de una cuenta para configurar la exclusión.

## Lecciones accionables
- Ve a **Tools & Settings** → **Bid Strategies** → **Advanced Controls** → pestaña **Data Exclusions** (junto a Seasonality Adjustments).
- Nombra la exclusión con formato descriptivo, ej: "Conversion tracking broke Feb 1-9".
- En **Start time** y **End time**, selecciona el rango exacto donde el tracking estuvo caído. Google recomienda retroceder al menos **2 días adicionales** por latencia de atribución ("since conversions can be attributed to clicks in the past, select a date range that accounts for the typical conversion delay of two days in your account").
- En **Select campaigns and devices**, puedes elegir campañas específicas o dejar "all campaigns" y "all devices" si el problema fue global.
- Al guardar, confirma el resumen: fechas, campañas y dispositivos seleccionados. Haz clic en **Create data exclusion**.
- Después de aplicar la exclusión, espera un período de **varios días a una semana** para que Smart Bidding se reajuste ("smart bidding just doesn't snap back into it overnight").
- Monitorea los CPAs después de la exclusión: pueden haber picos temporales mientras el algoritmo recalibra.

## Reglas para agentes
- Usa Data Exclusions **solo cuando uses Smart Bidding** (tcpa o troas) y el tracking de conversiones haya fallado por más de un día.
- **Nunca** excluyas un rango sin verificar visualmente en el gráfico de conversiones que efectivamente hubo cero o datos anómalos (CPAs outliers).
- Siempre agrega **2 días extra antes de la fecha de quiebre** para cubrir latencia de atribución, incluso si esos días parecen normales.
- Si el día de la reparación aún muestra datos erráticos (CPA muy alto), inclúyelo también en la exclusión.
- **No esperes** que la exclusión resuelva el rendimiento de inmediato: comunica al cliente que habrá altibajos por 5-7 días después de aplicarla.
- Cuando nombres la exclusión, incluye el período afectado (ej: "Tracking broken Feb 1-9") para auditorías futuras.

## Errores comunes que evita o menciona
- **No excluir suficiente rango:** Si solo excluyes el día exacto del fallo, el Smart Bidding aún aprende de días con datos parcialmente corruptos por latencia.
- **Excluir muy poco después de la reparación:** Si el tracking se arregló a medio día, ese día aún tiene datos malos; exclúyelo también.
- **Pensar que la exclusión es un "cheat code":** No restaura el rendimiento de inmediato; el algoritmo necesita días para redialearse.
- **Ignorar la recomendación de Google sobre los 2 días de retraso:** La interfaz lo advierte explícitamente; no excluyas solo el día exacto del quiebre.
- **Aplicar la exclusión a campañas incorrectas:** Si el fallo fue solo en una campaña, no la apliques a toda la cuenta.