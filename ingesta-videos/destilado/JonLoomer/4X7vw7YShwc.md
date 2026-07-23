# Why I Use Google Tag Manager to Manage My Pixel
**Fuente:** JonLoomer | https://youtu.be/4X7vw7YShwc
## Qué enseña (2-3 líneas)
JonLoomer explica cómo usa Google Tag Manager (GTM) para gestionar el píxel de Facebook, facilitando la implementación del código base, eventos estándar y eventos personalizados. Destaca el uso de triggers integrados de GTM (scroll depth, timer, YouTube) para crear eventos de engagement sin necesidad de código adicional. También menciona la integración con Conversions API Gateway y ofrece recursos como un generador de eventos y un blog post detallado.
## Lecciones accionables
- Crea un tag en GTM con el código base del píxel de Facebook y configúralo para que se dispare en **todas las páginas** (trigger "All Pages").
- Para eventos estándar (Purchase, Lead, etc.), crea un tag por cada evento, pega el código del evento estándar (incluye parámetros como `value`, `currency`, `content_name`) y usa triggers de tipo **Page View** en URLs de confirmación (ej. `/thank-you`).
- Usa **tag sequencing** en GTM para asegurar que el tag del píxel base se dispare **primero** antes que cualquier evento estándar o personalizado.
- Para eventos personalizados sin código, usa triggers integrados de GTM:
  - **Scroll Depth**: Configura un trigger para que se dispare al alcanzar un porcentaje específico (ej. 70%). Puedes elegir "Percentages" y marcar "70" o rangos (50, 75, 100). Activa "Fire multiple times" si deseas registrar varios umbrales.
  - **Timer**: Crea un trigger de tipo "Timer" con intervalo de 60000 ms (60 segundos) y límite de 1 vez para marcar una "visita de calidad".
  - **YouTube Video**: Usa el trigger "YouTube Video" para disparar eventos cuando el usuario reproduce, pausa o alcanza un porcentaje de reproducción (ej. "Play", "Pause", "Watch 50%").
- Para generar el código de eventos estándar, visita `johnloomer.com/events` y selecciona el tipo de evento deseado; la herramienta generará el código listo para pegar en GTM.
- Para más detalles sobre la configuración, consulta el blog post en `johnloomer.com/gtm`.
## Reglas para agentes
- Usa **tag sequencing** en GTM cuando tengas múltiples tags de píxel (base + eventos) para garantizar que el píxel base se cargue primero.
- Configura triggers de **Scroll Depth** solo en páginas donde el contenido sea largo o relevante para medir engagement; nunca lo actives en páginas de aterrizaje cortas.
- Para eventos de **Timer**, establece un límite de disparo de 1 vez por página para evitar duplicados en el píxel.
- Cuando uses el trigger **YouTube Video**, especifica el parámetro "Video Status" (ej. "Play") y "Percentages" (ej. 50) para capturar interacciones específicas; nunca uses "Any" sin filtrar.
- Siempre prueba los tags en modo **Preview** de GTM antes de publicar, verificando que los eventos aparezcan en Facebook Events Manager.
## Errores comunes que evita o menciona
- No usar tag sequencing puede causar que los eventos estándar se disparen antes que el píxel base, resultando en datos incompletos o errores de atribución.
- Configurar eventos personalizados con código manual en lugar de usar los triggers integrados de GTM (scroll, timer, YouTube) añade complejidad innecesaria y riesgo de errores.
- Olvidar limitar el trigger de Timer a una sola vez puede generar múltiples eventos duplicados por visita, inflando las métricas de engagement.
- No usar el generador de eventos en `johnloomer.com/events` para obtener el código correcto puede llevar a parámetros faltantes (como `value` o `currency`) en eventos estándar.
- Ignorar la integración con **Conversions API Gateway** desde GTM puede reducir la precisión del píxel cuando hay bloqueadores de anuncios o problemas de navegador.