# You Asked For It!
**Fuente:** jennjagerpro | https://youtu.be/z-OmMXQICSs

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un título animado con efecto de expansión de tracking y desenfoque direccional diagonal en Apple Motion, y luego publicarlo como un título personalizado para Final Cut Pro. Incluye la creación de rigs con sliders para controlar el tracking desde el inspector de títulos de FCP.

## Lecciones accionables
- **Crear proyecto en Apple Motion:** Abrir Project Browser, crear proyecto de 6 segundos, 4K a 24 fps.
- **Añadir y centrar texto:** Agregar texto, escalarlo en Inspector, centrar alineación en Properties > Reset Parameters, activar overlays para alinear con guía amarilla, cambiar Baseline en Text tab para centrar caracteres.
- **Ajustar duración del texto:** Con playhead al inicio, presionar Shift + flecha derecha dos veces para llegar a 20 frames, presionar O para recortar duración.
- **Keyframe de tracking:** En Inspector > Text > Format, crear keyframe en Tracking al inicio del timeline, valor -100. Shift + flecha derecha una vez (mitad del texto), Tracking a 95. Shift + flecha derecha otra vez (final), Tracking a 0.
- **Suavizar interpolación:** Abrir Keyframe Editor (botón superior derecho del timeline). Click derecho en keyframe central > Interpolation > Bezier. Click derecho en un handle > Align Tangents. Arrastrar handles para formar curva de campana.
- **Añadir desenfoque direccional:** Con playhead al inicio, seleccionar texto. Filters > Blur > Directional Blur. Activar overlays, ajustar ángulo diagonal con flecha en pantalla. Amount: 225. Crear keyframe en Amount. Avanzar 2 frames, Amount a 0. Ir al final del texto, retroceder 2 frames, crear hold keyframe en 0. Avanzar 2 frames, Amount a 225.
- **Duplicar y alinear:** Click derecho > Duplicate para copias de texto. Cambiar contenido. Acercar timeline, alinear keyframes de directional blur entre palabras.
- **Convertir a título:** File > Convert Project to Title > Convert. File > Save As, nombre "insta inspo title", guardar en categoría propia.
- **Publicar parámetros:** Seleccionar texto, en Inspector > Text > Format, publicar el campo de texto (Text box). Publicar Font. En Appearance, publicar Color.
- **Crear rig para tracking:** Colocar playhead en keyframe central de tracking. En Project pane, Add to Rig > New Rig. En Widget tab, seleccionar primer marcador azul, Start, ajustar tracking bajo. Stop Rig Edit Mode. Seleccionar segundo marcador (100%), Start, ajustar tracking alto. Stop Rig Edit Mode. Publicar el slider del rig.
- **Renombrar parámetros publicados:** En Project pane, seleccionar Project, renombrar parámetros (ej. "text one").
- **Uniformizar sliders:** En Project pane > Project tab > Inspector, cambiar todos los sliders al mismo valor (ej. 10) para que al abrir en FCP todo se vea uniforme.

## Reglas para agentes
- Usa Shift + flecha derecha para navegar en saltos de 10 frames en el timeline.
- Usa O para recortar la duración de un clip al punto del playhead.
- Usa Bezier interpolation con Align Tangents en keyframes centrales para animaciones suaves y exageradas.
- Publica los parámetros Text, Font y Color desde el inspector de texto para que aparezcan en el Title Inspector de Final Cut Pro.
- Usa rigs con slider para controlar tracking desde FCP, publicando el slider resultante.
- Cuando tengas múltiples palabras con rigs, ajusta todos los sliders al mismo valor antes de guardar para uniformidad.

## Errores comunes que evita o menciona
- No olvidar cambiar la interpolación del keyframe central de tracking de lineal a Bezier con tangentes alineadas para lograr el efecto de "snapping motion" suave y exagerado.
- No omitir los hold keyframes en el desenfoque direccional (mantener Amount en 0 entre palabras) para que el blur solo aparezca al inicio y final de cada animación.
- No publicar parámetros individuales sin renombrarlos después en el Project pane, para evitar confusión en el inspector de Final Cut Pro.
- No olvidar uniformizar los valores de los sliders de tracking antes de guardar el título, para que todas las palabras tengan la misma configuración base al importar a FCP.