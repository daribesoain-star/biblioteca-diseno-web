# Google Analytics 4 Measurement Protocol
**Fuente:** AnalyticsMania | https://youtu.be/r_eoeU2qUn0

## Qué enseña (2-3 líneas)
Este video explica cómo usar el Measurement Protocol de Google Analytics 4 para enviar datos desde sistemas backend (CRM, servidores) directamente a GA4, detallando los parámetros obligatorios, las limitaciones técnicas y el proceso paso a paso para construir, validar y enviar eventos correctamente, incluyendo la atribución a sesiones y fuentes de tráfico.

## Lecciones accionables
- Para empezar, usa el **Google Analytics Event Builder** (link en descripción del video): inicia sesión con tu cuenta Google, verás un formulario para construir y validar requests de Measurement Protocol.
- Obtén el **API secret** yendo a GA4 > Admin > Property column > Data Streams > selecciona tu web stream > Measurement Protocol API Secrets > Create > ingresa un nickname (ej. "CRM") > copia el valor generado.
- Obtén el **Measurement ID** desde Web Stream Settings > copia el ID (formato G-XXXXXXXXXX).
- El **client_id** es obligatorio: el visitante ya debe haber sido rastreado por GA4 (no se crean nuevos usuarios vía Measurement Protocol). Para obtenerlo, lee la cookie `_ga` del navegador: el valor completo (primer número + punto + segundo número) es el client_id.
- Para atribuir correctamente el evento a una fuente de tráfico, envía el parámetro **session_id** como tipo **number** (no string). Obtén el session_id de la cookie `_ga_<MEASUREMENT_ID>`: el primer número grande después del "GA1.1." o similar.
- Si envías eventos al pasado (sesión ya finalizada), incluye el parámetro **timestamp_micros** como tipo **number** con Unix timestamp en microsegundos (multiplica el timestamp en segundos por 1,000,000). Solo funciona hasta 72 horas hacia atrás.
- Para probar en **Debug View**, añade el parámetro **debug_mode** como tipo **number** con valor `1`. Cuando pases a producción, elimínalo para no saturar el Debug View.
- Incluye siempre **page_location** y **page_title** como parámetros si necesitas esos datos, porque los eventos de Measurement Protocol no heredan información del lado del cliente.
- Para enviar un evento personalizado, selecciona "custom" en el Event Builder y define manualmente todos los parámetros.
- Después de validar en el Event Builder, copia la URL del POST request (contiene `api_secret` y `measurement_id`) y el payload JSON. Entrégalo a tu desarrollador como texto plano, indicando que debe reemplazar `client_id`, `session_id` y `timestamp_micros` con valores reales.
- Para ver datos en reports, espera al menos **24 horas** (procesamiento de GA4). Luego ve a Reports > Acquisition > Traffic Acquisition, selecciona "Source / Medium" y filtra por el evento enviado.

## Reglas para agentes
- Usa **session_id como tipo number** (no string) cuando envíes eventos con Measurement Protocol; de lo contrario, el evento no se atribuirá a ninguna fuente de tráfico y aparecerá como "(not set)".
- Nunca envíes eventos sin **client_id** existente y previamente rastreado por GA4; Measurement Protocol no crea nuevos usuarios.
- Nunca incluyas **debug_mode = 1** en producción; úsalo solo para pruebas en Debug View.
- Siempre incluye **session_id** en cada evento para que sea atribuido a una sesión y fuente de tráfico correcta.
- Si envías eventos al pasado, usa **timestamp_micros** en microsegundos (no milisegundos) y asegúrate de que el timestamp esté dentro de la ventana de 72 horas y después del session_start y page_view iniciales.
- Cuando entregues la implementación a desarrolladores, proporciona la URL completa del endpoint y el payload JSON exacto, indicando qué campos deben ser dinámicos (client_id, session_id, timestamp_micros).

## Errores comunes que evita o menciona
- **No incluir session_id como number**: si se envía como string, el evento no se atribuye a ninguna sesión y aparece como "(not set)" en los reports de tráfico.
- **No incluir timestamp_micros al enviar eventos al pasado**: sin este parámetro, el evento no se asigna a la sesión histórica correcta.
- **Usar timestamp en segundos o milisegundos en lugar de microsegundos**: el parámetro `timestamp_micros` requiere Unix timestamp en microsegundos (multiplicar por 1,000,000).
- **Enviar eventos más de 72 horas hacia el pasado**: GA4 no permite conectar eventos a sesiones anteriores a ese límite.
- **Dejar debug_mode activo en producción**: satura el Debug View y dificulta la depuración real.
- **No incluir page_location y page_title**: los eventos de Measurement Protocol no heredan datos del navegador; deben enviarse explícitamente.
- **Asumir que Measurement Protocol puede crear nuevos usuarios**: solo enriquece datos de usuarios ya existentes rastreados por gtag.js o GTM.
- **No validar el evento en el Event Builder antes de implementar**: el validador muestra errores específicos (parámetros faltantes, tipos incorrectos).