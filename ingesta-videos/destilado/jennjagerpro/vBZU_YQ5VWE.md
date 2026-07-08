# Apple Motion Strokes Tutorial
**Fuente:** jennjagerpro | https://youtu.be/vBZU_YQ5VWE

## Qué enseña
Cómo crear un efecto de acuarela realista en Apple Motion manipulando los parámetros de trazos (strokes) con la herramienta Bézier, combinando máscaras de imagen, degradados y animación por keyframes para simular la escritura a mano y el sangrado de tinta sobre papel texturizado.

## Lecciones accionables
- Busca en la biblioteca (Library > Content) el recurso **"paper 02"** y arrastra al proyecto. En Inspector > Properties, escala para llenar el frame.
- Duplica la capa **paper 02** dos veces (clic derecho > Duplicate). Desactiva la visibilidad de la primera copia (Paper Copy 1).
- Selecciona la segunda copia (Paper 2 Copy) y aplica: **Filters > Color > Gradient Colorize**. En Inspector, despliega el gradiente y ajusta los colores (ej. dos tonos de púrpura) y la ubicación para variar el centro del frame.
- Crea texto de referencia con la **Text Tool**: elige una fuente script (ej. **Tahu!**), escribe "watercolors", centra y escala grande. Este texto solo sirve como guía visual.
- Analiza el texto: cada vez que un pincel se levantaría del papel, crea un nuevo trazo Bézier independiente.
- Usa la **Bezier Tool** para dibujar sobre el texto de referencia. Haz clics lineales (sin arrastrar) para crear puntos; **menos puntos es mejor**. Después, ajusta curvas con clic derecho > Smooth.
- En Inspector > Shape, cambia el **Width** a **52** para estrechar la línea.
- En la línea **Brush Type**, cambia de **Solid** a **Airbrush**. Ajusta **Spacing** a **5%** (default 25).
- En la pestaña **Stroke**, despliega **Opacity over Stroke**: haz clic en la barra blanca para añadir un swatch y fija la opacidad final en **55%** (simula pérdida de pintura).
- Despliega **Width over Stroke**: ajusta el ancho final a **55%** (simula levantamiento del pincel).
- Aplica **Behaviors > Shape > Write On** a cada Bézier. En la línea de tiempo, acorta la duración de la barra púrpura para que la escritura sea más rápida.
- Agrupa todos los Béziers: selecciónalos, clic derecho > Group, renómbralo como **"text"**.
- Selecciona la capa **Paper 2 Copy** (con Gradient Colorize). Ve a **Object > Add Image Mask**. En el campo **Mask Source**, arrastra el grupo **"text"**.
- Para añadir gotas: dentro del grupo "text", dibuja formas irregulares con la **Bezier Tool**. En Inspector > Shape, cambia de **Outline** a **Fill**, sube **Roundness** y en Style sube **Feather** para suavizar.
- Anima las gotas: al inicio del clip, keyframe en **Properties > Scale** (valor inicial bajo). Avanza unos frames, sube escala. Más adelante en la línea de tiempo, añade otro keyframe con escala mayor.
- Para el sangrado: coloca el playhead justo después de que termine **Write On**. En Inspector > Stroke, añade keyframes en **Brush Scale** y **Jitter**. Avanza el playhead lejos en la línea de tiempo, sube **Brush Scale** a **150%** y **Jitter** a **50%**. Repite en cada Bézier.
- Para el efecto de borde oscuro: duplica el grupo "text" (clic derecho > Duplicate). Activa la tercera capa de papel (Paper 2 Copy 1, antes desactivada). Aplica **Object > Add Image Mask** y usa el grupo duplicado como fuente.
- En los Béziers duplicados: reduce **Width** y **Opacity** en Inspector > Style. En las gotas duplicadas, baja **Feather** y **Opacity**.
- En los Béziers duplicados: elimina los behaviors **Write On** (en línea de tiempo o Inspector). Aplica **Behaviors > Basic Motion > Fade In/Fade Out** a todos.
- Desplaza en la línea de tiempo el grupo duplicado y la capa de papel para que aparezcan después del sangrado.

## Reglas para agentes
- Usa **Airbrush** como Brush Type y **Spacing 5%** cuando quieras simular trazos de acuarela o pincel realista.
- Aplica **Gradient Colorize** sobre texturas de papel para mantener la saturación y preservar la textura original.
- Crea un Bézier independiente por cada levantamiento de pincel; nunca dibujes palabras completas en un solo trazo si quieres realismo.
- Reduce el **Width** y la **Opacity** al final del trazo (Stroke > Width over Stroke y Opacity over Stroke) para simular pérdida de presión y pintura.
- Añade keyframes de **Brush Scale** y **Jitter** después del Write On para simular sangrado; nunca los apliques antes de que el trazo termine de escribirse.
- Para el borde oscuro del sangrado, duplica el grupo de texto, elimina Write On, aplica Fade In/Fade Out y reduce Width/Opacity en los duplicados.
- Cuando añadas gotas, usa **Fill** en lugar de Outline, y keyframe su **Scale** para que crezcan progresivamente.

## Errores comunes que evita o menciona
- **No uses demasiados puntos de edición** en los Béziers: menos puntos dan curvas más naturales y controlables.
- **No arrastres para crear curvas** al hacer clic con la Bezier Tool: los puntos curvos tienden a desviarse; es mejor empezar con puntos lineales y luego aplicar Smooth con clic derecho.
- **No dejes el Write On con la duración predeterminada** (todo el proyecto): acorta la barra púrpura en la línea de tiempo para que cada trazo se escriba en un tiempo proporcional a su longitud.
- **No olvides escalonar los Write On** en la línea de tiempo: los trazos no deben empezar todos al mismo tiempo.
- **No uses el texto original como máscara**: solo sirve de referencia; los Bézier dibujados a mano son los que se usan como máscara de imagen.