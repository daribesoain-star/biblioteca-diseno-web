# YouTube Hype Animation for FCP
**Fuente:** jennjagerpro | https://youtu.be/NRQfYc5MPYw

## Qué enseña (2-3 líneas)
Tutorial avanzado para crear una animación tipo "Hype" (versión 2026 de like/subscribe/campana) de YouTube en Apple Motion y publicarla como plantilla funcional en Final Cut Pro. Cubre desde la creación de una estrella fugaz con estela, un contador numérico estilo odómetro, hasta la implementación de rigs de pop-up para control de dígitos y parámetros publicables.

## Lecciones accionables
- **Configuración de proyecto:** 4K, 60 fps, duración 6 segundos, con "Final Cut Generator" seleccionado en el project browser.
- **Crear estrella:** Library > Shapes > Five-sided star. Inspector: cambiar fill y outline color, outline width amplio, order a "under fill". Geometry: aumentar roundness. Properties: scale 125%, rotate angle para coincidir con el icono original.
- **Dibujar estelas (trails):** Usar Bezier tool para dibujar formas curvas. Duplicar 2 veces, cambiar color y rotación de cada duplicado. Agrupar los 3 Bezier shapes en grupo "trails". La estrella en grupo propio "star".
- **Animación de estrella con motion path:** Seleccionar grupo "star" > Behaviors > Basic Motion > Motion Path. Reverse direction para que el endpoint sea el reposo final. Arrastrar starting point abajo junto a trails. Reducir duración: playhead en frame 50, seleccionar motion path, presionar O key. Añadir punto en motion path para curva. En behavior: Speed > Custom, abrir Keyframe Editor, modificar curva para acelerar y luego desacelerar (efecto "spring loaded").
- **Ocultar trails hasta que llegue estrella:** En grupo "star", dibujar rectangle al inicio del timeline, modificar angle. Seleccionar grupo "trails", right-click > Add Image Mask, soltar rectangle. Invert mask para revelar trails.
- **Animación dinámica de estrella:** Seleccionar estrella > Properties > Scale > añadir Logarithmic behavior. Playhead al inicio: start value = -125. Playhead en frame 50: seleccionar Logarithmic behavior, presionar O key. Duplicar behavior, cambiar "apply to" a Transform Rotation Z. Ajustar spin para suavizar esquinas de trails.
- **Contador numérico (odómetro):** Text tool, fuente Bold, tamaño 600. Escribir "1" enter "2" hasta "9", luego "0". Seleccionar todos, copiar, pegar otra vez (tener dos ciclos completos). Reducir line spacing. Agrupar como "column one".
- **Motion path para números:** Seleccionar grupo "column one" > Behaviors > Basic Motion > Motion Path. Zoom out para ver path. Twirl down control points: X values de point 1 y point 2 = 0. Y point 1 = -6800 (abajo del frame), Y point 2 = 1900 (fuera del frame arriba). Reducir duración a 50 frames (playhead en 50, O key). Speed > Custom, curva igual que shooting star.
- **Duplicar columnas:** Duplicar "column one" 4 veces (total 5 columnas). Renombrar. Modificar X position de cada una en Properties. Seleccionar las 5 > Object > Alignment > Distribute Horizontal Centers. Stagger en timeline: columna 1 al inicio, columna 2 un poco después, etc.
- **Máscara de recorte:** Agrupar las 5 columnas en grupo "numbers". Añadir rectangle mask desde herramientas de mask en canvas, alineado con shooting star.
- **Rig de pop-up para cada dígito:** Activar rulers. Arrastrar ruler line en punta de estrella. Seleccionar "column one" > Properties > Position Y > Add to Rig > Create New Rig > Add to New Pop-up. Renombrar snapshot 1 como "1". Modificar Y value hasta que el "1" (del segundo ciclo de números) esté en la ruler line. Crear snapshots para 2-9 y 0 (usar + para añadir más). Repetir para cada columna (no se pueden duplicar rigs).
- **Ajuste final:** Mover columna 1 un frame adelante para que no se vea en frame 0. Ajustar rectangle mask para que no se vean tops de caracteres.
- **Añadir coma:** Entre 2da y 3ra columna, añadir texto "," con scale menor. Behaviors > Basic Motion > Fade In/Fade Out: fade in 40 frames, fade out 0.
- **Texto "height me up":** Nuevo grupo "text group". Texto centrado, scale 214, posicionado debajo de números. Fade In/Fade Out: fade in 20 frames, fade out 0. Behaviors > Text > Highlighter > Scale Through: alargar duración en timeline, cambiar direction a "random".
- **Agrupar todo:** Seleccionar text group, shooting star group, numbers group > Group. Reposicionar centrado en frame.
- **Publicar parámetros para FCP:** Seleccionar cada rig > dropdown > Publish. Project > establecer default values. Seleccionar "numbers" group > Filters > Stylize > Fill. Publicar color swatch, renombrar a "numbers color", arrastrar arriba.
- **Fade out final:** Recortar elementos que excedan timeline (seleccionar, O key). En grupo principal: Fade In/Fade Out: fade in 0, fade out 20 frames.
- **Build in/out markers:** Playhead después de toda animación > right-click > Add Marker > edit > "build in optional". Playhead antes de fade out > Add Marker > edit > "build out optional". Aparecen checkboxes en published parameters.

## Reglas para agentes
- Usa "Final Cut Generator" como tipo de proyecto en Apple Motion cuando crees plantillas para FCP.
- Usa Logarithmic behavior para escalas y rotaciones que necesiten aceleración/deceleración natural.
- Usa Motion Path con Speed > Custom y curva en Keyframe Editor para animaciones con sensación "spring loaded".
- Nunca dupliques rigs en Apple Motion (no es posible); debes crear cada rig manualmente.
- Publica parámetros de rigs de pop-up y filtros de color para que sean editables en FCP.
- Usa build in/build out markers en la línea de tiempo para dar control de aparición/desaparición en FCP.
- Cuando crees contadores numéricos, incluye dos ciclos completos de números (1-9-0 repetido) para que el motion path tenga suficientes caracteres visibles.

## Errores comunes que evita o menciona
- No alinear correctamente los dígitos con la ruler line después de la animación (debe hacerse con el playhead después de que termine el motion path).
- Olvidar mover la primera columna un frame adelante para que no se vea el número inicial en frame 0.
- Hacer la máscara de recorte demasiado grande, dejando ver tops de caracteres.
- No ajustar la duración del motion path a 50 frames con la tecla O, resultando en animaciones demasiado largas o cortas.
- Intentar duplicar rigs (no es posible en Motion, hay que crearlos individualmente).