# A PPC Data Analysis Masterclass by Cory Lindholm
**Fuente:** Optmyzr | https://youtu.be/Oors-OKmg2Y

## Qué enseña (2-3 líneas)
Una masterclass sobre cómo aplicar estadística descriptiva e inferencial al análisis de campañas PPC, desde métricas básicas (CPC, CTR, CPA) hasta técnicas avanzadas como descomposición estacional, regresión, pruebas A/B y modelos predictivos. Enseña a usar Python, GPTs y herramientas de visualización para extraer señales del ruido, detectar outliers y tomar decisiones basadas en datos con intervalos de confianza.

## Lecciones accionables
- **Usa la mediana en lugar del promedio cuando los datos estén sesgados** — si una campaña tiene outliers (ej. un día con CPC de $25 vs. $15 habitual), la mediana refleja mejor la tendencia central que la media.
- **Aplica exclusiones de datos en Google Ads cuando el tracking de conversiones esté roto** — ve a "Conversiones > Exclusiones de datos" y marca el período exacto para que los algoritmos de bidding no aprendan de datos inválidos.
- **Configura ajustes de estacionalidad (seasonality adjustments) en Google Ads para promociones puntuales** — ve a "Estrategias de puja > Ajustes de estacionalidad", define fecha inicio/fin y el cambio esperado en tasa de conversión (ej. +30%). Esto evita que el sistema sobrepuje cuando termina la promo.
- **Para pruebas A/B, usa tests de dos colas (two-tailed) en lugar de una cola** — evalúa tanto la probabilidad de mejora como de empeoramiento. Pregunta a GPT: *"¿Cuál es la diferencia entre un test A/B de una cola y dos colas en PPC?"*.
- **Anonimiza datos antes de subirlos a ChatGPT o Gemini** — nunca incluyas API keys, CPC reales o datos de clientes. Usa nombres genéricos (ej. "Campaña_A", "Producto_X").
- **Construye tres GPTs separados para generar scripts de Python** — uno para dar el prompt inicial, otro para escribir el script, y un tercero para hacer QA del código. Esto evita pérdida de contexto y errores.
- **Visualiza métricas con: valor real, media móvil (ej. 3 meses), media estática, mediana y rango intercuartil (IQR)** — el IQR (sombreado gris entre percentil 25 y 75) muestra el rango "normal". Cualquier punto fuera es candidato a outlier.
- **Segmenta siempre por tipo de campaña** — no mezcles brand con non-brand, ni search con shopping. Cada segmento tiene distribuciones, medias y medianas radicalmente distintas.
- **Para predecir volumen de leads o ventas, usa el modelo Prophet de Facebook** — integra automáticamente festividades y estacionalidad. Ejecuta en Python: `from prophet import Prophet`.
- **Para descomposición estacional, pide a GPT: *"Haz una descomposición estacional (seasonal decomposition) de esta serie temporal de leads. Dame el trend, la estacionalidad y el residuo"***. El residuo (ruido) revela eventos no explicados por la estacionalidad.
- **Para detectar autocorrelación (ciclos de negocio), genera un gráfico ACF (autocorrelation function)** — si un punto cae fuera del área sombreada (ej. cada 3 meses), indica un ciclo trimestral predecible.
- **Para hipótesis sobre URLs de destino, compara distribuciones de ROAS con boxplots** — si la URL de producto tiene cola derecha más larga que la de blog, sugiere mayor eficiencia. Luego corre simulaciones Monte Carlo para ver el ROAS esperado con más muestras.
- **Usa el P-value para filtrar métricas relevantes** — en un análisis período vs. período, solo reporta métricas con p-value ≤ 0.05 (95% de confianza). Ignora cambios no significativos estadísticamente.
- **Guarda y versiona los scripts de Python generados por GPT** — no los regeneres cada vez porque el modelo puede derivar (drift) y dar resultados inconsistentes. Usa control de versiones (git).
- **Para informes a stakeholders, simplifica la descomposición estacional en un gráfico de barras: "Efecto estacional promedio por mes"** — muestra cuántos leads más o menos se esperan vs. el promedio anual (ej. Mayo: +41 leads, Junio: -15 leads).

## Reglas para agentes
- **Usa la mediana** cuando la distribución de una métrica (CPC, CPA, ROAS) tenga outliers identificados por el IQR.
- **Nunca tomes decisiones de puja o presupuesto** con menos de 30 conversiones en el período analizado (salvo que uses métodos estadísticos para muestras pequeñas, y aun así con cautela).
- **Siempre segmenta** por tipo de campaña (brand, non-brand, shopping, display, Performance Max) antes de calcular medias, medianas o desviaciones.
- **Nunca subas datos sin anonimizar** a modelos públicos de OpenAI o Gemini — reemplaza nombres reales, IDs y métricas sensibles.
- **Usa tests de dos colas** en toda prueba A/B o comparación período vs. período.
- **Aplica exclusiones de datos** inmediatamente después de detectar un período con tracking roto o datos anómalos conocidos.
- **Configura ajustes de estacionalidad** para toda promoción o evento con fecha definida, indicando el cambio esperado en tasa de conversión.
- **Valida manualmente** cualquier script de Python generado por IA — no asumas que sigue mejores prácticas o que es correcto.
- **Reporta solo métricas con p-value ≤ 0.05** cuando compares dos períodos o evalúes el impacto de un cambio.
- **Usa el modelo Prophet** para predicciones que deban incorporar festividades y estacionalidad de forma automática.

## Errores comunes que evita o menciona
- **Confundir correlación con causalidad** — solo porque dos métricas se muevan juntas (ej. CPC sube y ROAS sube) no significa que una cause la otra. Puede haber una tercera variable (ej. estacionalidad).
- **Ignorar tamaños de muestra pequeños** — tomar decisiones drásticas con 13 clics o 2 conversiones es estadísticamente inválido. Espera al menos 30 conversiones o usa métodos robustos para muestras pequeñas.
- **Sesgo de confirmación** — mostrar solo métricas positivas en informes (ej. CTR +35% ocultando que ROAS cayó 40%). Analiza siempre los datos que contradicen tu hipótesis.
- **Sobreajuste (overfitting) en modelos predictivos** — un modelo que funciona perfectamente en datos históricos puede fallar con datos nuevos. Valida siempre con un conjunto de prueba separado.
- **No integrar datos externos** — analizar PPC en el vacío ignorando el índice de confianza del consumidor, tendencias económicas o datos de otras plataformas (Shopify, Amazon, Facebook) lleva a conclusiones incompletas.
- **Confiar ciegamente en los promedios por defecto de Google Ads** — las medias pueden estar sesgadas por outliers. Siempre verifica también la mediana y el IQR.
- **Regenerar scripts de Python cada vez con GPT** — el modelo puede derivar y producir código diferente o incorrecto. Guarda y versiona los scripts validados.
- **Alimentar datos sensibles a modelos públicos de IA** — nunca subas API keys, CPC reales o datos de clientes a ChatGPT sin anonimizar.