# How to Exclude Customers from Your Ads
**Fuente:** JonLoomer | https://youtu.be/0cINc9ds3Pc

## Qué enseña
Cómo excluir clientes que ya compraron un producto específico (ej. audiolibro) para evitar reembolsos por compras duplicadas en Facebook Ads. Explica la estrategia de usar múltiples audiencias personalizadas (custom audiences) y mantenerlas actualizadas dinámicamente, equilibrando el riesgo de excluir clientes que podrían comprar otros productos.

## Lecciones accionables
- Excluye **múltiples custom audiences** para cubrir vacíos: ninguna audiencia individual es completa.
- Crea una **Website Custom Audience** basada en el evento de compra (`Purchase`) con parámetros específicos del producto (ej. ID del bundle) o en la URL de la página de confirmación única del bundle.
- Crea una **Customer List Custom Audience** a partir de tu lista de email de clientes que compraron ese producto. Incluye tantas columnas de datos como sea posible: `first name`, `last name`, `email`, `phone number`, etc., para maximizar el match rate.
- Usa una **herramienta de terceros** (ej. integración CRM o plataforma de automatización) para actualizar la Customer List Audience **a diario o más frecuentemente**, agregando las compras más recientes.
- En el **ad set**, agrega ambas audiencias en la sección **Exclusions** (exclusiones). Esto actúa como una restricción estricta sobre el targeting algorítmico.
- No excluyas a **todos** los clientes si tienes múltiples productos; solo excluye a quienes compraron el producto específico que estás promocionando (ej. el bundle de audiolibro), ya que otros clientes pueden ser buenos candidatos para esa oferta.

## Reglas para agentes
- Usa **múltiples custom audiences** (website + email list) al excluir clientes, nunca una sola fuente.
- Actualiza la Customer List Audience **al menos una vez al día** con una herramienta de terceros para incluir compras recientes.
- Excluye **solo** a los compradores del producto específico que estás anunciando, no a todos los clientes de la marca.
- Incluye **todas las columnas de datos disponibles** (nombre, email, teléfono) en la Customer List para mejorar el match rate.
- Nunca confíes en que una sola custom audience excluirá al 100% de los clientes; combina fuentes para mayor cobertura.

## Errores comunes que evita o menciona
- **Excluir a todos los clientes** cuando tienes múltiples productos: los clientes de otros productos pueden ser excelentes prospectos para la nueva oferta.
- **Usar una sola custom audience** para exclusiones: ninguna audiencia individual es completa, por lo que se filtran clientes que deberían estar excluidos.
- **No actualizar la lista de clientes dinámicamente**: si no se agregan compras recientes, los nuevos compradores seguirán siendo targeteados y generarán reembolsos.
- **Confiar en que las exclusiones serán 100% efectivas**: incluso con múltiples audiencias y actualizaciones frecuentes, puede haber fugas; el objetivo es minimizar los reembolsos, no eliminarlos por completo.