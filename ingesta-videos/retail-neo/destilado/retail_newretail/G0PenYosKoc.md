# Tech Behind Quick Commerce
**Fuente:** retail_newretail | https://youtu.be/G0PenYosKoc

## Qué enseña
Explica la arquitectura técnica y logística de Blinkit, un gigante del quick commerce de $10 millones, detallando cómo logra entregas en 9 minutos mediante una combinación de micro-fulfillment, sistemas distribuidos, predicción por IA y optimización geométrica del territorio urbano.

## Lecciones accionables
- Divide la ciudad en **polígonos geométricos (S2 geometry de Google Maps)** donde el tiempo de entrega desde el centro al borde no puede exceder **10 minutos**; si la demanda en un polígono eleva el tiempo a **12 minutos**, no contrates más repartidores, **divide físicamente el polígono en dos** y abre una nueva dark store en la nueva zona.
- Cada dark store mide **2,000 sq ft** (tamaño de un departamento grande de 3 cuartos) y almacena **6,000 SKUs**; los pickers humanos usan **memoria muscular** en lugar de robots porque en espacios pequeños los robots son más lentos.
- Implementa el algoritmo **FIFO (First Expired, First Out)** para que la app dirija al picker a tomar los productos que expiran primero, reduciendo desperdicio; el picker debe empacar en **menos de 60 segundos**.
- Por cada **40 a 50 dark stores**, construye un **mother warehouse de 150,000 sq ft** que usa **predictive AI** para reabastecer cada noche según lo que los clientes ordenarán al día siguiente.
- La arquitectura de software es un **sistema distribuido con microservicios en Java, Go y Python**, orquestado por **Kubernetes**, manejando **50,000 requests por segundo**.
- Para resolver el problema de concurrencia (dos usuarios comprando el último artículo al mismo milisegundo), usa **Redis como in-memory data store** con **distributed locking**: al hacer checkout, Redis pone un **mutex lock sobre el ítem específico por 3 minutos**, incluso si la base de datos principal no se ha actualizado.
- Usa **Apache Kafka** como sistema nervioso central para transmitir en tiempo real: ubicación del repartidor, actualizaciones de inventario, lluvia en Koramangala; todo como streams.
- Integra **Weather Union de Zomato** para detectar lluvia en un solo polígono antes que Google Maps; el algoritmo agrega un **rain buffer al ETA** y **surgea el precio** para balancear demanda.
- Usa **S2 geometry de Google Maps** para calcular tiempo hasta el estacionamiento, tiempo para subir escaleras, etc.; incluso rastrean cuánto tarda el elevador.
- La capa de predicción usa **gradient boosting machines y neural networks** (slot intelligence) con inputs como: lluvia → demanda de té sube **300%**; partido India vs Pakistán → demanda de papas y Coca-Cola se dispara; San Valentín → flores se mueven al frente de la tienda.
- Cuando el repartidor está a **100 metros**, la app deja de mostrar el mapa con GPS y cambia a texto "Arriving soon" — esto compra un **buffer de 30 segundos** para que el repartidor encuentre la puerta sin que el usuario se ponga ansioso por el jitter del GPS.
- Todo el sistema (microservicios, Redis locking, S2 geometry, redes neuronales) debe ejecutarse en **menos de 200 milisegundos** de latencia; si es mayor, la app se siente lenta y el usuario migra a Zepto o Instamart.

## Reglas para agentes
- Usa **Redis con distributed locking** cuando dos usuarios puedan comprar el mismo último artículo al mismo milisegundo; pon un mutex lock de **3 minutos** sobre el ítem específico.
- Nunca uses una base de datos SQL estándar para manejar concurrencia en inventario de último artículo; ambos pagos podrían pasar y generar sobreventa.
- Cuando el GPS del repartidor esté a **100 metros** del destino, cambia la interfaz de mapa a texto "Arriving soon" para ocultar el jitter y dar un buffer de **30 segundos**.
- Si la latencia del sistema supera **200 milisegundos**, prioriza optimizar la pila técnica (microservicios, Redis, Kafka) antes de escalar repartidores o almacenes.
- Para reabastecimiento nocturno, usa **predictive AI** que alimente el mother warehouse con base en lo que los clientes ordenarán al día siguiente, no en lo que ya ordenaron.

## Errores comunes que evita o menciona
- No uses robots en dark stores pequeñas (2,000 sq ft) porque son más lentos que humanos con memoria muscular; los robots son viables solo en warehouses gigantes como los de Amazon (200,000 sq ft).
- No confíes únicamente en Google Maps para detectar lluvia en tiempo real; integra una infraestructura meteorológica propia (como Weather Union de Zomato) que detecta lluvia por polígono antes que Google.
- No uses un modelo monolítico de e-commerce (hub and spoke con warehouses de 200,000 sq ft a 50 km de la ciudad) porque genera entregas de 1-2 días; en quick commerce el territorio debe ser una malla de polígonos con entrega máxima de 10 minutos.
- No dejes que el tiempo de entrega en un polígono suba a 12 minutos sin dividir físicamente el polígono y abrir una nueva dark store; contratar más repartidores no resuelve el problema estructural.
- No uses datos batch que tarden 2 horas en llegar para un negocio de 10 minutos; implementa Apache Kafka como stream en tiempo real para ubicación, inventario y clima.