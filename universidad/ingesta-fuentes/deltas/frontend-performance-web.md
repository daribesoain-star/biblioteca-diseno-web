```markdown
# Delta — frontend-performance-web

## Reglas nuevas propuestas
- Usar `PerformanceNavigationTiming.notRestoredReasons` para diagnosticar páginas bloqueadas del bfcache y habilitar navegación instantánea (fuente: developer.mozilla.org)
- Medir long animation frames (LoAFs) con la Performance API para detectar y eliminar jank en animaciones (fuente: developer.mozilla.org)
- Usar `Navigator.deviceMemory` para ajustar la carga de recursos (HD vs LD) según la memoria disponible del dispositivo (fuente: developer.mozilla.org)
- Implementar `requestIdleCallback()` para ejecutar tareas no críticas en segundo plano sin bloquear el main thread (fuente: developer.mozilla.org)
- Usar la Beacon API para enviar datos analíticos al servidor sin bloquear la descarga de la página (fuente: developer.mozilla.org)
- Configurar cabeceras de caché en el documento HTML para evitar solicitudes repetidas al servidor (fuente: web.dev)
- Usar `<video>` con `preload="none"` o `preload="metadata"` para evitar descargas innecesarias de video (fuente: web.dev)
- Mover tareas computacionalmente costosas a Web Workers para no degradar la capacidad de respuesta del hilo principal (fuente: web.dev)

## Errores nuevos propuestos
- Usar `Date` timestamps para benchmarking en lugar de la Performance API de alta precisión (fuente: developer.mozilla.org)
- Confiar únicamente en mediciones de laboratorio sin complementar con RUM (Real User Monitoring) (fuente: web.dev)
- No cachear el HTML, obligando al navegador a solicitar el documento completo en cada visita (fuente: web.dev)
- Ejecutar tareas pesadas en el hilo principal sin usar Web Workers, degradando la capacidad de respuesta (fuente: web.dev)

## Contradicciones detectadas
- Ninguna contradicción detectada entre los destilados y las reglas/errores existentes.
```