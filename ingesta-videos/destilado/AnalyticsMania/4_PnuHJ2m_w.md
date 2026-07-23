# Prevent Duplicate Form Submissions with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/4_PnuHJ2m_w

## Qué enseña (2-3 líneas)
Este tutorial enseña cómo evitar que se registren envíos duplicados de formularios cuando un usuario refresca la página de agradecimiento o envía el mismo formulario múltiples veces. La solución utiliza **localStorage** para almacenar un identificador único del formulario y un **Custom JavaScript Variable** que verifica si ese identificador ya fue registrado, bloqueando así eventos duplicados en Google Tag Manager.

## Lecciones accionables
- **Crear un Custom HTML Tag para almacenar el ID del formulario en localStorage:**
    - Código proporcionado por el instructor (incluye etiquetas `<script>`). Reemplazar `"replace this with quotes"` por una variable que devuelva el identificador único del formulario (ej: `{{URL - Form ID}}` si es un parámetro query, o `{{Page Path}}` si cada thank you page tiene una ruta única).
    - No asignar trigger a este tag. Se dispara mediante **Tag Sequencing** después del tag que envía el evento de formulario (ej: Google Analytics 4 Event Tag).
    - Configurar en el tag GA4: Advanced Settings > Tag Sequencing > "Fire a tag after" > seleccionar el Custom HTML Tag.
    - Nombrar el tag, ej: `chtml store form ID in local storage`.
- **Crear un Custom JavaScript Variable para detectar duplicados:**
    - Tipo: **Custom JavaScript**.
    - Pegar el código proporcionado. Reemplazar el placeholder con la misma variable de identificador usada en el Custom HTML Tag (ej: `{{URL - Form ID}}`).
    - La variable retorna `true` si el identificador ya existe en localStorage (duplicado) o `false` si es la primera vez.
    - Nombrar la variable, ej: `is form submission duplicate`.
- **Modificar el trigger del evento de formulario:**
    - En el trigger existente (ej: Page View con condición `Page Path contains /thank-you/`), agregar una condición adicional: **Custom JavaScript Variable** `is form submission duplicate` **equals** `false`.
- **Probar la implementación:**
    - Usar **Preview** en GTM. Enviar el formulario una vez. En la thank you page, abrir Developer Tools > Application > Local Storage > buscar la clave `GTM submitted forms`. Debe aparecer el ID del formulario.
    - En el tag assistant, seleccionar el evento `DOM Ready` y verificar en la pestaña Variables que `is form submission duplicate` retorna `false`.
    - Refrescar la página de agradecimiento. En el nuevo `DOM Ready`, la variable debe retornar `true` y el tag GA4 no debe dispararse.
- **Publicar los cambios:** Una vez verificado, hacer clic en **Submit** en GTM.

## Reglas para agentes
- Usa **Tag Sequencing** para disparar el Custom HTML Tag de almacenamiento **después** del último tag que envía el evento de formulario (GA4, Meta Pixel, etc.). Si hay múltiples vendors, el tag de almacenamiento debe ir después del último.
- Nunca asignes un trigger directo al Custom HTML Tag que almacena en localStorage; debe dispararse solo mediante secuenciación.
- Usa un identificador único por formulario (parámetro query, page path, o variable de dataLayer) para la clave en localStorage. No uses valores genéricos como la URL completa si puede variar.
- Cuando modifiques el trigger del evento de formulario, agrega la condición `Custom JavaScript Variable equals false` **además** de la condición existente (ej: Page Path), no la reemplaces.
- Si trabajas con múltiples subdominios, reemplaza localStorage por **cookies** en el código, ya que localStorage no es accesible entre subdominios.

## Errores comunes que evita o menciona
- **Refrescar la página de agradecimiento:** Sin esta solución, cada refresco dispara un nuevo evento de formulario. La variable Custom JavaScript bloquea el tag si el ID ya está en localStorage.
- **Envíos múltiples del mismo formulario por el mismo usuario:** El almacenamiento en localStorage persiste en el navegador, evitando que se registren envíos repetidos del mismo formulario.
- **Usar un identificador incorrecto:** Si el identificador no es único por formulario (ej: usar solo la página de agradecimiento genérica), se bloquearán todos los formularios después del primero. Se debe usar un ID específico (form ID, form name, o page path único).
- **No usar Tag Sequencing:** Si el Custom HTML Tag se dispara antes de que el evento se envíe al vendor, el almacenamiento en localStorage ocurre antes de la verificación, lo que podría bloquear el primer envío legítimo.
- **Limitación de localStorage entre subdominios:** La solución con localStorage no funciona si los formularios están en subdominios diferentes (ej: form1.ejemplo.com y form2.ejemplo.com). En ese caso, se debe modificar el código para usar cookies.