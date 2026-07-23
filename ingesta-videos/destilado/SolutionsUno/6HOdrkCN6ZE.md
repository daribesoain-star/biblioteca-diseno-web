# 💣 Google Ads Strategy: Removing Google’s Algorithm From Standard Shopping
**Fuente:** SolutionsUno | https://youtu.be/6HOdrkCN6ZE

## Qué enseña (2-3 líneas)
Cómo reemplazar la estrategia de puja "Low tROAS" en campañas de Shopping Estándar por "Max Clicks con límite de CPC" para eliminar ineficiencias en clics fríos donde el algoritmo de Google no tiene datos suficientes. La estrategia reduce el CPA a la mitad y duplica el ROAS al cortar clics caros en el primer clic y aprovechar el retorno orgánico a través de la campaña de marca.

## Lecciones accionables
- **Cambiar de Low tROAS a Max Clicks con bid cap:** En cada campaña de Shopping Estándar, cambia la estrategia de puja a "Maximizar clics" y establece un límite de CPC entre un 25% y un 50% por encima del CPC promedio actual de la campaña. Ejemplo: si el CPC promedio es $1.91, fija el bid cap en ~$2.15.
- **Identificar clics ineficientes:** Revisa los términos de búsqueda de cada campaña y segmenta por CPC. Elimina o excluye los términos con CPC superior a $3-$4 si tienen pocas conversiones y bajo ROAS (ejemplo: 222 clics a CPC >$3 generaron solo 10 conversiones con ROAS 4.2).
- **Estructura de 19 campañas separadas:** Mantén las campañas de Shopping Estándar segmentadas por producto o categoría (el autor usa 19 campañas) para aplicar el bid cap individualmente según el CPC promedio de cada una.
- **Verificar el impacto en marca:** Después del cambio, monitorea la campaña de marca. En el caso presentado, la campaña de marca solo gastó 4% más pero generó $32,000 adicionales en valor de conversión (de $146k a $180k) en 7 días.
- **Medir con herramienta externa:** Usa un dashboard de atribución multiclick (ej. Northbeam) para validar el verdadero CAC y ROAS, ya que "Google Ads es un modelo de reporting horrible". En el ejemplo, el CAC global de nuevos clientes se mantuvo estable mientras el gasto subió 41%.
- **Escalar sin límite:** Una vez implementado, escala el presupuesto diario de forma agresiva. En el caso, se aumentó el gasto 130% en una semana sin tocar punto de retornos decrecientes, mejorando el ROAS y CAC general.

## Reglas para agentes
- **Usa Max Clicks con bid cap** cuando el CPC promedio de la campaña sea alto (>$5) y el algoritmo de Low tROAS esté pujando agresivamente en clics fríos sin datos históricos.
- **Nunca confíes en el reporting de atribución de Google Ads** para medir el rendimiento real; usa una herramienta de atribución externa (Northbeam, Triple Whale, etc.) para ver el CAC y ROAS verdadero.
- **Aplica el bid cap entre 25% y 50% por encima del CPC promedio** de la campaña, no un valor fijo arbitrario.
- **Excluye términos de búsqueda con CPC >$3-$4** si tienen bajo volumen de conversiones y ROAS inferior al objetivo, incluso si el promedio de la campaña parece aceptable.
- **Monitorea la campaña de marca** 7 días después del cambio para verificar que el tráfico frío convertido regrese a través de búsquedas de marca, incrementando el valor sin aumentar el gasto.
- **Escala el presupuesto diario** sin miedo una vez que el CAC se mantenga estable y el ROAS mejore; la estrategia permite escalar 1:1 sin límite aparente.

## Errores comunes que evita o menciona
- **Confiar en Low tROAS para clics fríos:** El algoritmo puja demasiado alto en el primer clic porque no tiene datos del usuario, resultando en CPCs de $12-$19 cuando el promedio debería ser ~$2.
- **Usar atribución data-driven de Google:** Sobreatribuye a la campaña de marca, ocultando que los clics fríos de Shopping están generando conversiones que luego se acreditan incorrectamente.
- **No segmentar campañas:** Tener una sola campaña de Shopping impide aplicar bid caps personalizados por categoría de producto, perdiendo eficiencia.
- **Ignorar el "grasa" en la parte superior de CPC:** Los clics con CPC alto (>$3) suelen tener pocas conversiones y bajo ROAS, pero se mantienen porque el promedio de la campaña lo oculta.
- **Asumir que Performance Max es bueno para adquirir nuevos clientes:** El autor menciona que "apesta adquiriendo nuevos clientes efectivamente" porque reserva parte del presupuesto diario para clientes recurrentes.