# Primary vs Secondary Conversions in Google Ads: How to Choose?
**Fuente:** GrowMyAds | https://youtu.be/v1BWw0su_AQ

## Qué enseña
Explica la diferencia entre conversiones primarias y secundarias en Google Ads, y cómo configurarlas correctamente para evitar que el machine learning optimice hacia objetivos equivocados. Usa un caso real de auditoría para demostrar por qué tener microconversiones (como "begin checkout") como primarias arruina el rendimiento de las campañas.

## Lecciones accionables
- **Configura la compra (purchase) como conversión primaria** en cuentas de e-commerce: ve a *Conversions > Conversion actions* y marca "Primary" para la acción de compra. Esto permite que Smart Bidding (Max Conversions, Target ROAS) aprenda exclusivamente de datos de ventas reales.
- **Usa "begin checkout" solo como conversión secundaria**: en la misma sección, cambia el estado a "Secondary" para observación. Así obtienes métricas de tasa de conversión de checkout a compra sin contaminar el bidding.
- **Para lead generation, configura el formulario completado (form fill) como primaria** y cualquier otra interacción (clics en botones, visitas a páginas) como secundaria.
- **Revisa el volumen de conversiones por acción**: si una microconversión representa >50% del volumen total (ej. 90% de "begin checkout" vs 10% de "purchase"), el algoritmo priorizará la más fácil de obtener, no la más valiosa.
- **Después de cambiar microconversiones de primarias a secundarias**, espera un período de "relearn" de ~30 días donde el rendimiento puede caer temporalmente mientras el algoritmo se reajusta solo con datos de compra.
- **Usa el reporte "All conversions"** para analizar datos de acciones secundarias sin afectar el bidding: ve a *Reports > Predefined reports > Basic > All conversions*.

## Reglas para agentes
- **Usa "Primary" solo para la macroconversión** que genera ingresos directos (compra, formulario de lead, llamada calificada).
- **Nunca configures microconversiones** (begin checkout, clics en botones, vistas de página) como primarias si ya tienes una macroconversión definida.
- **Cuando uses Smart Bidding**, asegúrate de que al menos el 80% del volumen de conversiones provenga de acciones primarias de alto valor.
- **Si tienes múltiples conversiones primarias**, verifica que todas tengan un valor económico similar; de lo contrario, el algoritmo optimizará hacia la más barata de conseguir.
- **No combines conversiones de observación (secundarias) con primarias** en la misma estrategia de bidding; las secundarias solo deben usarse para reporting y análisis de embudo.

## Errores comunes que evita o menciona
- **Tener "begin checkout" como primaria junto con "purchase"**: el algoritmo prioriza el checkout por ser más fácil de obtener, inflando la tasa de conversión (ej. 62% reportado vs 0.9% real de compras) y arruinando el ROAS.
- **Confundir volumen con calidad**: una alta tasa de conversión en microacciones no significa que la campaña sea rentable; en el ejemplo, 37 compras de 4,000 clics con $5,400 en gasto y solo $11,000 en ingresos.
- **No limpiar conversiones heredadas**: mantener acciones como "button clicks" como primarias distorsiona el aprendizaje del algoritmo y hace imposible optimizar por retorno de inversión.
- **Ignorar el período de reajuste**: al corregir este error, las campañas pueden empeorar durante ~30 días antes de mejorar, lo que lleva a muchos anunciantes a revertir el cambio prematuramente.