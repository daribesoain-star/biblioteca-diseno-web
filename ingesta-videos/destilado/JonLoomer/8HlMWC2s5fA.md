# How to Sync Offline Events to Conversions API Using Zapier and Google Sheets
**Fuente:** JonLoomer | https://youtu.be/8HlMWC2s5fA

## Qué enseña
Este video explica cómo sincronizar eventos offline (como conversiones registradas en un CRM) hacia la API de Conversiones de Meta usando Google Sheets como puente y Zapier como automatización. Proporciona un método universal que no depende de un CRM específico, ideal para negocios con leads que se convierten fuera de línea.

## Lecciones accionables
- **Crear un conjunto de eventos offline en Business Settings:** Ve a Business Settings > Data Sources > Offline Event Sets > haz clic en "Add", nómbralo, asígnale una cuenta publicitaria y, si es necesario, acceso a personas individuales.
- **Configurar la hoja de cálculo de Google:** Crea un Google Sheet que registrará todos los eventos offline. El formato de las columnas debe coincidir exactamente con lo que Meta espera. Para verificar el formato correcto:
  - En Events Manager > Data Sources > selecciona tu Offline Event Set > haz clic en "Upload Events".
  - Haz clic en cualquiera de los enlaces "view examples" para ver ejemplos de formato.
  - Descarga el archivo CSV de ejemplo ("download example CSV file") y úsalo como plantilla base.
- **Validar el formato antes de automatizar:** Sube un CSV de prueba, haz clic en "Next" y luego en "Map Data". Si hay errores, selecciona manualmente el campo de datos correcto al que debe mapearse cada columna. Una vez correcto, replica ese formato exacto en tu Google Sheet.
- **Crear el Zap en Zapier:**
  - **Trigger:** Google Sheets > evento "New or Updated Spreadsheet Row". Selecciona el spreadsheet, la hoja de trabajo y la columna de activación (usa "any column").
  - **Action:** Facebook Offline Conversions > evento "Send Offline Event". Selecciona tu cuenta de negocio y el conjunto de eventos.
  - **Solución si no aparece tu evento:** Si no ves tu Offline Event Set en la lista, ve a Events Manager > Data Sources > copia el "Event Set ID" (15 caracteres numéricos). En Zapier, selecciona "Custom", pega el ID, ignora el mensaje "no matches found" y haz clic en "Use it".
  - **Mapeo de campos:** Para "Event Time", puedes usar el valor de tu hoja de cálculo o dejarlo en blanco (usará la hora de ejecución del Zap, ideal para ejecución dinámica). Luego, mapea cada campo desde tu hoja de cálculo a los campos que Meta requiere. No necesitas todos los campos; cuantos más tengas, mejor para el matching. Si todos los eventos son del mismo tipo (ej. "purchase"), selecciona ese valor fijo; de lo contrario, usa "other".
- **Probar y activar:** Haz clic en "Continue" y luego "Test Step". Una vez que el Zap esté activo y comiences a pasar nuevos datos a la hoja, los eventos aparecerán en Events Manager después de 30-60 minutos. La fecha/hora que pases a la API determinará dónde aparece en los resultados.
- **Usar los eventos en Ads Manager:** Una vez sincronizados, puedes agregar una columna para estos eventos offline en Ads Manager y potencialmente optimizar para ellos.

## Reglas para agentes
- Usa el archivo CSV de ejemplo descargado desde Events Manager como plantilla base para tu Google Sheet; no inventes el formato.
- Cuando mapees campos en Zapier, prioriza los campos que tengas disponibles; cuantos más datos proporciones, mejor será el matching con Meta.
- Si el Offline Event Set no aparece en Zapier, usa la opción "Custom" y pega el ID numérico de 15 caracteres; ignora el mensaje "no matches found".
- Deja el campo "Event Time" en blanco en Zapier si los eventos se ejecutan dinámicamente; así usará la hora de ejecución del Zap.
- Espera al menos 30-60 minutos después de activar el Zap antes de verificar que los eventos aparecen en Events Manager.
- Nunca subas datos a la hoja de cálculo sin antes validar el formato subiendo un CSV de prueba y usando la función "Map Data" en Events Manager.

## Errores comunes que evita o menciona
- **No verificar el formato de los datos:** Si el formato de las columnas en Google Sheet no coincide exactamente con lo que Meta espera, la sincronización fallará. El video recomienda descargar el CSV de ejemplo y usarlo como referencia.
- **No encontrar el Offline Event Set en Zapier:** Es un problema conocido. La solución es copiar el Event Set ID desde Events Manager y pegarlo manualmente en la opción "Custom" de Zapier.
- **Esperar resultados inmediatos:** Los eventos pueden tardar entre 30 y 60 minutos en aparecer en Events Manager después de activar el Zap. No entrar en pánico si no se ven de inmediato.
- **Asumir que todos los eventos son del mismo tipo:** Si los eventos offline tienen diferentes clasificaciones (ej. compra, lead, suscripción), no uses un valor fijo como "purchase"; selecciona "other" o mapea el tipo desde la hoja de cálculo.