# How to Manage Automatic Deduplication of Keywords in PPC
**Fuente:** Optmyzr | https://youtu.be/TzyL-ftZEzg

## Qué enseña (2-3 líneas)
Explica el cambio de Google en la deduplicación automática de palabras clave: ahora considera duplicadas palabras clave con el mismo texto aunque tengan diferentes tipos de concordancia (exacta, frase, amplia). Muestra cómo desactivar esta optimización automática en Google Ads y cómo usar Optmyzr para deduplicar manualmente y monitorear términos de búsqueda.

## Lecciones accionables
- **Desactivar la deduplicación automática en Google Ads:**
  1. Ve a la sección **Recomendaciones** > **Historial**.
  2. Si ves un evento de "deduplicación automática aceptada", cambia el estado verde a **"Desactivado"** haciendo clic en el botón correspondiente.
  3. Alternativa: ve a **Administrar** > **Mantenimiento de recomendaciones de anuncios** > busca **"Eliminar palabras clave redundantes"** y desmarca la casilla.
- **Usar Optmyzr para deduplicar manualmente:**
  1. En Optmyzr, ve a **Optimizaciones** > **Palabras clave** > **Keyword Deduper**.
  2. Selecciona: **"Revisar entre campañas"** o **"Revisar dentro de la misma campaña"** para buscar duplicados.
  3. El tool muestra una recomendación automática de qué keywords eliminar basada en datos de rendimiento. Puedes cambiar las selecciones manualmente si prefieres conservar otras.
- **Configurar el Rule Engine de Optmyzr para monitorear términos de búsqueda:**
  1. Ve a **Rule Engine** > **Crear tu propia estrategia**.
  2. Selecciona **"Basada en términos de búsqueda"**.
  3. Pon un nombre (ej. "Monitoreo de similitud").
  4. Añade una regla: **"Si el término de búsqueda y la palabra clave tienen una similitud menor a X%"** (usa el parámetro **Levenshtein distance** que mide cuántos caracteres cambian entre el keyword y el search term).
  5. Ejemplo de regla: `Similitud < 70%` → **"Incluir en informe"** para obtener insights.
  6. Opcional: en lugar de solo reportar, puedes **"Agregar como palabra clave negativa"** a nivel de lista negativa (aplicable a múltiples campañas o toda la cuenta) o a nivel de campaña/grupo de anuncios.

## Reglas para agentes
- **Desactiva la deduplicación automática** en Google Ads si el cliente ha aceptado previamente la optimización automática; hazlo desde **Recomendaciones > Historial** o **Administrar > Mantenimiento**.
- **Usa el Keyword Deduper de Optmyzr** cuando necesites control manual sobre qué keywords duplicadas eliminar, revisando siempre los datos de rendimiento antes de decidir.
- **Configura el Rule Engine con Levenshtein distance** (umbral <70%) para detectar términos de búsqueda irrelevantes que Google muestra con concordancia amplia; actúa automáticamente agregándolos como negativos.
- **Nunca confíes ciegamente en la recomendación automática de Google** para conservar la concordancia amplia en lugar de la exacta o frase; verifica manualmente el rendimiento.

## Errores comunes que evita o menciona
- **Error: Asumir que la deduplicación automática de Google solo afecta keywords del mismo tipo de concordancia.** Google ahora considera duplicadas keywords con el mismo texto en diferentes match types (ej. exacta y frase).
- **Error: Dejar que Google conserve automáticamente la concordancia amplia en lugar de la más precisa.** Google elige la broad match, lo que puede reducir el control sobre el tráfico y aumentar gasto innecesario.
- **Error: No monitorear los términos de búsqueda después de activar concordancia amplia.** Usa el Rule Engine con Levenshtein distance para detectar búsquedas poco similares a tus keywords y convertirlas en negativas.