## Doctrina destilada (ingesta 2026-07-16)
> 20 fuentes destiladas (docs oficiales + tutoriales). Cada regla con su fuente.

### Publicaciones y su optimización
- **Título profesional:** Incluye keywords que el cliente usaría para buscar + una funcionalidad clave a destacar. No uses gramática correcta; usa palabras individuales separadas. No incluyas tallas, colores, promociones, descuentos ni ofertas (Mercado Libre penaliza). (Fuente: CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac)
- **Especificaciones de imágenes:** Las imágenes deben tener al menos **800x800 píxeles**. La primera imagen debe tener **fondo blanco**. (Fuente: ¿Cómo vender en Mercado Libre 2026? - CURSO en tiempo RECORD — https://youtu.be/8DoqnPfbYdQ)
- **Usar precio tachado con porcentaje de descuento** en todas las publicaciones. (Fuente: MercadoLibre para Principiantes — https://youtu.be/y3Svo17Xl1s)
- **Estructura mínima del JSON para publicar un ítem:** incluir `title`, `category_id`, `price`, `currency_id`, `available_quantity`, `buying_mode`, `condition`, `listing_type_id`, `pictures`, `attributes`. (Fuente: ml_publica — https://developers.mercadolibre.com.ar/es_ar/publica-productos)
- **Para ítems reacondicionados:** obligatorio cargar garantía en `sale_terms` con al menos 90 días usando `WARRANTY_TYPE` y `WARRANTY_TIME`. (Fuente: ml_publica — https://developers.mercadolibre.com.ar/es_ar/publica-productos)
- **Para crear ítem con stock cero en Fulfillment (solo AR, MX, BR):** enviar `"available_quantity": 0`. (Fuente: ml_publica — https://developers.mercadolibre.com.ar/es_ar/publica-productos)
- **Endpoint para consultar atributos válidos de una categoría:** `GET https://api.mercadolibre.com/categories/$CATEGORY_ID/attributes`. (Fuente: ml_publica — https://developers.mercadolibre.com.ar/es_ar/publica-productos)

### Catálogo y Buy Box
- **Endpoint para publicación directa en catálogo:** `POST /items` con `"catalog_listing": true` y `catalog_product_id`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Endpoint para optin desde ítem tradicional:** `POST /items/catalog_listings` con body `{"item_id": "...", "catalog_product_id": "..."}`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Endpoint para verificar sincronización:** `GET /public/buybox/sync/$ITEM_ID` con header `x-public: True`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Endpoint para consultar estado de competencia:** `GET /items/$ITEM_ID/price_to_win?version=v2`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Endpoint para obtener publicación ganadora de una PDP:** `GET /products/$PRODUCT_ID` → campo `buy_box_winner`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Endpoint para listar publicaciones que compiten en una PDP:** `GET /products/$PRODUCT_ID/items`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Error 400 - cause_id 216 en optin:** ocurre al no enviar `variation_id` cuando el ítem original tiene variaciones. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **Error 400 - cause_id 369 en optin:** ocurre al omitir `catalog_product_id`. (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)

### Posicionamiento y estrategias de venta
- **Encontrar producto ganador – Opción 1 (variación de producto existente):** Busca productos con alta demanda en Mercado Libre (ej: +1000 vendidos, +148 reseñas). Trae una variación: versión más económica, más premium, o mismo producto con diseño diferente. Usa `tendencias.mercadolibre.com.ar` para ver tendencias por categoría. (Fuente: CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac)
- **Usar Real Trends para análisis de mercado:** Ingresa a la herramienta Real Trends, selecciona la categoría "Sports and Fitness" (o la que no tenga candado). Dentro de ella, navega por subcategorías hasta llegar a sub-sub-subcategorías. Revisa ingresos mensuales, número de listings, unidades vendidas y market share. (Fuente: Cómo VENDER en MERCADO LIBRE para principiantes - CURSO GRATIS 2026 🛒 — https://youtu.be/J7fvgMMLqW0)
- **Extraer keywords exactas:** En Real Trends, dentro de los detalles de una subcategoría, localiza las "32 keywords más buscadas". Copia todas y úsalas en el título (máximo 60 caracteres) y en la descripción del producto. (Fuente: Cómo VENDER en MERCADO LIBRE para principiantes - CURSO GRATIS 2026 🛒 — https://youtu.be/J7fvgMMLqW0)
- **Usa herramientas de inteligencia de mercado para espiar a la competencia:** Suscríbete a "Nube y Matrix Punto Com" (9 Metrix) por ~$300/mes para obtener datos de ventas, volumen y ritmo de toda la industria en Mercado Libre. (Fuente: Vender en Mercado Libre ⚠️ El gran problema de vender en la plataforma 🤝 y como combatirlo!!!! — https://youtu.be/2MDvkMngGMw)
- **Estrategia 1: Precio a punto de equilibrio (break-even):** Calcula tu costo total por unidad (producto + envío + comisiones ML + gastos fijos). Fija el precio de venta exactamente en ese costo, sin margen de ganancia. Mantén ese precio hasta completar las primeras 10 ventas. (Fuente: TOP 4 Estrategias para VENDER MÁS en MercadoLibre en 2026 (Funciona 100%) 🚀 — https://youtu.be/QSunYy9OPZo)
- **Estrategia 3: Dar productos a cambio de reseñas:** Crea una lista de 5 a 10 personas de confianza genuinamente interesadas en tu producto. Excluye: familiares directos (hermanos, padres), personas que vivan en tu mismo domicilio. Procedimiento: 1. Comparte el link de tu producto en MercadoLibre con cada contacto. 2. Pídeles que compren usando el método de pago "efectivo" o "depósito bancario". 3. El contacto te envía el comprobante de pago (voucher). 4. Tú realizas el depósito bancario a nombre de MercadoLibre para procesar la orden. 5. Envías el producto a la dirección del contacto. 6. Una vez recibido, pides amablemente una reseña del producto en la plataforma. (Fuente: TOP 4 Estrategias para VENDER MÁS en MercadoLibre en 2026 (Funciona 100%) 🚀 — https://youtu.be/QSunYy9OPZo)

### Reputación de vendedores
- **Endpoint para obtener reputación de vendedor:** `GET https://api.mercadolibre.com/users/$USER_ID`. (Fuente: ml_reputacion — https://developers.mercadolibre.cl/es_ar/reputacion-de-vendedores)
- **Límites de reputación para Chile (MLC):** Claim: Líderes 2.5%, Green 3.5%, Yellow 5.5%, Orange 7%, Red >7%; Cancellations: Líderes 1.5%, Green 2.5%, Yellow 7%, Orange 9%, Red >9%; Delayed handling time: Líderes 10%, Green 12%, Yellow 18%, Orange 26%, Red >26%. (Fuente: ml_reputacion — https://developers.mercadolibre.cl/es_ar/reputacion-de-vendedores)
- **Umbral de ventas para Chile (MLC):** 40 ventas en últimos 60 días para usar período de 60 días; si menos, usar últimos 365 días. (Fuente: ml_reputacion — https://developers.mercadolibre.cl/es_ar/reputacion-de-vendedores)
- **Aprovechar descuentos por nivel de reputación:** Líder (verde) obtiene 50% de descuento en envío; reputación amarilla 40%; reputación roja paga 100% del costo de envío. (Fuente: Mercado Envíos FULL: Cómo funciona y porqué deberías aprovecharlo — https://youtu.be/Yvp3kSw6HyI)
- **Causas confirmadas de no poder vender:** (1) actualizaciones del sistema de MercadoLibre que causan inconsistencias temporales (se resuelven solas tras un tiempo), (2) suspensión de cuenta por fraude, estafas, demasiadas quejas, deudas con la plataforma o exceso de reembolsos. (Fuente: Porque MERCADOLIBRE NO ME DEJA VENDER 😭 — https://youtu.be/lZR8D8dGVe8)

### Mercado Envíos / Full
- **Configurar Mercado Envío Flex (entrega el mismo día):** **Requisito:** Tener varias ventas previas. **Activación:** Ve a `Preferencias de venta` > `Envío Flex` > activar. **Penalización:** Si entregas menos del 97% a tiempo en una semana, te suspenden Flex por un período. (Fuente: CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac)
- **Proceso de etiquetado para FULL:** Ingresar al sistema, registrar la cantidad exacta de unidades (ej. 100 unidades), el sistema genera 100 etiquetas individuales (una por cada producto) más una etiqueta adicional para la caja grande que contiene todo. Pegar cada etiqueta individual en cada producto y la etiqueta de caja en el embalaje externo. (Fuente: Mercado Envíos FULL: Cómo funciona y porqué deberías aprovecharlo — https://youtu.be/Yvp3kSw6HyI)
- **Validación de contenido en centro de distribución FULL:** Al llegar, escanean la etiqueta de la caja grande (código que indica "abrir"), validan cada producto contra las etiquetas individuales. Si hay diferencia entre lo declarado y lo enviado (ej. declaraste 100, enviaste 98 o 110), aplican multa por cada unidad faltante o sobrante. (Fuente: Mercado Envíos FULL: Cómo funciona y porqué deberías aprovecharlo — https://youtu.be/Yvp3kSw6HyI)
- **Costos diarios de almacenamiento Full:** Pequeño (ej. mouse) = 1 centavo/día, Mediano (ej. laptop) = 3 centavos/día, Grande (ej. microondas) = 50 centavos/día. (Fuente: Mercado Libre Full — https://youtu.be/q0r-fGABgac)
- **Cargos por stock antiguo (MXN):** Pequeño (4-6 meses) = 12.70 MXN, Mediano (4-6 meses) = 19.30 MXN, Grande (4-6 meses) = 86.00 MXN. (Fuente: Mercado Libre Full — https://youtu.be/q0r-fGABgac)
- **Retirar productos no vendidos antes de 4 meses** para evitar cargos por stock antiguo. (Fuente: Mercado Libre Full — https://youtu.be/q0r-fGABgac)
- **Endpoint para consultar servicios de envío por país:** `GET https://api.mercadolibre.com/sites/$SITE_ID/shipping_methods`. (Fuente: ml_envios — https://developers.mercadolibre.com.ar/es_ar/mercado-envios)
- **Endpoint para consultar preferencias de envío de un usuario:** `GET https://api.mercadolibre.com/users/$USER_ID/shipping_preferences`. (Fuente: ml_envios — https://developers.mercadolibre.com.ar/es_ar/mercado-envios)
- **Endpoint para consultar modos de envío de una categoría:** `GET https://api.mercadolibre.com/categories/$CATEGORY_ID/shipping_preferences`. (Fuente: ml_envios — https://developers.mercadolibre.com.ar/es_ar/mercado-envios)
- **Endpoint para validar modos de envío de un ítem:** `POST https://api.mercadolibre.com/users/$USER_ID/shipping_modes` con headers `x-multichannel: true` y `X-Format-New: true`. (Fuente: ml_envios — https://developers.mercadolibre.com.ar/es_ar/mercado-envios)
- **Endpoint para consultar servicios logísticos de un User Product:** `GET https://api.mercadolibre.com/customers/marketplace/sites/{SITE_ID}/user-products/{USER_PRODUCT_ID}/contracts/shippability/services` con `legacy_attributes=true`. (Fuente: ml_envios — https://developers.mercadolibre.com.ar/es_ar/mercado-envios)

### Mercado Ads / Product Ads
- **Requisitos para crear publicidad:** reputación amarilla, verde o superior; mínimo 15 días vendiendo en MercadoLibre; al menos 20 ventas realizadas; sin deudas pendientes. (Fuente: Creando y Optimizando Publicidad con Mercado Ads 2024 en Mercado libre Explicación Sencilla Tutorial — https://youtu.be/3YzImCeopDk)
- **Configuración inicial de Mercado Ads:** Ir a menú principal > "Publicidad" > "Comenzar ahora" > Aceptar ventanas de bienvenida > Ir a "Configuración" > Seleccionar modo "Personalizada" (nunca "Automática"). (Fuente: Creando y Optimizando Publicidad con Mercado Ads 2024 en Mercado libre Explicación Sencilla Tutorial — https://youtu.be/3YzImCeopDk)
- **Presupuesto diario en Mercado Ads:** Mínimo 230 pesos mexicanos (o moneda local). Si pones menos, marca error. (Fuente: Creando y Optimizando Publicidad con Mercado Ads 2024 en Mercado libre Explicación Sencilla Tutorial — https://youtu.be/3YzImCeopDk)
- **Cálculo real de ECOS:** Tomar ventas totales (publicitarias + orgánicas) y dividir entre inversión publicitaria. Ejemplo: si inviertes $100 y vendes $5000 total, ECOS real es 2%. (Fuente: Creando y Optimizando Publicidad con Mercado Ads 2024 en Mercado libre Explicación Sencilla Tutorial — https://youtu.be/3YzImCeopDk)
- **Ventana de atribución de ventas en Mercado Ads:** 30 días desde el clic. (Fuente: Curso Mercado ADS — https://youtu.be/w6PwLjwXTeI)
- **Métrica principal de Mercado Ads:** `(inversión / ingresos) * 100`. (Fuente: Curso Mercado ADS — https://youtu.be/w6PwLjwXTeI)
- **Duración de prueba recomendada para anuncios:** al menos 2 semanas. (Fuente: Curso Mercado ADS — https://youtu.be/w6PwLjwXTeI)
- **Endpoint para consultar anunciantes de Product Ads:** `GET /advertising/advertisers?product_id=PADS`. (Fuente: ml_product_ads — https://developers.mercadolibre.cl)
- **Endpoint para detalle de un anuncio:** `GET /advertising/$ADVERTISER_SITE_ID/product_ads/ads/$ITEM_ID` con header `api-version: 2`. (Fuente: ml_product_ads — https://developers.mercadolibre.cl)
- **Endpoint para search y métricas de campañas:** `GET /advertising/$ADVERTISER_SITE_ID/advertisers/$ADVERTISER_ID/product_ads/campaigns/search` con header `api-version: 2`. (Fuente: ml_product_ads — https://developers.mercadolibre.cl)
- **Rango de fechas máximo para métricas:** 90 días hacia atrás. (Fuente: ml_product_ads — https://developers.mercadolibre.cl)

### Preguntas y postventa
- **Responder preguntas en menos de 10 minutos** para evitar caída de conversión. (Fuente: MercadoLibre para Principiantes — https://youtu.be/y3Svo17Xl1s)
- **Endpoint para buscar preguntas por ID de ítem:** `GET https://api.mercadolibre.com/questions/search?item_id=$ITEM_ID`. (Fuente: ml_preguntas — https://developers.mercadolibre.cl/es_ar/preguntas-y-respuestas)
- **Endpoint para crear una pregunta:** `POST https://api.mercadolibre.com/questions` con body `{"text": "...", "item_id": "..."}`. (Fuente: ml_preguntas — https://developers.mercadolibre.cl/es_ar/preguntas-y-respuestas)
- **Endpoint para responder una pregunta:** `POST https://api.mercadolibre.com/answers` con body `{"question_id": ..., "text": "..."}`. (Fuente: ml_preguntas — https://developers.mercadolibre.cl/es_ar/preguntas-y-respuestas)
- **Usar `api_version=4`** en consultas de preguntas para obtener datos de contacto del comprador (email, teléfono, nombre). (Fuente: ml_preguntas — https://developers.mercadolibre.cl/es_ar/preguntas-y-respuestas)
- **Documentar cada envío con video:** Colocar una cámara fija sobre la mesa de preparación. El empleado debe mostrar en cámara que el producto está en buen estado antes de empacar. Guardar el video como prueba para disputas. (Fuente: La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0)
- **Agregar instrucciones visibles en el producto:** Si un producto requiere quitar un film protector o configurarse, pegar una etiqueta o sticker grande que lo indique explícitamente (ej. "Retirar film antes de usar"). (Fuente: La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0)
- **Ofrece un descuento exclusivo en tu sitio web propio tras cada venta en Mercado Libre:** Incluye en el empaque o en la comunicación post-venta un código de descuento válido solo en tu tienda online. (Fuente: Vender en Mercado Libre ⚠️ El gran problema de vender en la plataforma 🤝 y como combatirlo!!!! — https://youtu.be/2MDvkMngGMw)

### Costos y comisiones
- **Calcular rentabilidad real:** Sumar comisión por categoría (11.5% a 17%) + tarifa fija por unidad (ej. 15 pesos uruguayos en productos bajo 400 pesos; hoy aplica hasta 15,500 pesos) + 50% del costo de envío en órdenes sobre cierto umbral (ej. antes 2,000 pesos, ahora desde 100 pesos). (Fuente: La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0)
- **Evitar el umbral de envío gratis:** Si el envío gratis aplica desde X monto (ej. 2,000 pesos), fijar precio del producto justo por debajo (ej. 1,990 pesos) para no pagar la mitad del flete. (Fuente: La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0)
- **Cálculo de comisiones (producto > 298 MXN):** Si el precio al cliente es mayor a 298 MXN, se cobra comisión por categoría (8-15%) + envío (promedio 120 MXN) + retención de IVA/ISR (~8% si eres persona física). (Fuente: ¿Cómo vender en Mercado Libre 2026? - CURSO en tiempo RECORD — https://youtu.be/8DoqnPfbYdQ)
- **Cálculo de comisiones (producto ≤ 298 MXN):** Si el precio es 298 MXN o menos, no pagas envío, pero se cobra una **tarifa fija de 33 MXN** por venta + comisión por categoría + retención. (Fuente: ¿Cómo vender en Mercado Libre 2026? - CURSO en tiempo RECORD — https://youtu.be/8DoqnPfbYdQ)

### Errores comunes / anti-patrones
- **No usar modo "Automática" en Mercado Ads:** Siempre seleccionar modo "Personalizada" en la configuración. (Fuente: Creando y Optimizando Publicidad con Mercado Ads 2024 en Mercado libre Explicación Sencilla Tutorial — https://youtu.be/3YzImCeopDk)
- **No incluir tallas, colores, promociones, descuentos ni ofertas en el título** (Mercado Libre penaliza). (Fuente: CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac)
- **No usar gramática correcta en el título:** Usar palabras individuales separadas. (Fuente: CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac)
- **No enviar productos sin documentar con video** para evitar perder disputas. (Fuente: La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0)
- **No olvidar pegar instrucciones visibles** en productos que requieren configuración o remoción de protectores. (Fuente: La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0)
- **No usar familiares directos o personas del mismo domicilio** para la estrategia de reseñas (Mercado Libre lo detecta como fraude). (Fuente: TOP 4 Estrategias para VENDER MÁS en MercadoLibre en 2026 (Funciona 100%) 🚀 — https://youtu.be/QSunYy9OPZo)
- **No omitir `variation_id` en optin a catálogo** cuando el ítem original tiene variaciones (error 400 - cause_id 216). (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **No omitir `catalog_product_id` en optin a catálogo** (error 400 - cause_id 369). (Fuente: ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo)
- **No superar el 97% de entregas a tiempo en Flex** semanalmente o te suspenden el servicio. (Fuente: CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac)
- **No dejar productos en FULL más de 4 meses** para evitar cargos por stock antiguo. (Fuente: Mercado Libre Full — https://youtu.be/q0r-fGABgac)

### Fuentes de esta ingesta
- La Cruda Realidad de vender en Mercado Libre que Nadie Cuenta — https://youtu.be/-5AgeN0DBw0
- Vender en Mercado Libre ⚠️ El gran problema de vender en la plataforma 🤝 y como combatirlo!!!! — https://youtu.be/2MDvkMngGMw
- Creando y Optimizando Publicidad con Mercado Ads 2024 en Mercado libre Explicación Sencilla Tutorial — https://youtu.be/3YzImCeopDk
- ¿Cómo vender en Mercado Libre 2026? - CURSO en tiempo RECORD — https://youtu.be/8DoqnPfbYdQ
- CURSO COMPLETO: Cómo Vender en Mercado Libre Desde Cero (2026) — https://youtu.be/8wco_adxUac
- Cómo VENDER en MERCADO LIBRE para principiantes - CURSO GRATIS 2026 🛒 — https://youtu.be/J7fvgMMLqW0
- TOP 4 Estrategias para VENDER MÁS en MercadoLibre en 2026 (Funciona 100%) 🚀 — https://youtu.be/QSunYy9OPZo
- Mercado Envíos FULL: Cómo funciona y porqué deberías aprovecharlo — https://youtu.be/Yvp3kSw6HyI
- Porque MERCADOLIBRE NO ME DEJA VENDER 😭 — https://youtu.be/lZR8D8dGVe8
- Mercado Libre Full — https://youtu.be/q0r-fGABgac
- Curso Mercado ADS — https://youtu.be/w6PwLjwXTeI
- MercadoLibre para Principiantes — https://youtu.be/y3Svo17Xl1s
- ml_catalogo — https://developers.mercadolibre.cl/es_ar/que-es-catalogo
- ml_envios — https://developers.mercadolibre.com.ar/es_ar/mercado-envios
- ml_preguntas — https://developers.mercadolibre.cl/es_ar/preguntas-y-respuestas
- ml_product_ads — https://developers.mercadolibre.cl
- ml_publica — https://developers.mercadolibre.com.ar/es_ar/publica-productos
- ml_reputacion — https://developers.mercadolibre.cl/es_ar/reputacion-de-vendedores