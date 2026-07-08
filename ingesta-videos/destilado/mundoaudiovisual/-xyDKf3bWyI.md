# TIMELAPSE - What is it and how to create it with your camera? COMPLETE TUTORIAL
**Fuente:** mundoaudiovisual | https://youtu.be/-xyDKf3bWyI

## Qué enseña
Define qué es un timelapse (video compuesto de fotografías tomadas a intervalos fijos con velocidad de obturación específica) y explica el flujo completo: configuración de cámara, ajuste de exposición en Lightroom, estabilización y ensamblaje en DaVinci Resolve. Distingue entre timelapse (cámara estática) e hyperlapse (cámara en movimiento).

## Lecciones accionables
- Configurar la cámara para que tome una foto cada **2 segundos** (intervalo recomendado por el creador).
- Disparar **1200 fotos** para obtener un video final de **40 segundos** a **30 fps** (cálculo: 1200 fotogramas ÷ 30 fps = 40 s).
- Ajustar la **velocidad de obturación a 1/4 de segundo** para lograr el efecto de desenfoque de movimiento en autos y sujetos.
- Usar un **filtro ND variable** (como "gafas de sol para el lente") para reducir la entrada de luz al sensor cuando se usa obturación lenta.
- En Lightroom: ir al módulo Develop → activar **Lens Correction** en modo **Auto** para corregir la lente (detecta lente Sigma 16mm automáticamente).
- Enderezar el horizonte manualmente con la herramienta de rotación.
- Ajustes de exposición recomendados: subir **Shadows**, bajar **Highlights**, bajar **Blacks**, aplicar **Dehaze**, ajustar **Intensity**.
- En la pestaña **Tone and Saturation**: saturar **Blues**, **Aquamarines**, **Greens** y **Yellows**; reducir saturación de **Greens** ligeramente.
- Para eliminar una mancha en el sensor: usar **Spot Remover** → pintar sobre la mancha → arrastrar para corregir.
- Copiar ajustes con **Ctrl+C** (Windows) y pegar en todas las fotos seleccionadas con **Paste Settings**.
- Exportar desde Lightroom: seleccionar carpeta de destino, calidad **máxima**, formato **JPEG**.
- En DaVinci Resolve: crear nuevo proyecto → configurar resolución **3840 x 2160 (4K)** y **30 fps**.
- Arrastrar todas las fotos seleccionadas desde el explorador directamente a la línea de tiempo de DaVinci Resolve → el software detecta automáticamente la secuencia como un clip de video.
- Para eliminar bordes negros: hacer **zoom** en el clip hasta cubrir todo el encuadre y ajustar posición en **eje Y** para centrar la composición (ej: mantener la carretera visible).
- Exportar en módulo **Delivery**: nombre "final timelapse", formato **H.264**, encoder **NVIDIA** (si hay GPU compatible), bitrate **alta calidad**, agregar a cola de renderizado y presionar **Render**.

## Reglas para agentes
- Usa intervalo de **2 segundos** entre fotos cuando el sujeto tenga movimiento moderado (autos, nubes).
- Ajusta la velocidad de obturación a **1/4 s** siempre que se busque desenfoque de movimiento en timelapses diurnos.
- Aplica **filtro ND variable** obligatoriamente cuando la obturación lenta provoque sobreexposición.
- Calcula la duración final como **número de fotos ÷ fps** (ej: 1200 ÷ 30 = 40 s).
- En Lightroom, copia ajustes con **Ctrl+C** y pégalos con **Paste Settings** sobre todas las fotos seleccionadas para mantener consistencia.
- En DaVinci Resolve, arrastra **todas las fotos a la vez** desde la carpeta a la línea de tiempo para que se agrupen como un solo clip.
- Nunca uses **estabilización en Lightroom** para timelapses; hazla en DaVinci Resolve, Premiere o After Effects.
- Nunca exportes sin verificar que los bordes negros laterales estén cubiertos con zoom y reposicionamiento.

## Errores comunes que evita o menciona
- No confundir timelapse (cámara estática) con hyperlapse (cámara en movimiento, como con drone).
- No usar video acelerado en lugar de fotos secuenciales: el timelapse permite mayor resolución (ej: 48 MP vs 4K) y efectos de desenfoque imposibles en video.
- No olvidar que la exposición puede variar entre fotos (el histograma lo muestra); se corrige con ajustes globales en Lightroom.
- No omitir la corrección de lente (Lens Correction en Auto) para evitar distorsiones.
- No dejar manchas de sensor sin eliminar con Spot Remover; copiar ese ajuste también al pegar en todas las fotos.
- No asumir que el spot remover funciona al 100% en todas las fotos; verificar visualmente.
- No exportar sin configurar la resolución del proyecto en 4K (3840 x 2160) y 30 fps en DaVinci Resolve.
- No renderizar sin seleccionar el encoder adecuado (NVIDIA si hay GPU, de lo contrario CPU).