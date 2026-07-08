# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 10 - Tracking o Rastreador Plano
**Fuente:** mundoaudiovisual | https://youtu.be/8q70C-jziUo

## Qué enseña (2-3 líneas)
Este capítulo enseña a usar el rastreador plano (Planar Tracker) en Fusion para crear un plano a partir de un video, rastrear su movimiento y aplicar transformaciones a elementos como texto, logrando que sigan la perspectiva y el movimiento de la cámara. Se explica el flujo completo: dibujar el plano, asignar fotograma de referencia, rastrear, y conectar el nodo Planar Transform para añadir contenido.

## Lecciones accionables
- **Acceder al Planar Tracker:** En el panel Fusion, presiona `Bloq Mayús` + `Barra espaciadora` y escribe `tracker`. Selecciona `Planar Tracker` (rastreador plano) de la lista de herramientas.
- **Dibujar el plano a rastrear:** Con el cursor en forma de cruz sobre el visor, haz clic para marcar los cuatro puntos del plano (ej. fachada de un edificio). Cierra el polígono volviendo al primer punto.
- **Asignar fotograma de referencia:** En la herramienta Planar Tracker, haz clic en `Set` para definir el fotograma actual (ej. frame 160) como referencia. Esto es obligatorio para que el programa sepa qué rastrear.
- **Rastrear el plano:** Usa los botones de avance (`>`) y retroceso (`<`) en la herramienta para rastrear el movimiento hacia adelante y atrás en toda la duración del clip. El programa genera automáticamente los contornos del plano.
- **Crear nodo Planar Transform:** Una vez completado el rastreo, haz clic en `Create Planar Transform` (crear transformación planar). Esto genera un nodo `PlanarTransform` que hereda el movimiento rastreado.
- **Conectar nodos para aplicar el efecto:**
    - Elimina el nodo `PlanarTracker` (ya no es necesario).
    - Conecta el nodo `PlanarTransform` al fondo (`Background`).
    - Añade un nodo `Merge` (fusionar) con fondo amarillo y primer plano conectado al `PlanarTransform`.
    - Conecta el `Merge` al `MediaOut`.
- **Añadir texto rastreado:** Inserta un nodo `Text+` (texto), escribe el contenido (ej. "hola"), y conecta su salida al nodo `PlanarTransform`. El texto seguirá automáticamente el movimiento y perspectiva del plano rastreado.
- **Ajustar posición del texto:** Selecciona el nodo `Text+` y modifica su posición, tamaño y rotación en el visor para que se alinee con el plano (ej. sobre el edificio).
- **Añadir múltiples elementos rastreados:** Duplica el nodo `PlanarTransform` (copiar y pegar) para cada nuevo elemento. Conecta cada `PlanarTransform` a un nodo `Merge` independiente y añade texto u otros elementos a cada uno.

## Reglas para agentes
- Usa `PlanarTracker` cuando necesites rastrear una superficie plana en movimiento (ej. fachada, cartel, pantalla) para pegar texto, imágenes o gráficos que sigan su perspectiva.
- Siempre asigna un fotograma de referencia (`Set`) antes de iniciar el rastreo; sin esto, el rastreo no funcionará.
- Después de rastrear, elimina el nodo `PlanarTracker` y usa solo el `PlanarTransform` para aplicar el efecto.
- Conecta el elemento a rastrear (ej. `Text+`) a la entrada del `PlanarTransform`, no al `PlanarTracker`.
- Usa `Merge` con fondo amarillo para combinar el elemento rastreado con el video original.
- Para múltiples elementos, duplica el `PlanarTransform` y usa un `Merge` independiente por cada elemento.

## Errores comunes que evita o menciona
- **No asignar fotograma de referencia:** Si no se hace clic en `Set`, el programa no entiende qué rastrear y el proceso falla.
- **Mantener el nodo PlanarTracker conectado:** Una vez creado el `PlanarTransform`, el `PlanarTracker` ya no es necesario y debe eliminarse para evitar conflictos.
- **No conectar el elemento al PlanarTransform:** El texto u otro elemento debe conectarse al `PlanarTransform`, no directamente al `PlanarTracker`, para que herede el movimiento rastreado.