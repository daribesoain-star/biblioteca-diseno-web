# Google Shopping Feed Optimizations for 10X Growth (2026 Updated)
**Fuente:** GrowMyAds | https://youtu.be/hY8ZBC3A4uQ

## Qué enseña (2-3 líneas)
El video desglosa las optimizaciones de feed de Google Shopping que generan mayor impacto en rendimiento: precio, títulos, GTIN, imágenes con IA, descripciones, categorías y etiquetas personalizadas. Muestra cómo usar Google Product Studio, Nano Banana y herramientas como Channable para escalar estas mejoras, con casos reales que lograron 10x en clics e impresiones.

## Lecciones accionables
- **Diagnóstico obligatorio en Merchant Center:** Ve a Productos > "Needs attention" > "View history" para revisar productos rechazados o con advertencias. Revisa semanalmente, no esperes notificaciones de Google.
- **Precio: la regla de oro:** Si vendes el mismo producto que 10 competidores y uno es 20% más barato, pierdes. No hagas "price baiting" (bajar precio en feed y subirlo en checkout) ni precios de oferta falsos. Google suspende cuentas.
- **Títulos: prioridad absoluta tras el precio:** Los primeros 30-70 caracteres son críticos. Usa 150 caracteres máximo. Google puede reordenar palabras dinámicamente según la búsqueda, pero solo si ya están en el título.
- **Estructura de títulos por tipo de producto:**
  - Marcas conocidas (Nike, Apple, Samsung): front-load la marca. Ejemplo: "Nike React Flight Men's Running Shoes Black Gray Size 10.5"
  - Marcas no conocidas (Home Reserve): front-load keywords de beneficio. Ejemplo: "Kid & Pet Friendly Sectional Sofa Washable - Home Reserve"
  - Productos genéricos: front-load beneficios + tipo de producto + casos de uso
- **GTIN (G10):** Obligatorio si existe. Si no tienes, solicítalo al fabricante. Si legítimamente no existe, usa `identifier_exists = no`. Esto permite a Google identificar productos universales, crucial para resellers.
- **Imágenes con IA:**
  - **Google Product Studio:** Dentro de Merchant Center > Creative > Product Studio. Sube imagen, describe escena (ej: "modern living room"), genera 4 variantes. Puedes descargar o agregar directo a Merchant Center.
  - **Nano Banana (Google AI Studio):** Prompt usado textual: *"Show this mattress in a modern bedroom on a bed frame similar to the reference image I provided. Use light room colors."* Resultado: imagen lifestyle sin alterar el producto real.
  - **Regla ética:** No uses imágenes que no reflejen el producto real. Verifica que la IA no cambie formas, colores o características.
  - **Implementación:** No optimices todas las imágenes. Toma tus top sellers o productos con imágenes malas, crea lifestyle images, y agrégalas como "additional image" en Merchant Center (no reemplaces la principal de fondo blanco).
- **Descripciones: baja prioridad (regla 80/20):** Dedica 80% del esfuerzo a títulos. Solo optimiza descripciones en productos top performers después de haber hecho títulos, imágenes y GTIN. Usa lenguaje natural, incluye keywords secundarias que no estén en el título, sin keyword stuffing.
- **Categorías de Google:** Si tienes GTIN válido, Google asigna automáticamente. Si no, revisa que la categoría asignada sea correcta (Google tiene 6,000+ categorías). Productos mal categorizados pierden impresiones.
- **Product Type:** Para organización interna propia. También informa a Google cómo categorizas el producto. Útil para segmentación en campañas.
- **Custom Labels (etiquetas personalizadas):** No afectan el rendimiento del feed, pero sí la gestión de campañas. Ejemplos de uso:
  - `custom_label_0 = "new"` (productos nuevos)
  - `custom_label_0 = "best_seller"`, `"standard"`, `"slow"`, `"clearance"`
  - `custom_label_0 = "summer"`, `"back_to_school"`, `"holiday"`
  - `custom_label_0 = "high_margin"`, `"low_margin"`
  - `custom_label_0 = "tier_1"`, `"tier_2"`, `"tier_3"` (por precio)
  - No sobrecomplicar: usa solo las que realmente vas a gestionar.
- **Herramientas recomendadas:**
  - **Channable:** #1 para la mayoría. Buen soporte, precio consciente.
  - **Feedonomics:** Enterprise. Construyen y gestionan el feed por ti. Caro, ideal para gastos >$200k/año o catálogos de 100k+ SKUs.
  - **Data Feed Watch:** DIY, económico, requiere aprendizaje.
- **Implementación sin herramientas:** Puedes editar productos uno por uno en Merchant Center > Products > editar producto > subir imágenes, modificar títulos, agregar atributos.

## Reglas para agentes
- Usa `identifier_exists = no` solo cuando el producto legítimamente no tenga GTIN; nunca lo omitas si existe.
- Nunca uses "price baiting" (precio bajo en feed, precio real en checkout) ni precios de oferta falsos; Google suspende la cuenta.
- Nunca uses mayúsculas sostenidas, puntuación excesiva ni keyword stuffing en títulos o descripciones.
- Nunca copies descripciones de competidores.
- Nunca reemplaces la imagen principal de fondo blanco por una lifestyle; agrega lifestyle como "additional image".
- Nunca uses imágenes generadas por IA que no reflejen fielmente el producto real (forma, color, características).
- Prioriza siempre: Precio > Títulos > GTIN > Imágenes > Descripciones (solo top sellers) > Categorías > Custom Labels.
- Cuando optimices títulos, front-load las keywords de mayor conversión en los primeros 30-70 caracteres; usa lenguaje natural, no robótico.
- Revisa el diagnóstico de Merchant Center (Products > Needs attention > View history) al menos semanalmente.
- Para feeds grandes (>10,000 SKUs), usa siempre una herramienta de feed (Channable, Feedonomics, Data Feed Watch); no edites manualmente.

## Errores comunes que evita o menciona
- **Ignorar el diagnóstico de Merchant Center:** Esperar a recibir notificaciones de Google o ver caída de rendimiento antes de revisar productos rechazados.
- **Títulos genéricos sin términos de búsqueda:** Ejemplo: "32 oz black water tumbler" en lugar de incluir marca, color, tamaño y beneficios.
- **No usar GTIN cuando está disponible:** Google no puede identificar el producto correctamente, especialmente para resellers compitiendo con los mismos productos.
- **Keyword stuffing en títulos:** Agregar palabras clave sin sentido o en exceso; Google lo penaliza.
- **Descripciones sobreoptimizadas o copiadas:** Perder tiempo en descripciones cuando los títulos aún no están optimizados.
- **Imágenes de baja calidad o sin lifestyle:** Usar solo fotos de estudio genéricas cuando se pueden generar imágenes lifestyle con IA (Google Product Studio, Nano Banana, ChatGPT).
- **No verificar que la IA no altere el producto real:** Generar imágenes que no coinciden con el producto físico (forma, color, tamaño).
- **Categorías de Google incorrectas:** Productos mal categorizados pierden impresiones relevantes.
- **No usar custom labels para segmentación:** Perder la capacidad de gestionar campañas por margen, rendimiento, estacionalidad o ciclo de vida del producto.
- **Intentar engañar con precios:** Price baiting, ofertas falsas o precios engañosos que Google detecta y sanciona.