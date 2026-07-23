# How to Set Up Google Ads Conversion Tracking for Lead Form Submission (The RIGHT Way)
**Fuente:** GrowMyAds | https://youtu.be/azlz9DqcALU

## Qué enseña
Este video enseña a configurar el seguimiento de conversiones en Google Ads para envíos de formularios usando Google Tag Manager, basado en una página de agradecimiento (thank you page) en lugar de clics. Explica por qué este método es más preciso y cómo implementarlo paso a paso, incluyendo la creación de la acción de conversión, la configuración del Conversion Linker y el disparador por URL única.

## Lecciones accionables
- **Crear la acción de conversión en Google Ads:**
  - Ir a "Goals" > "Summary" > "Create a conversion action" > "Website".
  - Ignorar el escaneo automático de Google, hacer scroll y seleccionar "Add conversion actions manually".
  - Categoría: "Submit lead form".
  - Configurar "Primary" como opción de optimización (permite que Smart Bidding aprenda de esta conversión).
  - Nombre de conversión: usar un identificador claro (ej. "Account Review YT").
  - Valor: fijar en "1" (sin valores dinámicos).
  - Count: seleccionar "One" (una conversión por usuario, no por recarga de página).
  - Ventana de conversión: dejar 30 días por defecto.
  - Atribución: seleccionar "Data-driven".
  - Enhanced conversions: dejar activado.
  - **Desmarcar** "Enable enhanced CPC" (es una trampa de Google que modifica campañas manuales).

- **Configurar el Conversion Linker en Google Tag Manager:**
  - Crear una nueva etiqueta: "Google Ads Conversion Linker".
  - Tag Configuration: seleccionar "Conversion Linker".
  - Triggering: seleccionar "All Pages".
  - Guardar.

- **Configurar la etiqueta de conversión en Google Tag Manager:**
  - Crear nueva etiqueta: "Google Ads - Account Review Form Submission YT".
  - Tag Configuration: "Google Ads" > "Google Ads conversion tracking".
  - Pegar el "Conversion ID" y "Conversion Label" desde la acción de conversión en Google Ads.
  - Triggering: crear nuevo trigger de tipo "Page View".
  - Condición: "Page URL" > "contains" > la URL única de la página de éxito/agradecimiento (ej. "/success" o "/thank-you").
  - Nombrar el trigger (ej. "Account Review Success Page View").
  - Guardar.

- **Probar la configuración:**
  - En Tag Manager, hacer clic en "Preview".
  - Ingresar la URL de la página de agradecimiento.
  - Conectar y verificar que la etiqueta de conversión aparezca como "fired" en el panel de depuración.

## Reglas para agentes
- Usa siempre una página de agradecimiento (thank you page) como disparador de conversión, nunca un clic en botón.
- Configura el Conversion Linker en Tag Manager con disparador "All Pages" antes de cualquier etiqueta de conversión.
- Establece el conteo de conversiones en "One" para formularios, no "Every", para evitar duplicados por recargas accidentales.
- Desmarca "Enable enhanced CPC" durante la creación de la acción de conversión; no modifiques configuraciones de campaña desde allí.
- Usa "Data-driven" como modelo de atribución si planeas usar Smart Bidding.
- Nombra las etiquetas en Tag Manager con el prefijo "Google Ads -" para mantener organización.

## Errores comunes que evita o menciona
- **Usar clics en lugar de página de agradecimiento:** los clics no garantizan que el formulario se haya enviado realmente, generando datos inflados.
- **No tener una página de agradecimiento dedicada:** usar solo un mensaje emergente ("Gracias por tu mensaje") es una mala experiencia de usuario y no permite un tracking limpio.
- **Dejar activado "Enable enhanced CPC" por error:** Google lo coloca como opción predeterminada para engañar a los usuarios y cambiar sus campañas manuales sin consentimiento.
- **No seguir rápidamente los leads:** si no contactas al prospecto en minutos, el lead se enfría y probablemente contrate a un competidor.
- **No probar la configuración con el modo Preview de Tag Manager:** sin verificar, la etiqueta podría no dispararse y no registrar conversiones.