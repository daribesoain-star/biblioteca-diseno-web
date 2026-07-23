# Learn With Optmyzr: Real-Time PPC Strategies to Stay in Control During BFCM
**Fuente:** Optmyzr | https://youtu.be/an3RCITYFjg

## Qué enseña (2-3 líneas)
Este video enseña cómo usar las herramientas de Optmyzr (alertas personalizadas, reglas automatizadas, proyección de gasto, optimización de presupuestos, análisis de consultas e investigador PPC) para monitorear, anticipar y ajustar campañas de PPC en tiempo real durante el Black Friday y Cyber Monday, cuando los CPC fluctúan cada hora y el rendimiento puede cambiar drásticamente.

## Lecciones accionables
- **Configurar alertas personalizadas en "Monitor and Alerts"** para rastrear KPIs clave: overspending, CPC spikes, conversion drops, product disapprovals. Durante BFCM, reducir los buffers (ej. de 20-25% a un umbral más bajo) para detectar caídas de ventas o retornos más rápido.
- **Enviar notificaciones a Slack o Microsoft Teams** desde la sección de alertas, para que el equipo las vea instantáneamente donde ya trabaja, sin depender del correo.
- **Crear reglas en "Rule Engine" para monitoreo de pacing diario**:
  - Estrategia #1: ejecutar alrededor del mediodía, comparando el costo contra el presupuesto diario, para detectar campañas que gastan demasiado rápido o que van rezagadas.
  - Estrategia #2: ejecutar alrededor de las 6-7 PM, detectando campañas cerca o sobre el límite de 2x el presupuesto diario, o que aún tienen margen para escalar.
- **Usar "Enhanced Scripts"** (sin necesidad de codificar) para gestionar topes de gasto diario desde una hoja de cálculo: pausar campañas automáticamente cuando superan un umbral crítico y reanudarlas al día siguiente. Agregar un buffer para no pausar campañas de alto tráfico demasiado temprano en horas pico.
- **Aplicar "Spend Projection"** para ver la variación diaria y comparar el ritmo de gasto actual con patrones esperados basados en meses/años anteriores (incluyendo BFCM previos). Ajustar la selección de campañas en el panel izquierdo.
- **Usar "Optimize Budgets"** para reasignar presupuesto en pocos clics: desplazar fondos de campañas de bajo rendimiento a las de alto rendimiento. Elegir entre estrategias de optimización por volumen de conversiones o ROAS. Revisar el "Impact Analysis" en la segunda pestaña para ver cómo los cambios afectarían el rendimiento y la distribución entre canales, luego aplicar los nuevos presupuestos.
- **Automatizar ajustes de presupuesto con "Rule Engine"** (una o dos veces al día):
  - Regla para aumentar presupuestos en campañas que ya superan su ROAS objetivo.
  - Regla para reducir presupuestos o aumentar objetivos en campañas que gastan con bajos retornos.
- **No usar múltiples herramientas paralelas para ajustar presupuestos diarios** (ej. Rule Engine + Optimize Budgets + Enhanced Scripts) porque se sobrescribirán entre sí. Elegir una sola solución.
- **Realizar "Query Defense" con "Shopping Negatives"** para campañas Shopping estándar: identificar términos de búsqueda no convertidores o de baja calidad y tomar acciones masivas. También redirigir tráfico al grupo de anuncios más relevante si un mismo término dirige a varios.
- **Usar "Traffic Sculpture"** (en "Manage and Optimize Keywords and Search Query") para campañas de búsqueda.
- **Crear reglas en "Rule Engine" con lógica relativa** para análisis de consultas: ej. "flag search terms that have spent more than twice the average cost per conversion in this specific ad group and still haven't converted". Esto permite usar la misma regla como plantilla en múltiples campañas y cuentas sin ajustar umbrales manualmente.
- **Usar "PPC Investigator"** desde el dashboard o menú: comenzar con una pregunta específica (ej. "conversion volume" o "conversion value"), elegir un rango de fechas ajustado (ej. "this week" o "yesterday" en lugar de últimos 30 días). Analizar el gráfico de costos desglosado por impulsores clave (ej. impresión share lost due to rank vs budget). Ir a "Root Cause Analysis" para ver contribución de cada factor.
- **Desde PPC Investigator, pasar directamente a ajustar bidding automatizado** a nivel de ad group (Shopping/Search estándar) o campaña (PMAX), usando rangos de fechas personalizados (ej. últimos 3 días) en lugar del default de 30 días.
- **Configurar reglas en "Rule Engine" para campañas que pierden impresión share por rank pero tienen potencial de conversión**: decidir si ejecutar en horario (diario/semanal) o con mayor frecuencia (ej. 4 veces al día, contactando a soporte). Elegir notificación o aplicar cambios automáticamente.
- **Usar "Optmyzr Sidekick" (AI assistant)** para que resuma qué cambió en los últimos días y cómo afectó el rendimiento.
- **Revisar el "Change History Widget"** en el dashboard de la cuenta: combina rendimiento con acciones registradas de Google Ads UI, Optmyzr y otras herramientas API. Superponer cambios de presupuesto con tendencias de ROAS para verificar impacto.
- **Seguir una estructura diaria**:
  - Mañana: revisar "Spend Projection" y "Optimize Budgets" para reasignaciones. Analizar consultas. Revisar alertas (Slack/email).
  - Final del día: usar "PPC Investigator" para ver cómo fue el rendimiento y qué cambió.
  - Revisar otras optimizaciones (ej. reglas para CTR decreciente) para la mañana siguiente.
- **Crear un flujo de trabajo BFCM en "Account Blueprints"** (sección "My Tasks"): definir tareas, añadir notas/recordatorios, asignar a miembros del equipo. Los blueprints guían el proceso sin ejecutar cambios automáticamente.

## Reglas para agentes
- Usa alertas personalizadas con envío a Slack o Microsoft Teams cuando detectes overspending, CPC spikes, conversion drops o product disapprovals durante BFCM.
- Reduce los buffers de alertas (ej. de 20-25% a un umbral más bajo) durante la semana de BFCM para detectar caídas más rápido.
- Nunca ajustes presupuestos diarios usando múltiples herramientas paralelas (Rule Engine + Optimize Budgets + Enhanced Scripts) simultáneamente; elige una sola solución para evitar sobrescrituras.
- Usa lógica relativa en las reglas de análisis de consultas (ej. "más del doble del costo promedio por conversión del ad group") en lugar de umbrales estáticos, para que la misma regla funcione en múltiples campañas.
- Cuando uses PPC Investigator, siempre comienza con una pregunta específica y elige rangos de fechas cortos (ej. "yesterday" o "last 3 days") durante BFCM, no los últimos 30 días.
- Si configuras reglas para ajustar bidding, usa rangos de fechas personalizados (ej. últimos 3 días) en lugar del default de 30 días.
- Para reglas que se ejecutan varias veces al día (ej. 4 veces), contacta a soporte de Optmyzr para habilitar esa frecuencia.
- Usa "Account Blueprints" para estructurar tareas diarias de BFCM y asignarlas al equipo; los blueprints no ejecutan cambios automáticamente, solo guían el proceso.

## Errores comunes que evita o menciona
- **Usar múltiples herramientas para ajustar presupuestos diarios**: si ya tienes una regla automatizada en Rule Engine o Google Ads haciendo cambios de presupuesto y también ejecutas Optimize Budgets o un Enhanced Script, esos sistemas se sobrescribirán entre sí. Recomienda elegir una sola solución.
- **Depender de los rangos de fechas default de 30 días** durante BFCM: los promedios de 30 días pueden estar desactualizados. Recomienda cambiar a rangos personalizados (ej. últimos 3 días) para reflejar el rendimiento actual de la semana.
- **Pausar campañas de alto tráfico demasiado temprano en horas pico** al usar automatización de topes de gasto diario: recomienda agregar un buffer para evitar que la automatización pause campañas exitosas durante picos de demanda.
- **No revisar alertas a tiempo**: las alertas enviadas a Slack/Teams permiten reaccionar en minutos, evitando costosos tiempos de inactividad por presupuestos agotados al mediodía, productos desaprobados a media tarde o CPCs disparados cuando no estás frente al escritorio.
- **Actuar con corazonadas en lugar de datos**: usar PPC Investigator y Change History Widget para basar decisiones en datos, no en intuiciones, evitando horas perdidas revisando reportes manualmente.