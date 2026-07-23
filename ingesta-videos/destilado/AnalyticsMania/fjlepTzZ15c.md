# Advanced Click Tracking with Google Tag Manager (2 examples)
**Fuente:** AnalyticsMania | https://youtu.be/fjlepTzZ15c

## Qué enseña
Dos técnicas avanzadas de click tracking en Google Tag Manager: uso de selectores CSS para rastrear enlaces sin clases/IDs, y DOM traversal con Custom JavaScript para extraer datos de elementos hermanos cuando no hay relación directa padre-hijo. Ambas soluciones se integran con Google Analytics 4.

## Lecciones accionables
- **Escenario 1 – Selectores CSS para enlaces sin identificadores:**
  - Habilitar variables de clic en GTM: ir a *Variables* → *Configurar* → activar *Click Element*, *Click Classes*, *Click ID*, *Click URL*, *Click Text*.
  - Crear trigger de clic en enlace con condición avanzada: tipo *Click – Solo algunos clics en enlaces* → en *Condiciones de activación* seleccionar `Click Element` → *coincide con el selector CSS*.
  - Selector CSS para enlaces hijos directos de un elemento con clase `footer`: `a > .footer` (el `>` indica hijo directo).
  - Crear tag GA4 Event: *Etiqueta nueva* → *Configuración de etiqueta* → *Google Analytics: evento GA4* → pegar *Measurement ID* (desde GA4 Admin → *Flujos de datos* → flujo web → copiar ID).
  - Parámetros recomendados por Google: `link_url` (variable `{{Click URL}}`) y `link_text` (variable `{{Click Text}}`).
  - Probar con *Vista previa*: abrir web, hacer clic, verificar en *Resumen de etiquetas* que solo dispare en los enlaces objetivo.

- **Escenario 2 – DOM traversal con Custom JavaScript para botones sin enlace:**
  - Crear trigger *Todos los elementos* para capturar clics en botones.
  - Inspeccionar HTML: botón con clase `travel-package-button`; su ancestro con clase `travel-package`; hermano con clase `travel-package-name` que contiene el texto deseado.
  - Crear variable *JavaScript personalizado* con este código exacto:
    ```javascript
    function() {
      var clickButton = {{Click Element}};
      var packageElement = clickButton.closest('.travel-package');
      var nameElement = packageElement.querySelector('.travel-package-name');
      return nameElement ? nameElement.innerText : '';
    }
    ```
  - Refinar trigger: cambiar a *Solo algunos clics* → condición `{{Click Classes}}` *contiene* `travel-package-button`.
  - Crear tag GA4 Event con parámetro personalizado `travel_package_name` usando la variable Custom JavaScript.
  - Registrar el parámetro como *Dimensión personalizada* en GA4 para usarlo en informes.

## Reglas para agentes
- Usa `{{Click Element}}` como punto de partida en Custom JavaScript cuando necesites recorrer el DOM desde el elemento clickeado.
- Usa el método `.closest(selector)` para subir en el DOM hasta un ancestro con clase específica, no `.parentElement` repetido.
- Usa `.querySelector(selector)` para bajar desde un ancestro hasta un elemento hijo, no `.children` o `.childNodes` que son menos flexibles.
- Usa `innerText` para obtener texto visible de un elemento, no `textContent` (que incluye texto oculto).
- Nunca uses `{{Click URL}}` como único identificador si la misma URL aparece en múltiples contextos; prefiere selectores CSS basados en estructura DOM.
- Nunca uses triggers de *Todos los clics* sin refinar con condiciones de clase o selector CSS para evitar eventos innecesarios.
- Siempre verifica en *Vista previa* que la etiqueta dispare solo en los elementos correctos y que los parámetros tengan valores esperados.

## Errores comunes que evita o menciona
- **Error:** Confiar en `Click ID` o `Click Classes` cuando el HTML no los tiene.  
  **Solución:** Usar selectores CSS basados en la estructura padre-hijo (`.footer > a`).
- **Error:** Intentar usar selectores CSS cuando el elemento deseado no es hijo directo sino hermano.  
  **Solución:** Combinar `.closest()` para subir al ancestro común y `.querySelector()` para bajar al hermano.
- **Error:** Bug en *Vista previa* de GTM que muestra "unknown tag type" aunque la etiqueta haya disparado correctamente.  
  **Solución:** Ignorar el bug; verificar en GA4 DebugView que los eventos lleguen con los parámetros correctos.
- **Error:** No registrar parámetros personalizados como dimensiones en GA4, haciendo que no aparezcan en informes.  
  **Solución:** Ir a GA4 Admin → *Definiciones personalizadas* → *Crear dimensión personalizada* con el nombre del parámetro (ej. `travel_package_name`).