# 💳 Scaling Performance Max Campaigns for eCommerce Part 1
**Fuente:** SolutionsUno | https://youtu.be/OIMwv6zi-x4

## Qué enseña
Identifica cómo escalar campañas Performance Max para eCommerce analizando qué canales internos están funcionando (YouTube, Shopping, Search/DSA) y añadiendo campañas complementarias no superpuestas (como YouTube o Shopping en maximizar clics) que no compitan con el rendimiento existente, evitando simplemente dividir el presupuesto.

## Lecciones accionables
- **Identificar si YouTube está activo dentro de Performance Max:** Ve a columnas → añade "Views", "View rate" y "Avg. cost per view". Si estas métricas están en cero, YouTube no está corriendo → es una oportunidad para añadir una campaña de YouTube separada sin canibalizar.
- **Identificar si Shopping está funcionando:** Ve a "Listing groups" dentro de la campaña Performance Max. Usa "Conversions by conversion click" (no por tiempo de conversión) para que coincida con el total de conversiones del campaign. Si las ventas en listing groups son muy bajas vs. el total (ej. 4 de 139), Shopping no está activo → oportunidad para una campaña estándar de Shopping en "Maximize clicks" con presupuesto bajo.
- **Identificar si Search/DSA está funcionando:** Ve a la pestaña "Insights" → busca los términos de búsqueda que generan conversiones. Si la mayoría de conversiones vienen de search (ej. 135 de 139), DSA es el canal activo → NO crear otra campaña de Search (dividiría el rendimiento). En su lugar, expande a canales no usados.
- **Regla para medir consistencia:** Siempre usa "Conversions by conversion click" al analizar listing groups y el total del campaign para evitar discrepancias.
- **Métrica clave para YouTube fuera de Performance Max:** Apunta a un "View rate" superior al 22%. Por debajo, Google no considera la audiencia comprometida.
- **Estrategia para Shopping cuando hay competidor dominante:** Si el competidor gasta 12x más en Shopping y paga más CPC que el valor del producto, Performance Max evita ese canal. Para escalar, prueba una campaña de Shopping estándar en "Maximize clicks" con bajo presupuesto para obtener tráfico y remarketing, sin esperar ROAS inmediato.
- **Evaluar si una campaña nueva suma o divide:** Si el canal ya está activo dentro de Performance Max (ej. Search), crear otra campaña igual solo divide el volumen. Si el canal NO está activo (ej. YouTube con 0 views), añadirlo es valor añadido (nuevo tráfico frío).
- **Para YouTube fuera de Performance Max:** Mide KPIs alternativos además de ventas directas: costo por vista bajo, alto view rate, impresiones. El objetivo es tráfico frío nuevo que luego Performance Max puede remarketear internamente.
- **Precaución con Discovery/GSP:** Las clics en Discovery pueden ser aperturas de Gmail (no visitas reales al sitio). Si tienes 900 clics, espera solo ~90 visitas reales (~10%). Útil para awareness, no para eCommerce con métricas de ROAS/CAC estrictas.

## Reglas para agentes
- Usa "Conversions by conversion click" (no por tiempo de conversión) cuando compares listing groups con el total del campaign.
- Nunca crees una campaña de Search estándar si Performance Max ya está generando conversiones vía DSA/Search — solo dividirás el rendimiento.
- Siempre verifica si un canal (YouTube, Shopping) tiene actividad dentro de Performance Max (views=0, listing groups bajos) antes de crear una campaña externa del mismo tipo.
- Cuando añadas una campaña complementaria, asegúrate de que sea un canal NO activo en Performance Max para evitar canibalización.
- Para YouTube, apunta a un view rate mínimo del 22% para considerar la audiencia comprometida.
- No uses Discovery/GSP como canal principal para eCommerce direct response — las clics inflan vs. visitas reales (~10% de tasa real).
- Si el competidor domina Shopping con CPC alto, prueba "Maximize clicks" con presupuesto bajo en lugar de ROAS objetivo.

## Errores comunes que evita o menciona
- **Crear campañas duplicadas del canal que ya funciona dentro de Performance Max:** Si Search/DSA ya está activo, añadir otra campaña de Search solo divide el volumen (ej. Performance Max vendía $10,000/semana, nueva Search vende $3,000, Performance Max baja a $7,000 — no hay escalamiento real).
- **Usar "Conversions by conversion time" en listing groups:** Esto causa discrepancias con el total del campaign. Siempre usa "by conversion click".
- **Asumir que todos los canales de Performance Max están activos:** YouTube puede mostrar 0 views, Shopping puede tener 4 ventas de 139 — hay que verificarlo con columnas y listing groups.
- **Confiar en clics de Discovery como tráfico real:** Muchos son aperturas de Gmail (GSP), no visitas al sitio. La tasa real puede ser ~10%.
- **Ignorar la oportunidad de YouTube cuando Performance Max no lo usa:** Si YouTube está en cero, es una oportunidad pura de tráfico frío nuevo sin canibalización.
- **Usar Display para eCommerce direct response:** Display tiende a tráfico de baja calidad (apps, juegos infantiles, click farms). Mejor reservarlo para re-engagement de audiencias existentes.