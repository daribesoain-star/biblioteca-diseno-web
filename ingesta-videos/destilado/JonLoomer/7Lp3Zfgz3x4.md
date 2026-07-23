# When Broad Targeting Fails
**Fuente:** JonLoomer | https://youtu.be/7Lp3Zfgz3x4

## Qué enseña
Explica por qué el targeting amplio (broad targeting) falla en campañas de embudo superior (top-of-funnel) como clics o visitas, y propone una solución creativa usando eventos personalizados (custom events) para atraer tráfico de alta calidad a un blog, optimizando por engagement profundo en lugar de métricas superficiales.

## Lecciones accionables
- **Para campañas de tráfico (link clicks, landing page views):** nunca uses broad targeting sin restricciones; el algoritmo prioriza cantidad sobre calidad, atrayendo clics accidentales, fraudes o bots.
- **Solución para tráfico de calidad con broad targeting:**
  - Configura el objetivo como **Engagement** con ubicación **Website Conversion**.
  - En performance goal selecciona **Maximum number of conversions**.
  - Elige tu píxel y un **conversion event personalizado** que mida engagement real (ej: `video_watched` para videos incrustados, `internal_link_click` para clics en enlaces internos del sitio).
  - Usa **attribution setting de 1 day click** (no 7-day click ni 1-day view) para evitar confundir al algoritmo con conversiones de baja intención.
  - Presupuesto: el que prefieras, pero con países específicos (ej: 4 países principales).
  - **Excluye** a usuarios que ya hayan visitado los posts promocionados y hayan permanecido al menos 15 segundos.
  - Activa **Advantage+ audience** y proporciona **sugerencias de audiencia** como punto de partida: por ejemplo, personas que hayan disparado `video_watched` en los últimos 180 días, o el top 25% de tiempo en el sitio en los últimos 180 días.
  - Usa **todas las ubicaciones (all placements)**, incluso Audience Network, porque el algoritmo optimizará por la acción de engagement real (no por clics), ignorando clics accidentales.
- **Estructura del anuncio:**
  - Crea **7 anuncios diferentes** para 7 posts distintos; deja que el algoritmo determine cuáles funcionan mejor y luego apaga los que no rinden.
  - Si promocionas un reel, usa un screenshot del primer fotograma como imagen (sin botones de play engañosos) y redirige al post del blog con el video incrustado.
- **Medición:** usa **UTM parameters** y **GA4** para verificar tiempo en página, scroll, visualización de videos, etc.

## Reglas para agentes
- Usa **1-day click attribution** para cualquier evento que no sea purchase (compra).
- Nunca optimices por link clicks o landing page views con broad targeting sin audiencias de partida o sin eventos personalizados de engagement.
- Siempre excluye a usuarios que ya hayan completado la acción deseada (ej: visitado el post por más de 15 segundos) antes de lanzar la campaña.
- Cuando uses Advantage+ audience para tráfico, proporciona siempre **sugerencias de audiencia** (ej: eventos personalizados de los últimos 180 días) como punto de partida.
- No uses Audience Network si el objetivo es link clicks o landing page views sin un evento de engagement aguas abajo.

## Errores comunes que evita o menciona
- **Optimizar por clics o visitas con broad targeting:** el algoritmo expande la audiencia sin control y atrae clics de baja calidad, bots o accidentes.
- **Usar 7-day click o 1-day view para eventos de engagement:** confunde al algoritmo porque incluye conversiones sin intención real (view-through o clics antiguos).
- **Promocionar un reel con CTA al mismo video en el blog:** el usuario ya vio el video en el reel, no tiene incentivo para verlo de nuevo.
- **Confiar en eventos estándar como "time spent" sin personalización:** el algoritmo aprende a optimizar por tiempo pero los usuarios pueden no hacer scroll ni interactuar realmente.
- **Asumir que broad targeting funciona igual para todos los objetivos:** solo es ideal para purchase; para tráfico o engagement superficial, requiere ajustes como eventos personalizados.