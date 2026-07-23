# What You Don't Know About Meta Attribution
**Fuente:** JonLoomer | https://youtu.be/DWzs5f-Y8m4

## Qué enseña
Explica cómo Meta atribuye conversiones a los anuncios, revelando que los resultados en Ads Manager no coinciden con reportes de terceros debido a ventanas de atribución, eventos duplicados, compras de productos no promocionados y clics que no son enlaces al sitio web. Detalla cuatro casos específicos que distorsionan la interpretación de los datos.

## Lecciones accionables
- **Configura la ventana de atribución por defecto:** Usa "7-Day Click and 1-Day View" (parámetro exacto en Ads Manager: `attribution_window=7d_click_1d_view`). Esto incluye conversiones sin clic si ocurren dentro de 1 día de la visualización del anuncio.
- **Aísla la primera conversión con "First Attribution":** En Ads Manager, ve a la columna de resultados, haz clic en el menú desplegable de atribución y selecciona "First Attribution" (keyword exacta). Esto elimina conversiones duplicadas de un mismo usuario dentro de la ventana de 7 días, alineando los datos con reportes backend.
- **Usa URL parameters con precaución:** Los parámetros UTM son inútiles para conversiones view-through (sin clic) y para clics que no son enlaces (ej. like, comentario, clic en video). No confíes en ellos para validar todas las conversiones reportadas.
- **Verifica conversiones de productos no promocionados:** Si optimizas para "Purchase" (evento estándar de Meta), el anuncio cuenta cualquier compra en el sitio dentro de la ventana, incluso si el usuario compró un producto diferente al del anuncio. Para aislar el producto promocionado, configura un evento personalizado (custom conversion) con un parámetro de producto específico (ej. `product_id=hat123`).
- **Identifica clics no-link:** En Ads Manager, no puedes separar conversiones de clics en enlaces de clics en interacciones (like, comentario, clic en video). Usa la herramienta "Event Manager" para revisar eventos de clic y filtrar por `action_source=web` (solo clics en enlaces), pero ten en cuenta que Meta no expone esta segmentación en informes estándar.

## Reglas para agentes
- **Usa "First Attribution" cuando** necesites que los datos de Ads Manager coincidan con reportes de terceros o backend, especialmente para campañas con ventanas de atribución largas (7 días o más).
- **Nunca** asumas que una conversión en Ads Manager corresponde al producto específico promocionado en el anuncio; verifica con un evento personalizado o datos de backend.
- **Nunca** uses URL parameters (UTM) como única fuente de verdad para atribución; ignóralos para conversiones view-through y clics no-link.
- **Siempre** compara la configuración de atribución (7-Day Click vs. First Attribution) para detectar conversiones duplicadas de un mismo usuario en múltiples sesiones.
- **Nunca** reportes a un cliente que Meta "infla" resultados sin explicar que las conversiones incluyen compras de otros productos, clics no-link y ventanas de tiempo extendidas.

## Errores comunes que evita o menciona
- **Asumir que todas las conversiones son del producto promocionado:** Un clic en un anuncio de gorra puede generar una compra de camiseta, y Meta la cuenta como conversión.
- **Ignorar que un mismo usuario puede generar múltiples conversiones:** Si alguien compra el día 1 y el día 4, ambas cuentan dentro de la ventana de 7 días, a menos que uses "First Attribution".
- **Creer que los clics siempre son en enlaces:** Un like, comentario o clic en video también cuenta como clic para atribución, con una ventana de 7 días (vs. 1 día para view-through).
- **Confiar en que Ads Manager coincidirá con reportes de terceros:** Las diferencias son inevitables debido a view-through, clics no-link y productos no promocionados; Meta no "inventa" conversiones, pero su lógica de atribución es más amplia.
- **No usar "First Attribution" para alinear datos:** Es la configuración que elimina duplicados y se acerca más a los reportes backend.