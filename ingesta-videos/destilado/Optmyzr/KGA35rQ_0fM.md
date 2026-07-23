# Learn With Optmyzr: How to Fix Budget Pacing Issues and Improve the ROI of Your PPC Campaigns
**Fuente:** Optmyzr | https://youtu.be/KGA35rQ_0fM

## Qué enseña (2-3 líneas)
Este video enseña a diagnosticar y corregir problemas de ritmo de gasto (budget pacing) en campañas PPC, usando herramientas de Optmyzr como el Spend Projection Tool, Optimize Budget Tool y scripts de automatización. Explica cómo la estructura de campañas, las estrategias de puja y los ajustes de presupuesto afectan la distribución del gasto y el ROI.

## Lecciones accionables
- **Regla de estructura de campañas:** No uses más de 5 a 7 grupos de anuncios por campaña. Más allá de ese límite, el presupuesto no se distribuye equitativamente y algunos grupos se quedan sin gasto.
- **Separar ubicaciones por diferencias de coste:** No combines ubicaciones con distintos costes de vida, precios de subasta o husos horarios en una misma campaña, porque el presupuesto no se asignará correctamente.
- **Entender el cálculo del presupuesto diario en Google:** Google usa un promedio móvil de 30.4 días. Si pones un presupuesto diario de $10, puede gastar hasta el doble ($20) en un día si cree que obtendrá una conversión, pero luego reducirá el gasto para mantener el promedio.
- **Usar el Spend Projection Tool de Optmyzr:** Configura un presupuesto simulado mensual (ej. $3,200) y compara el gasto proyectado vs. el gasto real. Si el gasto proyectado es muy superior al presupuesto (ej. $7,800 proyectado vs. $3,200 presupuestado), hay un problema de ritmo.
- **Ajustar el presupuesto ideal en el Spend Projection Tool:** Cambia el valor del presupuesto ideal (ej. de $3,200 a $5,000) para ver cómo se recalcula el gasto proyectado y el umbral diario recomendado.
- **Usar el Optimize Budget Tool de Optmyzr:** Revisa las columnas de "impression share loss due to budget" y "impression share loss due to rank". Si la pérdida por presupuesto es alta (ej. >50%), considera aumentar el presupuesto. Si la pérdida es por rank, el problema es estructural (puja, calidad del anuncio).
- **Interpretar las sugerencias de cambio de presupuesto:** El Optimize Budget Tool muestra si recomienda aumentar, disminuir o mantener el presupuesto de cada campaña basándose en el rendimiento real (conversiones, CPC, impresiones).
- **Usar el script "Target Monthly Spend" de Optmyzr:** Configura un gasto mensual objetivo (ej. $10,000) y un nombre de presupuesto (ej. "budget 1 2 3"). Define si el presupuesto es compartido o por campaña individual.
- **Configurar el período de cálculo del script:** Para cuentas con más de 3 meses de datos, usa un promedio de 8 semanas. Para cuentas nuevas, usa 2 semanas. Una vez superados los 6 meses, usa al menos 4 semanas, idealmente 8.
- **Activar el rollover de presupuestos no usados:** Solo si el cliente lo aprueba explícitamente. De lo contrario, no marques esa opción.
- **Usar el script "Pause When Too Much Spend" de Optmyzr:** Define un gasto máximo permitido por día (ej. $500), por semana o por mes. Configura si quieres pausar campañas, grupos de anuncios o keywords cuando se supere el límite.
- **Configurar reanudación automática:** El script permite reanudar los elementos pausados cuando el ritmo de gasto vuelva a estar dentro de lo esperado.
- **Configurar notificaciones por email:** Incluye direcciones de email para recibir alertas cuando se active la pausa o reanudación.
- **Usar naming conventions (convenciones de nombres):** Nombra campañas y grupos de anuncios de forma consistente para que los scripts y herramientas puedan identificarlos fácilmente.
- **Crear Budget Monitoring Alert en Optmyzr:** Selecciona nivel de cuenta o portafolio, elige la red (Google Ads, Microsoft, etc.), define el presupuesto mensual objetivo (ej. $3,200) y la fecha de reinicio del ciclo (ej. primer día del mes).
- **Configurar notificaciones de sobre y bajo gasto:** Activa alertas al 50% y al 100% del presupuesto. Si solo te notifican al 100%, no podrás corregir a tiempo.
- **Crear KPI Alerts para CPC:** Configura alertas cuando el CPC promedio aumente más del 20% en 28 días (basado en benchmarks de Optmyzr). Ajusta el buffer al 5-10% para cuentas pequeñas. También puedes alertar cuando el CPC supere un monto específico (ej. $1).
- **Configurar alertas de tendencias negativas:** Activa alertas para detectar malas tendencias antes de que el rendimiento se desvíe significativamente.

## Reglas para agentes
- Usa el Spend Projection Tool de Optmyzr cuando necesites verificar si el gasto proyectado de un mes supera el presupuesto simulado.
- Usa el Optimize Budget Tool de Optmyzr cuando quieras decidir si aumentar o reducir el presupuesto de una campaña basándote en la pérdida de impresión share por presupuesto y en el rendimiento real (conversiones, CPC).
- Nunca combines más de 5-7 grupos de anuncios en una misma campaña si quieres que el presupuesto se distribuya equitativamente.
- Nunca combines ubicaciones con diferentes costes de subasta o husos horarios en una misma campaña.
- Configura el período de cálculo del script "Target Monthly Spend" a 8 semanas si la cuenta tiene más de 3 meses de datos; usa 2 semanas si es una cuenta nueva.
- Nunca actives el rollover de presupuestos no usados sin la aprobación explícita del cliente.
- Configura alertas de sobre/ bajo gasto al 50% y al 100% del presupuesto, no solo al 100%.
- Usa naming conventions consistentes en todas las campañas y grupos de anuncios para que los scripts puedan identificarlos.
- Configura el script "Pause When Too Much Spend" con un límite diario, semanal o mensual, y activa la reanudación automática cuando el ritmo se normalice.
- Crea KPI Alerts para CPC con un umbral de cambio del 20% en 28 días, y ajusta el buffer al 5-10% para cuentas pequeñas.

## Errores comunes que evita o menciona
- **Estructura de campañas con demasiados grupos de anuncios:** Más de 5-7 grupos de anuncios por campaña hace que el presupuesto no se distribuya equitativamente, dejando algunos grupos sin gasto.
- **Combinar ubicaciones con diferentes costes y husos horarios:** Mezclar ubicaciones con distintos precios de subasta o zonas horarias impide que el presupuesto se asigne correctamente.
- **Cambiar la estrategia de puja sin considerar el período de aprendizaje:** Si cambias una campaña a una nueva estrategia de puja, entra en modo de aprendizaje y el gasto puede ser errático hasta que se estabilice.
- **Usar keywords broad match sin suficientes negativos:** Una keyword broad match puede disparar el gasto de repente si no tienes suficientes palabras clave negativas para proteger otros grupos de anuncios.
- **Confundir pérdida de impresión share por presupuesto vs. por rank:** Si la pérdida es por rank, aumentar el presupuesto no solucionará el problema; hay que ajustar la puja o la calidad del anuncio.
- **No ajustar el período de cálculo del script según la antigüedad de la cuenta:** Usar un promedio de 8 semanas en una cuenta nueva (menos de 3 meses) da resultados poco fiables.
- **Activar el rollover de presupuestos sin acuerdo del cliente:** Si el cliente no está de acuerdo en que los presupuestos no usados se trasladen al mes siguiente, se generarán conflictos.
- **No usar naming conventions:** Sin nombres consistentes, los scripts y herramientas no pueden identificar correctamente las campañas o grupos de anuncios.
- **Configurar alertas solo al 100% del presupuesto:** Si solo te notifican cuando ya se alcanzó el límite, no puedes corregir el ritmo de gasto a tiempo.
- **No monitorear el CPC con KPI Alerts:** Un aumento repentino del CPC puede indicar un problema de competencia o de calidad del anuncio que requiere acción inmediata.