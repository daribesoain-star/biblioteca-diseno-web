# web.dev — Learn Performance
**Materia:** frontend-performance-web | **Fuente:** https://web.dev/learn/performance (consultada 2026-07-07)

## Qué aporta
Curso introductorio sobre rendimiento web que cubre conceptos fundamentales como la ruta crítica de renderizado, optimización de recursos (HTML, CSS, JavaScript, imágenes, videos, fuentes), técnicas de carga diferida, precarga y workers. Proporciona una base teórica y práctica para mejorar la velocidad de carga y la capacidad de respuesta de sitios web.

## Reglas candidatas para agentes
- **HTML caching:** Configurar cabeceras de caché en el documento HTML para evitar solicitudes repetidas al servidor.
- **Parser blocking:** Evitar que scripts sin `async` o `defer` bloqueen el parser del HTML.
- **Render blocking:** Identificar y eliminar recursos CSS y JavaScript que bloqueen el renderizado inicial.
- **Critical rendering path:** Optimizar la entrega de recursos críticos (CSS inline, scripts diferidos) para que la primera renderización ocurra lo antes posible.
- **Resource hints:** Usar `<link rel="preload">`, `<link rel="preconnect">`, `<link rel="dns-prefetch">` y `<link rel="prefetch">` para asistir al navegador en la carga temprana de recursos.
- **Image optimization:** Servir imágenes en formatos modernos (WebP, AVIF) y con dimensiones adecuadas; usar `loading="lazy"` en imágenes no críticas.
- **Video performance:** Usar `<video>` con atributos `preload="none"` o `preload="metadata"` para evitar descargas innecesarias; aplicar compresión de video.
- **Web fonts:** Usar `font-display: swap` para evitar FOIT (Flash of Invisible Text); subconjuntos de fuentes para reducir peso.
- **Code-split JavaScript:** Dividir bundles de JS en fragmentos cargados bajo demanda mediante importaciones dinámicas.
- **Lazy load images and iframes:** Aplicar `loading="lazy"` en imágenes y iframes que no estén en el viewport inicial.
- **Prefetching y prerendering:** Usar `<link rel="prefetch">` para recursos de navegaciones futuras y `<link rel="prerender">` para páginas probables.
- **Service worker precaching:** Cachear recursos críticos durante la instalación del service worker para carga offline o instantánea.
- **Web workers:** Mover tareas computacionalmente costosas (procesamiento de imágenes, análisis de datos) a hilos secundarios con la Web Worker API.

## Errores comunes que documenta
- No cachear el HTML, obligando al navegador a solicitar el documento completo en cada visita.
- Colocar scripts bloqueantes (sin `async`/`defer`) en el `<head>`, retrasando el renderizado.
- No optimizar imágenes (tamaño, formato, compresión), lo que incrementa el peso total de la página.
- Cargar todas las imágenes y iframes al inicio, incluso aquellos fuera del viewport.
- Usar fuentes web sin `font-display`, causando texto invisible durante la carga.
- No dividir el código JavaScript, enviando bundles grandes que bloquean el hilo principal.
- Ignorar resource hints, perdiendo oportunidades de precarga y conexiones tempranas.
- No usar service workers para precaching, dejando la experiencia offline sin optimizar.
- Ejecutar tareas pesadas en el hilo principal, degradando la capacidad de respuesta.

## Datos/citas clave textuales
- "Every website starts with a request for an HTML document, that request has a big role to play in how fast your website loads."
- "The critical rendering path is a concept in web performance that deals with how quickly the initial rendering of a page appears in the browser."
- "Images represent a large portion of the data transferred on many web pages today."
- "Video is a media type used often on web pages—but knowing how to serve them efficiently is one aspect of performance you shouldn't overlook."
- "Web fonts are a commonly used resource on the web—and rightfully so—as they add to the design of a website in ways that other resources can't. Even so, web fonts still have a performance cost."
- "Some resources are not crucial to a web page's initial load. JavaScript is one such resource that can be deferred until the time of need through a technique known as code splitting."
- "By doing so, you can improve performance by lowering bandwidth and CPU contention—a critical consideration for improving both initial page load speed and input responsiveness during startup."
- "Images and iframe elements can consume significant bandwidth and CPU processing time."
- "While much of performance deals with what you can do to optimize and eliminate unnecessary resources, it may seem a bit paradoxical to suggest that some resources should be loaded before they're needed."
- "Much of what the user sees in the browser occurs on a single thread known as the main thread. However, there are opportunities where you can start up new threads to do computationally expensive work so that the main thread can accommodate important user-facing tasks."