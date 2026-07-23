# Search Themes for Performance Max: What They Are, How They Impact Campaigns, & How to Set Up
**Fuente:** GrowMyAds | https://youtu.be/ljVBjJ6IKX8

## Qué enseña (2-3 líneas)
Explica qué son los Search Themes en Performance Max (actualmente en beta, despliegue completo en 2024), cómo funcionan como señales (no targeting) para llenar vacíos de información que Google AI no puede aprender rápido, y cómo se diferencian de los custom segments al influir también en inventario de búsqueda. Muestra el proceso paso a paso para agregarlos dentro de un asset group y analiza su impacto en campañas de Search existentes.

## Lecciones accionables
- **Agregar Search Themes dentro de un asset group:** Ir a la campaña Performance Max → Nivel asset group → Hacer clic en el ícono de lápiz en "Audience signals" → En la sección "Search themes" (solo visible si tienes acceso al beta) → Escribir términos de búsqueda (ej. "LG Smart TV") → Guardar.
- **Máximo 25 Search Themes por asset group:** No es necesario llenarlos todos; agregar solo los que tengan sentido para el producto/servicio.
- **Usar términos amplios, no long-tail exact match:** Ejemplo: "smart TVs" o "LG Smart TV" en lugar de frases ultra específicas.
- **Prioridad de Search Themes vs. keywords en Search campaigns:**
  - Si existe un **exact match keyword** en una campaña de Search estándar → Google dará la impresión a la campaña de Search, NO a Performance Max.
  - Si existe un **phrase match o broad match keyword** → Google usará el **ad rank** más alto para decidir; en la práctica, tiende a ceder a Performance Max.
- **Usar Search Themes para calentar campañas nuevas o asset groups nuevos:** Especialmente cuando lanzas un producto/servicio nuevo sin datos históricos (landing page sin información completa, sin historial de conversiones).
- **Verificar gaps en Search Terms Reports:** Si en el informe de insights de Performance Max notas que faltan ciertos términos que esperabas ver, agrega esos términos como Search Themes en el asset group correspondiente y monitorea cambios en impresiones, clics o conversiones.
- **Search Themes respetan:** Brand exclusions configuradas en la campaña Performance Max y negative keywords a nivel de cuenta.
- **Landing page de destino:** Los resultados impulsados por Search Themes llevan a los usuarios a la URL configurada en el asset group (final URL, page feed o URL settings), a menos que tengas activada la expansión de URL final.

## Reglas para agentes
- **Usa Search Themes como señales, no como targeting directo:** No esperes que Google limite las impresiones solo a esos términos; son indicaciones para la IA, no keywords exactas.
- **Nunca uses Search Themes para reemplazar exact match keywords en campañas de Search:** Si necesitas control absoluto sobre términos específicos, mantenlos como exact match en Search campaigns; Google priorizará esas campañas sobre Performance Max.
- **Cuando lances un producto/servicio nuevo sin datos históricos, agrega Search Themes en el asset group desde el inicio** para acelerar el aprendizaje de Google AI.
- **Si la campaña Performance Max ya está optimizada y rindiendo bien, no esperes grandes cambios al agregar Search Themes:** Su impacto es marginal en campañas maduras con datos de conversión históricos.
- **No intentes llenar los 25 Search Themes si no tienes suficientes términos relevantes:** Agrega solo los que aporten valor; la redundancia no ayuda.
- **Usa términos amplios y temáticos, no frases exactas:** Ej. "smart TVs" en lugar de "comprar LG Smart TV 55 pulgadas 2024 oferta".

## Errores comunes que evita o menciona
- **Confundir Search Themes con keywords de targeting:** No son lo mismo; son señales para Google AI, no términos que se targetean directamente.
- **Pensar que Search Themes son lo mismo que search keyword custom segments:** Los custom segments solo influían en inventario no-search; Search Themes influyen en **todos los canales, incluyendo search**.
- **Esperar que Search Themes anulen brand exclusions o negative keywords:** No lo hacen; Google respeta esas configuraciones existentes.
- **Usar Search Themes en campañas ya maduras esperando resultados revolucionarios:** El video indica que en pruebas beta no movieron significativamente el rendimiento en campañas ya optimizadas.
- **Creer que Search Themes canibalizarán exact match keywords de Search campaigns:** Google afirma que las impresiones irán a la campaña de Search si existe un exact match, no a Performance Max.
- **Agregar Search Themes demasiado específicos o long-tail:** Google recomienda términos amplios; los temas muy específicos no aportan valor adicional como señal.