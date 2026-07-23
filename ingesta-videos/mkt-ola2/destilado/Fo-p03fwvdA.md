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