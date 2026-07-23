# Reverse Engineering Google Shopping
**Fuente:** Optmyzr | https://youtu.be/LNKY46ae6Ho

## Qué enseña (2-3 líneas)
Este webinar desmitifica 10 hipótesis comunes sobre Google Shopping mediante pruebas controladas, revelando que el precio del producto es el factor dominante sobre las pujas, que los títulos de producto impactan drásticamente el volumen de impresiones mientras que las descripciones y categorías no importan, y que subir pujas incrementa tráfico de baja calidad. También explica cómo estructurar campañas, el rol de las reseñas del vendedor, y cómo funciona el matching entre consultas y productos.

## Lecciones accionables
- **Estructura de campaña:** No importa si pones todos los productos en un grupo grande, los divides individualmente o los separas tras 5 clics — el volumen de impresiones es prácticamente el mismo (solo 6.7% más productos reciben impresiones con la estrategia de 5 clics). La única ventaja de dividir es mantener flexibilidad en las pujas.
- **Precio vs. pujas:** El precio es el factor dominante. Productos baratos (≥5% por debajo del promedio del mercado) reciben 134% más impresiones y 280% más impresiones totales que productos caros (≥5% por encima del promedio). El CTR apenas varía.
- **Posición del anuncio:** En 60-65% de los casos, el producto más barato ocupa la primera posición de oferta. Si no eres el primero, Google no te muestra en los SURs (que representan ~85% de las impresiones).
- **Excepciones a la regla del precio más barato:** No obtienes la primera posición si: (1) no tienes reseñas del vendedor (seller ratings), (2) tu precio no incluye el envío (Google usa el precio total), (3) hay una diferencia enorme en la puja cuando el precio es casi idéntico.
- **Estrategia de crecimiento:** Reducir precio es más efectivo que subir pujas para aumentar volumen. Ejemplo: vender a $80 con 25% de margen para Google Ads genera más ganancias que vender a $100 con 45% de margen para Google Ads, al mismo profit por venta.
- **Títulos de producto:** Son el elemento más importante del feed. Cambiar un título de "Lipsy lace dress navy blue" a "party dress" generó un aumento masivo de impresiones para todas las consultas que contenían "party dress". Cambiar "Jordan one flight" a "Jordan kits" dio 67% de uplift vs. 20% en el grupo de control.
- **Descripciones y categorías:** No importan. Cambiar descripciones a contenido incorrecto (ej: "baseball cap" en lugar de "evening dress") no tuvo impacto. Cambiar la categoría de producto (ej: "athletic shoes" a "rain suits") solo dio 18% de uplift, no significativo.
- **Riesgo de cambiar títulos:** No hay riesgo. Probaron cambiar títulos de 2,000 productos y no hubo impacto significativo en rendimiento — el quality score está vinculado al ID del producto, no al título.
- **ECPC y RLSA:** ECPC funciona principalmente subiendo pujas en RLSA (remarketing). En la semana 1, el segmento RLSA tuvo 133% de aumento vs. no-RLSA; en semana 2, 33%; hasta 44%. Google sube pujas agresivamente en audiencias de fondo de embudo, lo que puede canibalizar ventas que ya iban a ocurrir.
- **Subir pujas = más tráfico basura:** Al subir la puja de €0.50 a €1.50, el tráfico de términos genéricos (baja calidad) aumentó drásticamente, mientras que el tráfico de términos de marca (alta calidad) apenas subió. El CPC para términos de marca también subió de €0.9 a €2.5.
- **Estructura de campañas para controlar consultas:** Usa prioridades de campaña (campaign priorities) y palabras clave negativas para crear 3 buckets: (1) consultas muy específicas con puja alta, (2) consultas con marca con puja media, (3) consultas genéricas con puja baja.
- **Matching por imagen:** Google ya usa reconocimiento de imágenes. Un título "boy tracksuit by Adidas" matchó con "Adidas leaf print jacket" sin que eso estuviera en ningún campo del feed. "Nike free fly shoe" matchó con "rainbow Nike shoes" solo por la imagen.
- **Productos agotados:** No hay evidencia de que mantener productos agotados en el feed preserve el historial. Las pruebas mostraron resultados aleatorios (mejor, peor, igual) al reincluirlos.

## Reglas para agentes
- Usa el precio total (incluyendo envío) como variable principal de optimización, no las pujas, cuando quieras aumentar volumen de tráfico.
- Prioriza la optimización de títulos de producto sobre descripciones y categorías — las descripciones y categorías no afectan el rendimiento.
- Incluye términos de búsqueda faltantes en los títulos comparando las consultas que llegan por Shopping vs. las que llegan por Search Ads; si hay un gap grande, Google no está entendiendo el producto.
- Coloca la palabra más importante al inicio del título: para productos de marca, pon la marca primero; para muebles, pon la categoría primero.
- Usa tantos caracteres como Google permita en los títulos sin que sean rechazados.
- Nunca subas pujas indiscriminadamente sin segmentar por tipo de consulta — subir pujas incrementa tráfico genérico de baja calidad y encarece el tráfico de marca.
- Implementa una estructura de 3 campañas con prioridades y negativas para controlar qué consultas reciben qué puja: campaña 1 para consultas específicas (puja alta), campaña 2 para consultas con marca (puja media), campaña 3 para genéricas (puja baja).
- No actives ECPC si tienes dudas sobre la incrementalidad de tu RLSA — ECPC apalanca principalmente RLSA y puede canibalizar ventas existentes.
- No mantengas productos agotados en el feed esperando preservar el historial — no hay evidencia de que funcione.
- Asegúrate de tener reseñas del vendedor (seller ratings) para competir cuando tu precio es solo marginalmente más bajo que el de la competencia.
- Incluye promociones a nivel de producto individual, no promociones genéricas de sitio completo — Google no factoriza descuentos globales como "30% off todo".

## Errores comunes que evita o menciona
- **Mito:** Estructurar campañas de forma muy granular daña el rendimiento. **Realidad:** No hay diferencia significativa en impresiones entre una estructura única, granularidad total o división tras 5 clics.
- **Mito:** El precio afecta principalmente el CTR. **Realidad:** El precio afecta drásticamente el volumen de impresiones (134% más para productos baratos), no el CTR.
- **Mito:** Subir pujas es la mejor forma de crecer. **Realidad:** Bajar el precio es más efectivo que subir pujas para aumentar volumen.
- **Mito:** Cambiar títulos de producto destruye el historial y quality score. **Realidad:** No hay impacto — el quality score está vinculado al ID del producto.
- **Mito:** Las descripciones de producto son importantes para el matching. **Realidad:** No importan en absoluto; puedes poner contenido incorrecto sin afectar el rendimiento.
- **Mito:** La categoría de producto es crucial. **Realidad:** Cambiarla no tiene impacto significativo en impresiones.
- **Mito:** ECPC optimiza principalmente por consultas específicas. **Realidad:** ECPC funciona subiendo pujas en RLSA, lo que puede canibalizar ventas.
- **Mito:** Subir pujas mejora el tráfico en general. **Realidad:** Subir pujas incrementa tráfico genérico de baja calidad y encarece el tráfico de marca.
- **Mito:** Mantener productos agotados en el feed preserva el historial. **Realidad:** No hay evidencia de beneficio; los resultados son aleatorios.
- **Mito:** El título del feed debe coincidir exactamente con el de la landing page. **Realidad:** No hay impacto en rendimiento si difieren.
- **Mito:** Las promociones globales del sitio (ej: "30% off todo") mejoran el ranking. **Realidad:** Google no las factoriza; solo cuenta promociones a nivel de producto individual.