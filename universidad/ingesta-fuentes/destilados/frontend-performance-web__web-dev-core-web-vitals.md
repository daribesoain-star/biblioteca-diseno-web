# web.dev — Core Web Vitals
**Materia:** frontend-performance-web | **Fuente:** https://web.dev/articles/vitals (consultada 2026-07-07)

## Qué aporta (2-3 líneas)
Define el marco oficial de Google para medir la calidad de experiencia de usuario en la web mediante tres métricas núcleo (Core Web Vitals): LCP (carga), INP (interactividad) y CLS (estabilidad visual). Proporciona umbrales numéricos exactos, herramientas de medición en campo y laboratorio, y guías de optimización para cada métrica.

## Reglas candidatas para agentes
- LCP debe ocurrir dentro de **2.5 segundos** desde que la página inicia su carga.
- INP debe ser de **200 milisegundos** o menos.
- CLS debe mantenerse en **0.1** o menos.
- Para considerar una página conforme, debe cumplir los umbrales anteriores en el **percentil 75** de las cargas de página, segmentado por dispositivos móviles y de escritorio.
- Usar la biblioteca `web-vitals` JavaScript para medir LCP, INP y CLS mediante las funciones `onLCP()`, `onINP()`, `onCLS()`.
- En laboratorio, medir **Total Blocking Time (TBT)** como proxy de INP cuando no hay interacción de usuario.
- Para medir en campo, usar **Chrome User Experience Report (CrUX)**, **PageSpeed Insights**, **Chrome DevTools** o **Search Console (Core Web Vitals report)**.
- Configurar monitoreo propio de usuario real (RUM) para obtener telemetría detallada por página vista.

## Errores comunes que documenta
- Confiar únicamente en mediciones de laboratorio sin complementar con mediciones de campo, ya que el rendimiento varía según dispositivo, red, procesos en segundo plano e interacción del usuario.
- Usar herramientas que no pueden medir INP en laboratorio (como Lighthouse) sin recurrir a TBT como proxy.
- No segmentar las métricas por percentil 75 ni por tipo de dispositivo (móvil vs. escritorio).
- Asumir que las métricas medidas con APIs públicas en JavaScript son idénticas a las reportadas por CrUX (existen diferencias documentadas).
- Ignorar que las métricas estables pueden ser retiradas y reemplazadas (ejemplo: FID reemplazado por INP en 2024).

## Datos/citas clave textuales
- "LCP should occur within **2.5 seconds** of when the page first starts loading."
- "Pages should have a INP of **200 milliseconds** or less."
- "Pages should maintain a CLS of **0.1** or less."
- "A good threshold to measure is the **75th percentile** of page loads, segmented across mobile and desktop devices."
- "INP became a stable Core Web Vital metric in **2024**."
- "Tools like Lighthouse that load pages in a simulated environment without a user cannot measure INP... the Total Blocking Time (TBT) metric is lab-measurable and is a proxy for INP."
- "Pending metrics are held in this phase for a minimum of **six months** to give the ecosystem time to adapt."
- "Stable Core Web Vitals metrics won't change more than **once per year**."