# 🔥 How to Create Custom Labels Using Google Merchant Center
**Fuente:** SolutionsUno | https://youtu.be/EZm1aLJpa5Q

## Qué enseña (2-3 líneas)
Este video explica dos métodos para crear etiquetas personalizadas (custom labels) en Google Merchant Center: mediante reglas de feed (feed rules) y mediante feeds suplementarios (supplemental feeds). Muestra cómo usar estas etiquetas para segmentar productos en campañas Performance Max o Shopping, permitiendo una mejor organización y rendimiento.

## Lecciones accionables
- **Método 1: Feed Rules (reglas de feed)**
  - Ir a Google Merchant Center > Productos > Feeds > Content API > Feed rules.
  - Hacer clic en "+" para crear una nueva regla.
  - Seleccionar el atributo a modificar: `custom label 0`, `custom label 1`, `custom label 2`, `custom label 3` o `custom label 4`.
  - En la ventana emergente, hacer clic en "Conditions" y elegir el campo base (ej: `title`).
  - Seleccionar el operador: `title contains` (es sensible a mayúsculas/minúsculas).
  - Ingresar el término exacto (ej: `tunic`, `dress`) y hacer clic en "Add value".
  - En "Set to", asignar el valor de la etiqueta (ej: `tunic`).
  - Repetir para cada categoría deseada (cada condición requiere una nueva regla).
  - Guardar como borrador ("Save as draft") y luego hacer clic en "Apply".
  - Esperar ~30 segundos a 1 minuto para que se refleje en "All products".
  - En "All products", modificar columnas para incluir el custom label recién creado.
  - Buscar por título (ej: `tunic`) para verificar que la etiqueta se asignó correctamente.
  - En Google Ads, esperar ~30 minutos para que los datos se sincronicen desde Merchant Center.

- **Método 2: Supplemental Feed (feed suplementario)**
  - Ir a Google Merchant Center > Supplemental feeds > "Add supplemental feed".
  - Nombrar el feed (ej: `Top Performing Products`).
  - Seleccionar fuente: `Google Sheets`.
  - Elegir "Create a new spreadsheet" o usar una existente.
  - Hacer clic en "Continue" y luego "Create feed".
  - Autorizar el acceso y abrir la hoja de cálculo generada.
  - Pegar los IDs de producto en la columna `id`.
  - Agregar una nueva columna llamada `custom label 0` (o el número deseado).
  - Asignar el valor de la etiqueta (ej: `top sellers`) a todos los productos relevantes.
  - Volver a Merchant Center y hacer clic en "Fetch" para procesar el feed.
  - Esperar a que se procese (puede tomar varios minutos).
  - Verificar en "All products" que la columna `custom label 0` muestre el valor asignado.
  - En Google Ads, ir a la campaña > Product groups > "Subdivision" y cambiar de `product IDs` a `custom label`.
  - Esperar la sincronización desde Merchant Center a Google Ads.

- **Consideraciones técnicas clave:**
  - Las condiciones en feed rules son **sensibles a mayúsculas/minúsculas** (case sensitive).
  - Google ofrece 5 etiquetas personalizadas: `custom label 0` a `custom label 4`.
  - Se pueden usar condiciones basadas en: `title`, `color`, `size`, `price`, entre otros atributos disponibles en el menú desplegable.
  - Para feeds configurados vía Content API, al refrescar el feed suplementario se actualizan automáticamente los productos en el feed principal.
  - La sincronización de datos desde Merchant Center a Google Ads puede tomar hasta 30 minutos.

## Reglas para agentes
- Usa `title contains` con el texto exacto (incluyendo mayúsculas/minúsculas) que aparece en el título del producto.
- Nunca uses condiciones vagas como "title equals" si el título contiene más texto; prefiere "title contains".
- Siempre verifica en "All products" que la columna del custom label se haya poblado antes de usarlo en campañas.
- Cuando uses feed suplementario, asegúrate de que la columna se llame exactamente `custom label 0`, `custom label 1`, etc., sin espacios ni errores tipográficos.
- Aplica los cambios en feed rules con "Apply" (no solo "Save as draft") para que surtan efecto.
- Espera al menos 30 minutos después de aplicar cambios en Merchant Center antes de buscar los custom labels en Google Ads.
- Si el feed principal está configurado vía Content API, refresca el feed suplementario para actualizar los productos en el feed principal.

## Errores comunes que evita o menciona
- **No verificar la sensibilidad a mayúsculas/minúsculas:** Si el título dice "Tunic" pero usas "tunic" en la condición, no coincidirá.
- **Olvidar hacer clic en "Apply" después de guardar como borrador:** Los cambios no se aplican hasta que se confirma la acción.
- **No agregar la columna del custom label en "All products":** Sin modificar las columnas visibles, no se puede verificar si la etiqueta se asignó.
- **Esperar que los cambios sean instantáneos en Google Ads:** La sincronización desde Merchant Center puede tomar hasta 30 minutos.
- **Usar condiciones incorrectas:** Por ejemplo, usar "title equals" cuando el título contiene más palabras que solo el término buscado.
- **No refrescar el feed suplementario después de editarlo:** Los cambios no se reflejan hasta que se procesa el feed nuevamente.