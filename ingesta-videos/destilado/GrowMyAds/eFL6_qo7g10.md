# How to Optimize Performance Max Campaigns (Step-by-Step Tutorial)
**Fuente:** GrowMyAds | https://youtu.be/eFL6_qo7g10

## Qué enseña
Este tutorial enseña cómo optimizar campañas Performance Max paso a paso, desde la estructura de campañas hasta ajustes técnicos como exclusiones de marca, palabras clave negativas y análisis de assets. Explica cómo usar el script de Mike Rhodess para desglosar el gasto por canal (Shopping, Display, Video, Search) y cómo aprovechar la pestaña de Insights para extraer datos de búsqueda que alimenten campañas de Search estándar.

## Lecciones accionables
- **Estructura de campañas:** Consolidar al inicio. Solo segmentar por diferencias de presupuesto, puja, ubicación geográfica, estacionalidad, productos nuevos o "zombie products" (productos con cero impresiones/clics en la campaña principal).
- **Evolución de estructura:** Convertir la campaña consolidada en una de "bestsellers" recortando productos, categorías o marcas de bajo rendimiento. Mover esos elementos a una campaña estándar de Shopping para darles una oportunidad con pujas diferentes.
- **Script de Mike Rhodess (Micro PMax Script):** Instalar en la cuenta para ver desglose de impresiones, clics y coste por canal (Shopping, Display, Video, Search). Ideal: 80%+ de exposición en Shopping. Si hay mucho gasto en Display, Search o Video sin buen rendimiento, considerar mover a un asset group solo de feed.
- **Pestaña Insights:** Revisar "search term insights" para identificar categorías de búsqueda que convierten bien. Descargar los datos (aunque es lento) y usarlos como base para construir campañas de Search estándar. Objetivo: 20%+ de ingresos desde Search ads.
- **Assets (anuncios):** Ir a "View details" dentro del asset group. Revisar etiquetas de rendimiento (Best, Good, Low). Reemplazar assets etiquetados como "Low" con nuevos assets (imágenes, titulares, descripciones). Agregar columnas de datos de conversión para ver rendimiento numérico.
- **Configuración de ubicación:** En campaña > Configuración > Opciones de ubicación: cambiar a "Presence" (no "Presence or interest") para evitar clics de países no deseados.
- **Optimizar rendimiento de assets:** En campaña > Configuración, sección "Optimize asset performance":
  - **Texto:** Desactivar "Allow Google to use text from your website, landing page, ads, and provided assets to create customized ad copy". Esto también desactiva "Final URL expansion".
  - **Video:** Si se usa video, activar "Allow Google to enhance your uploaded video by creating additional vertical and square versions".
  - **Final URL expansion:** Si está activada, usar "Excluded URLs" para evitar que Google envíe tráfico a páginas no deseadas (ej. blog posts).
- **Assets creados automáticamente:** Revisar la columna "Source" en el reporte de assets. Si aparece "Google" (especialmente videos de YouTube), evaluar su calidad y eliminarlos si son malos (ej. "hot garbage" tipo PowerPoint de los 2000).
- **Palabras clave negativas:** Ir a "Audience, keywords and content" > "Keywords" > pestaña "Negative keywords". Agregar palabras clave negativas como en campañas de Search. Ya no hay límite de 100.
- **Exclusión de marca:** En campaña > Configuración > "Brand exclusions". Agregar una lista de marcas (ej. "Home Reserve"). Si la marca no aparece, usar "Request a brand". Esto evita que la marca propia sesgue los datos de la campaña PMax.
- **Customer acquisition (puja por nuevos clientes):** Si se usa "Bid higher for new customers", establecer "Incremental conversion value for new customers" en **1** (no valores altos). Esto evita inflar artificialmente el valor de conversión reportado y desalinearlo con los datos del backend.

## Reglas para agentes
- Usa "Presence" en opciones de ubicación para evitar clics de países no objetivo.
- Desactiva "Optimize asset performance" > "Text" para evitar que Google cree copia automática no controlada.
- Revisa la columna "Source" en assets al menos una vez al mes; elimina cualquier asset creado por Google que sea de baja calidad.
- Cuando uses "Final URL expansion", siempre configura "Excluded URLs" para bloquear páginas de blog o contenido de medio/fondo de embudo.
- Si activas "Bid higher for new customers", pon el valor incremental en 1, nunca en cifras altas que distorsionen los datos.
- No segmentes campañas PMax a menos que sea por diferencias de presupuesto, puja, ubicación, estacionalidad, productos nuevos o "zombie products".
- Extrae datos de "search term insights" de PMax y úsalos para construir campañas de Search estándar cuando el gasto mensual supere $30,000-$50,000.

## Errores comunes que evita o menciona
- **No revisar assets automáticos:** Muchos usuarios no saben que Google puede crear titulares y videos automáticamente (con "Optimize asset performance" activado). Estos suelen ser de baja calidad y deben eliminarse.
- **Inflar valores de nuevos clientes:** Poner valores altos en "Incremental conversion value for new customers" distorsiona los datos de conversión reportados y no coincide con el backend. La gente olvida que lo activó.
- **Dejar "Presence or interest" activado:** Provoca clics de países no objetivo, especialmente en campañas nuevas de PMax.
- **No usar exclusión de marca:** La marca propia puede dominar los datos de PMax, haciendo que parezca que la campaña rinde bien cuando en realidad solo captura tráfico de marca.
- **No recortar productos de bajo rendimiento:** PMax tiende a concentrarse en los productos estrella y a "robar" presupuesto de ellos para dar volumen a los de bajo rendimiento, diluyendo el impresión share de los mejores.
- **No revisar assets con etiquetas "Low":** Construir un asset group y nunca volver a revisarlo. Hay que reemplazar periódicamente los assets de bajo rendimiento.
- **Confiar ciegamente en PMax sin campañas de Search:** Ignorar los insights de búsqueda de PMax para construir campañas de Search estándar, perdiendo oportunidades de ingresos adicionales (objetivo: 20%+ de ingresos desde Search).