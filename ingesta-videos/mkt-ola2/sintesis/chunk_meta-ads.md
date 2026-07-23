

===== Fo-p03fwvdA =====
# La mejor estrategia de Facebook Ads para 2026 (Post Andromeda)
**Fuente:** Sam Piliero | https://youtu.be/Fo-p03fwvdA
**Dominio:** meta-ads

## Qué enseña (2 líneas)
Estrategia completa para adaptar cuentas de Meta Ads tras la actualización Andromeda, donde el concepto creativo define la audiencia. Sistema progresivo por niveles de gasto (desde $0 hasta $100,000+/mes) con estructura de "packs" y separación obligatoria entre campañas de prospección y retención.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

**Día 1 - Configuración inicial:**
- Crear 1 campaña CBO de prospección con 3 conjuntos de anuncios:
  - 1 conjunto 100% broad (Advantage+ activado, sin exclusiones, todos los placements)
  - 2 conjuntos con intereses: el primer interés = la marca más nicho/pequeña de tu categoría; el segundo interés = mismo enfoque
- Configuración de campaña: Campaign budget optimization (CBO) activado, Highest volume o Highest value, conversion location = Website, Performance goal = Maximize number of conversions, Conversion event = Purchase
- Configurar Audience segment reporting: engaged audiences (visitantes 30 días, add-to-cart 90 días) y existing customers (lista completa de clientes)

**Nivel < $3,000/mes:**
- Mantener prospección idéntica al día 1
- Agregar campaña de retención solo para clientes existentes:
  - Incluir: compradores últimos 180 días + lista histórica (ej. desde Klaviyo)
  - NO marcar "Use as a suggestion" (desmarcar obligatoriamente)
  - Hacer clic en "Further limit the reach of your ads" dos veces, luego "Continue", luego volver a inclusiones y desmarcar "Use as a suggestion"

**Nivel $3,000 - $10,000/mes ($100 - $333/día):**
- Introducir sistema de packs: cada vez que lances nuevos creativos (4 estáticos, videos o catálogo), créalos en un nuevo conjunto de anuncios dentro de la misma campaña CBO
- Todos los packs deben ser broad
- Los mejores creativos (winners) se gradúan a conjuntos de intereses

**Nivel $10,000 - $30,000/mes ($333 - $1,000/día):**
- Agregar campaña ASC (Advantage+ Shopping Campaign) o "Scale": 1 conjunto de anuncios, 100% broad, excluyendo clientes existentes
- Graduar winners a: (1) conjuntos de intereses (para testear el interés, no el creativo) y (2) campaña de escala

**Nivel $30,000 - $100,000/mes ($1,000 - $3,333/día):**
- Agregar campaña de retargeting: add-to-cart 90 días + site visitors 30 días
- Solución para CBO roadblock (un conjunto acapara todo el presupuesto): en cada conjunto de anuncios → Budget & schedule → Ad set spending limits → Cambiar de "Use percentage" a "Use dollar value" → Daily minimum = 1x tu target CPA (ej. si CPA objetivo es $50, poner $50). Máximo 7 días. Si gasta más del mínimo diario, quitar el límite. Si gasta exactamente el mínimo pero con ROAS alto, mantener e incrementar.

**Nivel $100,000+/mes:**
- Regla de 10,000: por cada $10,000 que gastes al mes, sube 10 anuncios nuevos por semana (diferentes, no variaciones de tamaño)
- Implementar cost caps, bid caps o target ROAS
- Implementar day parting y week parting (revisar en Shopify qué días rinden mejor y asignar más presupuesto)
- Usar incremental attribution (no 7-day click ni 1-day click/view)

## Reglas para el erudito ("usa X cuando Y")

- **Usa CBO siempre** en campañas de prospección desde el día 1
- **Usa "Purchase" como conversion event siempre** — nunca add-to-cart ni initiate checkout
- **Usa "Further limit the reach" + desmarcar "Use as a suggestion"** cuando crees campañas de retención contra clientes existentes
- **Usa el sistema de packs** cuando gastes > $3,000/mes para evitar resetear aprendizajes a nivel campaña/anuncio
- **Usa ad set spending limits** cuando un solo conjunto domine el presupuesto y los nuevos no tengan oportunidad de gastar
- **Usa cost caps/bid caps/target ROAS** cuando gastes > $100,000/mes para sostener CPA o ROAS
- **Usa incremental attribution** cuando gastes > $100,000/mes por el halo effect de referidos y boca a boca
- **Usa intereses solo para guiar al algoritmo** — el broad es siempre lo más importante
- **Gradua winners a intereses** solo cuando el creativo ya esté validado (para testear el interés, no el creativo)

## Errores comunes

- Usar add-to-cart o initiate checkout como conversion event en lugar de purchase
- Marcar "Use as a suggestion" en campañas de retención (permite a Facebook salirse de tu lista de clientes)
- No hacer clic en "Further limit the reach" dos veces al crear campañas de retención
- Pausar manualmente conjuntos de anuncios que fatigan — el sistema de packs redistribuye el gasto automáticamente
- Mantener intereses que no funcionan cuando el broad ya hace la mayor parte del trabajo
- No separar clientes existentes en campaña propia desde el nivel < $3,000 (Facebook tiende a sobregastar en ellos)
- No subir suficientes creativos nuevos al escalar (regla de 10,000)
- Usar atribución de 7-day click o 1-day click/view en cuentas grandes (> $100,000/mes)
- No hacer day parting/week parting cuando se tiene datos claros de días que rinden mejor

===== OlgVQYdMAjw =====
# Destilación: The BEST NEW WAY to Run Facebook Ads in 2026 (Andromeda 2.0)

**Fuente:** Professor Charley T | https://youtu.be/OlgVQYdMAjw
**Dominio:** meta-ads

## Qué enseña (2 líneas)
Meta ha reemplazado su sistema de entrega de anuncios con una arquitectura tipo LLM (Andromeda, Gem, Lattis, Signal Journey, Adaptive Model) que optimiza cada impresión individual según el historial del usuario. La ventaja competitiva ya no está en la segmentación manual ni en los embudos secuenciales rígidos, sino en la calidad del contenido creativo, las señales de datos propias y las asociaciones con creadores.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Instalación del Conversions API (CAPI) con un clic:**
   - Ubicación: dentro del Business Manager, botón de un clic.
   - Requisito previo: tener el píxel base instalado en el sitio web.
   - Resultado observado: match rates suben de ~70% a ~80%+ (de "low sevens" a "high eights").

2. **Ejecutar un Conversion Lift Study (CLS):**
   - Ubicación: Ads Manager → sección Experiments → Conversion Lift.
   - Es gratuito y mide el impacto causal/incremental real de tu publicidad.
   - Si nunca has hecho una prueba de incrementalidad, no entiendes el verdadero efecto de tus anuncios.

3. **Asignar 10% del presupuesto a "R&D" (pruebas extrañas):**
   - Destina el 10% de tu inversión a experimentar con nuevas features, formatos o creatividades poco convencionales.
   - Objetivo: encontrar ese 10x o 100x que aparece aproximadamente una vez por trimestre.

4. **Crear eventos personalizados para objetivos específicos:**
   - No uses "Purchase" genérico si quieres nuevos clientes → crea un evento "New Customer".
   - No uses "Purchase" si quieres vender sofás en lugar de sillones → crea un evento "Couches".
   - El anuncio no siempre vende lo que aparece visualmente; debes enseñarle a la máquina exactamente qué es éxito.

5. **Optimizar catálogos con datos a nivel de producto:**
   - Meta ahora usa datos de producto para informar la optimización.
   - Acción inmediata: revisar y optimizar todos los catálogos para asegurar que los datos de producto estén completos y correctos.

6. **Usar Partnership Ads Hub (lanzado recientemente):**
   - Conecta marcas y creadores con alineación de incentivos.
   - Modalidad recomendada: brief con viñetas de alto nivel, NO guiones extensos. El creador conoce a su audiencia; si le das un guión escrito, la audiencia lo detecta como falso.

7. **Formato Meta Moment Maker / Real Trending Ad:**
   - Nuevo tipo de anuncio que permite a los marketers de performance acceder a momentos culturales (ej: tendencias del momento).
   - Ejemplo mencionado: similar a comprar un "Trending Topic" en Twitter por $100k por un día, pero integrado en Meta.

## Reglas para el erudito ("usa X cuando Y")

- **Usa Partnership Ads (con creadores) cuando** tu marca no tiene suficiente "moat" (foso competitivo) o estás en un mercado saturado (ej: apparel, suplementos). Sin marca, no funciona.
- **Usa el 10-20% del presupuesto en campañas NO orientadas a conversión directa** cuando quieras construir relaciones a largo plazo y evitar ser como las marcas DTC que ya no existen. Chubbies es el caso de éxito: invirtió en marca.
- **Usa el modelo de afiliado (sin fee fijo, solo comisión) solo si** eres una marca muy pequeña sin presupuesto. Para marcas con recursos, paga fee fijo: el creador puede replicar tu negocio si ve los números exactos de ventas.
- **Usa la instalación CAPI de un clic cuando** ya tengas el píxel base instalado. No necesitas desarrollador para esto.
- **Usa "Play" (experimentación flexible) cuando** notes que tu equipo está demasiado rígido, haciendo 100 variaciones del mismo anuncio sin estirar el concepto creativo.
- **Usa señales personalizadas (eventos como "New Customer") cuando** tu objetivo real no es simplemente una compra, sino un tipo específico de cliente o producto.

## Errores comunes

1. **Creer que "Andromeda" es una opción que se activa.** No es un método ni una configuración. Es parte del sistema de entrega subyacente de Meta (junto con Gem, Lattis, Signal Journey, Adaptive Model). No puedes "optar por entrar" a Andromeda.

2. **Seguir usando segmentación manual (lookalikes, audiencias segmentadas, mapeo de journey del usuario).** El sistema ahora predice qué anuncio servir a cada usuario en qué orden y contexto. El journey es diferente para cada individuo; intentar mapearlo manualmente es obsoleto.

3. **Poner 100% del presupuesto en campañas de conversión directa.** Las marcas que solo hacen direct response no tienen "moat". La construcción de marca (10-20% del presupuesto) es lo único que da valor duradero y protege contra cambios de plataforma.

4. **Dar guiones extensos a los creadores en Partnership Ads.** El creador conoce a su audiencia. Si le das un guión escrito por Claude o por ti, la audiencia lo detecta como falso y se pierde todo el valor de la autenticidad.

5. **No iterar después de obtener datos.** Recibir datos de un Conversion Lift Study o cualquier test y decir "qué interesante" sin decidir el siguiente paso es el error más común. La iteración es lo que falta.

6. **Intentar hacerlo todo uno mismo.** Nadie es bueno en todo: grabación, edición, instalación técnica de píxel/CAPI, estrategia de customer journey. Especialízate en tu fuerte y contrata donde eres débil. La plataforma se mueve demasiado rápido para alcanzar en todas las áreas.

7. **No definir correctamente las señales de éxito.** Si solo usas "Purchase" genérico, no le estás enseñando a la máquina qué es realmente importante para tu negocio (nuevos clientes, productos específicos, etc.).

===== TpZrPY6jTE8 =====
# How To Make AI Ads With Claude X Meta
**Fuente:** NA | https://youtu.be/TpZrPY6jTE8  
**Dominio:** meta-ads

## Qué enseña
Flujo completo para investigar, generar y lanzar anuncios UGC con IA usando solo Claude, conectado a Meta MCP y Arcads MCP. Permite crear campañas de Meta Ads sin salir del chat, desde el análisis de competencia hasta la publicación y optimización.

## Tácticas accionables

1. **Conectar Meta MCP en Claude:**  
   - Ir a Settings > Connectors > Add Connector  
   - Pegar la URL del servidor MCP de Meta (mostrada en pantalla)  
   - Conceder acceso → conexión lista en ~30 segundos

2. **Investigación inicial (prompt exacto):**  
   *"Using Meta MCP, pull the top performing ads in my account from the last 30 days. Then, search the web for the highest performing Meta UGC ads for [producto]. Identify which creative formats are getting the highest impressions, which hooks are generating the highest engagement rates, which audience segments are responding best, any creative patterns showing up repeatedly in winning ads. Give me a summary I can use to brief my new creatives before I launch."*

3. **Conectar Arcads MCP:**  
   - Settings > Connectors > Add Custom MCP  
   - Pegar URL de Arcads (mostrada en pantalla)  
   - Iniciar sesión con cuenta Arcads

4. **Generar scripts UGC (prompt exacto):**  
   *"You are a senior performance marketer and UGC ad script writer. My product is [producto]. What it does: [descripción]. Target audience: [audiencia]. Platform: Meta, TikTok, Instagram Reels. Do the following: 1) Identify the top three pain points this product solves. 2) Write five UGC ad scripts, one per pain point angle. Each script 18-20 seconds, natural spoken language, cold audience. Structure: hook 0-3s, problem 3-8s, solution 8-15s, proof 15-18s, CTA 18-20s. 3) Score each script out of 10, only keep scripts scoring 9.5 or above. 4) Suggest the ideal actor type for each script (age, gender, setting, emotion)."*

5. **Generar imágenes de actores:**  
   *"Using [modelo, ej: Nano Banana Pro], generate an image of a woman in her mid-20s, long brown hair, wearing the product in the attached reference image, bedroom background. Keep the product exactly as shown, no changes."*  
   → Adjuntar imagen de referencia del producto cada vez.  
   → **Aprobar cada imagen antes de pasar a video** (corregir si la prenda se ve rara).

6. **Generar videos UGC:**  
   *"Using the approved image of actor [número], create a 10 to 12-second UGC video using [modelo, ej: Seedance 2.0]. She should speak naturally and say: [insertar script]. Handheld feel, vertical format, candid, and authentic."*  
   → Cada video toma 3-5 minutos. Repetir para los 5 actores.  
   → Pedir: *"Give me the download links for all five videos."*

7. **Subir videos a Meta y lanzar campaña:**  
   *"Upload these five videos to my Meta ad account as new creatives"* (pegar los 5 links de descarga).  
   Luego: *"Create a new Meta ad campaign for [producto], objective sales, budget $30 a day. Run it for five days starting tomorrow. Target women aged 18 to 29 in [país] interested in fashion and lifestyle content, wellness and sustainable products. Use broad targeting for the first test."*

8. **Analizar resultados y escalar:**  
   Después de 5-7 días: *"Which of my five ads is performing the best? Show me a breakdown."*  
   Luego: *"Take the top performing ad and generate five more variations of it using Arcads MCP. Same actor, different scripts."*

## Reglas para el erudito

- **Usa Meta MCP** cuando necesites investigar el panorama actual de anuncios en tu cuenta y en la web antes de crear cualquier creativo.
- **Usa Arcads MCP** cuando tengas los scripts listos y necesites generar actores, imágenes y videos UGC sin cambiar de herramienta.
- **Aprueba cada imagen de actor antes de generar el video** — es más barato y rápido corregir en imagen que en video.
- **Usa objetivo "sales"** en lugar de "video views" o "link clicks" cuando el presupuesto es limitado ($30/día), para no desperdiciar presupuesto en métricas de baja intención de compra.
- **Usa broad targeting** en la primera prueba para dejar que Meta optimice la entrega.
- **Escala solo el ganador** después de 5-7 días: pide 5 variaciones del mejor anuncio con el mismo actor pero nuevos scripts.

## Errores comunes

- Saltarse la investigación inicial y lanzar anuncios sin datos → la mayoría de anuncios generados con IA fallan por esto.
- No aprobar las imágenes de actores antes de generar videos → corregir después es más caro y lento.
- Optimizar para "video views" o "link clicks" en lugar de "sales" con presupuesto bajo → se gasta en usuarios que no convierten.
- No iterar sobre el ganador → el verdadero valor está en el ciclo: investigación → generación → lanzamiento → análisis → más variaciones del ganador.

===== C462NGAz3Os =====
# Destilación del Tutorial: "My Full Process For Scaling Facebook Ad Clients In 2026"

**Fuente:** NA | https://youtu.be/C462NGAz3Os  
**Dominio:** meta-ads

## Qué enseña (2 líneas)
Proceso completo para escalar clientes de Facebook Ads en 2026: desde la calificación del cliente (mínimo $100K/mes en ingresos, $30K/mes en gasto de ads) hasta la creación sistemática de creatividades, estructura de campañas CBO y ciclo de aprendizaje continuo. El método se centra en creatividades y landing pages, manteniendo la estructura de cuenta simple.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Calificación de cliente perfecto:**
   - Shopify como plataforma
   - Mínimo $100,000/mes en ingresos
   - Gasto activo mínimo de $30,000/mes en Facebook Ads
   - P&L del negocio positiva (no negocios en declive)

2. **Estrategia de onboarding (documento que recibe el cliente post-pago):**
   - Acceso a la cuenta de anuncios
   - Dominios de Shopify (para acceder a Shopify Collab Code)
   - Invitación a Triple Whale
   - Enlace de Google Drive con todo el contenido existente
   - KPIs actuales que usan
   - Productos más vendidos y principales a enfocar
   - Ángulos que funcionan mejor
   - Landing pages
   - Encuestas a clientes existentes

3. **Estructura de campaña:**
   - Una campaña CBO por objetivo de negocio
   - Un ad set nuevo por cada idea de anuncio
   - 3 creatividades (videos o fotos) por ad set, variando solo el gancho visual (mismo texto hook y cuerpo)
   - Si se expande a nuevos países: campañas CBO separadas por país

4. **Proceso de creación de contenido:**
   - 5 lotes (batches) de ideas por semana
   - 3 creatividades por idea
   - Cada lote documentado en Google Sheet con: idea, hipótesis, copy, variaciones de gancho visual
   - Asignación en Asana al equipo creativo (editor de video o creator manager)
   - Herramientas usadas: InSync (para contratar diseñadores), Adobe, Higgsfield (IA), Frame.io (para subida final)

5. **Regla de escalado:**
   - Subir presupuesto 20% por día mientras el CPA esté por debajo del KPI objetivo
   - Ejemplo del video: cliente con KPI de $50 CPA → escalar 20% diario si se mantiene por debajo

6. **Ciclo de aprendizaje (post-7 días):**
   - Dejar correr 7 días
   - Si no hay impacto negativo en rendimiento, dejar 1 anuncio
   - Registrar aprendizajes en Google Sheet (marcar como exitoso/no exitoso)
   - Revisar: qué salió bien, qué salió mal, qué se puede mejorar
   - Actualizar Asana con los aprendizajes

## Reglas para el erudito ("usa X cuando Y")

- **Usa CBO (Campaña de Presupuesto Optimizado)** cuando tengas un solo objetivo de negocio por campaña
- **Usa campañas separadas por país** cuando expandas a nuevos mercados (ej. Europa)
- **Usa 3 variaciones por idea de anuncio** cuando quieras testear ganchos visuales manteniendo el mismo texto hook y cuerpo
- **Usa el diagnóstico "costo por link click"** para determinar si el problema es creativo (mal CPC) o de landing page (buen CPC pero mal CPA)
- **Usa contenido nativo (no AI UGC genérico)** cuando el CPM y CPC sean altos
- **Usa Frankenstein ads (mezcla de UGC, clips hechos en IA y素材 existente)** para maximizar variedad sin depender de un solo formato
- **Usa el ciclo "idea → creación → estructura → aprendizaje → repetir"** como sistema continuo para escalar conocimiento del producto

## Errores comunes

- **Aceptar clientes en declive** (negocios que han caído los últimos 8 meses) — es irrealista esperar resultados en 30 días; toma 60-90 días incluso si es posible
- **Usar BitCaps** — el creador los probó y no funcionaron
- **Preocuparse por usar "flexible ads" o "dynamic creative"** — no afecta el rendimiento de forma significativa
- **Crear anuncios de embudo bajo cuando se necesitan de embudo alto**
- **No provocar emoción** en los anuncios (anuncios aburridos)
- **Repetir el mismo enfoque** una y otra vez sin iterar
- **No revisar cada creatividad** después del ciclo de 7 días para aprender qué funcionó y qué no

===== qBoGXJzroxg =====
# Destilación del Tutorial: Top Creatives para Meta Ads (Agosto 2026)

## Qué enseña (2 líneas)
Cómo estructurar 5 tipos de creatividades publicitarias en Meta Ads basadas en atención, precio, justificación de valor, prueba social y autoridad. Cada una usa un gancho visual o narrativo específico para captar retención y convertir.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Creativo de diagnóstico con props físicos**
   - Abre el video con un objeto físico (cuchillo de utilería, no real) señalando algo en pantalla durante los primeros 2 segundos.
   - En los segundos 3-10: enumera 5-7 síntomas específicos del público (ej: "marcas de calcetines, ojeras, papada").
   - Segundos 10-15: vincula los síntomas a un problema más profundo (ej: cortisol alto).
   - Segundos 15-20: introduce urgencia temporal ("el verano está a menos de 60 días").
   - Resto del video: despliega beneficios del producto.

2. **Creativo de USP por precio (Homeaglow-style)**
   - Sin voz en off. Solo B-roll + texto en pantalla.
   - Muestra 3 comparaciones precio vs. competencia:
     - Ejemplo 1: "Limpieza de 2h: $50 normal → $9 con nosotros"
     - Ejemplo 2: "Limpieza de 3h: $75 normal → $19 con nosotros"
     - Ejemplo 3: similar.
   - Duración total: 15-20 segundos.
   - Alternativas si no usas precio: velocidad, "sin lo que la gente odia", etc.

3. **Creativo para justificar precio alto ("demasiado caro")**
   - Primeros 3 segundos: replica la objeción del cliente ("Dijeron que era demasiado caro").
   - Siguientes 5 segundos: muestra la respuesta de la marca ("Añadimos 25 mg más de paraxantina").
   - Usa un prop físico (cuchillo, objeto llamativo) en el primer segundo para retener atención.
   - Enfócate en qué se añadió (ingredientes, sabor, enfoque) para justificar el precio.

4. **Creativo de creencia con entrevistas callejeras (street interviews)**
   - Para productos donde el beneficio no se puede demostrar en pantalla (ej: aroma).
   - Muestra 3 personas diferentes (2 hombres, 1 mujer, sin parecido físico) en exteriores reales.
   - Cada persona prueba el producto vs. el competidor caro con los ojos cerrados.
   - Pregunta: "¿Cuál crees que es el original?"
   - Al menos 2 de 3 eligen la alternativa barata.
   - Añade 1-2 segundos de reacción de sorpresa ("¡No puede ser!").

5. **Creativo de autoridad con personalidad conocida (ej: Joe Rogan)**
   - Primeros 2 segundos: clip de la personalidad diciendo algo impactante o haciendo un sonido/gemido culturalmente reconocible.
   - Alterna cada 3-5 segundos entre:
     - Clip del podcast/influencer.
     - Toma de un usuario real en un entorno afín al público objetivo (ej: taller, obra, entorno blue-collar).
   - Usa 3 ángulos de cámara diferentes en los segmentos de usuario.
   - Cierra con CTA directo ("Cómpralo aquí").

## Reglas para el erudito ("usa X cuando Y")

- **Usa props físicos (cuchillo, objeto inesperado)** cuando tu producto o nicho es genérico y necesitas un gancho visual en los primeros 2 segundos para detener el scroll.
- **Usa el formato de diagnóstico (síntomas → problema → urgencia)** cuando tu producto resuelve un problema de salud, bienestar o estética que el público ya sospecha pero no ha nombrado.
- **Usa el formato de USP por precio (comparación directa)** cuando tu producto es significativamente más barato que la alternativa conocida y el ahorro es el principal motivador de compra.
- **Usa el formato de justificación de precio ("dijeron que era caro")** cuando tu producto tiene un precio superior al promedio del mercado y necesitas demostrar valor añadido (más ingredientes, más funcionalidad).
- **Usa entrevistas callejeras (street interviews)** cuando el beneficio del producto no se puede demostrar visualmente en pantalla (aromas, sabores, texturas) y necesitas prueba social creíble.
- **Usa el formato de autoridad con personalidad conocida** cuando tienes acceso a un influencer con alta credibilidad en un nicho específico (ej: Joe Rogan para blue-collar, salud, fitness) y tu público objetivo lo reconoce instantáneamente.

## Errores comunes

1. **Usar un cuchillo real en el video** → Puede activar restricciones de Meta Ads y que tu cuenta sea limitada. Usa siempre un prop de utilería.
2. **Usar autoridad médica explícita** (ej: "Soy enfermero y te recomiendo esto") → Zona gris que puede generar restricciones. Mejor decir "la enfermera me dijo" (experiencia personal, no consejo médico).
3. **No variar los perfiles en entrevistas callejeras** → Si los 3 entrevistados se parecen (misma edad, mismo estilo), la audiencia percibirá que son actores y perderás credibilidad.
4. **No incluir reacciones de sorpresa genuinas** en las entrevistas → Si todos eligen la opción barata sin mostrar asombro, el anuncio se siente guionizado.
5. **Usar un solo ángulo de cámara en el creativo de autoridad** → La alternancia entre podcast y entorno real (con 3 ángulos distintos) es lo que mantiene la atención visual. Un solo plano fijo aburre.
6. **No replicar la objeción del cliente textualmente** en el creativo de precio alto → Si no dices exactamente "dijeron que era demasiado caro", el público no sentirá que la marca los escuchó.

===== 5GAuNu1V8h8 =====
# Cómo crear landing pages con IA que escalan anuncios de Facebook

**Fuente:** NA | https://youtu.be/5GAuNu1V8h8
**Dominio:** meta-ads

## Qué enseña (2 líneas)
Cómo construir tres tipos de landing pages (advertorial, listicle y quiz funnel) usando IA (Claude) y herramientas como Funnelish o GemPages, y cómo probarlas contra la página de producto directa para mejorar CPA y CPM en Meta Ads.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Encontrar inspiración de landing pages:**
   - Usa **Trend Track** → filtro "Shop Straight" con: tráfico 100k–2M visitas/mes, tienda en crecimiento (+10% mensual), país visitante USA, idioma inglés, moneda USD, app Shopify "Clevio", píxel "Meta Pixel".
   - Haz clic en una tienda → pestaña "ads" → "top landing pages" → guarda la URL en un Google Doc de inspiración.

2. **Construir la landing page con Claude:**
   - Usa **Claude Opus 4.8** con "high effort".
   - Dale como input: URL de la página de producto actual + datos de encuesta Typeform (PDF) + URL de la landing page de inspiración (ej: página listicle de Hollow Socks).
   - Pídele: "Recreate this page for my product. I want it in HTML format."
   - Claude te hará preguntas: "¿Qué audiencia?", "¿Cuál es la oferta?", "¿Cuál es el sitio real?".
   - Para editar: haz screenshot del HTML → envíalo de vuelta a Claude → pídele cambios como si fuera un diseñador.
   - Sube imágenes/videos a Shopify primero, luego pega esas URLs en Claude para que las use.

3. **Publicar la landing page:**
   - Si eres agencia con múltiples clientes: usa **Funnelish** → crea nueva página → agrega sección "custom HTML" → pega el código HTML que te dio Claude.
   - Si eres dueño de una sola tienda Shopify: usa **GemPages** o **Replo**.
   - Configura el píxel: en Funnelish → Settings → "tracking code" → pega tu píxel ID de Meta (cámbialo en dos lugares dentro del código).
   - Importa un dominio personalizado en Funnelish.

4. **Probar la landing page en Meta Ads:**
   - Ve a tu campaña **CBO** → crea dos ad sets con el mismo creativo:
     - Ad set 1: tráfico a la nueva landing page.
     - Ad set 2: tráfico a la PDP (página de producto).
   - Deja que Facebook gaste según rendimiento.
   - **Regla de prueba:** toma los anuncios con mayor gasto y CPA alto pero buen CPC → duplica ese ad set → cambia solo la landing page.

## Reglas para el erudito ("usa X cuando Y")

- **Usa advertorial** cuando tu audiencia es "unaware" o "problem aware" (no sabe que tiene el problema o recién lo descubre). Ej: diagnóstico de un problema, historia personal, "esto probé y no funcionó, esta es la nueva solución".
- **Usa listicle** (3, 5, 7 o 10 razones) cuando tu audiencia es "solution aware" o "product aware" (sabe que existe una solución o conoce productos similares). Sirve para comunicar USP y por qué tu producto es mejor que la competencia.
- **Usa quiz funnel** cuando tu audiencia es "unaware" a "problem aware" y necesitas que se autodiagnostiquen. Ej: "¿Tienes baja testosterona? Responde este quiz".
- **Usa Funnelish** si manejas múltiples clientes y no quieres tocar el código Shopify de cada uno.
- **Usa GemPages o Replo** si eres dueño de una sola tienda Shopify (ya integran píxel y dominio automáticamente).
- **Prueba landing pages nuevas** con anuncios que ya tienen alto gasto y CPA alto pero buen CPC (costo por clic bajo) — ahí hay una desconexión entre creativo y landing page.

## Errores comunes

- Pensar que "landing page" solo es advertorial o listicle. **Cualquier página a la que envíes tráfico desde un anuncio es una landing page** (incluye PDP, quiz, etc.).
- Usar el término "pre-lander" — el creador lo considera un concepto sin sentido, como decir "sub-avatars".
- Creer que las landing pages personalizadas no trackean en el píxel de Meta. **Sí trackean si pegas el píxel ID en el código de tracking**.
- Pensar que no se puede editar el HTML generado por IA sin saber código. **Se puede: haz screenshot, envíalo a Claude y pídele cambios como a un diseñador**.
- Preocuparse por usar dominios diferentes dentro de la misma cuenta de anuncios. **No hay problemas, el tracking funciona igual**.
- Enviar tráfico a una PDP cuando el creativo apunta a una audiencia nueva. **El algoritmo recibe señales mixtas** (creativo optimizado para nuevo avatar, PDP no optimizado) → CPM y CPC más altos.

===== 5C5VhqW9HCc =====
```markdown
# How I Make AI Static Ads (in minutes)
**Fuente:** NA | https://youtu.be/5C5VhqW9HCc
**Dominio:** meta-ads

## Qué enseña (2 líneas)
Un método para crear anuncios estáticos de alto rendimiento en Meta Ads combinando principios estratégicos de copy y diseño con herramientas de IA (Claude + SuperScale). El proceso cubre desde la definición de la estrategia y los formatos ganadores hasta la generación y edición de assets con agentes autónomos.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1.  **Antes de crear, define 4 elementos estratégicos:**
    -   **Objetivo específico:** Elegir UNO (oferta, educación, problema-aware). No mezclar.
    -   **Persona detallada:** No "dueños de negocio". Especificar etapa y objeción.
    -   **Formato:** Decidir entre gráfico, hi-fi o low-fi (creator content).
    -   **Nivel de conciencia:** Unir persona y objetivo con el framework de copy.
2.  **Jerarquía visual obligatoria:** El orden de atención debe ser: 1) Headline (mensaje principal), 2) Producto/visual clave, 3) Elementos de soporte. El 90% de las veces, el punto focal debe ser el texto.
3.  **Prueba de 1 segundo:** Si un extraño no entiende qué vendes o qué mensaje comunicas en 1 minuto, mata el anuncio.
4.  **Copywriting específico:**
    -   Usa números exactos: "5 minutos", "menos de $5", "2 usos".
    -   Nombra a la audiencia directamente (auto-selección como mecánica de targeting).
    -   Abre un "bucle de curiosidad": muestra el setup, esconde el payoff detrás del clic.
    -   Usa "marketing negativo": nombra lo que tu audiencia teme.
5.  **Extraer testimonios dorados:** Corre un CSV de reseñas por un LLM con el prompt: "Encuéntrame testimonios dorados que funcionarían bien en publicidad".
6.  **Formato "Headliner Ad":** El mensaje sexy es el foco central. Funciona para anuncios tabú.
7.  **Formato "Grid Static":** Ideal para marcas con múltiples SKUs, especialmente en periodos de venta.
8.  **Formato "Text-only Ad":** Basado en formatos orgánicos (cartas del fundador). Funciona bien.
9.  **Proceso con SuperScale:**
    -   **Paso 1 (Claude):** Exporta tu "brand brain" o usa el prompt del video para construirlo. Pégalo en la sección "Context & Skills" de SuperScale.
    -   **Paso 2 (SuperScale):** Pega el prompt de "creative strategy audit" en el chat principal. Espera 2-5 minutos mientras la IA investiga tu marca y competidores (analiza librerías de anuncios reales).
    -   **Paso 3 (Generación):** Pide "3 variaciones de este anuncio estático". Revisa el output.
    -   **Paso 4 (Edición):** Usa el botón "Edit" para corregir errores (ej: "quita la M dash", "cambia el fondo a beige"). Los cambios se aplican en tiempo real.
    -   **Paso 5 (Variaciones):** Sube un anuncio existente (o de competidor) y pide: "Hazme 5 variaciones más de este anuncio para 3 personas diferentes, targeting audiencia problem-aware".

## Reglas para el erudito ("usa X cuando Y")

-   **Usa "Educational Infographics"** cuando quieras crear tráfico de top-of-funnel que no se sienta como un anuncio. Piensa en valor educativo o entretenido.
-   **Usa "Comparison / Us vs. Them"** cuando tu mercado esté en una etapa de "mejora del mecanismo" y necesites diferenciarte claramente de la competencia.
-   **Usa "Transformation / Before & After"** cuando tu audiencia sea problem-aware o solution-aware y solo busque prueba. Es el formato con mayor gap de oportunidad en la mayoría de cuentas.
-   **Usa "Callouts / Benefits Callout"** para destacar deseos centrales o insertar un testimonio dorado.
-   **Usa "Low-fi Creator Content"** para estáticos. Es el formato que más está moviendo el indicador actualmente, pero muchas marcas lo olvidan.
-   **Usa "Text-only Ads"** cuando quieras copiar formatos orgánicos que funcionan (ej: cartas del fundador). Los clientes pueden dudar, pero funciona.
-   **Usa el "bucle de curiosidad"** cuando el anuncio sea top performer. Asegúrate de que la landing page satisfaga la curiosidad generada.
-   **Usa "lean into the taboo"** (di lo que los competidores son demasiado educados para decir) para conectar a un nivel más profundo con la persona y parar el scroll.

## Errores comunes

-   **Creer que los estáticos son solo para retargeting o fondo de embudo.** Es falso. Con la persona y el nivel de conciencia correctos, escalan en frío.
-   **Pensar que "solo el video funciona".** Es un error de habilidad (skill issue). El problema es no enfocarse en los niveles de conciencia y el mensaje correcto.
-   **Usar estáticos solo para testear mensajes y luego escalarlos a video.** Se pierde la magia de un gran estático que puede transformar la cuenta.
-   **Hacer que un anuncio haga dos trabajos a la vez.** Intentar hablar a demasiadas personas o cumplir múltiples objetivos en un solo estático.
-   **Ser genérico en el copy.** "Dueños de negocio" es demasiado amplio. Hay que nombrar la demografía específica y usar números exactos.
-   **Descuidar la jerarquía visual.** Tener demasiados elementos sin un punto focal claro. Si no hay jerarquía, el anuncio debe matarse.
-   **Ignorar los testimonios de clientes.** No extraer los "testimonios dorados" de las reseñas es perder una fuente de ganadores.
-   **Confiar ciegamente en la IA sin editar.** No todos los outputs de SuperScale son listos para usar. Hay que revisar, editar (corregir textos, ajustar colores, simplificar) y refinar.
```