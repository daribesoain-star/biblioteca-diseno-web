# Google Ads Conversion Tracking (2026) with Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/YNvOZVP3xcE

## Qué enseña (2-3 líneas)
Este tutorial explica cómo configurar el seguimiento de conversiones de Google Ads usando Google Tag Manager, incluyendo conversiones básicas, envío de valores dinámicos (como revenue) y enhanced conversions con datos de usuario (email). Se enfoca en el método nativo de Google Ads (no importar desde Google Analytics) por ser más preciso y estable.

## Lecciones accionables
- **Preferir el seguimiento nativo de Google Ads** en lugar de importar conversiones desde Google Analytics, ya que los números suelen ser más precisos y no dependen de cambios frecuentes en GA4.
- **Crear una conversión en Google Ads** yendo a `ads.google.com` > Goals > Summary > "Create conversion action" > seleccionar "Website" > elegir categoría (ej: "Subscribe") > "Manually with code" > configurar nombre, valor (mismo o diferente), conteo ("One" para formularios, "Every" para compras).
- **Obtener Conversion ID y Conversion Label** desde las instrucciones de instalación en Google Ads, seleccionando "Use Google Tag Manager".
- **En GTM**: Tag > New > Tag Configuration > "Google Ads Conversion Tracking" > pegar Conversion ID y Conversion Label.
- **Si se solicita Google Tag**: hacer clic en "Create tag" y mantener configuración predeterminada.
- **Configurar trigger**: Trigger > New > Trigger Configuration > "Custom Event" > ingresar nombre exacto del evento del dataLayer (ej: "subscribed").
- **Para enviar valor dinámico (purchase)**: crear variables de dataLayer para `ecommerce.value`, `ecommerce.transaction_id` y `ecommerce.currency` (o ingresar moneda fija manualmente). En el tag, expandir "Additional Fields" y asignar las variables.
- **Para enhanced conversions**: habilitar en Google Ads (Conversion > Settings > "Manage through Google Tag Manager"). En GTM, crear variable "User-Provided Data" con configuración manual, agregar variable de email (ej: dataLayer variable `user_email`). En el tag de conversión, agregar parámetro `user_data` con la variable creada.
- **Verificar enhanced conversions** con la extensión Chrome "EC Assist": instalarla, ir al sitio, hacer clic en el ícono > "Start monitoring" > recargar página de conversión > confirmar "Success" en email.
- **Publicar cambios** en GTM: Submit > Publish para que los tags estén activos para visitantes reales.
- **Esperar 24+ horas** para ver datos en Google Ads (no hay reporte en tiempo real). La conversión se activa solo después de un clic en un anuncio seguido de la conversión.

## Reglas para agentes
- Usa el método nativo de Google Ads (no importar desde GA4) cuando necesites máxima precisión en datos de conversión.
- Siempre configura el conteo como "One" para conversiones no comerciales (formularios, suscripciones) y "Every" para compras.
- Nunca envíes el mismo `transaction_id` dos veces; Google Ads lo usará para evitar duplicados.
- Cuando configures enhanced conversions, asegúrate de que el checkbox "Manage through Google Tag Manager" esté activado en Google Ads antes de configurar GTM.
- Usa la extensión EC Assist para verificar que los datos de usuario (email) se envíen correctamente y aparezcan como "Success".
- No confíes en el preview mode de GTM para verificar el tag de conversión si aparece "Unknown tag type"; revisa los requests enviados al dominio de Google Ads.
- Publica los cambios en GTM solo después de verificar que el tag se dispara correctamente en preview mode.

## Errores comunes que evita o menciona
- **No confundir múltiples requests en preview mode como duplicados**: el tag de Google Ads puede enviar varias solicitudes al mismo dominio pero con diferentes paths; todas pertenecen a la misma conversión.
- **No esperar datos en tiempo real en Google Ads**: no hay reporte en vivo; se debe esperar al menos 24 horas para ver las conversiones.
- **La conversión no se activa solo con enviar datos desde GTM**: debe haber un clic en un anuncio previo para que el status cambie a "active".
- **No olvidar el consent mode** si operas en UE, Reino Unido o Suiza: Google requiere enviar información de consentimiento junto con las conversiones para que el tracking funcione correctamente.
- **No asumir que los nombres de parámetros en dataLayer son universales**: se debe adaptar según la implementación del desarrollador o plataforma (ej: `ecommerce.value`, `user_email`).