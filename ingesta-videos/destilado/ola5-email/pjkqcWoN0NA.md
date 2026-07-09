# 
**Fuente:** ola5-email | https://youtu.be/pjkqcWoN0NA

## Qué enseña (2-3 líneas)
Tutorial completo para configurar flujos automatizados en Klaviyo desde cero, cubriendo los 6 flujos esenciales que generan el 90% de los ingresos por email: bienvenida, abandono de sitio, abandono de navegación, abandono de carrito, abandono de checkout, post-compra y recuperación. Incluye estrategia de contenido, configuración técnica de triggers, filtros, segmentos dinámicos y plantillas de email basadas en imágenes y texto plano.

## Lecciones accionables
- **Flujo de bienvenida (Welcome Flow):** Trigger = "Added to List" (lista del pop-up). Filtro: "Placed Order 0 times since starting this flow". 4 emails con delay de 1 día cada uno. Smart Sending = OFF en cada email. Email 1: entregar código de descuento + breve intro. Email 2: historia de marca + recordatorio del descuento. Email 3: urgencia (temporizador de cuenta regresiva) + prueba social (testimonios). Email 4: texto plano del fundador ("last chance").
- **Flujo de abandono de sitio (Site Abandon):** Trigger = métrica "Active on Site". Filtros: "Viewed Product 0 times", "Added to Cart 0 times", "Checkout Started 0 times", "Placed Order 0 times" (todos "since starting this flow") + "Has not been in flow in last 30 days" (o usar re-entry cada 30 días). Delay: 3-4 horas. Email 1: abordar abandono + soporte + mostrar productos + testimonial. Email 2 (1 día después): texto plano del fundador.
- **Flujo de abandono de navegación (Browse Abandon):** Trigger = métrica "Viewed Product". Filtros: "Added to Cart 0 times", "Checkout Started 0 times", "Placed Order 0 times" + re-entry 30 días. Delay: 1 hora. Usar bloque dinámico de Klaviyo (Dynamic Product Block) para mostrar el producto exacto que vieron. Email 1: "Did you see something you liked?" + producto dinámico. Email 2: texto plano con urgencia. Email 3: descuento flash + bloque dinámico + prueba social.
- **Flujo de abandono de carrito (Cart Abandon):** Trigger = "Added to Cart" (Shopify). Filtros: "Checkout Started 0 times", "Placed Order 0 times" + re-entry 30 días. Delay: 30 minutos. Email 1: "You're one click away" + bloque dinámico del producto + educación + soporte. Email 2 (1 día): texto plano con logo ("Was everything okay? Free shipping"). Email 3 (1 día): descuento + urgencia + testimonial. Email 4 (1 día): texto plano del equipo ("Your discount ends tonight").
- **Flujo de abandono de checkout (Checkout Abandon):** Trigger = "Checkout Started" (Shopify). Mismos filtros que carrito + opcional: "Received cart abandon flow email 0 times since starting this flow". Delay: 30 minutos. Mismo contenido que carrito (se puede reutilizar).
- **Flujo post-compra (Post-Purchase):** Trigger = "Placed Order" (Shopify). Sin filtros de perfil. Usar Conditional Split: "Placed Order equals 1 over all time" → email personalizado de bienvenida; "Placed Order equals 2" → agradecimiento por segunda compra; etc. Delay: 2 días → email educativo ("How to make the most of your purchase"). Delay: 1 día → email de cross-sell/upsell. Smart Sending = OFF en todos.
- **Flujo de recuperación (Win-Back):** Trigger = Segmento (no métrica directa). Crear segmento: "Placed order at least once in last 91 days" AND "Placed order 0 times in last 89 days" (para capturar exactamente día 90). Delay: esperar hasta las 13:00 (1 PM) del día. Email 1: "We miss you" + novedades + productos populares. Delay: 7 días. Email 2: descuento personalizado. Delay: 3 días. Email 3: texto plano del fundador ("last chance").
- **Configuración técnica de emails:** Usar solo imágenes (diseñar en Figma, dividir en slices, subir a Klaviyo como bloques de imagen). Para emails de texto plano: seleccionar "Create text-only email" en el editor de plantillas.
- **Enlaces dinámicos:** En abandono de navegación usar "Event URL" para link al producto exacto. En abandono de carrito, mejor link directo a la página del carrito.
- **Smart Sending:** Desactivar (OFF) en CADA email de CADA flujo. El botón de reloj en la esquina superior derecha del editor de email dentro del flow.

## Reglas para agentes
- Usa "Added to List" como trigger para welcome flow, no "Subscribed to List".
- Aplica filtro "Placed Order 0 times since starting this flow" en todos los flujos pre-compra para excluir compradores.
- Desactiva Smart Sending en cada email de cada flujo; no confíes en la configuración por defecto.
- Para win-back, usa trigger por segmento (no métrica "Placed Order" con delay de 90 días) para evitar esperar 90 días antes de que el flujo comience a generar ingresos.
- En abandono de sitio, incluye filtro "Viewed Product 0 times" para no duplicar con browse abandon.
- En abandono de checkout, añade filtro opcional "Received email from [cart abandon flow] 0 times" si quieres evitar sobre-envío.
- Para emails de texto plano, usa "Create text-only email" en el selector de plantilla, no un template gráfico.
- En post-purchase, usa Conditional Splits por número de órdenes ("Placed Order equals 1/2/3 over all time") para personalizar el agradecimiento.
- Nunca actives un win-back flow con trigger "Placed Order" + time delay; siempre usa segmento pre-creado con fechas exactas.

## Errores comunes que evita o menciona
- **Smart Sending activado por defecto:** Klaviyo lo enciende automáticamente en cada email; si no se desactiva, puede saltar perfiles recientemente contactados y perder decenas de miles de dólares al mes.
- **Usar un solo flujo para carrito y checkout:** Necesitas dos flujos separados con triggers distintos ("Added to Cart" vs "Checkout Started") porque representan diferentes niveles de intención.
- **Esperar 3+ días entre emails en welcome flow:** El espectador recomienda 1 día; 3 días permite que el cliente olvide la marca.
- **No recordar el descuento en cada email del welcome flow:** Muchos flujos omiten el código en emails 2-4, convirtiéndolos en campañas genéricas.
- **Usar trigger "Placed Order" con time delay para win-back:** Si configuras un delay de 90 días, el flujo solo empezará a funcionar 90 días después de activarlo; la solución es usar un segmento que capture a quienes compraron hace exactamente 90 días.
- **No verificar que la métrica "Active on Site" funcione:** Si la integración con Shopify no está bien configurada, el flujo de abandono de sitio nunca se disparará; hay que desactivar y reactivar la integración si es necesario.
- **Confiar ciegamente en las plantillas de Klaviyo:** Los filtros predeterminados de Klaviyo para browse abandon no incluyen "Added to Cart 0 times"; hay que agregarlo manualmente.