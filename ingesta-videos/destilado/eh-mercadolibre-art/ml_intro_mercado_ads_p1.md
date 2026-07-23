# ml_intro_mercado_ads
**Fuente:** mercadolibre | https://developers.mercadolibre.cl/es_cl/introduccion-a-mercado-ads

## Qué enseña
Introducción a Mercado Ads, la herramienta publicitaria de Mercado Libre que permite dar mayor visibilidad a productos para mostrarlos antes que la competencia. Explica los tres productos publicitarios disponibles (Product Ads, Brand Ads y Display), sus beneficios y cómo gestionar campañas.

## Lecciones accionables
- **Product Ads**: promociona productos publicados en Mercado Libre para aumentar ventas. Los anuncios se muestran en posiciones relevantes dentro de la plataforma.
- **Brand Ads**: solución de performance exclusiva para vendedores y marcas de Tiendas Oficiales. Los anuncios se muestran en la "posición 0" (premium), antes que los anuncios de Product Ads. Muestra hasta tres opciones de productos de una marca cuando un usuario realiza una búsqueda.
- **Display**: permite comprar y gestionar espacios publicitarios directa o programáticamente en ubicaciones de alto impacto dentro de Mercado Libre y Mercado Pago, dirigidos a audiencias con alta intención de compra.
- **Gestión de campañas**: puedes elegir qué anuncios mostrar, agruparlos en campañas, decidir cuánto invertir, pausar y activar campañas cuando quieras, y ver resultados en reportes y métricas.
- **Documentación relacionada**: incluye secciones específicas para Bonificaciones para Product Ads, MCP Mercado Libre, y MCP Server.

## Reglas para agentes
- Usa **Product Ads** cuando el objetivo sea promocionar productos publicados individualmente para aumentar ventas.
- Usa **Brand Ads** solo cuando el vendedor sea una **Tienda Oficial** y se quiera mostrar la marca en la posición 0 antes que cualquier otro resultado.
- Usa **Display** cuando se requiera comprar espacios publicitarios de alto impacto en Mercado Libre o Mercado Pago para audiencias con alta intención de compra.
- Nunca confundas Brand Ads con Product Ads: Brand Ads es exclusivo para Tiendas Oficiales y aparece en posición 0; Product Ads aparece en posiciones relevantes posteriores.
- Siempre consulta las FAQs de Rate Limit / Error 429, gestión de stock multiorigen, envíos, facturación, imágenes y moderaciones antes de implementar campañas.

## Errores comunes que evita o menciona
- No asumir que todos los vendedores pueden usar Brand Ads: está restringido a Tiendas Oficiales.
- No ignorar los límites de tasa (Rate Limit / Error 429) al hacer llamadas a las APIs de Mercado Ads.
- No olvidar que los anuncios de Product Ads se muestran en posiciones relevantes, no necesariamente en la primera posición (esa es exclusiva de Brand Ads).
- No pasar por alto la gestión de bonificaciones para Product Ads ni la configuración de MCP (Mercado Libre MCP Server) si se requiere.