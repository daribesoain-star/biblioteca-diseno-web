# 5 Essential Effects for Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/nzXeBnzSx-w

## Qué enseña (2-3 líneas)
Este video enseña a crear y publicar cinco efectos desde Apple Motion hacia Final Cut Pro que no vienen incluidos de forma nativa: overlay de gradiente de tres colores, efecto tilt shift, extrusión 3D de logos 2D, contorno tipo burbuja y animación de rebote al entrar. Explica paso a paso qué parámetros publicar en cada efecto para que sean ajustables desde el inspector de Final Cut Pro.

## Lecciones accionables
- **Crear overlay de gradiente de 3 colores:**
  - En Motion, ir a *Library > Generators > Gradient* y arrastrarlo sobre *Effect Source* en el panel de proyecto.
  - En *Inspector > Generator*, hacer clic en el centro de la línea de colores para agregar un tercer color tag.
  - Cambiar colores: seleccionar cada color tag, luego *Color Swatch > Palette* y elegir color deseado.
  - Ajustar *Start* a `500` y *End* a `-500` para suavizar la transición.
  - En *Properties > Blend Mode*, cambiar a `Soft Light`.
  - **Publicar:** blend mode, opacity, cada color tag (3), slider de location, start y end values.
  - En *Project > Inspector*, colapsar los sliders de color para ordenar.
  - Guardar como: *File > Save As*, nombre `Gradient Overlay`, categoría existente o *New Category*.

- **Crear efecto tilt shift:**
  - En Motion, ir a *Filters > Blur > Gradient Blur* y aplicarlo sobre *Effect Source*.
  - Reposicionar controles en pantalla (punto de enfoque y punto de desenfoque).
  - En *Inspector > Filters*, publicar: `Point 1`, `Point 2`, `Amount`, `Mix`. Marcar *Publish On Screen Controls*.
  - Duplicar el gradiente blur: clic derecho > *Duplicate*.
  - Reposicionar los puntos del duplicado en lugares diferentes.
  - Publicar los mismos parámetros en el duplicado.
  - En *Project > Inspector*, renombrar los puntos duplicados: doble clic en `0.1` → renombrar a `3`, el otro a `4`.
  - Guardar como `Tilt Shift`.

- **Crear extrusión 3D de logo 2D:**
  - En Motion, ir a *Filters > Stylize > Extrude*.
  - En *Inspector*, publicar **todos** los parámetros. Marcar *Publish OSC* para controles en pantalla.
  - Si se usa estilo *Gradient* en extrude style, publicar cada color tag del gradiente.
  - En *Project > Inspector*, cambiar extrude style de vuelta a `Shading` como default.
  - Guardar como `Extrude`.

- **Crear contorno tipo burbuja (bubble stroke):**
  - En Motion, ir a *Filters > Border > Stroke*.
  - En *Inspector*, publicar: `Color`, `Color Selector`, `Width`, `Position`, `Offset`, `Threshold`, `Fade Inside`, `Fade Outside`, `Fade Width`, `Fade Falloff`, `Blend Mode`, `Mix`.
  - Cambiar *Stroke Type* a `Gradient`, desplegar y publicar los colores del gradiente.
  - En *Project > Inspector*, cambiar *Stroke Type* de vuelta a `Color`. Renombrar los colores: `Solid Stroke`, `Gradient Stroke 1`, `Gradient Stroke 2`.
  - Guardar como `Stroke`.

- **Crear animación de rebote al entrar (bounce in):**
  - En Motion, ir a *Behaviors > Parameter > Overshoot*.
  - En *Inspector > Behaviors*, en *Apply To* desplegar y seleccionar: `Properties > Transform > Scale > All`.
  - Cambiar *Start Value* a `0 0`.
  - Cambiar *End Offset* a `200` (a mayor valor, más rápido el rebote; a menor valor, más lento).
  - **Publicar:** `Ramp Duration`, `Cycles`, `Acceleration`, `End Offset`.
  - En *Project > Inspector*, renombrar *End Offset* a `Duration (reduce to slow down)` para indicar el comportamiento inverso del slider.
  - Guardar como `Bounce In`.

## Reglas para agentes
- Usa `Final Cut Effect` como opción de proyecto en Motion para todos los efectos que se publicarán a Final Cut Pro.
- Publica siempre los parámetros que quieras modificar desde Final Cut Pro usando el menú desplegable (*Publish*) en cada línea del inspector de Motion.
- Marca *Publish On Screen Controls* (OSC) cuando el efecto tenga controles visuales en el lienzo (tilt shift, extrude).
- Renombra los parámetros duplicados en *Project > Inspector* para evitar confusiones en Final Cut Pro (ej: renombrar puntos de gradient blur duplicados).
- Cambia los valores default en *Project > Inspector* antes de guardar para que el efecto se aplique con la configuración deseada.
- Nunca dejes parámetros sin publicar si el usuario necesita ajustarlos en Final Cut Pro (ej: colores, blend mode, opacidad).
- Para efectos con comportamiento inverso de slider (como End Offset en Overshoot), renombra el parámetro con una pista entre paréntesis (ej: "reduce to slow down").

## Errores comunes que evita o menciona
- No olvidar seleccionar `Final Cut Effect` en las settings del proyecto de Motion, de lo contrario el efecto no se publicará correctamente.
- No publicar los colores del gradiente si se usa estilo *Gradient* en extrude o stroke, porque no se podrán cambiar desde Final Cut Pro.
- No renombrar los parámetros duplicados (como los puntos del segundo gradient blur) causa confusión al tener dos controles con el mismo nombre en Final Cut Pro.
- No colapsar los sliders de color en *Project > Inspector* antes de guardar deja el inspector de Final Cut Pro desordenado.
- No reordenar los efectos en el inspector de Final Cut Pro (ej: poner stroke arriba de extrude) cambia drásticamente el resultado visual.