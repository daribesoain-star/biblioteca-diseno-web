# Transfer UTM parameters from one page to another with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/URDFuTJgrqM

## Qué enseña (2-3 líneas)
Este video enseña cómo transferir parámetros UTM desde una página de un dominio a los enlaces de otro dominio usando Google Tag Manager con código JavaScript personalizado. También diferencia cuándo usar esta solución (dominios cruzados) frente a la plantilla "Persist Campaign Data" (mismo dominio).

## Lecciones accionables
- Copia el código JavaScript personalizado del blog post vinculado en la descripción del video; pégalo en una etiqueta **Custom HTML** en GTM.
- En el código, configura la variable `domainsToDecorate`: lista los dominios de destino (ej. `gtmcourses.myshopify.com`) separados por comas y entre comillas.
- En el código, configura la variable `parametersToTransfer`: lista los parámetros UTM exactos que deseas transferir, ej. `['utm_medium', 'utm_source', 'utm_campaign', 'utm_content', 'utm_term']`.
- Crea un trigger de tipo **DOM Ready** para que el código se ejecute cuando el documento esté renderizado.
- En el trigger, usa **Matches RegEx** (con flag `ignore case` opcional) con el patrón: `utm_medium=|utm_source=|utm_campaign=|utm_term=|utm_content` para que la etiqueta solo se dispare cuando la URL contenga al menos un parámetro UTM.
- Nombra la etiqueta y el trigger, guarda y prueba con **Preview** ingresando una URL que contenga UTM (ej. `?utm_medium=test&utm_source=test`).
- Inspecciona el enlace con clic derecho → "Inspeccionar" para verificar que la URL ahora incluya los parámetros UTM decorados.
- Para persistir UTM en el **mismo dominio** (misma raíz, incluso subdominios), usa la plantilla **"Persist Campaign Data"** desde la Galería de Plantillas de GTM (Tags → Templates → Search Gallery).

## Reglas para agentes
- Usa el código JavaScript personalizado con `domainsToDecorate` y `parametersToTransfer` **solo cuando** el visitante navega de un dominio a otro dominio diferente.
- Usa la plantilla **"Persist Campaign Data"** cuando trabajes en el **mismo dominio** (incluyendo subdominios) para almacenar UTM en cookies y accederlos en páginas posteriores.
- Nunca uses la solución de decoración de enlaces para transferir UTM entre páginas del mismo sitio web; no mejora la atribución en Google Analytics y contamina las URLs.
- Configura el trigger como **DOM Ready** (no Page View) para asegurar que el DOM esté disponible antes de manipular los enlaces.
- Siempre prueba en modo **Preview** de GTM ingresando una URL con UTM y verificando que los enlaces se decoren dinámicamente.

## Errores comunes que evita o menciona
- **Error:** Usar la decoración de enlaces para persistir UTM en el mismo dominio. El autor lo desaconseja explícitamente: "no ayuda en nada a Google Analytics" porque GA maneja la atribución automáticamente.
- **Error:** No configurar correctamente `domainsToDecorate` — si no se listan los dominios de destino, el código no decorará los enlaces.
- **Error:** Olvidar incluir todos los parámetros UTM necesarios en `parametersToTransfer` (utm_content, utm_term, etc.) si se usan en la campaña.
- **Error:** Usar un trigger incorrecto (ej. Page View) que ejecute el código antes de que el DOM esté listo, impidiendo la modificación dinámica de los enlaces.