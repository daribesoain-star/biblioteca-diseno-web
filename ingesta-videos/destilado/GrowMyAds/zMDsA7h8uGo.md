# The Ultimate Google Ads Audit Checklist for eCommerce
**Fuente:** GrowMyAds | https://youtu.be/zMDsA7h8uGo

## Qué enseña (2-3 líneas)
Este video presenta un checklist completo para auditar cuentas de Google Ads de eCommerce, usado por una agencia que gestiona más de $50M anuales en inversión. Enseña a detectar errores críticos en tracking, estructura de campañas, estrategia de pujas y segmentación de productos, usando un caso real de una cuenta que gasta ~$16K/mes con resultados estancados.

## Lecciones accionables
- **Revisar tipo de conversión de compra:** Ir a *Goals > Conversion summary* y verificar si la conversión de compra es nativa de Google Ads o importación de GA4. **No recomendar GA4 como tag principal**; usar tag nativo de Google Ads o integración de Shopify/Google YouTube app. GA4 debe ser secundario.
- **Verificar parámetro ecomm_prodid en Data Manager:** Ir a *Tools > Data Manager > Google tag > View stats*. Buscar hits del parámetro `product ID` en los últimos 30 días. Si es cero, los anuncios dinámicos de remarketing muestran productos aleatorios.
- **Configurar tag nativo correctamente:** Incluir `transaction_id`, `revenue` y `product level data` (product ID). Dejar el nuevo tag como secundario durante 30 días, luego comparar atribución con GA4 antes de migrar.
- **Revisar importación de conversiones offline:** Ir a *Conversions > Summary* y buscar conversiones de llamadas (call from ads, phone call website import). Si hay llamadas importantes sin tracking offline, consultar con el cliente sobre el % de ventas por teléfono.
- **Configurar atribución data-driven:** En *Conversions > Settings*, asegurar que el modelo de atribución sea "Data-driven" (no "Last click"). Ajustar ventanas de conversión según ciclo de compra (ej. 90 días click-through, 3 días engaged view).
- **Verificar autotagging:** Ir a *Admin > Account settings > Auto-tagging* y confirmar que esté activado.
- **Analizar tendencias de 12 meses:** Ir a *Campaigns > All enabled*, seleccionar período de 12 meses, usar columnas `Conversion value` y `Conversion value / cost`. Detectar picos anómalos (ej. $1.6M en un mes vs $80K promedio) que indican errores de tracking.
- **Usar métricas "by time" para datos recientes:** Para el último mes, usar `Conversion value (by time)` en lugar de `Conversion value` para evitar distorsión por ventanas de atribución largas (ej. 90 días).
- **Revisar volumen de conversiones por campaña (últimos 30 días):** Identificar campañas con ROAS < 1.0 o tasas de conversión muy bajas (ej. 0.05%). Marcar campañas con estrategia "Maximize clicks" sin sentido.
- **Verificar alineación de objetivos de negocio:** Comparar ROAS objetivo en campañas (ej. 600% en PMax) vs resultados reales. Detectar campañas en "Maximize clicks" que no tienen sentido estratégico.
- **Revisar estructura de campañas:** Verificar si hay separación lógica: brand vs non-brand, categorías, bestsellers. Buscar campañas con cientos de keywords broad match en un solo grupo de anuncios.
- **Verificar uso de negative keywords:** Ir a *Keywords > Negative keywords* en cada campaña. Si no hay ninguna, es una bandera roja (especialmente con broad match y maximize clicks).
- **Evitar mezclar Display en campañas de Search:** Ir a *Campaign > Settings > Networks* y verificar si "Display Network" está activado. Segmentar por red (Google Search, Search Partners, Display) para analizar rendimiento.
- **Revisar segmentación de productos en Shopping/PMax:** Ir a *PMax campaign > Asset group > View listing groups*. Verificar si hay un solo grupo "All products" sin segmentación por categoría o marca. Detectar grupos con SKUs que ya no existen (product group sin productos).
- **Analizar rendimiento por tipo de producto:** Dentro de la campaña PMax, ir a *Products > Product type*. Usar filtro `Conversion value / cost > 5` para identificar top performers, y `< 5` para underperformers. Comparar volúmenes de conversión.
- **Revisar calidad del feed de productos:** Ir a *Merchant Center* o *Products* en Google Ads. Verificar títulos (incluyen part number, brand, producto), uso de custom labels, presencia de GTIN (G10). Un feed bien optimizado puede compensar una mala estructura de campaña.
- **Revisar estrategia de pujas por campaña:** Verificar si las campañas de Search usan "Maximize clicks" en lugar de "Target ROAS" o "Target CPA". Si tienen cientos de miles de clics y nunca migraron a smart bidding, es un error.
- **Verificar extensiones de anuncios:** Ir a *Campaign > Assets*. Revisar si hay sitelinks, callouts, imágenes, structured snippets. Desactivar "Automatically created assets" en *Advanced settings* (excepto seller ratings y business name).
- **Revisar exclusiones a nivel de cuenta:** Ir a *Tools > Shared library > Exclusion lists*. Verificar si hay listas de negative keywords o placement exclusions (ej. YouTube kids channels) que no estén aplicadas a campañas activas.
- **Verificar automatizaciones de assets:** En *Campaign > Settings*, desactivar "Automatically created assets" para evitar que Google genere creativos genéricos.
- **Revisar landing pages:** Hacer clic en anuncios de Search y Shopping para confirmar que dirigen a la página de producto correcta (no a homepage). Verificar velocidad de carga, proceso de checkout, señales de confianza (SSL, returns policy).

## Reglas para agentes
- **Usa tag nativo de Google Ads como conversión principal** para eCommerce, nunca GA4 import como primario. GA4 debe ser secundario.
- **Nunca migres un tag nuevo inmediatamente** a primario; déjalo 30 días en secundario y compara atribución antes de cambiar.
- **Usa atribución data-driven** siempre que esté disponible; nunca uses "Last click" para eCommerce.
- **Nunca mezcles Display Network en campañas de Search**; segmenta siempre.
- **Nunca uses "Maximize clicks"** en campañas de Search con alto volumen de clics (>100K/año) sin haber probado smart bidding primero.
- **Revisa el parámetro ecomm_prodid** en Data Manager antes de confiar en remarketing dinámico; si es cero, los anuncios muestran productos aleatorios.
- **Usa "by time" metrics** para analizar datos de los últimos 30 días si la ventana de conversión es >30 días.
- **Segmenta productos por rendimiento** en campañas separadas (top performers vs underperformers) para evitar que Google diluya la optimización.
- **Aplica negative keywords** en todas las campañas de Search, especialmente si usas broad match.
- **Desactiva "Automatically created assets"** en campañas de Search (excepto seller ratings y business name).
- **Verifica que los SKUs en grupos de productos existan**; si un grupo no tiene productos, la campaña gasta en display/search sin sentido.

## Errores comunes que evita o menciona
- Usar GA4 como tag de conversión principal (pierde 10-15% de atribución vs tag nativo de Google Ads).
- No tener el parámetro `product ID` en el tag, lo que hace que el remarketing dinámico muestre productos aleatorios.
- Migrar un tag nuevo a primario inmediatamente sin período de comparación de 30 días, lo que desestabiliza el smart bidding.
- Tener ventanas de conversión inconsistentes con el ciclo de compra real.
- No revisar picos anómalos en tendencias de 12 meses (ej. $1.6M en un mes vs $80K promedio) que indican errores de tracking.
- Mantener campañas estancadas (plateaued) durante años sin escalar, asumiendo que el mercado está saturado cuando no es el caso.
- Usar "Maximize clicks" en campañas de Search con cientos de miles de clics sin migrar a smart bidding.
- Mezclar cientos de keywords broad match en un solo grupo de anuncios sin negative keywords.
- Tener campañas de Search con ROAS < 1.0 que gastan el mismo presupuesto que campañas de PMax con ROAS > 4.0.
- No segmentar productos por rendimiento (todo en "All products" en una sola campaña PMax).
- Tener grupos de productos con SKUs que ya no existen, haciendo que la campaña gaste en tráfico no productivo.
- No usar custom labels ni umbrales mínimos de datos para evaluar productos.
- Tener extensiones de anuncios rotas o no actualizadas (ej. promos desde 2022).
- Dejar activados "Automatically created assets" que generan creativos genéricos y de baja calidad.
- No revisar exclusiones de placements (YouTube kids, mobile apps) en cuentas con Display o Video.
- Enviar tráfico de anuncios de producto a la homepage en lugar de la página de producto específica.