# How to CRUSH Google Ads with a Small Budget (eCommerce)
**Fuente:** GrowMyAds | https://youtu.be/-ch_R4WPxfw

## Qué enseña (2-3 líneas)
Este video enseña un framework paso a paso para lanzar campañas de Google Ads en eCommerce con presupuestos pequeños (desde $20/día hasta $3,000/mes), enfocándose en dos rutas: Standard Shopping y Performance Max feed-only. Explica cómo estructurar campañas, dividir presupuesto entre productos top sellers y el resto del catálogo, y monitorear métricas clave para evitar desperdicio en inventarios no productivos como YouTube o Display.

## Lecciones accionables
- **Requisitos previos obligatorios antes de lanzar cualquier campaña:**
  1. Tener una cuenta de Merchant Center separada de Google Ads.
  2. Tener un product feed optimizado (remite a su video específico sobre optimización de feeds).
  3. Tener conversion tracking correctamente configurado (remite a su video para Shopify).
- **Configuración de campaña Standard Shopping (recomendada para presupuestos pequeños):**
  - Al crear campaña, seleccionar objetivo "Sales" y solo mantener "Purchases" como conversión (quitar "Add to cart" y "Begin checkout").
  - Tipo de campaña: "Shopping".
  - Nombrar campaña con prefijo "SH" + identificador (ej: "SH top sellers").
  - Presupuesto diario promedio: el que tengas disponible (ej: $20/día).
  - Estrategia de puja inicial: **Manual CPC** o **Maximize Clicks con límite de CPC**. No usar Target ROAS al inicio por falta de datos.
  - Para calcular CPC inicial: usar Keyword Planner → "Discover new keywords" → ingresar URL o keywords del producto → tomar el promedio entre "Top of page bid low range" y "Top of page bid high range" → dividir entre 2 (porque shopping suele ser 50% más barato que search). Ejemplo: si search da $2, empezar con $1 en shopping.
  - Configuración de ubicaciones: "Presence: People in or regularly in your included locations" (no "Interest").
  - Red: desmarcar "Search partners".
  - En "Ad group": nombrar "top sellers", asignar el CPC calculado (ej: $1).
  - En "Product group": seleccionar por "Product type" o "Brand" (no SKUs individuales a menos que sean pocos). Elegir los top sellers (ej: "Sectionals" y "Sofas").
  - Excluir "All products" del ad group para que solo sirva en los productos seleccionados.
  - **Ajustes post-creación:**
    - Ir a "Insights and reports" → "When and where ads showed" → "Devices" → disminuir tablets al 100% (excluirlos).
    - Agregar negative keywords desde el inicio (remite a su video sobre negative keywords con Claude/ChatGPT).
- **Estructura de dos campañas Shopping (si el presupuesto lo permite, ej: $1,000-$3,000/mes):**
  - **Campaña 1 (80% del presupuesto):** Top sellers (ej: "SH top sellers").
  - **Campaña 2 (20% del presupuesto):** "Everything else" → crear otra campaña Shopping idéntica pero excluir los top sellers e incluir "All products" con el mismo CPC.
- **Configuración de campaña Performance Max feed-only (alternativa de mayor riesgo):**
  - Tipo de campaña: "Performance Max".
  - Nombrar: "PMax top sellers".
  - Estrategia de puja: **Maximize conversion value** (sin establecer target).
  - Ubicaciones: "Presence" (solo personas en el país objetivo).
  - Dispositivos: desmarcar tablets y TV screens, dejar solo mobile y desktop.
  - **Brand exclusions:** Si la marca está indexada en Google, agregarla para evitar que PMax gaste en tráfico de marca. Si no está indexada, solicitarla (puede tardar) o usar negative keywords como alternativa.
  - En "Asset group": seleccionar solo los top sellers por product type (ej: "Sofas", "Sectionals").
  - **SKIP** la sección de "Asset generation" y "Asset group" completo (imágenes, videos, textos) → se quiere feed-only.
  - En "Asset optimization": desmarcar "Text", "Image" y "Video".
  - En "Search themes": agregar 10-20 términos de búsqueda relevantes como señales (no como targeting directo).
  - **Audience signals:** opcional; si no hay datos de primera mano, se puede omitir.
  - Presupuesto: idealmente $50/día mínimo para PMax; si solo se tiene $20/día, recomienda mejor usar Standard Shopping.
  - **Post-creación:**
    - Agregar negative keywords inmediatamente (incluyendo la marca si no se pudo excluir por brand list).
    - Monitorear semanalmente "Insights and reports" → "Channel performance": si menos del 80% del gasto va a "Google Search", la campaña está fallando y debe detenerse.
- **Estructura híbrida (si se usa PMax para top sellers):**
  - PMax top sellers con 80% del presupuesto.
  - Campaña Standard Shopping para "everything else" con 20% del presupuesto (excluyendo los top sellers).
- **Tarea diaria obligatoria:** Revisar search terms donde se obtienen clics y agregar negative keywords constantemente.

## Reglas para agentes
- Usa **Standard Shopping** como primera opción cuando el presupuesto sea menor a $50/día; solo usa Performance Max si tienes al menos $50/día y estás dispuesto a monitorear semanalmente el canal de gasto.
- Cuando configures ubicaciones, usa siempre **"Presence: People in or regularly in your included locations"** , nunca "Interest".
- Excluye **tablets** al 100% en TODAS las campañas nuevas (Shopping y PMax) desde el inicio.
- En campañas Shopping nuevas, usa **Manual CPC** o **Maximize Clicks con límite de CPC**; nunca uses Target ROAS hasta tener al menos 15-30 conversiones en los últimos 30 días.
- En campañas Performance Max feed-only, desmarca **siempre** "Text", "Image" y "Video" en Asset Optimization para evitar que Google genere creativos automáticos.
- Agrega **negative keywords** (incluyendo la marca) antes de que la campaña empiece a gastar dinero.
- Divide el presupuesto en **80% para top sellers** y **20% para el resto del catálogo** (en campañas separadas) siempre que el presupuesto mensual supere los $1,000.
- Monitorea **Channel Performance** semanalmente en PMax: si menos del 80% del gasto va a "Google Search", detén la campaña inmediatamente y migra a Standard Shopping.
- Nunca actives "Search partners" en campañas Shopping nuevas; actívalo solo después de tener conversiones estables.

## Errores comunes que evita o menciona
- **No tener conversion tracking correcto antes de lanzar:** sin datos de conversión, Google no puede optimizar y se desperdicia presupuesto.
- **Usar Performance Max con presupuesto muy bajo ($20/día):** Google recomienda mínimo $50/día; con menos, la campaña tiende a gastar en YouTube, Display y Gmail en lugar de Shopping/Search.
- **No excluir tablets:** el tráfico de tablets convierte menos y tiene menor volumen; es mejor concentrar el presupuesto en desktop y mobile.
- **No agregar negative keywords desde el inicio:** Google puede mostrar anuncios en búsquedas irrelevantes, quemando el presupuesto rápidamente.
- **Incluir "Add to cart" o "Begin checkout" como conversiones:** solo debe usarse "Purchases" para evitar que Google optimice para microconversiones que no generan ingresos.
- **No dividir el presupuesto entre top sellers y el resto del catálogo:** lanzar con "All products" desde el inicio dispersa el gasto y no permite concentrar datos donde hay más probabilidad de conversión.
- **En PMax, no revisar Channel Performance:** si la campaña gasta más del 20% en YouTube/Display/Gmail, está fallando y debe detenerse.
- **Usar "Interest" en lugar de "Presence" en ubicaciones:** permite que personas fuera del país objetivo vean los anuncios, generando tráfico irrelevante.
- **No excluir la marca en PMax:** la campaña puede gastar todo el presupuesto en búsquedas de marca, que deberían manejarse con campañas separadas de Search.