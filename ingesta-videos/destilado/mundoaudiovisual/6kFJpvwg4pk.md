# DJI MINI 3 PRO
**Fuente:** mundoaudiovisual | https://youtu.be/6kFJpvwg4pk

## Qué enseña
Cómo grabar un Hyperlapse diurno y repetir exactamente la misma trayectoria de vuelo por la noche usando los waypoints guardados en el DJI Mini 3 Pro. Luego enseña a editar ambas secuencias en Lightroom, estabilizarlas en After Effects y combinarlas en DaVinci Resolve para crear una transición día-noche profesional.

## Lecciones accionables
- Para grabar el Hyperlapse diurno: ajusta ISO 100 y velocidad de obturación f/1.15, ve a la función Hyperlapse → modo "Path" (trayectoria), define el primer punto de trayectoria encuadrando el gimbal hacia el edificio, define un segundo punto de trayectoria mirando hacia la carretera, configura duración a 14 segundos (350 fotos), inicia la grabación.
- Para repetir la misma trayectoria nocturna: cambia los parámetros (velocidad de obturación a 2 segundos, temperatura de color bajarla casi al máximo), ve a Hyperlapse → "Set Path", haz clic en el icono del libro (donde se guardan los Hyperlapses previos), selecciona el Hyperlapse diurno guardado, configura intervalo a 3 segundos, velocidad de obturación a 2 segundos, presiona inicio (el dron vuelve automáticamente al punto de partida original).
- En Lightroom: importa fotos (File → Import Photos and Videos), en el módulo Develop edita una foto (curvas, temperatura de color, saturación, máscara de cielo bajando highlights y temperatura), presiona Ctrl+C para copiar ajustes, selecciona todas las fotos con Ctrl+A, clic derecho → Develop Adjustments → Paste Develop Adjustments → selecciona "Replace Masks", exporta con nombre "Sequence" + "Day" (File → Export → formato JPG, máxima calidad).
- En After Effects: crea nueva composición 3840x2160, 25 fps, duración 20 segundos, importa la secuencia de fotos marcando "Import Sequence", arrastra a timeline, aplica Warp Stabilizer (Presets → "Warp Stabilization"), en Advanced selecciona "Detailed Analysis" y "Enhanced Reduction", guarda valores de posición/escala para usarlos en la secuencia nocturna.
- En DaVinci Resolve: crea proyecto 3840x2160, 25 fps, importa ambos Hyperlapses, coloca el diurno arriba y el nocturno abajo, reduce opacidad del superior para alinear, ajusta zoom y posición para que coincidan, crea un compound clip, usa Control+R para ver fotogramas de velocidad, añade un punto de velocidad a 800%, usa Shift+C para curvar la transición.

## Reglas para agentes
- Usa el modo "Path" dentro de Hyperlapse para definir waypoints; no uses DJI Fly directamente para waypoints en Mini 3 Pro.
- Guarda siempre los waypoints de cada Hyperlapse (aparecen en el icono del libro) para poder repetir la misma trayectoria en otra sesión.
- Al pegar ajustes de Lightroom con máscaras, selecciona "Replace Masks" explícitamente (está desactivado por defecto).
- Al exportar desde Lightroom, nombra la secuencia como "Sequence" + identificador (ej. "Day", "Night") para mantener el orden.
- Al importar en After Effects, selecciona siempre "Import Sequence" para que las fotos se traten como video.
- Aplica Warp Stabilizer con configuración "Detailed Analysis" y "Enhanced Reduction" para Hyperlapses con velocidad de obturación lenta.
- En DaVinci Resolve, usa un compound clip antes de aplicar la rampa de velocidad para mantener la transición sincronizada.

## Errores comunes que evita o menciona
- No usar DJI Fly para waypoints en Mini 3 Pro; la función solo funciona dentro del modo Hyperlapse.
- Olvidar que los waypoints se guardan automáticamente en el "libro" de Hyperlapse y se pueden reutilizar para repeticiones nocturnas.
- No copiar las máscaras al pegar ajustes en Lightroom (están desactivadas por defecto, hay que seleccionar "Replace Masks").
- No usar "Import Sequence" en After Effects, lo que importaría las fotos como archivos individuales en lugar de una secuencia de video.
- No ajustar la temperatura de color nocturna aunque se dispare en RAW (el RAW tiene el rango completo, pero es recomendable ajustarla para facilitar la edición).