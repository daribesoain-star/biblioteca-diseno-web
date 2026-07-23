# Meta Ads Attribution Setting Deep Dive
**Fuente:** JonLoomer | https://youtu.be/8WX9_eCsfgo

## Qué enseña (2-3 líneas)
Explica en detalle cómo funciona el ajuste de atribución en campañas de conversiones de Meta Ads (website conversion location), cuándo usar el valor predeterminado de 7-day click + 1-day view, y cuándo cambiarlo a 1-day click únicamente según el tipo de evento (purchase, lead, custom event). También cubre el uso de "engaged view" para videos y la herramienta "compare attribution settings" para desglosar resultados.

## Lecciones accionables
- **Para campañas de purchase (ventas):** Usa el valor predeterminado **7-day click + 1-day view**. Meta optimizará la entrega para obtener conversiones dentro de esa ventana, lo cual es adecuado porque las compras no siempre ocurren en línea recta (pueden tomar días por aprobaciones o decisiones).
- **Si usas un video ad skippable en campaña de purchase:** Activa también **1-day engaged view** (se añadió recientemente). Esto cuenta conversiones de usuarios que vieron al menos 10 segundos del video sin hacer clic y luego convirtieron.
- **Para campañas de leads simples** (ej. formulario de email a cambio de algo gratuito): Cambia a **1-day click** únicamente. No necesitas ventana de 7 días ni view-through, ya que la acción suele ser inmediata.
- **Para eventos personalizados (custom events)** que se puedan repetir (ej. "3 minutes + 50% scroll + internal click"): Usa solo **1-day click**. Si dejas 7-day click + 1-day view, Meta optimizará para mostrar anuncios repetidamente a visitantes recurrentes que ya harían esa acción, inflando resultados.
- **Usa siempre la herramienta "compare attribution settings"** dentro de Ads Manager para desglosar qué proporción de conversiones vienen de 1-day click, 7-day click y 1-day view. Esto te permite evaluar si puedes ajustar la atribución de optimización.
- **Pasos para configurar:** Al crear campaña → conversion location = website → performance goal = maximized number of conversions → seleccionar pixel → seleccionar evento → editar "attribution setting" (por defecto 7-day click + 1-day view).

## Reglas para agentes
- Usa **7-day click + 1-day view** cuando el objetivo sea **purchase** (ventas) y no uses video ad skippable.
- Usa **7-day click + 1-day view + 1-day engaged view** cuando el objetivo sea **purchase** y el anuncio sea un **video skippable** (al menos 10 segundos vistos).
- Usa **1-day click únicamente** cuando el objetivo sea **lead simple** (intercambio inmediato de datos por algo gratuito) o **custom event** que pueda repetirse por visitantes recurrentes.
- Nunca uses **1-day view** en campañas con **custom events** que midan interacciones repetibles en el sitio web (ej. scroll + clics internos), porque Meta optimizará para mostrarte anuncios a quienes ya visitan tu sitio, inflando métricas.
- Siempre revisa **compare attribution settings** en Ads Manager para validar si el ajuste elegido refleja el comportamiento real de tus conversiones.

## Errores comunes que evita o menciona
- **Olvidar que la atribución no requiere clic directo e inmediato:** El valor predeterminado cuenta conversiones hasta 7 días después de un clic y 1 día después de una vista sin clic. Muchos anunciantes ignoran que las conversiones pueden ser view-through.
- **Usar 7-day click + 1-day view en leads simples:** Infla resultados porque la acción (dar email) suele ser inmediata; no necesita ventana larga ni view-through.
- **Usar 1-day view en custom events repetibles:** Meta optimiza para mostrar anuncios una y otra vez a quienes ya realizan la acción en tu web, haciendo que parezca que la campaña genera muchas conversiones cuando en realidad son orgánicas.
- **No usar "compare attribution settings":** Sin desglosar, no sabes si la mayoría de conversiones vienen de clics del mismo día o de ventanas más largas, lo que impide ajustar correctamente la atribución de optimización.
- **Ignorar "engaged view" en videos de purchase:** Si usas video skippable y no activas esta opción, pierdes conversiones de usuarios que vieron 10+ segundos sin clicar pero luego compraron.