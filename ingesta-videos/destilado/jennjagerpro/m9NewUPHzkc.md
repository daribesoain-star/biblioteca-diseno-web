# Apple Motion Tutorial
**Fuente:** jennjagerpro | https://youtu.be/m9NewUPHzkc

## Qué enseña
Tres animaciones de carga (loading) en Apple Motion: un círculo con efecto write-on, una barra de progreso con stripes y gradiente, y un rectángulo oscilante con máscara y texto animado. Incluye técnicas de máscara de imagen, generadores, behaviors y keyframing.

## Lecciones accionables
- **Crear círculo con gradiente animado (loading 1):**
  1. Shape tool > Circle, Shift+click para círculo perfecto
  2. Inspector > Properties > Reset parameters para centrar
  3. Duración: 1 segundo + 20 frames (mover playhead, seleccionar círculo en timeline, presionar O)
  4. Shape > Shape Style > Abstract > Dots, reducir Spacing a 5%
  5. Shape > Stroke > Opacity over Stroke: añadir marcador de color, último punto opacidad 0 (negro)
  6. Stroke color mode: "Color over Stroke" (primer y último color iguales)
  7. Behaviors > Shape > Write On: dejar Shape Outline en "Draw", Direction "Forward", Speed "Ease Both"
  8. Keyframe Stroke Length: a mitad de animación valor 45, al final valor casi 0
  9. Duplicar círculo (right-click > Duplicate), superponer 7 frames, repetir hasta llenar 10 segundos
  10. Text tool: escribir "loading", centrar, Properties > Reset parameters
  11. View > Grid para alinear baseline centrado
  12. Behaviors > Parameter > Oscillate: Apply To > Properties > Blending > Opacity, Wave Shape "Sine", Phase 0, Amplitude 100, Speed 44

- **Crear barra de progreso con stripes (loading 2):**
  1. Library > Generators > Stripes, arrastrar a project pane
  2. Inspector: aumentar Width y Height (no Scale en Properties)
  3. Library > Generators > Gradient, colocar encima de Stripes
  4. Ajustar Start Y y End Y del gradiente para efecto feather
  5. Gradient Width y Height igual que Stripes
  6. Properties > Blend Mode: "Add" (stripes negras se gradúan, blancas quedan)
  7. Agrupar ambos (Cmd+G), renombrar "stripes"
  8. Properties > Rotation: -30 grados
  9. Behaviors > Basic Motion > Motion Path
  10. Al final del timeline: reposicionar stripes hacia la derecha
  11. Al inicio: seleccionar Motion Path, arrastrar punto inicial más a la izquierda (Shift+click)
  12. Mutear grupo stripes
  13. Shape > Rectangle: dibujar rectángulo muy delgado centrado
  14. Shape > Outline: reducir Width a 10, cambiar color
  15. Geometry > Roundness: 20
  16. Properties > Reset parameters
  17. Duplicar rectángulo: en copia, Shape > Style > Fill ON, Outline OFF
  18. Activar grupo stripes, seleccionarlo
  19. Object > Image Mask, arrastrar rectángulo blanco (copia) a Mask Source
  20. Text tool: "loading", tamaño 103
  21. Library > Generators > Numbers: Start 0, End 100, Format > Percentage
  22. Format > Font Size: 103 (igual que loading)
  23. Properties > Reset parameters en ambos textos
  24. Agrupar loading + numbers como "text", reducir Y position
  25. Ajustar timing: arrastrar fin de numbers al punto donde stripes llenan rectángulo (valor 100)
  26. Duplicar numbers: en copia, Start = End value (100), sincronizar transición seamless

- **Crear rectángulo oscilante con máscara circular (loading 3):**
  1. Rectangle tool: dibujar rectángulo libre
  2. Shape > Style: Fill, Color > Gradient (colores a elección)
  3. Anchor Point tool (esquina inferior izquierda del canvas): reposicionar al centro superior del rectángulo (flecha verde)
  4. Behaviors > Parameter > Oscillate: Apply To > Properties > Transform > Rotation > Z, Wave Shape "Sine", Phase 0, Amplitude 19°, Speed 25
  5. Filters > Distortion > Bulge: reposicionar al tope del rectángulo
  6. Behaviors > Parameter > Oscillate (segundo): Apply To > Bulge Filter > Center > X, Wave Shape "Sine", Phase 0, Amplitude 0.17, Speed 27
  7. Ajustar Bulge: reducir Scale, aumentar Amount (hacer antes de aplicar behavior)
  8. Behaviors > Basic Motion > Motion Path: punto inicial arrastrar hacia abajo (Shift+click para vertical), punto final vertical
  9. Mutear rectángulo
  10. Circle tool: Shift+click para círculo perfecto
  11. Properties > Reset parameters
  12. Shape > Shape Style > Abstract > Dots, Spacing 5%
  13. Stroke > Stroke Color Mode: "Color over Stroke"
  14. Shape > Style: reducir Width a 4
  15. Duplicar círculo (Cmd+D): en copia, Fill ON, Outline OFF
  16. Activar rectángulo, seleccionarlo
  17. Object > Image Mask, arrastrar círculo blanco (copia) a Mask Source
  18. Text tool: "loading", centrado, X position 0
  19. Text > Tracking: aumentar spacing entre letras
  20. Behaviors > Text > Basic > Fade Characters Left
  21. En behavior: From "Through", Spread 29, Direction "Forwards", Speed "Ease Out", Loops 5
  22. En timeline: alargar behavior hasta el final del proyecto

## Reglas para agentes
- Usa "Color over Stroke" en lugar de "Use Brush Color" cuando necesites gradiente en outline de círculo con dots
- Aplica el behavior Oscillate al Bulge Filter ANTES de modificar los valores del bulge (Scale, Amount) para evitar problemas de comportamiento
- Cuando uses Numbers generator, duplica el elemento y fija Start = End value para mantener el valor final estático sin interrupción
- Usa Shift+click al arrastrar puntos de Motion Path para garantizar movimiento vertical u horizontal perfecto
- Al resetear parámetros en Properties, hazlo siempre después de crear la forma para asegurar centrado exacto
- Para que el gradiente funcione en outline de círculo, primero aplica Shape Style > Abstract > Dots con Spacing 5%

## Errores comunes que evita o menciona
- No hay opción nativa de gradiente en Brush Type de outline; el workaround es usar Dots con Spacing al 5% y "Color over Stroke"
- Si aumentas Scale en Properties de Stripes, las rayas se agrandan incorrectamente; usa Width y Height en Inspector
- Alinear baseline del texto con Grid activado (View > Grid) para centrar exactamente dentro del círculo
- Si aplicas el behavior Oscillate al Bulge Filter después de modificar los valores del bulge, el behavior puede fallar
- El Numbers generator no tiene "end offset line" para mantener el valor final; la solución es duplicar y fijar Start = End