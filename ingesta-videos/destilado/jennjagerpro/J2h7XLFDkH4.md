# Apple Motion Text Tutorial 
**Fuente:** jennjagerpro | https://youtu.be/J2h7XLFDkH4

## Qué enseña
Dos técnicas de texto dinámico con temática nocturna en Apple Motion: un efecto de texto tipo disco giratorio con reflejos parpadeantes, y un letrero de neón parpadeante sobre fondo de ladrillos. Ambas usan behaviors, filtros y animación 3D.

## Lecciones accionables
- **Efecto disco text:**
  1. Crear texto con herramienta Text, fuente Impact, tamaño 70, alineación centrada. Resetear posición en Properties.
  2. Agregar cámara: Add Object > Camera (proyecto pasa a 3D).
  3. Seleccionar texto, presionar botón **Replicate** (esquina superior derecha).
  4. En Inspector: dejar Rectangle y Tile Fill. Cambiar Size a grande. Columns: 10, Rows: 34. Tile Offset: 70%.
  5. Color Mode: **Over Pattern**. En gradiente: primer swatch gris claro, agregar swatch central (púrpura), extremos gris claro.
  6. Keyframe **Color Repetitions**: inicio = 5, final = 100.
  7. Activar casilla **3D** en el replicador.
  8. Aplicar filtro: Filters > Distortion > Sphere. Reducir Size para ajustar.
  9. Seleccionar el **Group** que contiene el replicador. Cambiar herramienta a **Anchor Point** (menú desplegable en canvas o clic derecho). En Properties > Anchor Point, cambiar Z a valor negativo.
  10. Keyframe Rotation Y del Group: inicio = -40, final = +40.

- **Efecto neon sign:**
  1. Fondo: agregar imagen de ladrillos. Aplicar filtros: Gaussian Blur, Color > Contrast, Gradient Colorize, Hue/Saturation.
  2. Texto de referencia: fuente script (ej. Sign Painter), palabra "neon" en minúsculas, tamaño grande, centrado.
  3. Trazar con **Bézier** sobre las letras. Agregar underline.
  4. Seleccionar Bézier en project pane. Reducir Width. Shape Style > Traditional > **3D Brush**.
  5. Ocultar texto de referencia (desmarcar en project pane).
  6. En Geometry: aumentar **Roundness** para suavizar trazo.
  7. En Stroke: Stroke Color Mode = **Color Over Stroke**. Eliminar swatches extremos del gradiente, dejar 2: rosa y púrpura, agregar centro teal. Ajustar brillo del rosa.
  8. Duplicar Bézier 2 veces (clic derecho > Duplicate). Renombrar: **lights**, **lights off**, **glow**.
  9. **lights**: aplicar filtro Filters > Glow > Aura. Aumentar Outer Radius, reducir Brightness ligeramente.
  10. **lights off**: en Shape > Stroke, eliminar todos los swatches menos uno. Cambiar color a **Iron** (gris oscuro).
  11. **glow**: aplicar filtro Filters > Glow > Light Rays. Aumentar Light Rays. Agregar Gaussian Blur, subir mucho. En Properties, reducir Opacity.
  12. Activar las 3 versiones.
  13. Seleccionar **lights**. Behaviors > Parameter > **Randomize**. En Inspector: Apply To > Properties > Blending > Opacity. Amount: 265, Frequency: 17, Noisiness: 1, End Offset: 22.
  14. Seleccionar **glow** en project pane, clic derecho > Group (para agruparlo). En timeline, copiar el behavior Randomize de lights, pegarlo en el grupo del glow (clic derecho > Paste). El parpadeo queda sincronizado.

## Reglas para agentes
- Usa **Replicate** + **Sphere filter** + **3D** en replicador para crear efectos de globo o disco giratorio.
- Cuando trabajes con rotación 3D en un grupo, ajusta primero el **Anchor Point Z** a un valor negativo antes de keyframear Rotation Y.
- Para neón, usa **Bézier** con **3D Brush** en Shape Style y aumenta **Roundness** en Geometry para suavizar trazos.
- Siempre crea 3 copias del trazo (lights, lights off, glow) para simular apagado realista del neón.
- Para parpadeo sincronizado, aplica **Randomize** behavior a la capa lights y luego **copia y pega** ese behavior en el grupo que contiene glow.
- Nunca apliques Randomize directamente sobre glow si ya modificaste su opacidad manualmente; agrupa glow y aplica el behavior al grupo.
- Usa **Color Over Stroke** en Stroke para gradientes multicolor en neón; elimina swatches sobrantes para control preciso.

## Errores comunes que evita o menciona
- Olvidar resetear posición del texto en Properties antes de aplicar efectos 3D.
- No ajustar el Anchor Point Z antes de rotar el grupo, lo que causa rotación incorrecta.
- Dejar el texto de referencia visible después de trazar con Bézier (debe ocultarse).
- Aplicar Randomize directamente sobre glow cuando ya tiene opacidad ajustada manualmente, sobrescribiendo el valor deseado.
- No sincronizar el parpadeo del glow con el de lights, resultando en glow visible cuando la luz debería estar apagada.