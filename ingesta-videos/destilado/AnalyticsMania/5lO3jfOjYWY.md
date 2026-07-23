# Google Analytics not tracking page views? Here are the fixes
**Fuente:** AnalyticsMania | https://youtu.be/5lO3jfOjYWY

## Qué enseña (2-3 líneas)
Este video explica por qué Google Analytics 4 puede no estar rastreando páginas vistas y ofrece soluciones prácticas. Cubre desde configuraciones incorrectas en Google Tag (parámetro `send_page_view`), problemas con aplicaciones de una sola página (SPA), filtros mal configurados, modo de consentimiento, políticas de seguridad de contenido (CSP) y errores humanos con IDs de medición.

## Lecciones accionables
- **Parámetro `send_page_view` en Google Tag:** Revisa en tu contenedor de Google Tag si el parámetro `send_page_view` está configurado como `false`. Si es así, tienes dos opciones: (1) crear una etiqueta de evento con el evento `page_view` que se dispare en "All Pages", o (2) eliminar ese parámetro `send_page_view false`.
- **Aplicaciones de una sola página (SPA):** Ve a Google Analytics > Admin > Data Streams > selecciona tu stream > en "Enhanced measurement" haz clic en el ícono de engranaje > "Page views" > "Show advanced settings" > habilita "Page changes based on browser history events" y guarda. Si no funciona, implementa una solución personalizada (el autor tiene un tutorial separado para SPA).
- **Verificar instalación de Google Tag Manager:** Usa el modo de vista previa de GTM. Ingresa la URL sospechosa. Si no ves "Connected" y ves "Google Tag Manager was not found", investiga por qué GTM no carga en esa página.
- **Filtros de datos mal configurados:** Ve a Admin > Data Filters. Verifica que no tengas un filtro configurado como "Include only" en lugar de "Exclude" (esto excluiría todo el tráfico externo y solo mostraría tráfico interno).
- **Modo de consentimiento (Consent Mode):** En el modo de vista previa, revisa el comando `consent default` y `consent update`. Si el visitante da consentimiento pero en `consent update` los grupos de consentimiento siguen en "denied", hay un problema. Deben estar "granted" cuando se da consentimiento y "denied" cuando no.
- **Content Security Policy (CSP):** Abre Chrome > tres puntos > More tools > Developer Tools > consola. Busca errores que mencionen "content security policy" o "CSP". Si aparecen, el desarrollador debe actualizar la CSP para permitir Google Tag Manager y Google Analytics.
- **Verificar Measurement ID:** Ve a Google Analytics > Admin > Data Streams > selecciona tu stream > copia el "Measurement ID". Luego en GTM, revisa que todas las etiquetas de Google Analytics usen ese mismo ID. Si hay diferencia, actualiza el ID en las etiquetas.

## Reglas para agentes
- Usa el modo de vista previa de GTM para verificar si una etiqueta de página vista se dispara correctamente en cada navegación.
- Nunca configures un filtro de datos como "Include only" a menos que estés seguro de que solo quieres ver tráfico interno.
- Cuando implementes Consent Mode, verifica siempre que el comando `consent update` refleje correctamente el estado de consentimiento del usuario (granted/denied).
- Si encuentras errores de CSP en la consola del navegador, no intentes modificar la política tú mismo; coordina con el equipo de desarrollo.
- Siempre compara el Measurement ID en GTM con el que aparece en Google Analytics > Data Streams antes de asumir que el problema es de configuración.

## Errores comunes que evita o menciona
- Tener `send_page_view = false` sin una etiqueta de evento `page_view` que lo reemplace, lo que causa que no se rastree ninguna página vista.
- En SPAs, asumir que la navegación dinámica se rastrea automáticamente; solo la primera carga de página se rastrea por defecto.
- Configurar un filtro de datos como "Include only" por error, lo que excluye todo el tráfico de visitantes externos.
- En Consent Mode, no actualizar correctamente los grupos de consentimiento a "granted" cuando el usuario da su consentimiento, lo que impide el modelado de datos.
- Ignorar errores de Content Security Policy (CSP) que bloquean la carga de Google Tag Manager.
- Usar un Measurement ID incorrecto en las etiquetas de GTM, enviando datos a la propiedad de Analytics equivocada.