# GA4 event parameters not showing up? Here are the fixes
**Fuente:** AnalyticsMania | https://youtu.be/-bPXKPNJnJI
## Qué enseña (2-3 líneas)
Este video explica las causas más comunes por las que los parámetros de eventos de GA4 no aparecen en Debug View ni en informes, y cómo solucionarlas. Cubre desde problemas de Data Layer vacío o mal sincronizado, hasta la necesidad de registrar dimensiones personalizadas, límites de caracteres, modificaciones de eventos y configuraciones en Server-Side Tagging.
## Lecciones accionables
- **Verificar que el parámetro en el Data Layer no esté vacío ni undefined:** Si el valor es un texto vacío o no está presente en el push, GA4 lo descarta automáticamente. Revisa el Data Layer push con la herramienta de preview de GTM.
- **Asegurar el orden correcto de los Data Layer pushes:** Si el tag de GA4 se dispara en un evento `test_event` pero el parámetro `test_parameter` se envía en un push posterior, el tag se ejecutará sin el valor. Solución: combinar ambos pushes en uno solo o cambiar el orden para que el parámetro esté disponible antes del disparo del tag.
- **Registrar el parámetro como dimensión personalizada en GA4 para usarlo en informes:** Sin este registro, el parámetro solo es visible en Debug View y en el informe de tiempo real (últimos 30 minutos). Pasos exactos: Admin → Data display → Custom definitions → Custom dimensions → "Create custom dimension". Nombre: `test parameter` (o el que uses). Scope: `Event`. Parámetro del evento: `test_parameter` (exactamente como aparece en el tag). Guardar.
- **Esperar 24-48 horas después de crear la dimensión personalizada y publicar cambios en GTM:** Los datos no aparecerán en informes hasta pasado ese tiempo, aunque sí se vean en Debug View o tiempo real.
- **Tener en cuenta el límite de 100 caracteres en el valor del parámetro:** GA4 trunca automáticamente los valores que superen esa longitud. Si necesitas valores completos, acórtalos antes de enviarlos.
- **Revisar la función "Modify events" en GA4:** Si existe una regla de modificación que iguale el nombre del evento y establezca el parámetro a vacío (sin nuevo valor), GA4 eliminará el parámetro. Ir a: Admin → Events → Custom configurations → Modifications.
- **Verificar exclusiones y transformaciones en Server-Side Tagging (SGTM):** Dentro del tag de GA4 en el contenedor SGTM, revisar la sección "Parameters to exclude". También revisar la sección "Transformations" por si alguna regla elimina o modifica el parámetro.
## Reglas para agentes
- **Usa siempre el nombre exacto del parámetro** (case-sensitive) al registrar la dimensión personalizada en GA4.
- **Nunca asumas que un parámetro vacío o undefined será enviado** a GA4; el sistema lo descarta automáticamente.
- **Verifica el orden de los Data Layer pushes** antes de asumir que el tag se dispara correctamente; si el parámetro llega después del disparo, no se capturará.
- **Espera al menos 24-48 horas** después de crear una dimensión personalizada para ver los datos en informes estándar de GA4.
- **Revisa siempre la sección "Parameters to exclude" y "Transformations"** en SGTM si los parámetros no llegan a GA4 desde un contenedor server-side.
- **No confíes únicamente en Debug View** para validar que un parámetro esté disponible en informes; la dimensión personalizada es obligatoria para uso en reportes fuera de tiempo real.
## Errores comunes que evita o menciona
- **Parámetro vacío o undefined en el Data Layer:** GA4 lo descarta sin mostrar error.
- **Timing incorrecto entre el Data Layer push y el disparo del tag:** El tag se dispara antes de que el parámetro esté disponible.
- **No registrar la dimensión personalizada:** El parámetro no aparece en informes (solo en Debug View y tiempo real).
- **Esperar ver datos inmediatamente tras crear la dimensión:** Se requiere 24-48 horas de latencia.
- **Valor del parámetro mayor a 100 caracteres:** GA4 lo trunca sin advertencia.
- **Uso de "Modify events" que vacía el parámetro:** La regla puede eliminar el parámetro sin que el usuario lo note.
- **Exclusión del parámetro en Server-Side Tagging:** La sección "Parameters to exclude" o transformaciones pueden bloquear el envío a GA4.