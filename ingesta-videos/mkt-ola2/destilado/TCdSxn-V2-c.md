# I Audited 10,000,000 in eCommerce Ad Spend — They All Made the Same 5 Mistakes
**Fuente:** NA | https://youtu.be/TCdSxn-V2-c
**Dominio:** google-ads

## Qué enseña (2 líneas)
Cómo identificar y corregir los 5 errores más frecuentes en cuentas de Google Ads para eCommerce, basados en la auditoría de ~$10M en inversión publicitaria durante 2026. El enfoque central es pasar de optimizar por ROAS a optimizar por crecimiento de nuevos clientes con unidad económica sostenible.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)
1. **Excluir marca de Performance Max:** Agrega tu marca como *palabra clave negativa* en la campaña PMax. También puedes usar la opción de *exclusión de marca* en la configuración de la campaña (campaign settings). Filtra los términos de búsqueda por tu marca para verificar que no haya tráfico de marca distorsionando los resultados.
2. **Usar hoja de cálculo para cruzar datos de backend:** Crea un Google Sheet donde registres semanal/mensualmente: número de nuevos clientes (desde Shopify/backend), CAC de nuevos clientes, y rentabilidad actual. Cruza esos datos con el rendimiento del frontend de Google Ads para validar que el aumento de inversión realmente impacte el crecimiento de nuevos clientes.
3. **Consolidar PMax:** Si tienes más de 10 campañas PMax en la cuenta, probablemente estás sobresegmentado. Revisa la estructura y consolida campañas a menos que tengas una razón estratégica clara (ej: países diferentes, márgenes muy distintos, AOV drásticamente diferente como $10 vs $10,000).
4. **Ajustar TROAS:** Si una campaña tiene un objetivo de TROAS superior a 1000% (ej: 1500%) y no está escalando, bájalo. El algoritmo se queda sin subastas. El TROAS debe correlacionarse con tu métrica North Star de backend, no ser un fin en sí mismo.
5. **Separar productos por margen y AOV:** No mezcles productos de margen bajo (ej: 10%) con margen alto (ej: 70%) en la misma campaña. Tampoco mezcles AOV bajo (ej: $10) con AOV alto (ej: $1,000). El algoritmo busca el camino de menor resistencia y puede sesgar la entrega.

## Reglas para el erudito ("usa X cuando Y")
- **Usa exclusión de marca en PMax** cuando quieras medir el rendimiento real de campañas no-brand y evitar que el tráfico de marca disfrace resultados no rentables.
- **Usa ROAS como guía, no como North Star** cuando tomes decisiones de optimización dentro de Google Ads; la métrica principal debe ser el crecimiento de nuevos clientes con CAC rentable según los números reales del negocio.
- **Consolida campañas PMax** cuando tengas más de 10 y no haya una razón estratégica clara (diferencia de país, margen, o AOV extremo). La sobresegmentación ahoga la escalabilidad.
- **Ajusta TROAS a la baja** cuando la campaña esté estancada o no pueda escalar porque el objetivo es demasiado alto (ej: 1500%). El algoritmo necesita poder entrar en suficientes subastas.
- **Segmenta por margen y AOV** cuando tengas productos con diferencias drásticas (ej: 10% vs 70% margen, o $10 vs $1,000 AOV). No mezcles en la misma campaña para evitar que el algoritmo priorice lo fácil sobre lo rentable.

## Errores comunes
1. **No excluir la marca de Performance Max.** El tráfico de marca se absorbe en PMax, inflando el ROAS general y ocultando que el rendimiento real sin marca es malo o no rentable.
2. **Usar ROAS como North Star del negocio.** Esto lleva a decisiones que estrangulan el crecimiento (ej: subir TROAS a niveles irreales) en lugar de enfocarse en nuevos clientes rentables con unidad económica sostenible.
3. **Sobresegmentar campañas PMax.** Tener 25 campañas PMax en una cuenta que gasta $20-30K/mes es común y contraproducente. La sobresegmentación impide escalar y estanca el rendimiento.
4. **Fijar TROAS extremadamente alto (ej: 1500%).** Esto "ahoga" la campaña porque el algoritmo no puede participar en suficientes subastas para cumplir el objetivo, resultando en estancamiento o falta de escalabilidad.
5. **Mezclar productos de margen bajo con margen alto, o AOV bajo con AOV alto en la misma campaña.** El algoritmo busca el camino de menor resistencia, priorizando productos fáciles de vender y limitando la exposición de los de alto valor, lo que distorsiona la rentabilidad real.