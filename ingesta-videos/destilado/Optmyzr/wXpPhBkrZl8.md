# How WebMechanix Used Value-Based Bidding to Generate 30% Higher-Quality Leads
**Fuente:** Optmyzr | https://youtu.be/wXpPhBkrZl8

## Qué enseña (2-3 líneas)
Cómo implementar Value-Based Bidding (VBB) en Google Ads para priorizar leads de alta calidad (llamadas telefónicas) sobre leads de baja calidad (formularios), usando valores de conversión diferenciados y un enfoque iterativo. Explica la configuración de acciones de conversión primarias vs. secundarias, el cambio de estrategia de puja de tCPA a tROAS, y cómo validar los resultados con datos downstream del CRM.

## Lecciones accionables
- **Configurar acciones de conversión primarias vs. secundarias:** En Google Ads > Conversiones > Configuración, marcar como "primaria" la acción que el sistema debe optimizar (ej. llamadas) y como "secundaria" la que solo se rastrea (ej. formularios). Las secundarias no se incluyen en las columnas de conversión para pujas.
- **Cambiar de tCPA a tROAS:** Para VBB, la estrategia de puja debe ser "Return on Ad Spend" (ROAS objetivo), no "Coste por adquisición". El ROAS se manipula ajustando los valores de conversión, no el target de ROAS directamente.
- **Asignar valores de conversión diferenciados:** En Google Ads > Conversiones > Acciones de conversión, editar cada acción y asignar un valor fijo. Para el caso: llamadas = $1,500, formularios = $100 (relación 15:1). Los valores deben tener suficiente diferencia para que Google priorice la acción de mayor valor.
- **Iterar los valores gradualmente:** Comenzar con una diferencia pequeña (ej. llamadas $250, formularios $100) y aumentar progresivamente cada mes (a $500, luego $1,000, luego $1,500) mientras se monitorea que el volumen total de leads no caiga drásticamente.
- **Validar con datos downstream del CRM:** Rastrear métricas como "vob complete" (lead calificado), "vob approved" (MQL) y "admission" (cierre) para correlacionar el aumento de llamadas con mejor calidad de leads. Presentar al cliente gráficos que muestren que, aunque el volumen de leads baje, el porcentaje de leads aprobados aumenta.
- **Usar Conversion Value Rules para ajustes por dispositivo/ubicación:** En Google Ads > Conversiones > Reglas de valor de conversión, crear reglas que aumenten o disminuyan el valor de conversión en un porcentaje (ej. +5% para dispositivos móviles, +10% para California) basado en datos históricos de rendimiento downstream.
- **Implementar Enhanced Conversions o pasar el GCLID al CRM:** Para rastrear conversiones downstream (MQL, SQL, venta), es necesario tener Enhanced Conversions configurado o pasar el GCLID (Google Click ID) al CRM y luego postear los eventos de vuelta a Google Ads.
- **Usar valores dinámicos (opcional):** En lugar de valores fijos, usar valores dinámicos desde el CRM para reflejar que cada lead tiene un valor diferente. Esto requiere postear datos de vuelta a Google Ads con el valor real de cada conversión.
- **Volumen mínimo de conversiones para tROAS:** Tener al menos 30-45 conversiones en los últimos 30 días antes de cambiar de tCPA a tROAS. El volumen necesario depende del nivel al que se aplique la estrategia (campaña, portfolio, cuenta).
- **Combinar VBB con broad match:** Si hay suficiente volumen de datos y una lista de palabras clave negativas robusta, usar broad match junto con smart bidding. Monitorear el informe de términos de búsqueda con herramientas como el Negative Keyword Finder de Optmyzr o scripts para detectar picos de términos irrelevantes.
- **Configurar monitoreo y alertas:** Usar scripts o herramientas para monitorear el informe de términos de búsqueda y detectar aumentos repentinos en términos de búsqueda no deseados, especialmente en industrias con CPC altos ($20-$30+).

## Reglas para agentes
- **Usa tROAS como estrategia de puja** cuando quieras priorizar un tipo de conversión sobre otro mediante valores diferenciados.
- **Asigna valores de conversión con al menos una relación 5:1** entre la acción prioritaria y la secundaria para que Google pueda distinguir claramente cuál optimizar.
- **Itera los valores gradualmente** (cada 30 días) en lugar de hacer cambios bruscos; monitorea que el volumen total de leads no caiga más del 20% antes de aumentar la diferencia.
- **Nunca uses valores de conversión iguales** para dos acciones de conversión primarias si quieres que Google priorice una sobre otra.
- **Configura las acciones de conversión secundarias** para rastrear formularios o leads de baja calidad sin que afecten la optimización de pujas.
- **Valida siempre los resultados en plataforma con datos downstream del CRM** (MQL, SQL, ventas) antes de reportar éxito al cliente.
- **Establece expectativas con el cliente antes de implementar VBB:** explica que el coste por lead puede subir y el volumen total puede bajar, pero la calidad mejorará.
- **Usa Conversion Value Rules** para ajustar valores por dispositivo, ubicación geográfica o audiencia cuando tengas datos históricos que muestren diferencias en calidad downstream.
- **Mantén un mínimo de 30-45 conversiones en 30 días** antes de cambiar a tROAS; si no tienes ese volumen, usa tCPA con la acción primaria como objetivo.
- **Monitorea el informe de términos de búsqueda semanalmente** cuando uses broad match con VBB, especialmente en industrias con CPC altos (>$20).

## Errores comunes que evita o menciona
- **No cambiar de tCPA a tROAS:** Usar VBB con estrategia de puja de coste por adquisición (tCPA) en lugar de retorno de inversión (tROAS) no permite que Google optimice por valor.
- **Asignar valores de conversión sin suficiente diferencia:** Si la diferencia entre el valor de llamadas y formularios es muy pequeña (ej. $250 vs $100), Google no priorizará significativamente las llamadas.
- **Hacer cambios drásticos en los valores de un mes a otro:** Aumentar el valor de llamadas de $250 a $1,500 de golpe puede colapsar el volumen de leads. Es mejor iterar gradualmente.
- **No validar con datos downstream:** Reportar solo métricas en plataforma (más llamadas) sin demostrar que esas llamadas se traducen en más MQLs o ventas puede generar desconfianza en el cliente.
- **No gestionar expectativas del cliente:** Si el cliente espera mantener el mismo volumen de leads y el mismo CPA, el aumento de costes por lead puede llevar a que cancelen el contrato.
- **Usar broad match sin una lista de negativas robusta:** En industrias con CPC altos ($30+), broad match puede generar clics caros e irrelevantes si no se monitorea y se añaden negativas constantemente.
- **Optimizar hacia conversiones downstream con ciclos de venta largos:** Si el cierre de venta toma 90+ días, Google no podrá optimizar eficientemente. Es mejor usar una acción intermedia (MQL) que ocurra dentro de la ventana de aprendizaje (30 días).
- **No tener Enhanced Conversions o GCLID en CRM:** Sin estos, no se puede rastrear el rendimiento downstream ni postear valores dinámicos de vuelta a Google Ads.
- **Confiar ciegamente en smart bidding sin monitoreo:** El sistema de Google puede malinterpretar términos de búsqueda en industrias especializadas (ej. acrónimos B2B), generando gasto ineficiente durante el período de aprendizaje.