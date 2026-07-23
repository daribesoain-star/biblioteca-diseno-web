# Custom Events Deep Dive
**Fuente:** JonLoomer | https://youtu.be/QryrOZUQVbI

## Qué enseña
Explica cómo crear y usar eventos personalizados (custom events) en Meta para rastrear acciones que no cubren los eventos estándar (purchase, lead, etc.), como scroll profundo, tiempo en página o clics en enlaces internos. Muestra cómo usarlos para optimizar campañas, generar reportes detallados y crear audiencias para remarketing.

## Lecciones accionables
- **Definir eventos personalizados:** Crea eventos para acciones como "scroll depth 50%", "1 minute time on page", "internal link click", "video watched", "chatbot click" o "shared post". Estos indican una visita de calidad sin necesidad de una conversión estándar.
- **Configurar campaña de engagement:** Usa la ubicación "Website", objetivo de rendimiento "Conversions", y selecciona "Maximize number of conversions". Elige tu píxel y el evento personalizado (ej. "3 minutes + 50% scroll + internal click"). Aplica atribución "1-day click only" para eventos que pueden ocurrir múltiples veces.
- **Agregar métricas a reportes:** En el administrador de anuncios, añade columnas con los eventos personalizados (ej. "Scroll Depth 50%", "Time on Page 2 min") para medir comportamiento post-clic más allá de link clicks y landing page views.
- **Crear audiencias para targeting:** Ve a Audiencias > Crear audiencia personalizada > Tráfico del sitio web > selecciona tu píxel > elige el evento personalizado (ej. "Video Watched") para remarketing. Activa "Advantage+ custom audience" para expandir la audiencia.
- **Monitorear eventos en vivo:** Usa Events Manager para ver cómo se disparan los eventos en tiempo real al navegar por tu sitio, verificando que cada acción (clic, scroll, reproducción) active el evento correcto.

## Reglas para agentes
- Usa "1-day click only" como atribución cuando el evento personalizado pueda ocurrir múltiples veces por sesión (ej. scroll, clics internos).
- Nunca optimices para eventos personalizados que no tengan suficiente volumen; prioriza aquellos con al menos 50-100 ocurrencias semanales para estabilidad en el aprendizaje.
- Verifica que cada evento personalizado se dispare correctamente en Events Manager antes de usarlo en campañas o audiencias.
- Cuando crees una audiencia personalizada basada en un evento, activa "Advantage+ custom audience" para expandir el alcance si el segmento es pequeño.

## Errores comunes que evita o menciona
- **No usar eventos personalizados solo para conversiones estándar:** El error es limitarse a eventos como "purchase" o "lead"; los eventos personalizados capturan interacciones valiosas como scroll profundo o tiempo en página que indican engagement real.
- **Atribución incorrecta para eventos repetitivos:** Usar atribución de 7 días o 28 días para eventos que ocurren múltiples veces (ej. scroll) puede inflar métricas; el autor recomienda "1-day click only".
- **Ignorar el volumen mínimo:** Optimizar para un evento personalizado con pocas ocurrencias (ej. menos de 50 por semana) puede impedir que el algoritmo aprenda y genere resultados pobres.
- **No verificar eventos en vivo:** Asumir que los eventos se disparan correctamente sin revisar Events Manager puede llevar a datos incorrectos y campañas mal optimizadas.