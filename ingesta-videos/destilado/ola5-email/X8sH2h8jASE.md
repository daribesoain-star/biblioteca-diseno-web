#
**Fuente:** ola5-email | https://youtu.be/X8sH2h8jASE

## Qué enseña
Este video enseña a crear un flujo de automatización (flow) en Klaviyo, específicamente una "welcome series" para nuevos suscriptores. Cubre desde la selección de plantillas en la librería de flujos hasta la navegación del Flow Builder, añadiendo retrasos de tiempo, correos electrónicos, divisiones condicionales y revisión de analíticas.

## Lecciones accionables
- **Acceder a la librería de flujos:** Haz clic en la pestaña "Flows" en el menú principal, luego en "Create Flow" (esquina superior derecha).
- **Seleccionar plantilla:** En la librería, filtra por canal (Email, SMS o ambos) y por objetivo (ej. "Preventing Lost Sales", "Encouraging Repeat Purchases"). Selecciona "Note to Subscribers" y luego "Standard Welcome Series".
- **Nombrar el flujo:** En el Flow Builder, asigna un nombre (ej. "gemma's welcome series").
- **Configurar el trigger:** El trigger de una welcome series es "when someone subscribes to your newsletter". No se puede cambiar después de configurado.
- **Aplicar filtros al flujo:** Usa "Trigger or Flow Filters" para restringir quién recibe el flujo (ej. excluir a quienes ya han comprado).
- **Editar contenido de email:** Haz clic en un email dentro del flujo, luego en "Edit" para modificar asunto, texto previo y detalles de envío. Haz clic en "Edit Email" para editar el cuerpo completo; puedes usar la plantilla preconstruida o hacer clic en "Change Template" para usar una propia.
- **Ajustar tiempos y smart sending:** El smart sending (habilitado por defecto) evita que un cliente reciba más de un email en un período de 16 horas. **Desactívalo para el primer email** para que se envíe inmediatamente al suscribirse.
- **Añadir retraso de tiempo:** Arrastra un elemento "Time Delay" desde la barra lateral y configúralo (ej. 3 días). Puedes añadir lógica avanzada como retrasar hasta cierta hora o días específicos de la semana.
- **Añadir división condicional (Conditional Split):** Arrastra el elemento "Conditional Split" desde la barra lateral. Bajo "Configuration", selecciona "What someone has done or not done". Elige "Placed Order" del menú desplegable, frecuencia "At least once", y período de tiempo "Since starting this flow". Guarda el split.
- **Añadir emails a cada rama:** Arrastra acciones de email desde la barra lateral a cada rama del split condicional.
- **Activar el flujo:** Haz clic en "Update All Action Statuses". Los estados disponibles son: "Draft" (para editar), "Manual" (requiere aprobación manual para cada cliente), "Live" (envío automático sin aprobación).
- **Ver analíticas:** Una vez en vivo, haz clic en "Show Analytics" (esquina superior derecha) para ver KPIs como entregados, saltados, y más. Para analíticas avanzadas, haz clic en un mensaje y luego en "View More Analytics".

## Reglas para agentes
- Usa "Smart Sending" desactivado para el primer email de una welcome series; actívalo para los siguientes.
- No cambies el trigger de un flujo una vez configurado.
- Aplica filtros de flujo para excluir compradores previos en una welcome series.
- Usa "Conditional Split" basado en "Placed Order" con frecuencia "At least once" y período "Since starting this flow" para segmentar por comportamiento de compra.
- Verifica que el estado del flujo sea "Live" para envío automático; usa "Draft" para ediciones y "Manual" para aprobación por caso.

## Errores comunes que evita o menciona
- **No desactivar Smart Sending en el primer email:** Si está activado, el primer email de bienvenida podría retrasarse hasta 16 horas, lo cual es indeseable para una welcome series.
- **Cambiar el trigger después de configurado:** El video enfatiza que una vez establecido, el trigger no se puede modificar.
- **No usar filtros de flujo:** No excluir a compradores previos puede hacer que clientes existentes reciban una bienvenida inapropiada.
- **No revisar analíticas:** El video recomienda monitorear KPIs como entregados y saltados para evaluar el rendimiento del flujo.