# The REAL Reason You Can't Scale Your Google Ads w/ Caden Thompson
**Fuente:** GrowMyAds | https://youtu.be/sWjbxXan-24

## Qué enseña
La razón principal por la que los anuncios de Google no escalan es que el algoritmo optimiza para tráfico "warm" (clientes recurrentes o visitantes previos) en lugar de tráfico "cold" (nuevos clientes). La solución es usar atribución de primer clic y métricas de negocio reales como el **eNCAC** (costo por nuevo cliente), en lugar de métricas vanity como ROAS o CPA dentro de la plataforma.

## Lecciones accionables
- **Implementa atribución de primer clic para nuevos clientes**: Usa herramientas de tracking server-side (ej. BlotOut) para enviar a Google Ads solo conversiones que sean "first click new customer purchase". Esto fuerza al algoritmo a optimizar para tráfico frío real.
- **Configura la "Feeder Strategy"**: Cuando una campaña basada en conversiones (PMAX o Shopping) se estanca, crea una campaña separada (Standard Shopping o Search) con una estrategia de puja más agresiva (ej. 40% tROAS o Maximizar Clics) para capturar tráfico que Google ignoraba. Esta campaña "alimenta" a la campaña principal.
- **Aplica la regla 80/20 para la Feeder**: Pon en la campaña feeder los productos que generan el 80% de tus ventas (los "hero products"). Usa un tROAS más bajo (ej. 40%) o Maximizar Clics, y controla por presupuesto, no por ROAS.
- **Para Search, usa puja manual o Maximizar Clics**: Si una campaña de Search con tROAS se estanca, crea una campaña nueva con las mismas keywords ganadoras en **coincidencia exacta** y usa puja manual CPC o Maximizar Clics para comprar tráfico que la campaña basada en conversiones ignora.
- **Mide eNCAC (Effective New Customer Acquisition Cost)**: Calcula cuánto pagas por cada nuevo cliente (gasto total en marketing / número de nuevos clientes). Este es el KPI real para escalar, no el ROAS de la plataforma.
- **Recorta presupuesto de PMAX si no genera nuevos clientes**: Prueba reducir el presupuesto de Performance Max a la mitad. Si el volumen de nuevos clientes no cambia, significa que PMAX solo está reciclando tráfico recurrente.
- **Usa BlotOut (o similar) para atribución extendida**: Estas herramientas pueden rastrear atribución hasta 5 años atrás, recuperando hasta un 30-40% más de conversiones que el tag nativo de Google, especialmente en negocios con ciclos de compra largos o muchos clientes recurrentes.

## Reglas para agentes
- **Usa eNCAC como métrica principal** cuando evalúes escalabilidad de campañas, no ROAS o CPA de la plataforma.
- **Nunca confíes ciegamente en las métricas de Google Ads** para nuevos clientes; la plataforma no distingue bien entre clientes nuevos y recurrentes.
- **Implementa la Feeder Strategy solo cuando** la campaña basada en conversiones haya alcanzado un plateau y no puedas escalar sin perder eficiencia.
- **Nunca apliques tácticas avanzadas (Feeder, atribución server-side) en cuentas con gasto menor a $15K/mes** o sin una base sólida de conversiones; primero construye volumen con configuraciones estándar.
- **Controla por presupuesto, no por tROAS** en campañas feeder: usa pujas agresivas (ej. 40% tROAS o Maximizar Clics) con presupuestos bajos para minimizar riesgo.
- **Siempre evalúa la Feeder de forma combinada** con la campaña principal (blended), nunca como entidad independiente.

## Errores comunes que evita o menciona
- **Confundir ROAS alto con crecimiento real**: Un ROAS alto puede venir de clientes recurrentes, no de nuevos clientes. Si solo optimizas por ROAS, no escalas el negocio.
- **Ignorar que Google "rabbit hole" en tráfico warm**: El algoritmo busca la conversión más fácil (visitantes previos o clientes recurrentes), ignorando tráfico frío que no tiene datos de conversión.
- **Usar la Feeder Strategy en cuentas pequeñas sin fundamentos**: Aplicar tácticas avanzadas en cuentas de $2K/mes sin volumen ni estructura básica mata la cuenta.
- **Esperar resultados inmediatos de la Feeder en Search**: Las campañas feeder con Maximizar Clics tienen un período de aprendizaje de 1-2 semanas donde los CPCs son altos antes de estabilizarse.
- **No mirar el backend del negocio**: Depender solo de métricas de la plataforma (ROAS, CPA) sin verificar nuevos clientes reales en el sistema lleva a decisiones erróneas.
- **Asumir que todo el tráfico de keywords no-brand es frío**: Hasta un 50% del tráfico de campañas no-brand puede ser visitantes recurrentes o clientes previos, según herramientas de terceros.