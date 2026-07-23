# 10 Google Tag Manager mistakes you should avoid
**Fuente:** AnalyticsMania | https://youtu.be/jTXR4QRB1ug

## Qué enseña (2-3 líneas)
El video expone los errores más comunes al configurar Google Tag Manager (GTM), desde problemas de orden en el data layer hasta malas prácticas de mantenimiento y rendimiento. Enfatiza la importancia de pruebas exhaustivas, naming conventions claras y la colaboración con desarrolladores para evitar duplicación de datos y degradación del sitio.

## Lecciones accionables
- **Orden del data layer:** Si un dato (ej. `pageCategory`) se pushea después del evento `gtm.init`, el tag de GA4 debe dispararse después de que ese dato esté disponible. Usa el panel izquierdo del preview mode para verificar el orden de eventos. Opciones: (1) disparar el tag más tarde, (2) pedir al desarrollador que pushee el dato antes de que cargue el contenedor GTM, sin incluir la clave `event` en ese push.
- **Pruebas mínimas obligatorias:** Usa GTM Preview Mode para verificar que el tag disparó con los datos correctos. Luego revisa el **Network tab** de las DevTools del navegador para confirmar que la request se envió y no fue bloqueada. Finalmente, verifica el destino final: en GA4 usa **Debug View**; en otras plataformas, sus reportes en tiempo real. Espera horas o días para confirmar en reportes no en tiempo real.
- **Form tracking:** Nunca uses un **Click Trigger** en el botón de envío para medir formularios. Usa en su lugar: **Element Visibility trigger**, **Page View trigger** en una thank-you page, **Form Submission trigger** (si está disponible), o un **Ajax Listener**.
- **Naming convention para tags:** Usa el formato `[Vendor]_[Type]_[Descripción]`. Ejemplo: `GA4_Event_Purchase`. Para variables: `[VariableType]_[Descripción]`. Ejemplo: `DLV_PageCategory`. Nombra siempre las versiones publicadas con una breve descripción del cambio.
- **Auditorías periódicas:** Revisa el contenedor al menos **una vez al año**. Elimina tags, triggers y variables de herramientas que la empresa ya no usa (ej. píxeles de redes donde ya no se anuncia). Designa un responsable único del contenedor para evitar que múltiples agencias generen caos.
- **Colaboración con desarrolladores:** Involucra al departamento de IT para que pusheen datos personalizados al data layer y revisen cualquier código custom (JavaScript) que quieras agregar al contenedor. No copies e implementes código de blogs sin validación previa.
- **Parámetros vs. User Properties en GA4:** Si un parámetro se usará como **dimensión personalizada de ámbito de usuario**, envíalo como **user property** (no como event parameter). Si es de ámbito de evento, envíalo como **event parameter**. Consulta la documentación oficial de Google.
- **Rendimiento de página:** Cada píxel de tracking añade carga. Usa herramientas como **webpagetest.org** para medir velocidad antes y después de publicar cambios. Dispara tags pesados (ej. Hotjar, Microsoft Clarity) solo cuando la página esté completamente cargada (`Window Loaded`).
- **Migración de códigos hardcodeados:** Al migrar de snippets hardcodeados a GTM, asegúrate de que un desarrollador **elimine los snippets originales del código fuente** del sitio para evitar duplicación de datos (ej. dos pageviews por página).
- **Método de push al data layer:** Siempre usa `dataLayer.push({...})`. Nunca uses `dataLayer = [{...}]` (declaración) después de que el snippet de GTM haya cargado, porque rompe la implementación. La declaración solo es segura si se ejecuta **antes** del snippet de GTM.

## Reglas para agentes
- Usa `dataLayer.push()` siempre, nunca `dataLayer = [...]` después del snippet de GTM.
- Nunca uses Click Triggers para medir envíos de formularios; usa Element Visibility, Page View en thank-you page, Form Submission trigger o Ajax Listener.
- Cuando un dato se pushea después de `gtm.init`, dispara el tag después de ese push; no antes.
- Verifica cada tag en al menos tres lugares: GTM Preview Mode, Network tab de DevTools, y reportes en tiempo real de la plataforma destino.
- Nombra cada tag con el formato `[Vendor]_[Type]_[Descripción]` y cada variable con `[VariableType]_[Descripción]`.
- Publica siempre versiones con un nombre y descripción del cambio.
- Audita el contenedor al menos una vez al año; elimina todo código de herramientas que ya no se usen.
- Si un parámetro será dimensión de usuario en GA4, envíalo como user property; si es de evento, como event parameter.
- Mide la velocidad de página con webpagetest.org antes y después de publicar cambios en el contenedor.
- Al migrar de códigos hardcodeados a GTM, haz que un desarrollador elimine los snippets originales del código fuente.

## Errores comunes que evita o menciona
- Disparar un tag antes de que los datos necesarios estén disponibles en el data layer.
- No probar los tags más allá del Preview Mode (omitir Network tab, Debug View y reportes finales).
- Usar Click Triggers para rastrear envíos de formularios (cuenta clics incluso si el formulario no se envía).
- No usar naming conventions en tags, triggers y variables, lo que dificulta el mantenimiento.
- No auditar el contenedor periódicamente, acumulando códigos de herramientas obsoletas que degradan el rendimiento.
- Evitar a los desarrolladores a toda costa, implementando código sin revisión que puede romper la interfaz del sitio.
- Confundir event parameters con user properties en GA4.
- Ignorar el impacto en rendimiento de página al agregar múltiples píxeles de tracking.
- Olvidar eliminar snippets hardcodeados al migrar a GTM, causando duplicación de datos.
- Usar declaración de data layer (`dataLayer = [...]`) después del snippet de GTM en lugar de `dataLayer.push()`.