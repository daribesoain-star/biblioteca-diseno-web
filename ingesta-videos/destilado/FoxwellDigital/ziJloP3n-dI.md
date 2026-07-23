# Profitability Large Account Deep Dive w/Spencer Toft
**Fuente:** FoxwellDigital | https://youtu.be/ziJloP3n-dI

## Qué enseña (2-3 líneas)
Cómo usar datos de encuestas post-compra para calcular el CPA real por plataforma (Meta, TikTok, Google) y ajustar la asignación de presupuesto. Incluye un modelo de hoja de cálculo con inputs (CPA en plataforma, gasto en anuncios, respuestas de encuesta, tasa de respuesta) y outputs (CPA estimado real, multiplicador de ajuste, CPA objetivo en plataforma). También enseña a interpretar el sesgo demográfico según dónde se realiza la encuesta (post-compra vs. email).

## Lecciones accionables
- **Modelo de hoja de cálculo para reconciliación de CPA:** Usa una plantilla con inputs en naranja claro (CPA en plataforma, gasto en anuncios, respuestas de "¿cómo nos conociste?", tasa de respuesta) y outputs en azul claro (CPA real estimado, multiplicador, CPA objetivo en plataforma). La fórmula clave: `respuestas reales / tasa de respuesta` para estimar el total de respuestas si todos hubieran contestado, luego `gasto en anuncios / ese total` para obtener el CPA real.
- **Pregunta exacta de encuesta post-compra:** "How did you first hear about us?" (¿Cómo nos conociste?). Esta pregunta debe estar en la página posterior al checkout, junto con datos de seguimiento de pedidos, pero siendo el elemento principal.
- **Cálculo del multiplicador de ajuste:** Divide el CPA en plataforma entre el CPA real estimado. Ejemplo: si el CPA en plataforma es $30 y el CPA real es $40, el multiplicador es 0.75. Luego, para alcanzar un CPA objetivo de $25, el CPA en plataforma necesario es `CPA objetivo / multiplicador` (ej: $25 / 0.75 = $33.33).
- **Regla de rentabilidad empírica:** Según datos de "Send a Friend", una cuenta es rentable cuando el CPA en plataforma alcanza aproximadamente el 80% del CPA objetivo (porcentaje a meta >80%).
- **Cadencia de revisión:** Revisar este análisis cada viernes (semanalmente). No hacerlo a diario porque la variabilidad diaria no da datos accionables; esperar 1-3 semanas para tendencias consistentes.
- **Decisión de asignación de presupuesto:** Si durante 2-3 semanas consecutivas una plataforma (ej: TikTok) muestra un CPA real más bajo que otra (ej: Meta), redirigir más gasto hacia esa plataforma en las semanas siguientes.
- **Consideración de efectos de largo plazo:** Si se escaló agresivamente durante 3 meses y luego se redujo el gasto, los datos de encuestas post-compra serán inexactos porque los "descubrimientos" (discovery responses) incluyen el efecto de cola larga de campañas pasadas. Al escalar agresivamente, el impacto es menor porque la cola corta domina.

## Reglas para agentes
- Usa la pregunta "How did you first hear about us?" en la encuesta post-compra, no en encuestas por email, para evitar sesgo demográfico (el email atrae a demográficos mayores).
- Nunca uses datos diarios para decisiones de asignación de presupuesto; espera al menos 1-2 semanas de datos consistentes.
- Cuando calcules el CPA real, divide las respuestas de descubrimiento entre la tasa de respuesta (ej: 100 respuestas / 0.62 = ~161 respuestas estimadas) antes de dividir el gasto.
- Si el porcentaje a meta (CPA en plataforma / CPA objetivo) es menor al 80%, no asumas rentabilidad; solo considera rentable cuando supera ese umbral (basado en datos de "Send a Friend").
- Al escalar agresivamente, ignora los efectos de cola larga en las encuestas; al reducir gasto después de escalar, descarta los datos de encuestas por 2-3 semanas hasta que se estabilicen.

## Errores comunes que evita o menciona
- **Sesgo demográfico por ubicación de encuesta:** Hacer la encuesta post-compra captura a audiencias más jóvenes; hacerla por email sesga hacia demográficos mayores. Si vendes a múltiples demográficos (ej: kits de regalo para diferentes edades), usa post-compra para obtener datos representativos.
- **Ignorar la tasa de respuesta:** No dividir las respuestas entre la tasa de respuesta subestima el número real de conversiones atribuibles a cada plataforma, dando un CPA real más alto de lo que parece.
- **Usar datos de encuestas después de reducir gasto:** Si escalaste por 3 meses y luego bajas el gasto, las respuestas de "descubrimiento" incluyen el efecto de cola larga de campañas pasadas, inflando artificialmente el rendimiento de la plataforma.
- **Tomar decisiones diarias:** Revisar el modelo a diario introduce ruido por variabilidad aleatoria; esperar al menos una semana (idealmente 2-3) para ver tendencias significativas.
- **Asumir que el CPA en plataforma es el CPA real:** El CPA en plataforma (ej: $30) no refleja el costo real después de reconciliar con encuestas; el multiplicador puede mostrar que necesitas un CPA en plataforma mucho más bajo para ser rentable.