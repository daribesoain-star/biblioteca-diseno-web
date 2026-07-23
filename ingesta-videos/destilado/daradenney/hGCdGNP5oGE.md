# How Seed Does Creative Testing on Meta Ads (and Why It Works)
**Fuente:** daradenney | https://youtu.be/hGCdGNP5oGE

## Qué enseña (2-3 líneas)
Seed Health reemplazó el "sandbox testing" tradicional (forzar gasto equitativo entre variantes) por un método basado en ASC (Advantage+ Shopping Campaigns) donde el algoritmo decide qué creativos escalar. La lección central es que probar menos creativos con alta diferenciación visual y mayor convicción produce mejores resultados que probar muchas variaciones por inercia. Además, revelan que la atribución de último clic puede engañar: los creativos internos generan conversiones por "view-through" con incrementalidad similar a los de influencers whitelisted.

## Lecciones accionables
- **Usa ASC como campaña de testing**: agrupa 15-20 creativos (3-5 conceptos) en una sola campaña ASC y deja que el algoritmo priorice el gasto. El principal indicador de éxito es si un anuncio escala y si lo hace con eficiencia.
- **Diferencia visual > iteración de copy**: si en 2 segundos no se nota la diferencia entre dos creativos, el algoritmo probablemente tampoco la detecta. Evita lanzar "slight tweaks on copy" como variantes separadas.
- **Estructura sprints mensuales por fuente creativa**: lanza 4-5 sprints al mes divididos por origen (equipo interno, agencias UGC, agencias de diseño gráfico/AI). Cada sprint puede tener 12-25 creativos.
- **Briefea aprendizajes comprobados a agencias externas**: cuando un concepto funciona (ej. "aspirational pooping every day"), pásalo a distintas agencias con sus especialidades (UGC, estático, video) para que lo reinterpretan visualmente, en lugar de pedir conceptos nuevos.
- **Mide incrementalidad, no solo atribución de último clic**: realiza lift tests internos para comparar la incrementalidad de creativos whitelisted vs. internos. Seed descubrió que los internos generan conversiones vía view-through con incrementalidad similar.
- **Mantén diversidad de fuentes creativas aunque el CPA de último clic sea peor**: la combinación de creativos internos + whitelisted + agencias produce el CPA incremental más eficiente, incluso si individualmente algunos parecen menos rentables en Meta Ads Manager.
- **Documenta aprendizajes y compártelos con otros equipos**: crea documentos con los anuncios top para que el equipo de orgánico social y otros departamentos sepan qué funciona en Meta.
- **Analiza el funnel completo**: al evaluar performance, revisa CTR, CPMs, tasa de conversión y todas las métricas del funnel, no solo el CPA final.

## Reglas para agentes
- **Usa ASC para testing creativo** cuando tengas entre 12 y 25 creativos por sprint; no fuerces gasto equitativo entre variantes.
- **Nunca** crees variantes solo por cumplir una cuota de 4-5 versiones por concepto; si tienes alta convicción en una sola ejecución, pruébala directamente.
- **Nunca** optimices solo por CPA de último clic en Meta; si un tipo de creativo tiene buena incrementalidad en view-through, mantenlo en rotación aunque su CPA reportado sea mayor.
- **Cuando un concepto funciona**, pásalo a múltiples fuentes creativas (internas y agencias) para que lo reinterpretan, en lugar de pedir conceptos completamente nuevos.
- **Mantén un límite estricto de variantes por agencia** (3-5 por concepto) para enfocar recursos en lo que tiene mayor probabilidad de escalar.
- **Realiza lift tests o estudios de incrementalidad** al menos una vez para entender el verdadero aporte de cada fuente creativa más allá de la atribución de último clic.

## Errores comunes que evita o menciona
- **Forzar gasto equitativo en sandbox testing**: distribuir presupuesto uniformemente entre todos los creativos ignora que el algoritmo ya sabe cuáles no escalarán, desperdiciando dinero.
- **Crear variaciones por inercia**: lanzar 4-5 versiones de un concepto solo porque "así se hace" sin tener convicción real en cada una, diluye el aprendizaje y el presupuesto.
- **Optimizar solo por CPA de último clic**: los creativos internos pueden generar conversiones view-through que no se reflejan en Meta Ads Manager, pero sí contribuyen al negocio. Cortarlos por bajo CPA aparente perjudica el funnel completo.
- **Ignorar la diferenciación visual**: lanzar cambios mínimos de copy como variantes separadas no genera suficiente señal para el algoritmo; la diferenciación debe ser evidente en 2 segundos.
- **Poner todo el presupuesto en whitelisted influencers**: aunque tengan mejor atribución de último clic, la mezcla diversificada de fuentes (interna + whitelisted + agencias) produce el CPA incremental más eficiente según los lift tests de Seed.