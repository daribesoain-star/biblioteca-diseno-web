# Here’s Why You Should Use Offline Conversion Imports
**Fuente:** Optmyzr | https://youtu.be/YpvSD7y0vio

## Qué enseña (2-3 líneas)
Este video explica por qué los anunciantes de generación de leads deben implementar la importación de conversiones offline (Offline Conversion Imports) para alimentar a las estrategias de bidding automatizado de Google Ads con datos reales de calidad, en lugar de leads brutos donde entre el 50% y 75% son basura. Enseña a seleccionar el evento de conversión adecuado en el funnel, cómo asignar valores estimados correctamente y cómo gestionar la transición sin romper el rendimiento de las campañas.

## Lecciones accionables
- **Configura la importación offline usando Enhanced Conversions for Leads** (la versión más reciente y simple): no requiere modificar el CRM, solo tomar el email del usuario del formulario, emparejarlo con el GCLID, hashearlo (SHA-256) antes de enviarlo a Google, y luego cuando ese lead se convierta, pasar el email hasheado para que Google lo desempareje y registre la conversión.
- **Importa todos los niveles del funnel que puedas** (lead crudo, lead calificado, venta final) como acciones de conversión separadas, pero selecciona solo una como **acción primaria** para que el smart bidding optimice hacia ella.
- **Para asignar valores de conversión estimados en etapas intermedias**, usa los valores que ya proporciona el CRM (ej. "oportunidad con valor estimado de $400,000 y 40% de probabilidad de cierre = valor esperado de $160,000"). Confía en los datos del CRM en lugar de inventar valores.
- **No uses solo 3 valores discretos** (ej. 1, 5, 10) para las estimaciones; cada conversión debe tener un valor distinto dentro de un rango continuo para que el modelo tenga suficiente riqueza para optimizar.
- **Para la transición** de un evento de conversión a otro más abajo en el funnel: deja que la importación corra durante al menos **7 días** (idealmente **2 semanas**) antes de cambiar la acción primaria, y hazlo en un período neutral sin picos de demanda (evita Prime Day, Black Friday, etc.).
- **Si usas tcpa (Target CPA) o tROAS (Target ROAS)**, al cambiar a un evento más abajo en el funnel, ajusta el target proporcionalmente (ej. si antes optimizabas a $50 CPA por lead bruto y ahora solo el 25% de leads se califican, el nuevo target debería ser ~$200 CPA por lead calificado).
- **Usa el sistema de ajustes de valor de conversión** (Conversion Value Rules) solo como stopgap si no puedes dar estimaciones precisas; si ya importas valores reales, no los dupliques con ajustes geográficos o por dispositivo.

## Reglas para agentes
- **Usa Enhanced Conversions for Leads** cuando el equipo de marketing no tenga acceso directo para modificar el CRM o cuando el GCLID no viaje limpiamente a través del pipeline de ventas.
- **Nunca envíes solo datos parciales** (ej. solo el 50% de los leads calificados) porque el modelo hará peores decisiones que si no tuviera datos; si no confías en Google, no le envíes nada.
- **Nunca uses valores de conversión con solo 2 o 3 buckets discretos** (ej. 1 y 7); el modelo necesita granularidad para diferenciar entre conversiones de alto y bajo valor.
- **Siempre espera al menos 7 días** (preferiblemente 14) después de activar la importación antes de cambiar la acción de conversión primaria, para que el modelo tenga suficientes datos de aprendizaje y patrones semanales.
- **Cuando cambies de un evento de alto funnel a uno más bajo**, reduce el CPA target o ajusta el ROAS target proporcionalmente a la tasa de calificación (ej. si solo el 30% de leads se califican, multiplica el CPA por ~3.3).
- **Importa todos los niveles del funnel** (lead, lead calificado, oportunidad, venta cerrada) como acciones de conversión separadas, pero solo marca una como primaria para bidding; las demás sirven para reportes y análisis.

## Errores comunes que evita o menciona
- **Error: Optimizar a leads brutos** donde el 50-75% son basura (estudiantes descargando whitepapers, compradores no calificados, spam). Esto hace que el smart bidding (incluyendo Performance Max) optimice hacia tráfico de baja calidad.
- **Error: Usar solo 3 valores de conversión discretos** (ej. 1, 5, 10) en lugar de valores continuos. El modelo no puede aprender patrones sutiles con tan poca granularidad.
- **Error: Ir directamente al evento más bajo del funnel** (venta cerrada) sin considerar si hay suficientes datos (tasa de conversión <1%) o si el ciclo de conversión es muy largo (>7 semanas). El modelo no tendrá suficientes señales para aprender.
- **Error: No hacer la transición gradualmente** y cambiar de golpe la acción primaria sin un período de aprendizaje de al menos 7-14 días, lo que causa inestabilidad en el rendimiento.
- **Error: Mezclar todos los eventos del funnel en una sola acción de conversión** en lugar de mantenerlos separados, perdiendo visibilidad sobre dónde está el cuello de botella.
- **Error: Asignar valores de conversión estimados sin coordinación con el equipo de ventas/CRM**, resultando en valores inflados o incorrectos que el modelo no puede corregir por sí solo.