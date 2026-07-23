# The Truth About Meta's Click Attribution
**Fuente:** JonLoomer | https://youtu.be/9fKsc55FNvo

## Qué enseña (2-3 líneas)
Explica cómo Meta asigna crédito de conversión a los clics en anuncios, detallando que cualquier clic dentro del anuncio (no solo en el enlace) cuenta como "clic" para la ventana de atribución de 7 días. También revela que la atribución de 28 días sigue disponible oculta en la función "comparar configuraciones de atribución", y ofrece una estrategia para elegir entre atribución de 1 día clic vs 7 días clic según el tipo de conversión.

## Lecciones accionables
- **Usa la columna "28-day click"** en Ads Manager mediante la función "Compare Attribution Settings" (Configuración de atribución comparativa) para ver conversiones de hasta 28 días después del clic, especialmente útil para campañas de leads donde quieras rastrear compras posteriores.
- **Configura la atribución en el conjunto de anuncios** según el tipo de conversión:
  - Para **optimizar por compra** (especialmente de alto valor): usa el valor predeterminado **"7-day click + 1-day view"**.
  - Para **optimizar por conversiones gratuitas** (lead magnets, formularios, descargas): usa **"1-day click"**.
- **Verifica manualmente** si Meta está contando clics no-link como conversiones: crea un anuncio de prueba con solo texto e imagen estática, sin enlace clickeable, e instruye a los usuarios a hacer clic en la imagen y luego visitar una URL específica para convertir. Si Meta reporta conversiones como "click conversion", confirma que cualquier clic (like, reacción, abrir imagen) activa la ventana de 7 días.
- **Monitorea resultados más allá de 1 día clic** aunque optimices para 1 día clic: aún puedes ver reportes de 7 y 28 días clic en las columnas de atribución comparativa.

## Reglas para agentes
- **Usa "7-day click + 1-day view" como atribución predeterminada** cuando optimices para compras de alto valor o conversiones que requieren investigación (ej. productos caros, decisiones B2B).
- **Usa "1-day click" como atribución** cuando optimices para conversiones gratuitas o de baja fricción (ej. descargas de lead magnets, suscripciones a newsletters).
- **Nunca asumas que "click conversion" significa clic en el enlace** del anuncio; Meta cuenta cualquier interacción de clic (like, reacción, abrir imagen/video) dentro de la ventana de 7 días.
- **Siempre agrega la columna "28-day click"** en reportes de campañas de leads para medir conversiones diferidas (ej. leads que compran dentro de 28 días).
- **Nunca uses "28-day click" como configuración de optimización** en el conjunto de anuncios (no está disponible como opción directa); solo úsalo para reportes comparativos.

## Errores comunes que evita o menciona
- **Error: Asumir que "click conversion" solo ocurre cuando el usuario hace clic en el enlace del anuncio.** JonLoomer demostró con una prueba que cualquier clic (en la imagen, en el botón de like, etc.) activa la ventana de 7 días para atribución de clic.
- **Error: Ignorar la atribución de 28 días clic.** Muchos creen que desapareció tras iOS 14, pero sigue disponible en la función "Compare Attribution Settings" y proporciona datos confiables para contexto adicional.
- **Error: Usar "7-day click" para conversiones gratuitas simples.** Si el lead magnet es fácil de obtener (sin fricción), la ventana de 7 días infla los resultados con conversiones que probablemente ocurrieron por otros canales (Google, email, redes sociales).
- **Error: No diferenciar entre optimización y reporte.** La configuración de atribución en el conjunto de anuncios afecta tanto la optimización del delivery como el reporte; elegir "1-day click" para leads gratuitos evita que el algoritmo "maquille" números con ventanas largas.