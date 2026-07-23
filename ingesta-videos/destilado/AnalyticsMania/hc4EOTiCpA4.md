# Google Tag Manager tutorial for beginners (2026) || GTM Course
**Fuente:** AnalyticsMania | https://youtu.be/hc4EOTiCpA4

## Qué enseña
Este tutorial enseña los fundamentos de Google Tag Manager (GTM) para implementar códigos de seguimiento sin depender completamente de desarrolladores. Cubre la instalación de Google Analytics 4 (GA4), la creación de tags, triggers y variables, y el envío de eventos personalizados como clics en enlaces del menú.

## Lecciones accionables
- **Crear cuenta y contenedor en GTM:** Ve a tagmanager.google.com, haz clic en "Crear cuenta", ingresa el nombre de la cuenta (ej. "analytics mania GTM"), selecciona el país, crea un contenedor con nombre (ej. "demo container") y tipo "Web". Acepta los términos de servicio.
- **Instalar el código del contenedor en el sitio web:** En GTM, haz clic en el ID del contenedor (ej. "GTM-XXXXXX"). Copia el primer código (el esencial) y pégalo en la sección `<head>` del sitio, idealmente justo antes del cierre `</head>`. El segundo código (opcional) va inmediatamente después de la etiqueta `<body>`. El código debe estar en todas las páginas.
- **Instalar GTM en WordPress:** Usa el plugin "Google Tag Manager for WordPress". Actívalo, ve a Settings > Google Tag Manager, pega el Container ID (que está en GTM junto al nombre del contenedor), marca "Codeless injection of the no script part" y guarda los cambios.
- **Verificar instalación con Preview Mode:** En GTM, haz clic en "Preview", ingresa la URL del sitio web y haz clic en "Connect". Si la instalación es correcta, verás al menos 5 eventos en el panel izquierdo (Consent Initialization, Initialization, etc.). Si no conecta, revisa ad blockers o la instalación.
- **Instalar la extensión Tag Assistant Companion:** Recomendado para mejorar el Preview Mode. Descárgala desde Chrome Web Store.
- **Crear un tag de Google Analytics 4 (GA4):** En GTM, ve a Tags > New > Tag Configuration > Google Analytics > Google Tag. Pega el Measurement ID (obtenido en GA4: Admin > Data Streams > selecciona el stream web > copia el Measurement ID). En Triggering, selecciona "Initialization - All Pages". Nombra el tag (ej. "GA4 config") y guarda.
- **Publicar cambios en GTM:** Después de probar con Preview, haz clic en "Submit", asigna un nombre descriptivo a la versión (ej. "Installed GA4") y haz clic en "Submit" nuevamente. Esto crea una nueva versión del contenedor que se vuelve "Live".
- **Revertir a una versión anterior:** Ve a la pestaña "Versions", busca la versión anterior, haz clic en los tres puntos > "Publish". Luego, en esa misma versión, haz clic en tres puntos > "Set as latest version" para restaurar el workspace.
- **Verificar datos en GA4 Debug View:** En GA4, ve a Admin > Debug View. Refresca la página del sitio mientras el Preview Mode está activo. Los eventos deben aparecer en Debug View (puede haber un retraso de minutos).
- **Agregar templates de la comunidad:** En GTM, ve a Templates > Tag Templates > "Search Gallery". Busca el template deseado (ej. "Facebook pixel"), haz clic en "Add to workspace". Luego, al crear un tag nuevo, aparecerá en "Tag Configuration" bajo "Custom Templates".
- **Usar Custom HTML para códigos sin template:** En Tags > New > Tag Configuration > Custom HTML. Inserta el código JavaScript envuelto en etiquetas `<script>`. Ejemplo para un banner promocional: `<script>// código del banner</script>`. En Triggering, selecciona "All Pages". Advertencia: solo usar como solución temporal, ya que GTM puede ser bloqueado por ad blockers.
- **Configurar triggers de clics (Just Links):** Ve a Triggers > New > Trigger Configuration > Just Links. Para afinar, selecciona "Some Link Clicks" y define condiciones (ej. "Click Classes equals menu link"). Nombra el trigger (ej. "link click menu item") y guarda.
- **Habilitar variables de clic integradas:** Ve a Variables > Built-In Variables > Configure. Activa todas las variables relacionadas con clics (Click Text, Click URL, Click Classes, Click ID, etc.).
- **Crear un evento GA4 para clics en enlaces:** Ve a Tags > New > Tag Configuration > Google Analytics > GA4 Event. Ingresa el Measurement ID. En "Event Name", escribe un nombre personalizado (ej. "menu_link_click"). En "Event Parameters", agrega parámetros: "link_text" con valor `{{Click Text}}` y "link_url" con valor `{{Click URL}}`. En Triggering, selecciona el trigger de clics creado (ej. "link click menu item"). Nombra el tag (ej. "G4 event - menu_link_click") y guarda.
- **Analizar eventos en GA4 Explore:** En GA4, ve a Explore > Blank. Agrega dimensiones: "Link URL" y "Link Text". Agrega métrica: "Event count". Arrastra las dimensiones a filas y la métrica a valores. Aplica un filtro: "Event name exactly matches menu_link_click". Cambia el período de tiempo si es necesario (ej. "Last 12 months").

## Reglas para agentes
- Usa "Initialization - All Pages" como trigger para el Google Tag (GA4 config), no "All Pages", para que el tag de configuración se dispare antes que otros tags de GA4.
- Siempre prueba los cambios con Preview Mode antes de publicar. Verifica que el tag aparezca como "fired" y que los datos lleguen a GA4 Debug View.
- Nombra cada versión del contenedor al publicar (ej. "Installed GA4 event tracking") para facilitar la identificación futura.
- Para eventos personalizados en GA4, usa nombres en minúsculas y guiones bajos en lugar de espacios (ej. "menu_link_click").
- Reutiliza los nombres de parámetros de Enhanced Measurement de GA4 (ej. "link_url", "link_text") cuando sea posible, ya que son reconocidos automáticamente.
- Nunca uses Custom HTML para añadir banners, widgets o chats como solución permanente; prefiere que el desarrollador lo agregue directamente al código fuente del sitio.
- Cuando configures triggers de clics, primero revisa en Preview Mode los valores de variables (Click Classes, Click Text, etc.) para definir condiciones precisas.
- Para eventos de comercio electrónico (purchase, add_to_cart, view_item), usa exactamente los nombres de eventos recomendados por Google para que las métricas de ingresos se calculen correctamente.

## Errores comunes que evita o menciona
- **No verificar datos en GA4 Debug View:** Aunque el tag aparezca como "fired" en Preview Mode, siempre hay que confirmar que el evento llegó a GA4 en Debug View.
- **Usar "All Pages" en lugar de "Initialization" para el Google Tag:** El trigger "Initialization" se dispara antes y es necesario para que el Google Tag cargue primero antes que otros tags de GA4.
- **No habilitar variables de clic integradas:** Sin activar las variables en Built-In Variables, no se pueden usar valores dinámicos como `{{Click Text}}` o `{{Click URL}}` en tags y triggers.
- **Confiar ciegamente en el trigger de formulario integrado:** El trigger "Form Submission" no es confiable; se recomienda usar "Element Visibility" o tracking basado en URL de página de agradecimiento.
- **No nombrar las versiones al publicar:** Publicar sin nombre descriptivo dificulta encontrar cambios específicos cuando hay muchas versiones.
- **Asumir que GTM reemplaza completamente a los desarrolladores:** Para banners, widgets o códigos que deben mostrarse a todos los visitantes, GTM no es ideal porque puede ser bloqueado por ad blockers.
- **Usar nombres de eventos incorrectos para comercio electrónico:** Si se usan nombres como "order_complete" en lugar de "purchase", las métricas de ingresos en GA4 no se poblarán correctamente.
- **Ignorar el retraso en GA4:** Los eventos pueden tardar de 24 a 48 horas en aparecer en los informes estándar de GA4, aunque aparezcan inmediatamente en Debug View.