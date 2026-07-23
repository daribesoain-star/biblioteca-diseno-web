# DOM scraping with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/QL-C9GNAIFw

## Qué enseña (2-3 líneas)
Explica qué es el DOM scraping, cuándo usarlo (cuando no hay data layer disponible) y cómo implementarlo en Google Tag Manager mediante variables de tipo "DOM Element" y "Custom JavaScript". Muestra dos ejemplos prácticos: extraer un order ID desde un elemento con ID y obtener el ID de un paquete de viaje desde un elemento padre al hacer clic en un botón.

## Lecciones accionables
- **Variable DOM Element (selección por ID):**
  - Crear variable → Configuración → "DOM Element".
  - Selection Method: "Element ID".
  - Pegar el valor del atributo `id` del elemento (ej: `transaction-id`).
  - Dejar "Attribute Name" vacío para obtener el texto interno del elemento.
  - Nombrar la variable (ej: `DLV - Order ID`).
  - **Regla de activación:** El tag que use esta variable debe dispararse en `DOM Ready` o después. Nunca en `Page View` o `Initialization` porque el DOM podría no estar listo y devolver `null` o `undefined`.

- **Variable Custom JavaScript para escalar el DOM:**
  - Crear variable → Configuración → "Custom JavaScript".
  - Código debe ser una función anónima con `return`.
  - Habilitar variable incorporada "Click Element" en Variables → Configurar.
  - Crear trigger "All Elements" para capturar clics (si no existe ya uno).
  - Código ejemplo para obtener el ID del elemento padre con clase `.travel-package`:
    ```javascript
    function() {
      var clickedElement = {{Click Element}};
      return clickedElement.closest('.travel-package').id;
    }
    ```
  - Nombrar la variable (ej: `DLV - Travel Package ID`).

- **Configuración de tag GA4 con DOM scraping:**
  - Tag: Google Analytics → GA4 Event.
  - Event Name: `purchase`.
  - Parámetros: `transaction_id` = variable DOM Element, `value` = otra variable DOM Element, `currency` = fijo (ej: "USD").
  - Trigger: Evento `DOM Ready` + condición (ej: `Page Path` contiene `/order-confirmation`).

- **Keywords exactas:** `DOM Element`, `Custom JavaScript`, `Click Element`, `closest()`, `CSS selector`, `DOM Ready`, `Initialization`, `data layer`.

## Reglas para agentes
- Usa variable "DOM Element" solo cuando el elemento tenga un `id` único y estable; si no, usa "Custom JavaScript" con `closest()` o `querySelector()`.
- Siempre dispara tags que scrapeen el DOM en el evento `DOM Ready` o posterior; nunca en `Page View` o `Initialization`.
- Habilita la variable incorporada "Click Element" antes de crear cualquier variable Custom JavaScript que dependa de clics.
- En Custom JavaScript, la función debe ser anónima (`function() { ... }`) y debe contener `return`.
- Cuando uses `closest()`, el argumento debe ser un selector CSS válido (ej: `.clase` para clase, `#id` para ID).

## Errores comunes que evita o menciona
- **DOM no listo:** Si el tag se dispara en `Initialization`, el DOM podría no estar cargado y la variable devuelve `null` o `undefined`. Siempre usar `DOM Ready` o posterior.
- **Bug en GTM Preview Mode:** A veces muestra "unknown variable type" aunque la variable funcione correctamente; ignorar y refrescar.
- **Elementos sin ID:** Si el elemento no tiene `id`, no se puede usar "DOM Element" con selección por ID; se debe recurrir a CSS selectors o Custom JavaScript.
- **Dependencia de clases/IDs inestables:** El DOM scraping es frágil; si el desarrollador cambia clases o IDs, el código se rompe. Priorizar siempre el data layer.
- **Uso incorrecto de `closest()`:** No olvidar el punto (`.`) para clases en el selector CSS.