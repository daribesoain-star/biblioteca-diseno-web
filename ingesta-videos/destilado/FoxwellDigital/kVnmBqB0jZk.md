# Founders Cohort Ad Performance Profitability Reporting
**Fuente:** FoxwellDigital | https://youtu.be/kVnmBqB0jZk

## Qué enseña
Cómo usar Google Analytics como herramienta de diagnóstico para detectar discrepancias entre CTR alto y ausencia de compras, y cómo equilibrar datos dentro de plataforma, encuestas post-compra y herramientas de atribución de terceros (Northbeam, Triple Whale) para evaluar rentabilidad y asignación de gasto publicitario.

## Lecciones accionables
- Usa Google Analytics como herramienta de diagnóstico: si un anuncio tiene CTR extremadamente alto pero cero compras, revisa en GA si el 80% del tráfico son rebotes — esto indica contenido clickbaity o engañoso.
- Detecta problemas creativos específicos: en un caso real, un anuncio con captura de pantalla de un mensaje de texto tenía alto CTR pero sin compras; al inspeccionar, el contacto en la parte superior estaba recortado, haciendo que la gente hiciera clic para ver quién envió el mensaje, no por interés en el producto.
- Apoya decisiones principalmente en datos dentro de la plataforma publicitaria (in-platform data).
- Complementa con encuestas post-compra para establecer "proxy goals" (metas proxy) dentro de la plataforma — acepta que estos proxies no son perfectos (ej. "podemos estar al 80% del objetivo según la encuesta post-compra, pero aún así tener buena rentabilidad en la primera compra").
- Usa herramientas de atribución de terceros (Northbeam, Triple Whale) para:
  - Consolidar gasto de múltiples canales (Facebook, Google, Pinterest, etc.) en un solo lugar.
  - Cambiar entre modelos de atribución: "seven day click one day view", "seven day click one day click accrual cash", "first touch ROAS", "last touch ROAS".
  - Analizar cohortes LTV: qué producto pidieron en su primera compra, qué códigos de descuento usaron, en qué semana fueron adquiridos, si regresan meses después.
  - Identificar si las exclusiones están rotas (ej. detectó que Klaviyo no se sincronizaba correctamente).
- Para interpretar datos de Northbeam: no uses el ROAS de "one day click" como estándar universal — establece qué es "bueno" vs "malo" basado en datos históricos de tu negocio, ya que el valor predeterminado puede no ser aplicable a tu cuenta.
- Evalúa cada métrica durante períodos de tiempo suficientemente largos; no existe una métrica única más importante.

## Reglas para agentes
- Usa GA como herramienta de diagnóstico solo cuando haya discrepancia entre CTR alto y cero conversiones; no lo uses como fuente principal de decisión.
- Nunca tomes el ROAS de "one day click" de Northbeam como verdad absoluta sin ajustarlo según el historial de tu cuenta.
- Siempre revisa encuestas post-compra para calibrar si los proxies dentro de la plataforma reflejan la realidad de rentabilidad.
- Cuando analices cohortes LTV en Northbeam o Triple Whale, verifica siempre si las exclusiones de audiencia están funcionando (ej. sincronización con Klaviyo).
- No uses un solo modelo de atribución como "bíblico" — cambia entre first touch, last touch y modelos multitouch según el canal y objetivo.
- Ante fluctuaciones diarias, mira el panorama completo: un día lento en ventas puede ser positivo si hubo un aumento alto en registros de email.

## Errores comunes que evita o menciona
- Confiar ciegamente en el ROAS de "one day click" de Northbeam sin ajustarlo a los KPIs históricos del negocio — puede llevar a decisiones erróneas de gasto.
- Asumir que un CTR alto siempre es positivo: puede indicar contenido clickbaity o engañoso (ej. recorte accidental de información clave en un video).
- Usar herramientas de atribución de terceros sin entender que "te dan demasiado para mirar" y puedes perderte tratando de encontrar la métrica más importante, cuando en realidad ninguna lo es por sí sola.
- Ignorar las encuestas post-compra como proxy de metas: sin ellas, no sabes si estás al 80% del objetivo real de rentabilidad.
- No verificar la sincronización de exclusiones entre plataformas (ej. Klaviyo no sincronizado puede distorsionar los datos de nuevos clientes en campañas).