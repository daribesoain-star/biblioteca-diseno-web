# Google Ads Auction Insights Report: Everything You Need to Know
**Fuente:** GrowMyAds | https://youtu.be/eQRnw4XOSNM

## Qué enseña
Explica en detalle cada métrica del informe de Auction Insights de Google Ads (impression share, overlap rate, position above rate, top of page rate, absolute top of page rate, outranking share) y cómo interpretarlas para entender la competencia. Muestra un caso real donde los cambios en el gasto de un competidor impactan directamente las conversiones propias, y cómo usar el Report Editor para crear gráficos de series temporales que correlacionen métricas de subasta con rendimiento.

## Lecciones accionables
- **Acceder al informe:** En la interfaz de Google Ads, ve a la navegación izquierda → "Insights and reports" → "Auction insights". Puedes verlo a nivel de cuenta, campaña o grupo de anuncios (si hay suficientes datos).
- **Segmentar por tipo de campaña:** Usa el filtro para ver solo "Search" o "Shopping" campaigns según corresponda.
- **Segmentar por tiempo:** Dentro del informe, usa la opción de segmentación por tiempo para ver "Day of week", "Day", "Week", "Month", "Quarter" o "Year". Busca patrones donde competidores se retiren (ej. fines de semana) para aprovechar clics más baratos.
- **Segmentar por dispositivo:** Revisa "Device" para identificar si algún competidor no aparece en mobile o tablet, lo que puede explicar un rendimiento superior inesperado en esos dispositivos.
- **Usar Report Editor para series temporales:** Ve a "Reports" → "Report Editor". Crea un gráfico de líneas con:
  - **Eje Y:** Conversiones (línea azul) y "Search top impression share" (línea roja).
  - **Eje X:** Rango de fechas amplio (ej. enero 2022 a enero 2024).
  - **Añadir competidor:** Agrega la métrica "Position above rate" del competidor principal como otra línea (ej. púrpura) para ver correlación directa.
- **Métrica clave a monitorear:** "Position above rate" es el indicador más limpio para ver el impacto de un competidor en tus conversiones. Si sube, tus conversiones bajan; si baja, tus conversiones suben.
- **Automatizar extracción:** Configura scripts que extraigan datos de Auction Insights periódicamente para revisar cambios sin esperar a que se reflejen en CPC o impresiones propias.
- **Actuar ante caídas del competidor:** Cuando veas que "Position above rate" del competidor baja (ej. de 75% a 60%), aumenta tu agresividad en pujas y presupuesto inmediatamente, sin esperar 1-2 semanas de datos de conversión.
- **Interpretar "Absolute top of page rate":** Si un competidor tiene un valor alto (ej. 40%), puede estar buscando un "ego boost" de posición #1, lo que a menudo no es sostenible y eventualmente se retirará por falta de rentabilidad.

## Reglas para agentes
- **Usa "Position above rate" como métrica principal** cuando quieras correlacionar cambios de competidores con tus conversiones en un gráfico de series temporales.
- **Nunca tomes decisiones solo con "Impression share"** sin considerar "Overlap rate" y "Position above rate", ya que un alto impression share puede deberse a keywords diferentes.
- **Revisa el informe al menos mensualmente** para detectar cambios en el gasto de competidores; semanalmente es mejor, diariamente puede ser ruidoso.
- **No ignores la segmentación por dispositivo** si ves rendimiento inesperado en mobile/tablet; puede deberse a que un competidor clave no aparece ahí.
- **Usa "Outranking share" solo como complemento** de "Position above rate", ya que no cuenta la historia completa de la posición relativa.
- **Configura alertas o scripts** para detectar caídas en "Position above rate" del competidor principal y actuar en menos de 1 semana.
- **Opera siempre dentro del margen definido** aunque un competidor suba su gasto; no pujes por posición si rompe tu rentabilidad objetivo.

## Errores comunes que evita o menciona
- **Confundir "Top of page rate" con "Position #1":** "Top of page rate" significa estar en los anuncios superiores (pueden ser 3 o 4 anuncios), no necesariamente el primer lugar. "Absolute top of page rate" sí es posición #1.
- **Interpretar "Impression share" como gasto exacto:** Un alto impression share sugiere mayor gasto, pero no es una medida directa; puede deberse a mejor calidad o pujas más altas en menos keywords.
- **Ignorar la correlación temporal:** No ver que cuando el competidor sube "Position above rate", tus conversiones bajan (y viceversa) lleva a decisiones erróneas de presupuesto.
- **Usar solo el informe estándar sin Report Editor:** El informe básico no muestra tendencias históricas; el Report Editor con series temporales revela patrones que el informe plano oculta.
- **Revisar datos diarios sin contexto:** Los datos diarios de Auction Insights son ruidosos; usa al menos una semana o un mes para obtener lecturas confiables.
- **Asumir que todos los competidores aplican a todas las campañas:** Si tienes campañas para diferentes productos/servicios, los competidores varían; revisa a nivel de campaña o grupo de anuncios, no solo a nivel de cuenta.
- **No actuar cuando el competidor se retira:** Esperar semanas para confirmar la mejora en conversiones pierde la oportunidad de aumentar agresividad inmediatamente.