# User ID tracking in Google Analytics 4 - With Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/2amBrQYFUCE

## Qué enseña
Configurar el envío del parámetro User ID desde Google Tag Manager a Google Analytics 4 para identificar usuarios que inician sesión en múltiples dispositivos. Explica cómo capturar el User ID desde la capa de datos, configurarlo en etiquetas GA4 (configuración y eventos) y verificar su correcto funcionamiento en los informes de GA4.

## Lecciones accionables
- Solicitar al desarrollador que realice un push a la data layer con el User ID en cada página cuando el usuario haya iniciado sesión, sin parámetro `event` y antes de `consent initialization` e `initialization` para que esté disponible desde el inicio.
- Crear una variable de capa de datos en GTM: ir a **Variables** → **Nueva** → **Configuración de variable** → **Variable de la capa de datos** → pegar el nombre exacto del parámetro (ej. `userID`) → guardar.
- En la **etiqueta de configuración de Google (Google Tag)**, agregar el parámetro `user_id` (exactamente así) en **Configuración** → **Parámetros de configuración** → asignar la variable de capa de datos creada.
- Para etiquetas de evento GA4, añadir el parámetro `user_id` de una de estas formas:
  - Manualmente en cada etiqueta: ir a **Parámetros de evento** → **Agregar parámetro de evento** → nombre `user_id` → asignar variable.
  - O mediante una **variable de configuración de eventos (Event Settings Variable)**: crearla, agregar `user_id` como parámetro, y referenciarla en todas las etiquetas de evento.
- Probar en **Vista previa de GTM**: verificar que la etiqueta de configuración envíe `user_id` en el evento `initialization` y que las etiquetas de evento (ej. `generate_lead`) también lo incluyan.
- En GA4, ir a **Administrar** → **Vista de depuración** para confirmar que el User ID aparece como parámetro de evento (aunque se muestre como "user property" en la interfaz, es un parámetro de evento especial).
- Publicar los cambios en GTM y esperar **24-48 horas** para que los datos aparezcan en informes.
- Verificar en **Explorar** → **Exploración en blanco**:
  - Agregar dimensión `signed in with user ID` y métrica `Total de usuarios` para ver valores "yes" y "not set".
  - Usar **Superposición de segmentos**: segmento "Todos los usuarios" + segmento "signed in with user ID = yes" → debe haber superposición (círculos dentro de otro).
  - En **Explorador de usuarios**: buscar filas con formato de User ID (no el formato `número.número` de client ID).
- Si no aparecen User IDs tras 72 horas, ir a **Administrar** → **Identidad de los informes** y asegurarse de que esté en **Observado** o **Combinado** (no "Basado en dispositivo").

## Reglas para agentes
- Usa el nombre exacto `user_id` (con guion bajo) como parámetro en GA4, no lo envíes como user property.
- Configura el User ID en la etiqueta de configuración de Google (Google Tag) para que se herede a todas las etiquetas de evento subsecuentes.
- Si usas variable de configuración de eventos, asegúrate de que todas las etiquetas de evento la referencien; si no, edita cada etiqueta manualmente.
- Nunca incluyas el parámetro `event` en el push de data layer del User ID; debe ser un push sin evento para que ocurra antes de `consent initialization` e `initialization`.
- Siempre verifica en la vista de depuración de GA4 que el User ID aparezca como parámetro de evento, no solo como user property.
- Espera al menos 24-48 horas después de publicar para revisar informes; si no ves datos, revisa la identidad de informes (debe ser Observado o Combinado).

## Errores comunes que evita o menciona
- **Confundir User ID con user property**: User ID es un parámetro de evento especial, no una propiedad de usuario, aunque en la interfaz de depuración de GA4 aparezca listado como "user property".
- **No heredar el User ID en etiquetas de evento**: Si solo se configura en la etiqueta de configuración, puede que no se herede correctamente; se recomienda añadirlo también en todas las etiquetas de evento o mediante una variable de configuración de eventos.
- **Usar identidad de informes "Basado en dispositivo"**: Esto impide que los User IDs aparezcan en el Explorador de usuarios y otros informes; debe ser Observado o Combinado.
- **No esperar el tiempo de procesamiento**: Los datos de User ID pueden tardar hasta 48 horas en reflejarse en los informes de GA4.
- **Enviar User ID con un evento en la data layer**: El push debe ocurrir sin el parámetro `event` para que esté disponible antes de la inicialización de las etiquetas.