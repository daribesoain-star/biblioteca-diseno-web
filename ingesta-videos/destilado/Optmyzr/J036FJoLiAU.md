# Why Value-Based Bidding in PPC Can Improve Results
**Fuente:** Optmyzr | https://youtu.be/J036FJoLiAU

## Qué enseña (2-3 líneas)
Explica por qué no todas las conversiones en PPC tienen el mismo valor para el negocio y cómo la puja basada en valor (Value-Based Bidding) con ROAS objetivo permite al motor de anuncios priorizar las conversiones de mayor calidad. Muestra que sin especificar el valor, el motor trata todas las conversiones como iguales y puja lo mismo por ellas, ignorando eventos posteriores como estimaciones gratuitas o cierres de venta.

## Lecciones accionables
- Implementa puja basada en valor usando ROAS objetivo (Target ROAS) en lugar de CPA objetivo (Target CPA) cuando tengas conversiones con distinto valor económico real.
- Comunica al motor de anuncios el valor diferencial de cada conversión: asigna un valor numérico mayor a conversiones que derivan en estimaciones gratuitas y otro aún mayor a las que resultan en clientes que pagan.
- Si no puedes rastrear cada conversión hasta el final, usa **value rules** (reglas de valor) para dar retroalimentación general al motor basada en segmentos como región geográfica.
- Ejemplo de regla de valor por región: asigna un valor más alto a leads de Estados Unidos (mayor probabilidad de convertirse en cliente), valor medio a Reino Unido y valor bajo a India.
- Alimenta estos valores en el sistema para que el motor ajuste las pujas de forma más inteligente, priorizando las conversiones que realmente impactan el resultado final (bottom line).

## Reglas para agentes
- Usa Target ROAS bidding cuando tengas conversiones con valores económicos diferentes; nunca uses Target CPA si no todas las conversiones tienen el mismo valor para el negocio.
- Asigna valores numéricos explícitos a cada tipo de conversión (ej. formulario = $100, estimación gratuita = $500, cliente cerrado = $2000) para que el motor pueda diferenciarlos.
- Cuando no tengas datos de seguimiento completo, usa value rules por segmentos (región, dispositivo, audiencia) para dar señales de valor al motor.
- Nunca asumas que todas las conversiones son iguales; si no especificas el valor, el motor optimizará para cantidad en lugar de calidad.

## Errores comunes que evita o menciona
- **Error:** Usar puja por CPA objetivo sin diferenciar el valor de las conversiones, lo que hace que el motor trate leads de baja calidad igual que leads de alto valor.
- **Error:** Asumir que todas las conversiones (ej. formularios de lead) tienen el mismo impacto en el negocio, ignorando eventos posteriores como estimaciones o cierres.
- **Error:** No usar value rules cuando no se puede rastrear cada conversión hasta el final, perdiendo la oportunidad de dar señales de valor al motor basadas en probabilidades regionales o de segmento.
- **Error:** Pensar que asignar menor valor a ciertas regiones significa descartar todos los leads de esa región; en realidad solo se está indicando una probabilidad estadística para ajustar pujas.