# How to access parent element's ID with .closest() in Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/cQ6Z1xobR7M

## Qué enseña (2-3 líneas)
A usar el método JavaScript `.closest()` dentro de una variable de JavaScript personalizada en Google Tag Manager para obtener el ID de un formulario (o cualquier atributo) que está en un elemento padre, cuando el elemento que se rastrea (ej. un mensaje de éxito) no contiene ese ID directamente.

## Lecciones accionables
- **Habilitar la variable "Click Element"** en GTM: Ve a *Variables → Variables incorporadas → Configurar* y activa *Click Element*.
- **Crear una variable de JavaScript personalizada** en *Variables definidas por el usuario → Nueva → Variable de JavaScript personalizada*.
- **Código VERBATIM para la variable** (reemplazar `div[data-form-id]` y `formID` con tu selector y clave reales):
  ```javascript
  function() {
    return {{Click Element}}.closest('div[data-form-id]').dataset.formID;
  }
  ```
  - `{{Click Element}}`: elemento rastreado por el trigger (ej. mensaje de éxito con clase `.success`).
  - `.closest('div[data-form-id]')`: sube en el DOM hasta encontrar el primer `div` que tenga el atributo `data-form-id` (cualquier valor).
  - `.dataset.formID`: accede al valor del atributo `data-form-id` (en camelCase: `formID`).
- **Usar un trigger de visibilidad de elementos** que detecte la aparición del elemento hijo (ej. `.success`). El trigger debe estar configurado para activarse cuando ese elemento sea visible.
- **Enviar el valor como parámetro de evento** en una etiqueta de Google Analytics 4: en la etiqueta, añade un parámetro de evento (ej. `form_id`) e inserta la variable personalizada creada.
- **Registrar el parámetro como dimensión personalizada** en GA4: *Administrar → Definiciones personalizadas → Dimensiones personalizadas → Crear dimensión personalizada*. Nombre: `form_id`, Ámbito: *Evento*, y escribe exactamente el mismo nombre usado en la etiqueta.
- **Verificar en modo Preview** de GTM: al activarse el trigger, en la pestaña *Variables* debe aparecer el valor de la variable personalizada (ej. `16`).
- **Compatibilidad del método `.closest()`**: soportado por Chrome, Edge, Firefox, Safari; NO soportado por Internet Explorer ni Opera Mini (pérdida de datos mínima).

## Reglas para agentes
- Usa `{{Click Element}}` como punto de partida para `.closest()` cuando el trigger sea de visibilidad de elementos.
- Asegúrate de que el selector CSS pasado a `.closest()` coincida exactamente con el elemento padre que contiene el atributo deseado (ej. `div[data-form-id]`).
- Nunca olvides habilitar la variable *Click Element* en las variables incorporadas antes de crear la variable personalizada.
- Cuando accedas a `dataset`, escribe la clave del atributo en camelCase (ej. `formID` para `data-form-id`).
- En GA4, el nombre del parámetro en la etiqueta debe coincidir exactamente con el nombre registrado en la dimensión personalizada (incluyendo mayúsculas/minúsculas).

## Errores comunes que evita o menciona
- **No confundir `querySelectorAll` con `closest`**: el video usa `querySelector` solo para pruebas en consola; en GTM se usa `.closest()` para navegar hacia arriba desde el elemento rastreado.
- **No olvidar que el atributo debe estar en un elemento padre del elemento rastreado**: si el ID está en un nivel inferior o en un hermano, `.closest()` no funcionará.
- **No usar `{{Click Element}}` directamente sin verificar que el trigger lo expone**: el trigger de visibilidad debe estar configurado para que el elemento rastreado quede disponible como `{{Click Element}}`.
- **No ignorar el bug del modo Preview**: a veces el tipo de variable se muestra incorrectamente, pero el valor real sí es correcto; verifica en la pestaña *Variables* del evento.
- **No olvidar publicar los cambios en GTM después de crear la dimensión personalizada en GA4** y esperar hasta 24 horas para que los datos aparezcan en los informes.