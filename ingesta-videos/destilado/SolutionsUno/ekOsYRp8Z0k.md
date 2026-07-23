# 💣 Performance Max Best Practices With Cory Lindholm
**Fuente:** SolutionsUno | https://youtu.be/ekOsYRp8Z0k

## Qué enseña (2-3 líneas)
Cory Lindholm desglosa las mejores prácticas actuales para Performance Max, tratándolo como un conjunto de "ingredientes" que deben combinarse según los objetivos de negocio. Enseña a priorizar la estrategia sobre los botones, entender los números internos del negocio (CAC, LTV, AOV, tasa de retorno) y segmentar asset groups según presupuesto diario y comportamiento de compra. También cubre bidding strategies (max conversions vs max conversion value), audience signals efectivas y cómo evitar errores comunes como mezclar productos estacionales o sobre-segmentar sin datos suficientes.

## Lecciones accionables
- **Conoce tus números internos antes de tocar cualquier campaña:** CAC (costo de adquisición de cliente), tasa de retorno, LTV (lifetime value a 30/60/90/12/18 meses), AOV (valor promedio del pedido), ratio de clientes nuevos vs recurrentes, crecimiento año contra año.
- **Identifica tus best sellers y productos estacionales:** No incluyas productos solo de temporada (ej. "Christmas only products") en una campaña PMAX porque entrenas al algoritmo a vender algo que luego tendrás que sacar, forzando un reaprendizaje costoso.
- **Segmenta asset groups por categoría de producto o por marca:** Si el comportamiento de búsqueda es mayoritariamente por marcas (ej. Nike, Adidas), segmenta por marca en lugar de por categoría de producto. Si no, usa categorías de producto.
- **Número de asset groups según presupuesto diario:**
  - Menos de $100/día → 1 a 3 asset groups (máximo).
  - $100-$500/día → hasta 5 asset groups (aproximado, depende de AOV y CPC).
  - Más de $500/día → hasta 20 asset groups (si tienes presupuesto para obtener datos accionables).
  - Si puedes tolerar 6 meses de rendimiento subóptimo, puedes añadir más asset groups para obtener datos eventualmente.
- **Usa audience signals en este orden de prioridad:**
  1. **Custom segments basados en keywords de alta intención:** Crea listas masivas (ej. 6,000 keywords) con sinónimos de "buy", "sale", "promo" + nombre del producto/categoría. Úsalas como "custom segment" para "purchase intention" o "recently searched".
  2. **First-party data (opcional):** Clientes, suscriptores, usuarios de app, visitantes del sitio, viewers de YouTube channel. Si quieres que el algoritmo trabaje más duro para escalabilidad a largo plazo, considera saltarte first-party data y solo darle audience signals frías.
  3. **In-market audiences relevantes:** No uses demasiadas porque puedes desviar el aprendizaje. Una vez que PMAX aprende una audiencia, no la olvida.
  4. **High share of conversions del insights tab:** Cuidado porque Google tiende a inclinarse a affinity audiences (muy amplias). Verifica que no sean demasiado genéricas.
  5. **High conversion probability users (beta en Google Analytics):** Si tienes acceso, pruébalo como audience signal.
- **Bidding strategy:**
  - **Maximize Conversion Value** → para la mayoría de empresas. Úsalo si los AOV varían mucho o si los mejores clientes (mayor LTV) vienen de productos de AOV alto. Ideal si tienes offline conversion tracking con ajustes de valor.
  - **Maximize Conversions** → solo si los AOV no varían mucho (ej. todos los productos rondan precios similares) Y los clientes de mayor LTV provienen de productos de AOV bajo. Puedes empezar con esta y cambiar después si es necesario.
- **Presupuesto inicial mínimo:** Al menos $100/día. Si venías de Smart Shopping con $200/día, considera aumentar un 30% o incluso duplicar, porque PMAX es un "giant ship" que combina 6-7 campañas en una.
- **Configuración de campaña:** Mantén una sola campaña PMAX consolidada al inicio. No segmentes por margen (como se hacía en Smart Shopping) porque los clientes no compran según tu margen; un producto de bajo AOV puede generar el cliente de mayor LTV.
- **Exclusiones de URL:** Úsalas como ingrediente adicional para refinar el tráfico.
- **Value rules:** Aprovecha las reglas de valor por audiencia, dispositivo o geografía para ajustar el valor de conversión que ve el algoritmo.
- **Customer acquisition campaign settings:** Actívalo si tu objetivo es captar nuevos clientes, no re-comprar a los existentes.

## Reglas para agentes
- **Nunca** mezcles productos estacionales (ej. solo de Navidad) en una campaña PMAX con productos de todo el año. Sepáralos en campañas independientes.
- **Nunca** segmentes asset groups por margen de producto. Los clientes no compran según tu margen; un producto barato puede ser la puerta a tu mejor cliente.
- **Nunca** uses más de 3 asset groups si tu presupuesto diario es menor a $100/día. No obtendrás datos accionables en menos de 6 meses.
- **Siempre** conoce tu CAC, LTV, AOV y tasa de retorno antes de configurar cualquier campaña PMAX. Sin esos números, ninguna estrategia funcionará.
- **Siempre** empieza con una sola campaña PMAX consolidada. No la dividas en múltiples campañas al inicio a menos que tengas un caso de uso muy específico (ej. producto que no recibe atención del algoritmo).
- **Siempre** usa Maximize Conversion Value como bidding strategy por defecto, a menos que tus AOV sean muy homogéneos Y tus mejores clientes vengan de productos de bajo AOV (en ese caso prueba Maximize Conversions).
- **Siempre** establece expectativas realistas: 3-6 meses para ver resultados sólidos. No prometas proof of concept en 90 días para productos de alto AOV o ciclos de compra largos.
- **Siempre** usa audience signals de alta intención (custom segments con keywords de compra) como primera opción, no affinity audiences genéricas.
- **Siempre** verifica que los productos en PMAX no tengan problemas de inventario o fulfillment. Si un producto se agota, el algoritmo tendrá que reaprender.

## Errores comunes que evita o menciona
- **Pensar que PMAX es "set it and forget it":** Hay muchos ingredientes (budget, bidding, conversion actions, audience signals, value rules, URL exclusions, customer lists, etc.) que requieren ajuste continuo.
- **Usar demasiados asset groups con presupuesto bajo:** Si tienes $100/día y 20 categorías de producto, tardarás 6 meses en obtener datos accionables. La mayoría de empresas no pueden quemar efectivo tanto tiempo.
- **Segmentar por margen como en Smart Shopping:** En PMAX, el algoritmo optimiza para el valor total, no para tu margen. Un producto de bajo margen puede generar el cliente de mayor LTV.
- **Mezclar productos estacionales con permanentes:** Entrenas al algoritmo a vender algo que luego desaparece, forzando un costoso reaprendizaje.
- **Confiar ciegamente en affinity audiences del insights tab:** Aunque muestren "high share of conversions", son audiencias muy amplias que pueden desviar el targeting.
- **No tener offline conversion tracking con ajustes de valor:** Si solo usas el gclid sin alimentar datos de LTV posterior, el algoritmo no puede priorizar correctamente los productos que generan mayor valor a largo plazo.
- **Prometer proof of concept en 90 días para productos de alto AOV o ciclos de compra largos (ej. B2B con ciclo de 18 meses):** Es imposible. El mínimo realista es 3-6 meses.
- **Usar first-party data cuando quieres escalabilidad rápida:** Si alimentas al algoritmo con first-party data desde el inicio, puede tardar meses en explorar fuera de ese segmento. A veces es mejor empezar con audience signals frías.
- **Ignorar el nivel de aversión al riesgo del negocio:** Cuanto más riesgo puedas tolerar, más rápido puedes gastar para obtener datos accionables. Si no puedes tolerar 6 meses de rendimiento subóptimo, mantén pocos asset groups y presupuesto conservador.