# I Created 3D Models with AI and Used Them in Apple Motion. Here's How it Went.
**Fuente:** jennjagerpro | https://youtu.be/XEICZnEFq_M

## Qué enseña
Cómo generar modelos 3D con IA usando Meshy, importarlos a Apple Motion como archivos USDZ, y animarlos con texto 3D, transiciones con overshoot, iluminación multicapa y corrección de imperfecciones de malla usando filtros de borde.

## Lecciones accionables
- **Generar modelos 3D con Meshy:** Usar el sitio Meshi (meshi.ai) para crear modelos 3D desde prompts de texto o imágenes fijas; exportar como USDZ.
- **Configurar proyecto en Apple Motion:** Preset 4K Ultra HD, frame rate 24 fps, duración 8 segundos. Activar 3D agregando una cámara (menú Objeto > Cámara).
- **Importar y escalar modelo USDZ:** Arrastrar archivo .usdz al panel de proyecto. En Inspector > pestaña "3D Object" > Unit Size > Custom = 580. En Orientation > rotar X a 90°.
- **Duplicar y reemplazar modelos manteniendo parámetros:** Duplicar capa del modelo original (Cmd+D), luego arrastrar nuevo modelo USDZ desde Finder sobre la copia en el panel de proyecto para heredar tamaño y rotación.
- **Crear texto curvo 3D:** Herramienta Texto > escribir texto. En Inspector > Text > Layout > Layout Method = "Path" > Path Options > Open Spline → "Circle". Ajustar Radius = 2000, Path Offset ≈ 13. En Appearance > activar "3D Text", ajustar Depth. Material = "Multiple" para colores distintos en front/back/sides.
- **Aplicar borde doble al texto:** Seleccionar texto > Filters > Border > Stroke. Primer stroke: width ancho, color oscuro del objeto. Duplicar stroke, segundo: color más claro, width fino, offset alto para efecto de contorno flotante.
- **Animar fondo con keyframes de color:** Agregar Generator > Color Solid. En Inspector > Color, agregar keyframe al final de cada segmento, avanzar 3-5 frames con flecha derecha, cambiar color para transición gradual.
- **Animar entrada de texto y modelo:** Texto: keyframe en Y Position a 5 frames del inicio, segundo keyframe 20 frames después. Volver al primero, arrastrar Y fuera de cuadro. En Keyframe Editor, ajustar curva de movimiento (forma de "S" suave). Modelo: mismo proceso comenzando 10 frames después.
- **Añadir rotación continua:** Modelo: keyframe en Rotation Y (ej: -15°) al inicio, keyframe al final del segmento (+15°), dejar keyframes lineales.
- **Agrupar por elemento:** Seleccionar modelo + su texto correspondiente > Cmd+G para agrupar. Renombrar grupos.
- **Transición entre grupos con Overshoot:** Seleccionar grupo maestro > Behaviors > Parameter > Overshoot. Apply To = Properties > Transform > Rotation > Z. Start Value = -200, End Value = 44, Ramp Duration = 7%. Ajustar Start Offset y End Offset en Keyframe Editor para que la acción ocurra entre la transición de un grupo a otro.
- **Contrarrestar overshoot en cada subgrupo:** En cada grupo hijo, en Rotation Z, aplicar valor opuesto al overshoot (ej: grupo chocolate chip = +200, grupos sugar y oatmeal = -44) para mantener orientación correcta.
- **Segunda transición con Overshoot en X:** Duplicar comportamiento Overshoot, resetear parámetros. Apply To = Rotation X. Start Value = 0, End Value = 360°, Ramp Duration = 12%. Ajustar offsets para segunda transición.
- **Iluminación 3D:** Agregar luz (Add Object > Light). En vista Left, mover luz hacia adelante en eje Z (flecha azul) hacia la cámara. Mover también modelos y textos hacia adelante en Z. Aumentar Intensity de la luz. Agregar luz de relleno: Add Object > Light > Setup > Back Lit, reducir intensidad.
- **Corregir poros en modelos 3D con filtro Stroke:** Seleccionar modelo > Filters > Border > Stroke. En Stroke, cambiar a Gradient. Color pick del color base del modelo, duplicar color tag (Option+arrastrar) para crear ombre. Ajustar posición del gradiente en canvas con controles on-screen. Reducir Width al mínimo que oculte los poros.
- **Ajustar duración de capas:** Mover playhead al punto de corte, seleccionar capa, presionar O para recortar al playhead.

## Reglas para agentes
- Usa preset 4K Ultra HD, 24 fps, duración 8s cuando crees proyectos de animación 3D en Apple Motion.
- Siempre activa 3D agregando una cámara antes de importar modelos 3D.
- Usa Unit Size = Custom con valor 580 y rotación X = 90° para modelos USDZ de alimentos.
- Para heredar parámetros de un modelo a otro, duplica la capa original y arrastra el nuevo modelo sobre la copia en el panel de proyecto.
- Cuando uses texto curvo, establece Layout Method = "Path" y Path Options = "Circle" con Radius = 2000.
- Para texto 3D, activa "3D Text" en Appearance y usa Material = "Multiple" para colores separados en front/back/sides.
- Nunca dejes modelos 3D con poros visibles sin aplicar filtro Stroke con gradiente para ocultarlos.
- Para transiciones entre grupos, usa Overshoot behavior con Start Offset y End Offset ajustados manualmente en el Keyframe Editor.
- Siempre contrarresta el valor del Overshoot en cada subgrupo hijo con el valor opuesto en Rotation Z o X.
- Cuando agregues luces, mueve luces, modelos y textos hacia adelante en eje Z (hacia la cámara) para evitar efecto "ghoulish".

## Errores comunes que evita o menciona
- **Modelos 3D con poros o imperfecciones:** Los modelos generados por Meshy no son perfectos; la solución ideal es limpiarlos en Blender, pero como workaround se usa filtro Stroke con gradiente para disimular los agujeros.
- **Luces y objetos en la misma posición Z:** Si la luz, el modelo y el texto están en el mismo plano Z, la iluminación se ve plana y "ghoulish". Solución: mover todo hacia adelante en Z hacia la cámara.
- **No usar Keyframe Editor para curvas de movimiento:** Los keyframes lineales dan animaciones rígidas; hay que ajustar la forma de la curva en el Keyframe Editor para movimientos suaves y naturales.
- **Overshoot aplicado sin offsets:** Si no se ajustan Start Offset y End Offset, la transición ocurre en todo el proyecto en lugar de solo entre los segmentos deseados.
- **No contrarrestar overshoot en subgrupos:** Si no se aplica el valor opuesto de rotación en cada grupo hijo, los elementos quedan girados incorrectamente durante toda la animación.