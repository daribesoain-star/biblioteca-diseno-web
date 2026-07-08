# Apple Motion CTA Tutorials
**Fuente:** jennjagerpro | https://youtu.be/C69pRNdMU0M

## Qué enseña (2-3 líneas)
Tutorial que muestra tres técnicas distintas para crear Call to Action (CTA) animados en Apple Motion, donde el logo y el texto interactúan entre sí con movimientos rápidos y realistas. Cubre keyframing manual, uso de filtros de distorsión, behaviors de overshoot, máscaras y animación de líneas para lograr efectos profesionales.

## Lecciones accionables
- **CTA 1 - Efecto de rebote con Disk Warp:**
  - Aplicar filtro: `Filters > Distortion > Disk Warp`
  - Ajustar parámetros en Inspector: subir `Radius` y modificar `Center` en eje Y para dar curvatura al logo
  - Keyframing manual: colocar playhead en 1s, crear keyframe en `Center > Y` con valor alto (ej. 3200); avanzar 16 frames, keyframe en Y=550; avanzar a 128 frames, keyframe en Y=3200; avanzar a 208 frames, keyframe en Y=2500; avanzar más, keyframe en Y=750
  - Los keyframes se acercan progresivamente para simular gravedad (efecto bouncing ball)
  - Revelar Keyframe Editor: click en los tres diamantes en el centro de la pantalla (derecha)
  - Seleccionar todos los keyframes, click derecho, cambiar interpolación de `Linear` a `Bezier` (curvas suaves)
  - Texto: crear texto con `Text Tool`, fuente Lotto Latto Bold, centrar alignment
  - Keyframe texto: playhead en frame 20, keyframe en `Properties > Position > Y` (fuera de cuadro); sincronizar keyframes con los del Disk Warp (misma posición temporal)
  - Ajustes finales: seleccionar texto en Project Pane, click derecho > `Group` para mover posición sin afectar keyframes; zoom en canvas para alinear texto con bordes del logo

- **CTA 2 - Rotación con Overshoot Behavior:**
  - Reducir tamaño del logo ligeramente
  - Cambiar anchor point: `Anchor Point Tool` (menú desplegable de cursores) o click derecho > `Anchor Point`; mover blue dot a esquina inferior derecha del logo
  - En Inspector: `Rotation > Z` = 90°, crear keyframe; avanzar 12 frames, keyframe en Z=0°
  - En Keyframe Editor: seleccionar keyframes, cambiar interpolación a `Ease Both`
  - Añadir filtro de color: `Filters > Color > Colorize`; playhead al inicio, remapear `Blacks` a blanco, `Whites` a blanco (logo blanco); keyframe en `Mix`; playhead cerca del aterrizaje del logo, keyframe en Mix; playhead alineado con keyframe de rotación, keyframe en Mix y bajar Mix a 0 (color aparece al aterrizar)
  - Texto: escribir website, alinear bajo la letra "s" del logo
  - Anchor point del texto: centrado horizontal y en la parte superior (hinge point arriba)
  - Behavior: `Behaviors > Parameter > Overshoot`; aplicar a `Properties > Transform > Rotation > X`
  - En timeline: acortar duración del Overshoot; en Inspector: `Start Value` = 90, `End Value` = 0; ajustar `Ramp Duration` hacia abajo para más bounce
  - Extra: en logo, avanzar 2 frames desde aterrizaje, keyframe en Z=1.1°; avanzar 1 frame, keyframe en Z=0°

- **CTA 3 - Deslizamiento con máscara y línea:**
  - Usar versión apilada del logo; logo a la izquierda, texto (dos líneas) a la derecha
  - Activar grid para alinear: `Grid` toggle
  - Trabajar hacia atrás: playhead en 1s, keyframe en `Position` para logo y texto (posición final perfecta)
  - Retroceder 0.5s: keyframe en Position para texto, cambiar X al extremo derecho; keyframe en Position para logo, cambiar X al extremo izquierdo
  - Línea divisoria: mantener Shift mientras se dibuja línea horizontal en canvas; en Inspector > Properties: centrar X=0, ajustar Y; en Shape: reducir ancho, color extraído del logo (usar cuentagotas)
  - Animación de línea: playhead en keyframes de logo/texto, keyframe en `Last Point Offset` y `First Point Offset` (valores actuales); retroceder 10 frames, keyframe en ambos offsets = 50% (línea invisible, se dibuja desde el centro)
  - Máscara para logo: seleccionar logo en Project Pane, click derecho > `Group`; en el grupo (no el logo), añadir `Mask > Rectangle Mask`; dibujar máscara alineada con la línea; en Inspector: marcar `Invert Mask`
  - Máscara para texto: seleccionar grupo del texto, añadir `Rectangle Mask`, marcar `Invert Mask` (o dibujar del otro lado sin invertir)

## Reglas para agentes
- Usa keyframing manual en lugar de Overshoot Behavior cuando necesites sincronizar frames exactos entre múltiples elementos animados
- Siempre agrupa (Group) un elemento animado antes de hacer ajustes finales de posición para no alterar los keyframes existentes
- Cambia la interpolación de keyframes a Bezier (curvas suaves) para movimientos orgánicos tipo bouncing ball
- Usa Ease Both en keyframes de rotación para transiciones suaves de inicio y fin
- Cuando dibujes líneas rectas, mantén presionada la tecla Shift para garantizar que sea perfectamente horizontal o vertical
- Para animar una línea desde el centro hacia los extremos, keyframe tanto Last Point Offset como First Point Offset al mismo valor (ej. 50%)
- Aplica máscaras al nivel del grupo (Group), no al elemento individual, para que la máscara sea independiente de la animación de posición
- Usa el cuentagotas (eyedropper) para extraer colores directamente del logo y mantener consistencia visual

## Errores comunes que evita o menciona
- No usar Overshoot Behavior cuando se necesita sincronización frame a frame entre elementos (mejor keyframing manual)
- No mover el texto directamente en el canvas después de keyframear posición (se arruinan los keyframes); en su lugar, agrupar y mover el grupo
- No olvidar cambiar la interpolación de keyframes de Linear a Bezier para movimientos de rebote realistas
- No alinear elementos sin usar el grid o zoom cuando se requiere precisión milimétrica
- No aplicar máscaras directamente al elemento animado si tiene keyframes de movimiento; aplicar al grupo contenedor