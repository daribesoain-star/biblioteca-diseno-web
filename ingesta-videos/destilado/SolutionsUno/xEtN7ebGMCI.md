# 💸 The Ultimate Guide to Google Ads for 2023
**Fuente:** SolutionsUno | https://youtu.be/xEtN7ebGMCI

## Qué enseña (2-3 líneas)
Cómo configurar Performance Max (PMax) para limitar la sobre-atribución y obtener tráfico frío no-marca escalable, explicando la estructura de grupos de activos diversificados, el uso de señales de audiencia y la gestión de tráfico nuevo vs. recurrente. Revela que PMax canibaliza canales propios (orgánico, directo, email) y sobre-atribuye conversiones a sí mismo mediante remarketing y view-through conversions de YouTube.

## Lecciones accionables
- **Estructura de grupos de activos:** Crea entre 30 y 59 grupos de activos (asset groups) para diversificar la distribución de impresiones. Google distribuye las impresiones de forma equitativa entre grupos: con 1 grupo recibe 100% de impresiones, con 2 grupos ~50% cada uno, con 3 grupos ~33% cada uno.
- **Señales de audiencia:** No uses tus propios datos (listas de clientes) en las señales. Usa intereses y datos demográficos amplios que sean categóricamente relevantes al producto, pero no específicos. La señal es débil — el feed de productos y el texto del anuncio hacen el trabajo pesado.
- **Diferenciación por anuncios:** El texto del anuncio (ad copy) dirige al usuario al producto correcto, no la señal. Ejemplo: si tienes un grupo de activos para "button-down shirts", el anuncio debe mostrar button-downs, aunque la señal sea "men's apparel".
- **Segmentación por categoría:** Agrupa productos por categoría de compra (ej. board shorts juntos, polos juntos, hoodies juntos). Los usuarios que buscan board shorts compran board shorts el 80% del tiempo.
- **Campaña de marca separada:** Ejecuta una campaña de búsqueda de marca aparte para restar tráfico de marca a PMax. Ejemplo del video: $85 gastados en marca generaron ~$14,000 en ventas, quitando esa atribución a PMax.
- **Ajuste de presupuesto:** Si PMax está saturado de tráfico recurrente, reduce el presupuesto diario. En el video, redujeron de $1,300/día a $700/día, gastaron 39% menos y obtuvieron 64% más ventas (porque las ventas recurrentes ocurren independientemente).
- **Múltiples PMax:** Si divides por categorías (ej. PMax para hombres, PMax para mujeres), acepta que habrá solapamiento post-primer clic entre campañas. No uses los datos de PMax para medir rendimiento por producto — usa analytics externos (Shopify, Northbeam).
- **Exclusión de clientes:** Subir lista de clientes y activar "new customer only" no funciona confiablemente. En pruebas, el tráfico nuevo se redujo a la mitad en lugar de eliminar el recurrente. Google no puede hacer matching perfecto.
- **Conversión con múltiples clics:** El 50% de las conversiones en PMax vienen de usuarios con más de 2 clics en anuncios. El período de atribución incluye view-through conversions de YouTube (3 días por defecto sin necesidad de clic).
- **Herramienta de atribución externa:** Usa Northbeam, Triple Whale o similar. En el ejemplo, Google reportó $80,000 en conversiones mientras que Northbeam detectó $101,000 — 20% de atribución perdida.

## Reglas para agentes
- **Usa entre 30 y 59 grupos de activos** cuando el presupuesto diario sea ≥$500/día. Para presupuestos menores ($20/día), reduce a 3-5 grupos.
- **Nunca uses tus propias listas de clientes como señal** en más del 10% de los grupos de activos (en el video solo 6 de 60 grupos usan datos propios).
- **Siempre ejecuta una campaña de búsqueda de marca separada** cuando tengas PMax activo, para evitar que PMax canibalice tráfico de marca.
- **Nunca confíes en el ROAS reportado por Google** en PMax — verifica con herramienta de atribución externa (Northbeam, Shopify backend).
- **Reduce el presupuesto diario si ves que el ROAS de Google sube pero no puedes escalar** — es señal de que estás pagando por tráfico recurrente que ya iba a convertir.
- **No actives "new customer only"** en PMax — no funciona correctamente; en pruebas redujo el tráfico nuevo a la mitad en lugar de eliminar el recurrente.
- **Usa el feed de productos como principal diferenciador** entre grupos de activos, no las señales de audiencia.
- **Mide el rendimiento por producto en analytics externos** (Shopify, GA4), no en los reportes de PMax, porque hay solapamiento entre grupos.

## Errores comunes que evita o menciona
- **Pensar que las señales de audiencia dirigen el tráfico:** Falso. La señal es casi irrelevante; el feed de productos y el texto del anuncio hacen la segmentación real.
- **Poner todos los productos en un solo grupo de activos:** Hace que PMax solo muestre productos que ya convierten (ej. marca) y no explore tráfico frío.
- **Creer que "new customer only" elimina tráfico recurrente:** En pruebas, el tráfico nuevo se redujo a la mitad y el recurrente también, no se eliminó.
- **Escalar presupuesto cuando el ROAS de Google es alto:** Puede ser que estés pagando por clientes que ya iban a comprar (tráfico recurrente), no por tráfico nuevo escalable.
- **Usar los reportes de PMax para medir rendimiento por producto:** Los grupos de activos se solapan; un clic en "button-down" puede atribuirse a "all products" si el usuario compra otro producto.
- **Ignorar el conversion lag de 18-29 días:** PMax atribuye conversiones hasta 29 días después, lo que distorsiona el rendimiento a corto plazo.
- **No tener campaña de marca separada:** PMax capturará todo el tráfico de marca, inflando su ROAS y canibalizando canales orgánicos y directos.
- **Pensar que PMax es escalable ilimitadamente:** Tiene un techo porque se satura de tráfico recurrente; no se puede escalar más allá de la base de clientes existente sin pagar de más.