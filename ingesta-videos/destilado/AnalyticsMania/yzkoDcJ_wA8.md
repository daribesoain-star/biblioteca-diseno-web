# Link click tracking with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/yzkoDcJ_wA8

## Qué enseña
Cómo configurar el seguimiento de clics en enlaces usando Google Tag Manager (GTM), enviar los datos a Google Analytics 4 (GA4) y construir un informe básico en GA4 para visualizar qué enlaces se clickean y con qué frecuencia.

## Lecciones accionables
- **Habilitar variables de clic en GTM:** Ir a "Variables" > "Configurar" y activar todas las variables relacionadas con clics (Click Element, Click Classes, Click ID, Click Target, Click Text, Click URL).
- **Crear un trigger de clic en enlaces:** En "Triggers" > "Nuevo" > "Configuración del trigger" > seleccionar "Solo enlaces". Nombrarlo "all link clicks". Guardar.
- **Refinar el trigger con condiciones:** Editar el trigger, cambiar de "Todos los enlaces" a "Algunos enlaces". Usar condición `Click Classes contiene menu link` (o el valor específico de clase/ID de tus enlaces). Renombrar el trigger.
- **Crear tag GA4 Event:** En "Tags" > "Nuevo" > "Configuración de la etiqueta" > "Google Analytics: evento GA4". Pegar el Measurement ID (obtenido en GA4 > Admin > Data Streams > stream web). Nombre del evento: `link_click`.
- **Añadir parámetros del evento:** Hacer clic en "Agregar parámetro". Usar:
  - `link_text` → valor: `{{Click Text}}`
  - `link_url` → valor: `{{Click URL}}`
  - `link_classes` → valor: `{{Click Classes}}`
  - `link_id` → valor: `{{Click ID}}`
- **Asignar trigger al tag:** En "Activación", seleccionar el trigger de clic en enlaces creado. Nombrar el tag (ej: "GA4 event - link_click"). Guardar.
- **Probar con Preview Mode:** En GTM, "Vista previa", ingresar URL del sitio, hacer clic en enlaces (usar Ctrl+clic para abrir en nueva pestaña). Verificar que el tag se dispare y que en "Variables" aparezcan Click Text, Click URL, etc.
- **Verificar datos en GA4 DebugView:** Ir a GA4 > Admin > "DebugView". Buscar el evento `link_click` y confirmar que los parámetros (link_text, link_url, link_classes) se envían correctamente.
- **Publicar cambios:** En GTM, "Enviar", nombrar la versión (ej: "link click tracking"), "Publicar".
- **Esperar procesamiento de datos:** GA4 requiere 24-48 horas para que los datos estén disponibles en reportes estándar.
- **Crear informe en GA4:** Ir a "Explorar" > "En blanco". En "Dimensiones", agregar `link_text` y `event name`. En "Métricas", agregar `event count`. Arrastrar `link_text` a filas y `event count` a valores. En "Filtros", agregar filtro: `event name` coincide exactamente con `link_click`. Ajustar período de tiempo (ej: últimos 12 meses) para ver datos históricos.

## Reglas para agentes
- Usa `{{Click Text}}` y `{{Click URL}}` como valores mínimos en los parámetros del evento GA4 para identificar cada clic.
- Usa la condición `Click Classes contiene [valor]` en el trigger cuando todos los enlaces a rastrear compartan la misma clase CSS.
- Nunca publiques cambios en GTM sin antes probar en Preview Mode y verificar que el tag se dispare correctamente.
- Nunca uses el trigger "Todos los enlaces" sin condiciones adicionales si solo quieres rastrear un subconjunto específico de enlaces.
- Espera al menos 24 horas (idealmente 48) antes de buscar datos de clics en reportes estándar de GA4.

## Errores comunes que evita o menciona
- **Bug en Preview Mode de GTM:** A veces muestra "unknown tag type" aunque el tag se ejecute correctamente; no afecta la ejecución real y se corrige solo al refrescar la vista previa.
- **No verificar en DebugView de GA4:** El hecho de que el tag se dispare en GTM no garantiza que los datos lleguen a GA4; siempre hay que confirmar en DebugView.
- **Usar clases/IDs inexistentes en los enlaces:** Si los enlaces no tienen clase ni ID, se necesita usar selectores CSS (tema avanzado fuera del alcance del tutorial).
- **No filtrar por nombre de evento en el informe:** Si no se filtra por `event name = link_click`, el reporte mostrará datos de todos los eventos, no solo de clics en enlaces.