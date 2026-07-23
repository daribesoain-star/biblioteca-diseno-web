# Meta Custom Pixel Events That I Use
**Fuente:** JonLoomer | https://youtu.be/rOAeoTR5zdE

## Qué enseña
Cómo crear y usar eventos personalizados (custom events) en Meta para rastrear, optimizar y segmentar acciones de usuario que no cubren los eventos estándar. Explica los eventos que él mismo implementa en su sitio web y cómo detectar visitantes de calidad.

## Lecciones accionables
- **Evento "time_on_page_two_minutes"**: se dispara cuando un usuario permanece en una página durante 2 minutos. Implementar con Google Tag Manager (GTM) usando un temporizador de 120 segundos.
- **Evento "scroll_depth_seventy_percent"**: se dispara cuando el usuario ha hecho scroll al menos al 70% de la página. Configurar en GTM con un trigger de scroll depth al 70%.
- **Evento "quality_visitor"**: evento compuesto que requiere que se cumplan AMBAS condiciones: `time_on_page_two_minutes` Y `scroll_depth_seventy_percent`. Crear como evento personalizado en Meta que se active solo cuando ambos eventos previos hayan ocurrido.
- **Evento "page_views_per_user"**: rastrea usuarios que ven múltiples páginas en cualquier momento (histórico total). Configurar en GTM contando páginas vistas por ID de usuario.
- **Evento "page_views_per_session"**: rastrea usuarios que ven múltiples páginas dentro de una misma sesión. Configurar en GTM con variable de sesión.
- **Evento "video_watched"**: se dispara al hacer clic para reproducir un video de YouTube incrustado. Implementar en GTM usando el trigger de clic en elementos del reproductor de YouTube (`.ytp-play-button`). Aplica también a Vimeo si se usa ese reproductor.
- **Evento "podcast_play"**: se dispara al reproducir un episodio de podcast desde un reproductor de audio incrustado. Configurar en GTM con un trigger de clic en el botón de play del reproductor de audio.
- **Herramienta de verificación**: usar el plugin de Chrome "Facebook Pixel Helper" para ver en tiempo real qué eventos se disparan al navegar por el sitio.

## Reglas para agentes
- Usa eventos personalizados cuando una acción importante para tu negocio no esté cubierta por los eventos estándar de Meta.
- Combina múltiples condiciones en un solo evento compuesto (como "quality_visitor") solo cuando ambas sean necesarias para definir una acción de alta calidad.
- Implementa eventos personalizados con Google Tag Manager para facilitar la gestión y depuración.
- Verifica siempre el correcto disparo de eventos usando Facebook Pixel Helper antes de lanzar campañas basadas en ellos.
- Nunca uses eventos personalizados para acciones que ya tienen un evento estándar equivalente (ej: no crear "custom_purchase" si existe "Purchase").

## Errores comunes que evita o menciona
- No rastrear acciones cualitativas como tiempo en página o profundidad de scroll, perdiendo la capacidad de identificar visitantes de alta calidad.
- No diferenciar entre visitantes que ven una sola página vs. múltiples páginas (por usuario o por sesión), lo que impide segmentar correctamente.
- No rastrear reproducciones de contenido multimedia (videos, podcasts) incrustado, perdiendo datos valiosos para retargeting y optimización.
- Asumir que los eventos estándar cubren todas las necesidades de tracking, cuando muchas acciones específicas requieren eventos personalizados.