# 10 Powerful Automations Beeby Clark+Meyler Uses Everyday to Manage Small Google Ads Accounts
**Fuente:** Optmyzr | https://youtu.be/oX8AFB-GVUI

## Qué enseña
Amy McLean Paulner, Group Director of Paid Search en BCM, comparte 10 automatisiones prácticas para gestionar cuentas pequeñas de Google Ads con Optmyzr. El enfoque es "automation layering": combinar alertas, reglas automatizadas y reportes con IA para ahorrar tiempo manual, reducir desperdicio de presupuesto y mantener consistencia entre equipos y clientes.

## Lecciones accionables
- **Alerta de anomalías de rendimiento:** Configurar en Optmyzr alertas por email con umbrales personalizados por cliente (ej: 25-30-40% de desviación en clics, 80-100% en conversiones). Enviar a las 7:00 AM para revisión matutina del equipo. Usar umbrales más altos para conversiones en cuentas con compras infrecuentes.
- **Alertas de presupuesto automatizadas (multi-cuenta):** Crear un portfolio multi-cuenta en Optmyzr que monitoree presupuestos combinados entre Google Ads y Microsoft Ads. Configurar alertas visuales (rojo = sobregiro, verde = en target) y por email solo cuando estén fuera de rango, no diariamente.
- **Regla para pausar keywords sin conversiones:** Usar el Rule Engine de Optmyzr con esta lógica: "Si keyword tiene clics, 0 conversiones en los últimos 90 días, y el costo es 3x el CPA objetivo de la campaña → pausar y aplicar label 'paused_keywords_no_conversions_90_days'". El label permite re-evaluar meses después si el CPA objetivo cambia.
- **Regla para negar search queries por rendimiento:** Configurar regla que niegue automáticamente queries con más de $400 en gasto y 0 conversiones en 90 días. Agregar a una lista de exclusión específica para poder revisarla después si se quiere expandir.
- **Reporte de DSA (Dynamic Search Ads) para descubrimiento:** Automatizar un reporte que identifique queries de DSA con 3+ conversiones que no existan como keywords en la cuenta. No automatizar la acción; enviar al equipo para decisión estratégica (nueva categoría, nuevo test).
- **Alerta de queries con alto CTR pero sin datos:** Configurar regla que notifique sobre search terms con alto CTR pero pocos datos (sin conversiones aún). El equipo investiga si es relevante (oportunidad) o irrelevante (desperdicio).
- **Regla para detectar declive en keywords:** Usar dos rangos de fecha en el Rule Engine: "conversiones en últimos 30 días = 0" Y "conversiones en últimos 90 días > 0". Esto detecta keywords que antes convertían y ahora están decayendo. El equipo investiga causa (cambio de landing page, pérdida de relevancia).
- **Exclusión automática de placements en YouTube (irrelevantes):** Regla que excluye automáticamente placements con nombres que contengan "sounds", "meditation", o que sean de otros países. Se ejecuta diariamente.
- **Exclusión automática de canales infantiles en YouTube:** Regla que excluye placements cuyo display name contenga "child", "children", "toddler", "newborn", "lullabies". Se ejecuta diariamente en TODAS las cuentas con YouTube. Previene que anuncios B2B se muestren a niños cuando un adulto pasa el teléfono.
- **Reportes con insights generados por IA:** Usar los reportes automatizados de Optmyzr con AI-generated insights como punto de partida para que el equipo profundice. No usar los insights textualmente para el cliente; usarlos para identificar tendencias que el equipo investiga.

## Reglas para agentes
- Usa umbrales de alerta diferentes para cada cliente y métrica: 25-30% para clics/costo, 80-100% para conversiones en cuentas con conversiones infrecuentes.
- Nunca envíes alertas diarias sobre lo mismo; si un cliente está consistentemente fuera de rango, ajusta el umbral o la frecuencia para evitar que el equipo las ignore.
- Siempre aplica labels (etiquetas) cuando pauses keywords o niegues queries automáticamente, para poder rastrear la razón meses después.
- Usa rangos de fecha múltiples en reglas para detectar declives (ej: 30 días vs 90 días), no solo datos de un solo período.
- En YouTube, ejecuta reglas de exclusión de placements DIARIAMENTE, no semanalmente, porque aparecen nuevos canales todo el tiempo.
- Para DSA, nunca automatices la acción de agregar queries como keywords; solo genera un reporte para decisión humana.
- Cuando configures reglas de pausa de keywords, usa la fórmula "costo > 3x CPA del campaign" combinado con "0 conversiones en X días", no solo una condición.
- Para cuentas pequeñas, prioriza reglas que reduzcan desperdicio de spend (pausar keywords sin conversiones, negar queries malas) sobre reglas de expansión.

## Errores comunes que evita o menciona
- **Alertas demasiado sensibles:** Si las alertas llegan a diario, el equipo las ignora. Configurar umbrales altos y frecuencia controlada (solo cuando están fuera de rango).
- **No usar labels en automatizaciones:** Si no se etiquetan las acciones automáticas, meses después el equipo no sabe por qué se pausó algo. Siempre aplicar labels descriptivos.
- **Ignorar el declive gradual:** Es fácil perderse en el día a día y no ver que un KPI sube lentamente durante semanas. Usar reglas con dos rangos de fecha para detectar tendencias antes de que crucen el umbral.
- **Automatizar decisiones estratégicas de DSA:** No dejar que una regla agregue automáticamente queries de DSA como keywords. El equipo debe evaluar si es una nueva categoría o un test antes de actuar.
- **No excluir canales infantiles en YouTube:** Asumir que la segmentación por audiencia es suficiente. Los niños pueden estar viendo el dispositivo de un adulto. Excluir por nombre de canal con palabras clave como "child", "toddler", "lullabies".
- **Usar el mismo umbral para todos los clientes:** Cada cliente tiene diferente CPA, volumen de conversiones y tolerancia al riesgo. Personalizar cada regla y alerta por cuenta.