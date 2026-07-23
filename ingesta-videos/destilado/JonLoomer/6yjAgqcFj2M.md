# How to Use Custom Metrics with Facebook Ads Manager
**Fuente:** JonLoomer | https://youtu.be/6yjAgqcFj2M

## Qué enseña
Cómo crear fórmulas personalizadas en Facebook Ads Manager para combinar múltiples métricas en un solo score, permitiendo medir calidad de tráfico o engagement ponderado que Facebook no refleja por defecto. Explica el proceso técnico para crear custom metrics tanto en informes personalizados como en el propio Ads Manager.

## Lecciones accionables
- **Crear una custom metric desde Ads Manager:** Ir a la vista de columnas, hacer clic en "Customize Columns", luego en el enlace "Create Custom Metric" ubicado junto a la barra de búsqueda.
- **Crear una custom metric desde Custom Ad Reports:** Dentro de un informe personalizado, ir al área de métricas en el panel derecho y seleccionar la opción "Create Custom Metric".
- **Fórmula para Engagement Score (ponderado):** Sumar métricas con pesos específicos y dividir por el gasto total. Ejemplo usado por JonLoomer:
  - Page Likes/Followers × 5
  - Messaging Conversations Started × 4
  - Post Shares × 3
  - Post Saves × 2
  - Post Comments, Post Reactions, Video Plays (95%) × 1 cada uno
  - Fórmula final: `(suma ponderada) / Amount Spent`
- **Fórmula para Traffic Score (calidad de tráfico):** Incluir eventos estándar, eventos personalizados y engagement. Ejemplo usado:
  - Registration Completed × 10
  - Post Shares × 3
  - Post Comments × 1
  - Post Reactions × 1
  - Search (evento estándar) × 1
  - Custom event: "click en botón compartir" × 3
  - Custom event: "reproducción de podcast incrustado" × 1
  - Custom event: "video de YouTube incrustado visto" × 1
  - Custom event: "60+ segundos en página" × 1
  - Custom event: "scroll ≥ 50% de página" × 1
  - Custom event: "clic en otros enlaces dentro de la página" × 1
  - Fórmula final: `(suma ponderada) / Amount Spent`
- **Compatibilidad:** Las custom metrics creadas en Ads Manager se pueden usar en Custom Ad Reports y viceversa.
- **Uso de eventos personalizados:** Requiere tener configurados previamente custom events o custom conversions en el píxel de Facebook.

## Reglas para agentes
- Usa custom metrics solo cuando necesites combinar métricas con pesos diferentes o crear un score único que Facebook no ofrece por defecto.
- Nunca incluyas compras (purchases) en un Traffic Score si el objetivo es medir calidad de tráfico, porque un solo purchase puede distorsionar los resultados.
- Divide siempre la suma ponderada por "Amount Spent" (gasto) para obtener una métrica de costo-efectividad, no solo una tasa pura.
- Usa pesos (weights) arbitrarios pero consistentes con tus prioridades de negocio; no hay fórmula perfecta universal.
- Crea las custom metrics una sola vez; estarán disponibles en todos los informes y vistas de columnas.

## Errores comunes que evita o menciona
- **Ignorar la existencia de custom metrics:** La mayoría de anunciantes no sabe que esta función existe, perdiendo la capacidad de medir calidad.
- **Tratar todas las interacciones como iguales:** En post engagement, un share vale más que un video de 3 segundos (que puede ser autoplay sin impacto real). Usar pesos evita este error.
- **Confiar solo en métricas de Facebook para campañas de tráfico:** Facebook solo mide clics, no lo que pasa después en el sitio. Las custom metrics con eventos personalizados (scroll, tiempo, clics internos) corrigen esto.
- **Incluir métricas de fondo de embudo en campañas de tráfico:** Agregar purchases con alto peso puede sesgar el score; mejor usar registros o eventos de micro-conversión.
- **No dividir por gasto:** Una tasa pura (ej. engagement/reach) puede ser engañosa si el CPM es alto; dividir por "Amount Spent" da contexto de eficiencia económica.