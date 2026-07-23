# How Do You Reach Only New Customers?
**Fuente:** JonLoomer | https://youtu.be/IXxVMKrZ4nQ

## Qué enseña (2-3 líneas)
JonLoomer explica cómo excluir clientes existentes en campañas de Meta Ads para llegar solo a nuevos clientes, advirtiendo que no siempre es necesario ni beneficioso. Detalla el uso de exclusiones con audiencias personalizadas (custom audiences) y menciona nuevas funciones en prueba como "Customer Life Cycle Strategy" y reglas de puja diferenciada.

## Lecciones accionables
- **Verifica si realmente necesitas excluir clientes existentes:** Revisa en el desglose de "Audience Segments" (segmentos de audiencia) dentro de Meta Ads Manager para confirmar si Meta está retargeteando a tus clientes actuales. No asumas que es un problema sin datos.
- **Crea exclusiones con Custom Audiences (audiencias personalizadas):**
  - Usa **Website Custom Audience** (audiencia personalizada del sitio web) basada en eventos de compra (pixel de Meta).
  - Usa **Customer List Custom Audience** (lista de clientes subida) con datos como emails o números de teléfono.
  - Aplica ambas en el campo **"Exclude"** (Excluir) a nivel de conjunto de anuncios (ad set) para cubrir la mayor cantidad posible de clientes existentes.
- **Si tienes acceso a "Customer Life Cycle Strategy":** Selecciona en el conjunto de anuncios la opción "Reach new customers only" (alcanzar solo nuevos clientes). Meta aplicará automáticamente las exclusiones basadas en tus audiencias personalizadas.
- **Si tienes acceso a "Value Rules" (reglas de valor):** Configura pujas diferenciadas: puja más baja para clientes existentes y más alta para nuevas audiencias. Busca opciones como "bid based on high/low quality customers" (pujar según clientes de alta/baja calidad).
- **Divide campañas de remarketing y prospección:** Crea conjuntos de anuncios separados para remarketing (con audiencias de clientes) y prospección (con exclusiones), para controlar el gasto en cada grupo.

## Reglas para agentes
- **Usa exclusiones con Custom Audiences solo si has confirmado un problema real** (ej. menor valor de pedido promedio en clientes existentes o canibalización de conversiones orgánicas).
- **Nunca excluyas clientes existentes sin antes revisar el desglose de "Audience Segments"** para verificar que Meta los está retargeteando.
- **Combina siempre Website Custom Audience y Customer List Custom Audience** en las exclusiones, ya que cada una es incompleta por sí sola.
- **Si usas "Customer Life Cycle Strategy", no agregues exclusiones manuales adicionales** a menos que quieras sobrescribir la lógica automática de Meta.
- **Cuando uses Value Rules, puja más bajo en clientes existentes y más alto en nuevas audiencias** para optimizar el gasto sin excluir completamente.

## Errores comunes que evita o menciona
- **Asumir que retargetear clientes existentes siempre es malo:** JonLoomer advierte que esto puede bajar el costo por compra y que eliminar clientes sin un problema claro empeora los resultados superficiales.
- **Confiar en una sola fuente de datos para exclusiones:** Las audiencias personalizadas de sitio web y las listas de clientes son imperfectas por separado; usarlas juntas es clave.
- **Ignorar que los clientes existentes pueden tener menor valor de pedido promedio** (ej. solo compras de recarga), pero esto debe confirmarse con datos, no asumirse.
- **Pensar que Meta respeta automáticamente la intención de "solo nuevos clientes":** Por defecto, Meta retargetea clientes existentes incluso en campañas broad sin inputs de audiencia.