# Apple Motion Logo Animation Tutorial | SEND HELP! 😫😫😫
**Fuente:** jennjagerpro | https://youtu.be/9f7SEQoDXfQ

## Qué enseña
Crear una animación de morphing de logotipo en Apple Motion, transformando el logo de Patreon de una forma de corazón a su forma original, combinada con texto animado para un "snipe" de llamado a la acción. Incluye el flujo completo desde la preparación del archivo SVG en Pixelmator Pro hasta la publicación como plantilla de título en Final Cut Pro.

## Lecciones accionables
- **Preparar SVG en Pixelmator Pro:** Abrir el archivo SVG del logotipo, seleccionar el logo, hacer clic derecho y elegir "Make Editable" para revelar los puntos de control. Exportar como "Motion Project" (formato .motn).
- **Ajustar dimensiones del proyecto en Motion:** Ir a Project Properties y cambiar resolución a 4K (3840x2160) para que coincida con el formato de salida.
- **Dibujar guías de alineación:** Arrastrar reglas desde las reglas superior e izquierda para rodear el logotipo original y usarlas como referencia de dimensiones.
- **Crear keyframes de morphing:** Seleccionar la forma en el panel de proyecto → Inspector → Shape → Geometry. Mover el playhead al fotograma donde terminará el morphing y hacer clic en el botón de keyframe (diamante) en "Points" para guardar la posición final.
- **Usar forma de referencia de corazón:** En Library → Shapes, arrastrar el corazón al proyecto. Escalarlo y distorsionarlo (arrastrando puntos de control) para que encaje dentro de las guías dibujadas. Colocar el logotipo original encima en el panel de proyecto.
- **Ajustar puntos de control manualmente:** Mover el playhead al inicio del timeline. En Shape → Geometry, manipular cada punto de control del logotipo para que coincida con la forma del corazón de referencia. Usar las manijas Bezier para curvas.
- **Eliminar referencia y agrupar:** Deshabilitar la forma de corazón de referencia, eliminar las guías arrastrándolas fuera del canvas. Hacer clic derecho sobre la forma → Group.
- **Reducir escala y posicionar:** En Inspector → Properties, reducir Scale (ej. 79%) y ajustar Position Y para ubicar el logo en la parte inferior del canvas.
- **Añadir texto:** Usar la herramienta Text (T). Escribir "love my content?" con fuente Poppins Medium, centrado. Duplicar (Cmd+D) para "join my Patreon" y la URL. Alinear bordes izquierdos manualmente.
- **Acelerar morphing:** En el timeline, seleccionar los keyframes de Points y arrastrarlos para acortar la duración (ej. de 5s a 1.5s).
- **Añadir comportamiento Overshoot a la forma:** En Inspector → Properties, hacer clic derecho en Scale → Add Parameter Behavior → Overshoot. Mover playhead al inicio, reducir Start Value a -100. En timeline, seleccionar el comportamiento y presionar O para acortar duración. Ajustar Ramp Duration en Inspector.
- **Cambiar color con filtro Colorize:** Mover playhead al primer keyframe de Points. Ir a Filters → Add Filter → Color → Colorize. En Inspector, remapear Blacks a un tono rojo/rosado. Mover playhead al keyframe final de Points y cambiar Blacks a negro. Aparecerán keyframes automáticos.
- **Animación de texto "love my content?" - Flip en X:** Seleccionar el texto. Activar Anchor Point tool (tecla A), mover el ancla al borde superior del texto. En Inspector → Properties → Rotation, hacer clic derecho en X Rotation → Add Parameter Behavior → Overshoot. Mover playhead al inicio, cambiar Start Value a 92° (no 90°). Ajustar Ramp Duration para bounce.
- **Añadir Pop Out al final del texto:** En Behaviors → Text → Basic → Pop Out. Mover el comportamiento al final del texto en timeline. En Inspector, desmarcar Scale para que solo desaparezca (fade out).
- **Añadir Pirouette al texto:** Behaviors → Text → Highlighter → Pirouette. Acortar duración en timeline. Cada letra girará al desaparecer.
- **Animación "join my Patreon" - Pop In:** Behaviors → Text → Basic → Pop In. Desmarcar Scale en Inspector. Acortar duración. Copiar (Cmd+C) el comportamiento Pirouette del texto anterior y pegarlo (Cmd+V) en este texto.
- **Transición entre textos:** Para "join my Patreon" → cambiar Anchor Point al borde superior. En Inspector → Properties → Rotation → X Rotation, añadir keyframe en 0°, avanzar unos fotogramas y añadir keyframe en 90° (swing forward). Ajustar duración.
- **Animación de la URL - Overshoot copiado:** Cambiar Anchor Point al borde superior. Copiar el comportamiento Overshoot del primer texto y pegarlo en este. Ajustar timing para que aparezca cuando el texto anterior desaparezca.
- **Alinear y centrar grupo:** Activar View → Grid. Seleccionar el grupo en panel de proyecto. En Inspector → Properties, ajustar Position para centrar en canvas.
- **Publicar como plantilla de Final Cut Pro:** En Project → Background Color, cambiar a Transparent. File → Convert Project to Title. Elegir categoría (ej. "My Titles"), nombrar (ej. "Patreon Snipe 2024"), hacer clic en Publish.
- **Añadir fade out final:** Mover playhead a 7 segundos. Seleccionar todos los elementos en timeline, presionar O (Out) para recortar. Seleccionar el grupo, Behaviors → Basic Motion → Fade In/Fade Out. En Inspector, Fade In = 0, Fade Out = 10 frames.
- **Actualizar plantilla:** Guardar (Cmd+S) en Motion. En Final Cut Pro, eliminar la instancia anterior y arrastrar la plantilla actualizada desde Titles & Generators.

## Reglas para agentes
- **Usa archivos SVG** cuando necesites preservar puntos de control vectoriales editables entre Pixelmator Pro y Apple Motion.
- **Siempre dibuja guías (ruler lines)** alrededor del logotipo original antes de modificar puntos, para mantener proporciones consistentes.
- **Nunca elimines los keyframes originales de Points** hasta que el morphing esté completamente ajustado; son la posición final de referencia.
- **Usa el filtro Colorize** en lugar de cambiar el color directamente cuando quieras animar transiciones cromáticas sincronizadas con el morphing.
- **Aplica el comportamiento Overshoot** para entradas con rebote; ajusta Start Value a valores negativos (-100) para que el elemento desaparezca inicialmente.
- **Cambia el Anchor Point** al borde superior del texto antes de animar rotaciones en X, para que el giro parezca natural (como una página).
- **Desmarca Scale** en los comportamientos Pop In y Pop Out si solo quieres fade sin cambio de tamaño.
- **Publica como Title template** solo después de cambiar Background Color a Transparent, para que funcione sobre video en Final Cut Pro.
- **Recorta todos los elementos al mismo punto final** (Out key) antes de añadir Fade Out, para que la duración sea uniforme.

## Errores comunes que evita o menciona
- **No olvidar cambiar Background Color a Transparent** antes de publicar como título; de lo contrario, el fondo opaco cubrirá el video en Final Cut Pro.
- **No usar 90° exactos** como Start Value en Overshoot de rotación; la creadora usó 92° porque 90° hacía que las letras quedaran completamente planas (invisibles) y no se veía el rebote.
- **No escalar directamente en Final Cut Pro** si se prefiere control preciso; la creadora volvió a Motion para escalar el grupo al 79% y reajustar posición Y.
- **No olvidar refrescar la plantilla** en Final Cut Pro: después de guardar cambios en Motion, eliminar la instancia anterior y arrastrar la plantilla actualizada desde el navegador de títulos.
- **No dejar el logo sin agrupar** antes de animar; agruparlo permite aplicar comportamientos de grupo (como Fade In/Fade Out) a todo el elemento.