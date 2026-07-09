# 
**Fuente:** ola5-email | https://youtu.be/fHeNj-yuYxU
## Qué enseña
Tutorial paso a paso para configurar un funnel de email marketing en Shopify usando Omnisend. Cubre desde la instalación de la app, creación de popups para captar suscriptores, automatización de flujos (bienvenida, carrito abandonado) hasta el envío de campañas segmentadas para convertir y retener clientes.

## Lecciones accionables
- **Instalar Omnisend:** Ir a la Shopify App Store, buscar Omnisend, hacer clic en "Instalar", conectar la cuenta y personalizar branding (logo, colores, fuentes).
- **Crear popup de captura:** En Omnisend, ir a "Launch sign up form". Usar el form builder: arrastrar bloque de "First Name" para personalización. En "Theme settings" > "Form layout", elegir entre popup simple o "Wheel of Fortune" (rueda de la suerte). Para la rueda, crear códigos de descuento en Shopify (ej: 20% OFF) y pegarlos en los campos correspondientes de cada segmento de la rueda.
- **Configurar timing del popup:** En "Automation settings", elegir "After 40 seconds" para un popup de primer pedido. Opciones adicionales: "Page visits" (ej: 2 páginas), "Scrolling" (ej: 50%), "On exit" (detecta mouse saliendo). Activar "Only show to new customers" para descuento de primer pedido. Frecuencia: 1-2 días de pausa.
- **Configurar flujo de bienvenida:** Al activar el popup, crear "Welcome workflow". Elegir % de descuento (coincide con el del popup). Editar el email: subject line llamativo, preheader con preview del contenido. En el editor, agregar bloque "Product recommender" para mostrar bestsellers automáticamente. Centrar texto y ajustar colores/fuentes.
- **Configurar flujo de carrito abandonado:** En Omnisend, lanzar "Abandoned cart workflow". Elegir % de descuento de recuperación. El flujo por defecto envía: email 1 hora después del abandono, segundo email 11 horas después, tercer email 12 horas después con descuento final. Editar cada email siguiendo los mismos pasos de personalización.
- **Crear campaña de email:** Ir a "Create new campaign" > "Email". Elegir plantilla, personalizar con bloques de producto, botones, colores. Segmentar: "Create a segment" > elegir pre-built (ej: "Birthday", "Location", "High value subscribers"). Enviar solo a ese segmento.
- **Añadir reseñas:** Desde el dashboard de Omnisend, activar la opción de reviews para aumentar conversión.
- **Plan gratuito:** Incluye 500 emails gratis (se recargan cada 30 días), $1 en créditos SMS y 50 reseñas. Para planes de pago, usar código de descuento (20% OFF) del enlace en descripción.

## Reglas para agentes
- Usa "After 40 seconds" como timing por defecto para popups de primer pedido; nunca uses menos de 30 segundos.
- Siempre incluye un campo de "First Name" en el popup para personalizar emails posteriormente.
- Cuando configures la rueda de la fortuna, crea primero los códigos de descuento en Shopify y luego pégalos en Omnisend; nunca los inventes solo en la rueda.
- Para carrito abandonado, usa la secuencia por defecto (1h, 11h, 12h) y solo modifica si tienes datos de prueba A/B.
- Segmenta siempre las campañas: nunca envíes a "All subscribers" sin antes crear un segmento específico (ej: nuevos, ubicación, alto valor).
- Activa "Only show to new customers" en popups de primer pedido; nunca lo muestres a clientes existentes.
- Usa el bloque "Product recommender" en emails de bienvenida para mostrar bestsellers automáticamente.

## Errores comunes que evita o menciona
- **Mostrar popup demasiado pronto:** Si aparece justo al cargar la página, molesta al usuario. Esperar al menos 40 segundos o 2 páginas visitadas.
- **No personalizar emails:** Si no se recoge el nombre, los emails son genéricos y menos efectivos. Siempre incluir campo de nombre en el popup.
- **Enviar sin segmentar:** Mandar el mismo email a todos los suscriptores sin importar su comportamiento reduce conversión. Usar segmentos como "nuevos clientes" o "ubicación específica".
- **Ignorar el carrito abandonado:** No configurar este flujo es perder ventas recuperables. El principal motivo de abandono son costos de envío sorpresa; usar el descuento en el tercer email para contrarrestarlo.
- **Sobrecargar con popups:** Mostrar el popup en cada visita o sin pausa (frecuencia) ahuyenta clientes. Poner límite de 1-2 días entre apariciones.
- **No probar variantes:** No usar el A/B test integrado en popups es perder oportunidades de optimización. Siempre activarlo para comparar versiones.