# MDN Web Docs — Web Performance
**Materia:** frontend-performance-web | **Fuente:** https://developer.mozilla.org/en-US/docs/Web/Performance (consultada 2026-07-07)

## Qué aporta
Compendio oficial de métricas, APIs y buenas prácticas para medir y optimizar el rendimiento web, cubriendo desde el funcionamiento del navegador hasta técnicas de monitorización. Proporciona guías detalladas sobre tiempos de carga, animaciones, lazy loading, presupuestos de rendimiento y APIs de medición.

## Reglas candidatas para agentes
1. **Mantener la respuesta a input de usuario por debajo de 50ms** para idling y entre 50-200ms para interacciones.
2. **Mantener la velocidad de animación en 16.7ms por frame** (60 FPS).
3. **Indicar que el contenido cargará en menos de 1 segundo** como umbral de percepción de carga.
4. **Usar `dns-prefetch`** para resolver nombres de dominio antes de que los recursos sean solicitados.
5. **Implementar lazy loading** para recursos no críticos, acortando el critical rendering path.
6. **Aplicar un performance budget** con límites verificables sobre archivos, tipos de archivo, métricas (TTI) o umbrales temporales.
7. **Usar la Performance API** para mediciones de alta precisión con resolución sub-milisegundo, evitando timestamps de `Date`.
8. **Monitorizar long animation frames (LoAFs)** que causan UI lenta y animaciones con jank.
9. **Verificar `PerformanceNavigationTiming.notRestoredReasons`** para identificar páginas bloqueadas del bfcache.
10. **Usar Resource Timing API** para analizar tiempos de carga detallados de cada recurso (imágenes, scripts, fetch).
11. **Implementar Server-Timing** para que los servidores comuniquen métricas del ciclo request-response.
12. **Usar User Timing API** con marcas y medidas de alta precisión en el timeline de rendimiento.
13. **Aplicar Intersection Observer API** para observar asincrónicamente cuándo los elementos se vuelven visibles en el viewport.
14. **Usar Network Information API** para seleccionar contenido HD o LD según el tipo de conexión ('wifi', 'cellular').
15. **Consultar `Navigator.deviceMemory`** para ajustar el uso de recursos según la memoria disponible del dispositivo (en gigabytes).
16. **Usar la Beacon API** para programar solicitudes asíncronas no bloqueantes al servidor.
17. **Implementar `requestIdleCallback()`** para ejecutar tareas en segundo plano cuando el agente de usuario determine que hay tiempo libre.

## Errores comunes que documenta
- Usar `Date` timestamps para benchmarking en lugar de la Performance API de alta precisión.
- Ignorar el impacto de animar propiedades CSS costosas que producen jank.
- No optimizar medios (imágenes y video) siendo estos "la fruta más baja del rendimiento web".
- No considerar la latencia de red ni emular alta latencia durante pruebas.
- No usar presupuestos de rendimiento para prevenir regresiones.
- Confundir monitorización sintética con RUM (Real User Monitoring) sin entender sus casos de uso distintos.
- No verificar la compatibilidad con bfcache, bloqueando la navegación instantánea.
- No usar resource hints (dns-prefetch, preconnect, prefetch, prerender) para carga especulativa.
- No minimizar el número de nodos DOM ni optimizar el orden de carga de estilos, scripts y medios.

## Datos/citas clave textuales
- "The longer it takes for a site to respond, the more users will abandon the site."
- "Recommended Web Performance Timings: How long is too long? — indicating content will load (1 second), idling (50ms), animating (16.7ms) and responding to user input (50 to 200ms)."
- "The Performance API allows high precision measurements that are based on time in potential sub-millisecond resolution and a stable monotonic clock."
- "The lowest hanging fruit of web performance is often media optimization."
- "Long animation frames (LoAFs) can impact the user experience of a website. They can cause slow user interface (UI) updates, resulting in seemingly unresponsive controls and janky animated effects."
- "Synthetic monitoring and real user monitoring (RUM) are two approaches for monitoring and providing insight into web performance."
- "A performance budget is a limit to prevent regressions. It can apply to a file, a file type, all files loaded on a page, a specific metric (e.g., Time to Interactive), a custom metric, or a threshold over a period of time."
- "DNS-prefetch is an attempt to resolve domain names before resources get requested."
- "The `deviceMemory` read-only property returns the approximate amount of device memory in gigabytes."