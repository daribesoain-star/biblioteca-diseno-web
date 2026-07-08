# Curso de Motion 5 tutorial en español (Nivel Avanzado) - 🎬 * Capítulo 2 - Título en Piscina Luminosa
**Fuente:** mundoaudiovisual | https://youtu.be/ndcd37FZ834

## Qué enseña (2-3 líneas)
Este capítulo enseña a crear una composición 3D de una piscina iluminada con focos y rayos de luz, incluyendo la construcción del suelo, la piscina, el agua con efectos de ondas y caustics, y la animación de cámara. Se practican máscaras de imagen, generadores, filtros, comportamientos de cámara y replicadores para lograr un título luminoso realista.

## Lecciones accionables
- **Configurar proyecto:** 1080p, 24 fps, duración 15 segundos. Ocultar línea de tiempo con `Command + 7`.
- **Crear fondo:** Ir a Generators > Solid Color, aplicar, color negro. Nombrar grupo "Background", bloquearlo.
- **Crear suelo:** Nuevo grupo, Generators > Board. En Inspector: Color 1 azul oscuro, limitar borde del tablero, tamaño 4000. Propiedades: posición Z = -1000, rotación X = -90°.
- **Añadir cámara:** Objeto > Nueva Cámara, lente 13mm. Propiedades: posición Z = -500, rotación X = -10°.
- **Animación de cámara:** Library > Behaviors > Camera Behaviors > Sweep. Inspector: inicio -45°, fin 45°.
- **Crear piscina:** Grupo en 2D, Shape > Rectangle. Propiedades > Reset Parameters. Shape > Geometry > Convert to Points. Punto 1: X=-400, Y=200; Punto 2: X=400, Y=200; Punto 3: X=400, Y=-200; Punto 4: X=-400, Y=-200. Volver a Properties, rotación X = -90°. Grupo a 3D con `Control + D`.
- **Hacer agujero en suelo:** Seleccionar Board, añadir Image Mask, elegir rectángulo, invertir máscara.
- **Borde de piscina:** Duplicar rectángulo (`Command + D`), nombrar "pool edge". Style > Fill Color = color fondo. Properties > Scale: X=110, Y=120. Añadir Image Mask con el rectángulo "cuts", invertir máscara.
- **Fondo de piscina:** Duplicar "cuts", nombrar "pool bottom". Style > Fill Color = azul claro. Properties: posición Y=-200, Z=-200, rotación 0.
- **Paredes de piscina:** Duplicar "pool bottom" para izquierda (X=-400, rotación Y=90) y derecha (X=400, rotación Y=-90).
- **Base de piscina:** Duplicar "cuts", nombrar "pool base". Properties: profundidad Y=-40. Render > Better.
- **Agua:** Sobre "pool base", Style > mismo color. Añadir Generators > Clouds. Inspector: quitar blanco, añadir control al final, opacidad izquierda 0. Room: 35, Face: 12 vertical y horizontal. Properties: posición Y=-39, rotación X=-90°. Añadir Image Mask con "cuts".
- **Movimiento de agua:** Library > Filters > Distortion > Submarine. Inspector: Size=0.2, Speed=0. Duplicar Submarine, aplicar ecuación: 0.1 y 0.1.
- **Caustics:** Library > Generators > Caustics. Inspector: Size=0.1, Refraction=200, Brightness=50. Properties: posición Y=0.38, rotación 0. Añadir Image Mask con "cuts".
- **Reflejos:** Duplicar caustics para fondo (posición Z=-199, rotación X=0, Size=0.5), izquierda (X=-399, rotación Y=90), derecha (X=399, rotación Y=-90).
- **Focos halógenos:** Nuevo grupo en 2D. Shape > Circle (con tecla Option). Style: Fill amarillo, Outline gris, Width=10. Transform: centrar. Size: Height=600, Width=2, Points=16. Properties: rotación X=-90°. Grupo a 3D, mover dentro de grupo "room".
- **Rayos de luz:** Duplicar grupo de focos, nombrar "rays". Library > Filters > Glow > Luminous Rays. Grupo a 2D. Inspector: Number of Rays=100, Center Y=-3. Grupo a 3D.
- **Blur direccional:** Library > Filters > Blur > Directional Blur. Inspector: Amount=75, Angle=90°.
- **Ajuste de color:** Library > Filters > Color > OpenXR Hue Assignment. Inspector: Exposure=6.
- **Brillo de borde:** Duplicar "pool edge", nombrar "pool blur". Style: Fill Color, Anti-aliasing=150. Properties: Blend Mode=Screen, Opacity=20.
- **Brillo en focos:** Duplicar replicator de focos. Properties: Blend Mode=Add. Library > Filters > Blur > Gaussian Blur. Inspector: Amount.
- **Texto:** Nuevo grupo. Texto "Mundo Audiovisual". Font: Dancing. Properties: centrado, reset. Añadir líneas con Option + arrastre. Posición Z=-50 dentro de grupo de luces.
- **Zoom de cámara:** Library > Camera Behaviors > Zoom Layer. Inspector: Zoom hasta 30 al final. Ajustar inicio más grande y tilt.
- **Exportar:** Share > Export Video. Nombre "title in illuminated pool", Apple ProRes 4444, máxima calidad, Render > Better.

## Reglas para agentes
- Usa `Command + 7` para ocultar línea de tiempo y ganar espacio en canvas.
- Usa `Control + D` para alternar entre 2D y 3D en grupos.
- Usa `Command + D` para duplicar objetos y grupos.
- Usa la tecla Option al crear círculos para que partan del centro.
- Usa Image Mask con inversión para recortar agujeros en superficies.
- Usa Blend Mode = Screen o Add para efectos de luz y brillo.
- Usa Render > Better antes de exportar para máxima calidad.
- Nunca olvides resetear parámetros (Properties > Reset Parameters) antes de posicionar formas.
- Nunca apliques filtros de luz (Luminous Rays) sin antes poner el grupo en 2D para ajustar parámetros.

## Errores comunes que evita o menciona
- **Error de posición en el tablero:** El tablero debe tener posición Z=0, no -1000, para que la cámara lo vea correctamente.
- **Error de inicio de objetos:** Verificar que todos los objetos (luces, círculos, caustics) comiencen al inicio del proyecto (frame 0).
- **Error de rayos de luz:** Si los rayos no aparecen en 3D, aplicar Directional Blur con Amount=75 y Angle=90° para hacerlos visibles.
- **Error de dirección de rayos:** Si los rayos apuntan hacia abajo, ajustar la posición Y del grupo "rays" a 10 para que suban.
- **Error de caustics duplicados:** Revisar que no haya dos filtros Linear Overlay aplicados simultáneamente, ya que distorsionan el color del agua.