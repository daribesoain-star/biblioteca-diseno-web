# Light Wall Tutorial in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/TuIbGxtGa2Q

## Qué enseña
Construir desde cero una animación de pared de luces 3D en Apple Motion, incluyendo la creación de luces individuales con apariencia de bombillas, su replicación en cuadrícula, y dos métodos de animación: secuenciador de replicador y máscara de imagen con formas. También cubre el uso de capas clonadas para bucles y movimiento de cámara.

## Lecciones accionables
- **Crear proyecto 3D:** Nuevo proyecto → preset 4K, 24 fps, duración 10 segundos → Add Object → Camera (esto activa el espacio 3D)
- **Fondo de cuadrícula:** Library → Generators → Grid → arrastrar al proyecto → Inspector: Line Color = negro, Background Color = gris muy oscuro, Feather = 1, Line Width = 24, Background Width = 34, Background Height = 35
- **Círculo base (apagado):** Shape Tools → Circle → Shift + arrastrar para círculo perfecto → Properties → Reset Position → Shape tab → Fill = negro, Outline = off
- **Círculo de borde replicado:** Duplicar círculo → Fill = off, Outline = gris muy oscuro, Width = 27 → seleccionar en Project Pane → botón Replicate → Inspector → Shape → Line → marcar "Line 3D" → Start Point X = 0, End Point X = 0, End Point Z = 300, Points = 180
- **Sombra del círculo replicado:** Seleccionar círculo original (icono shape tool) → Properties → Drop Shadow → Show → valores por defecto
- **Bombilla interior (gradiente):** Shape Tools → Circle → Shift + arrastrar círculo más pequeño dentro del anterior → Properties → Reset Position → Shape → Outline = off, Fill = on, Fill Mode = Gradient → primer color = gris muy claro, segundo color = gris oscuro → Style → Type = Radial → ajustar X e Y de Start y End para suavizar gradiente
- **Grupo "off-light":** Seleccionar círculo negro + círculo replicado + círculo interior → clic derecho → Group → renombrar "off-light"
- **Grupo "on-light":** Duplicar grupo "off-light" → renombrar "on-light" → desactivar "off-light" → expandir "on-light"
- **Modificar "on-light":** Seleccionar círculo replicado → Properties → Drop Shadow → Color = marrón → Seleccionar bombilla → Shape → Gradient: gris claro → amarillo pálido, gris oscuro → amarillo más oscuro → Filters → Glow → Inspector: Radius = 100, Opacity = 3, Threshold = 0, Softness = 0.7 → Shape → Style → Feather = aumentar
- **Replicar cuadrícula de luces apagadas:** Seleccionar grupo "off-light" → botón Replicate → Inspector → Replicator tab: Rectangle, Tile Fill, Size = 4000, Columns = 13, Rows = 13 → Cell Controls → Scale = 20% → renombrar "off light grid"
- **Replicar cuadrícula de luces encendidas:** Seleccionar grupo "on-light" → botón Replicate → mismos parámetros (Rectangle, Tile Fill, Size = 4000, Columns = 13, Rows = 13, Scale = 20%) → renombrar "on light grid"
- **Ordenar capas:** Asegurar orden: grid de fondo → off light grid → on light grid (off light grid debajo de on light grid)
- **Método 1 - Secuenciador:** Desplegar "on light grid" → seleccionar replicator hijo → Behaviors → Replicator → Sequence Replicator → Inspector → Parameter = add → Opacity → Opacity = 0 → Sequencing = 3, Unit Size = Object, Spread = 5, Loops = 4 → Origin en Replicator tab: Center, Left, o Diagonal
- **Método 2 - Máscara de imagen con forma:** Desactivar Sequence Replicator → Library → Shapes → estrella de 5 puntas → arrastrar arriba en Project Pane → Inspector → Fill = off, Outline = on, Brush Type = Airbrush, Width = 100, Spacing = 21 → acortar duración de estrella a 1 segundo → Properties → keyframe en Scale = 0 al inicio, Scale = fuera de cuadro al final → acortar "on light grid" a 1 segundo → seleccionar "on light grid" → Object → Image Mask → arrastrar estrella al well de Mask Source
- **Bucle con Clone Layers:** Seleccionar "on light grid" → clic derecho → Make Clone Layer → mover clone layer en timeline con solapamiento → duplicar clone layer para llenar proyecto
- **Movimiento de cámara:** Seleccionar cámara en Project Pane → Properties → Rotation Y = inclinar → Scale = reducir para encuadrar → keyframe en Position al inicio → mover playhead más adelante → cambiar Position X para efecto de barrido

## Reglas para agentes
- Usa "Line 3D" checkbox cuando conviertas un shape replicado en línea para profundidad
- Siempre resetea Position (Properties → Reset Position) después de dibujar círculos para centrarlos perfectamente
- Usa Shift al dibujar círculos para mantener proporción perfecta
- Agrupa los elementos de cada luz (fondo negro + borde replicado + bombilla) antes de replicar la cuadrícula
- Duplica el grupo "off-light" para crear "on-light" en lugar de construirlo desde cero
- Cuando uses máscara de imagen, acorta la duración tanto de la forma como de la cuadrícula al mismo valor (ej. 1 segundo)
- Para bucles, usa Make Clone Layer y superpón ligeramente en timeline, nunca dupliques manualmente la capa original
- Ordena siempre: fondo → off light grid → on light grid → formas/máscaras arriba de todo

## Errores comunes que evita o menciona
- No olvidar activar la cámara al inicio para que el proyecto sea 3D (de lo contrario no funcionan las propiedades 3D)
- No dejar el grid de fondo encima de las luces (reordenar en Project Pane para que quede detrás)
- No confundir el círculo original (icono shape tool) con el círculo dentro del replicador (icono de círculo pequeño) al aplicar drop shadow
- No usar valores de Spread demasiado bajos si se quiere un efecto ripple más amplio (recomienda Spread = 5)
- No dejar el Sequence Replicator activo cuando se aplica el método de máscara de imagen (desactivarlo primero)
- No olvidar que el Sequence Replicator por defecto origina desde el centro; cambiarlo a Left o Diagonal si se desea otra dirección