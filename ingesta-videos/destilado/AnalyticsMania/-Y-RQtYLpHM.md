# Google Analytics 4 tutorial for beginners (2026 update) || GA4 tutorial for beginners || GA4 course
**Fuente:** AnalyticsMania | https://youtu.be/-Y-RQtYLpHM

## Qué enseña
Este tutorial enseña desde cero cómo crear una cuenta, propiedad y flujo de datos en Google Analytics 4, instalar el código de seguimiento (con o sin Google Tag Manager), navegar los informes principales (adquisición, engagement, monetización, exploraciones) y configurar eventos personalizados. También cubre cinco configuraciones obligatorias que todo propietario de GA4 debe ajustar desde el primer día.

## Lecciones accionables
- Crear cuenta en analytics.google.com → Admin → Crear cuenta (nombre de organización). Luego crear propiedad (nombre, zona horaria, moneda, industria, tamaño de negocio, objetivos de negocio). Luego crear flujo de datos web (dominio, nombre del stream, habilitar enhanced measurement — deshabilitar "form interactions" por poca fiabilidad).
- Para instalar GA4: opción 1) copiar el Google tag (código HTML) y pedir al desarrollador que lo inserte en el `<head>` de todas las páginas. Opción 2) copiar el Measurement ID (formato G-XXXXXXXX) y pegarlo en el CMS en el campo dedicado. Opción 3) usar Google Tag Manager: crear cuenta en tagmanager.google.com, crear contenedor (nombre, web), instalar el código GTM en todas las páginas, luego crear etiqueta → Google Analytics → Google tag → pegar Measurement ID → guardar. Probar con Preview Mode, verificar en GA4 → Admin → Debug View. Publicar en GTM (Submit → nombre de versión → Publish).
- Navegar informes: Reports → Real-time overview (verifica datos en vivo). Acquisition → User acquisition (primer tráfico del usuario) vs Traffic acquisition (tráfico de cada sesión). Engagement → Pages and screens (vistas totales) y Landing page (primera página de cada sesión). Monetization → E-commerce purchases (productos, ingresos). User attributes → Demographic details (país, ciudad; con Google Signals: edad, género, intereses). Tech → Tech details (navegador, SO).
- En Traffic acquisition: cambiar dimensión a "Session source medium" para ver fuentes detalladas. Filtrar por "Session medium exactly matches email" para ver campañas de email. Agregar columna "Session campaign name" con el botón "+". Ordenar por Total revenue. Usar "Plot rows" para gráfico de una sola fuente.
- Explorations: Free form → agregar dimensiones (Device category, Country) y métrica (Purchase revenue). Arrastrar a Rows y Columns. Cambiar visualización a heat map. Para site search: agregar dimensiones "Event name" y "Search term", métrica "Event count". Filtrar por "Event name exactly matches view_search_results".
- Funnel exploration: crear pasos (ej. view_item → add_to_cart → begin_checkout → purchase). Agregar breakdown dimension (Device category) para ver tasas de finalización por dispositivo.
- Path exploration: cambiar de "Event name" a "Page path". Iniciar desde "begin_checkout" para ver navegación posterior. Usar "Start over" y seleccionar "Ending point" (ej. purchase) para ver camino hacia atrás.
- Eventos personalizados con GTM: crear trigger → Trigger configuration → Just Links → "All Link Clicks". En Preview, identificar click classes (ej. "navigation-link"). Refinar trigger: "Some Link Clicks" → "Click Classes contains navigation-link". Crear etiqueta → Google Analytics → GA4 Event → pegar Measurement ID → nombre del evento en minúsculas con guion bajo (ej. "menu_link_click"). Agregar parámetros: "menu_item_name" = variable {{Click Text}}, "menu_item_url" = variable {{Click URL}}. Asociar trigger. Probar en Debug View. Registrar parámetros como Custom Dimensions en Admin → Custom definitions → Create custom dimension (scope: Event).
- Cinco configuraciones obligatorias: 1) Admin → Data retention → cambiar de 2 meses a 14 meses. 2) Data streams → Configure tag settings → Configure your domains → agregar todos los dominios rastreados. 3) Define internal traffic → crear regla (IP address equals [IP de oficina]) → Data filters → activar filtro. 4) Ajustar session timeout: Data streams → Configure tag settings → Show more → Session timeout: 4-7 horas 55 min; Engaged session: 30 segundos o más. 5) Admin → Data collection → Google signals data collection → activar (previa consulta legal).

## Reglas para agentes
- Usa "Admin" en la esquina inferior izquierda para acceder a configuraciones de cuenta y propiedad.
- Nunca uses espacios en nombres de eventos personalizados; usa guiones bajos y minúsculas.
- Cambia la retención de datos a 14 meses inmediatamente después de crear la propiedad.
- Cuando rastrees múltiples dominios en una misma propiedad, usa un solo flujo de datos web y configura los dominios en "Configure your domains".
- Para excluir tráfico interno, primero crea la regla en "Define internal traffic" y luego activa el filtro en "Data filters".
- Siempre prueba eventos personalizados en Debug View antes de publicar en GTM.
- Para compartir exploraciones con otros usuarios, usa el ícono de compartir en la exploración (los demás solo pueden ver, no editar).
- Usa Analytics Advisor con precaución: verifica sus respuestas, especialmente sobre causas de "not set" en landing pages (puede alucinar).

## Errores comunes que evita o menciona
- No crear flujos de datos separados para cada sitio web si pertenecen al mismo recorrido del usuario; usa un solo flujo para múltiples sitios.
- No confiar ciegamente en Analytics Advisor (Gemini): puede dar información incorrecta (ej. atribuir "not set landing page" a eventos previos al pageview, lo cual es un mito).
- No esperar datos precisos en menos de 24-48 horas; los informes de adquisición son inexactos hasta entonces.
- No olvidar registrar parámetros personalizados como Custom Dimensions en Admin → Custom definitions; de lo contrario no aparecen en informes.
- No habilitar Google Signals sin consultar al departamento legal, ya que activa funciones publicitarias de Google.
- No usar el informe "Pages and screens" con la métrica de revenue para análisis de páginas, ya que el revenue se atribuye a la página donde ocurrió la conversión (ej. checkout), no a la página de contenido.
- No asumir que los eventos de e-commerce (view_item, add_to_cart, purchase) se rastrean automáticamente; requieren configuración adicional con desarrollador o GTM.