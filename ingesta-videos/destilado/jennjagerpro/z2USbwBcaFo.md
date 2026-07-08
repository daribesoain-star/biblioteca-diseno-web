# How to Make a Final Cut Transition in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/z2USbwBcaFo

## Qué enseña (2-3 líneas)
Este tutorial enseña a construir una transición personalizada en Apple Motion y publicarla en Final Cut Pro, usando filtros, comportamientos y keyframes. Explica la lógica de los grupos Transition A (clip saliente) y Transition B (clip entrante), y cómo publicar parámetros (como colores de degradado) para que sean editables desde Final Cut.

## Lecciones accionables
- **Crear el proyecto de transición:** Abrir Apple Motion → Project Browser → seleccionar "Final Cut Transition" → en preset, cambiar frame rate a **24 fps**, resolución a **4K**, duración a **1 segundo** → Open.
- **Guardar la transición:** File → Save As → nombrar (ej. "Gradient Zoom") → elegir Category (o crear nueva en el menú desplegable seleccionando "New Category") → elegir Theme (ej. "Blurs and Gradients") → Publish.
- **Entender Transition A y B:** Transition A = clip saliente (outgoing) en Final Cut; Transition B = clip entrante (incoming). Ignorar los nombres por defecto.
- **Insertar placeholders:** Arrastrar clips de video a Transition A y Transition B en el panel de proyecto para visualizar la transición.
- **Keyframes de escala en el grupo:** Seleccionar el grupo → playhead en frame 4 → agregar keyframe en Scale con valor **100** → playhead en frame 9 → cambiar Scale a **267%** (crea segundo keyframe) → playhead en frame 13 → cambiar Scale de vuelta a **100**.
- **Ajustar interpolación:** Abrir Keyframe Editor (tres diamantes en la parte superior del timeline) → seleccionar todos los keyframes → clic derecho → **Ease Both**.
- **Agregar degradado (gradient):** Library → Generators → Gradient → arrastrar al grupo sobre Transition A → Inspector → Gradient → ajustar Start y End Points (X, Y) para un look angulado y difuminado.
- **Colores del degradado:** Primer swatch → naranja; segundo swatch → teal (cian azulado).
- **Blend mode del degradado:** Properties → Blend Mode → **Add**.
- **Keyframes de opacidad del degradado:** Seleccionar Gradient → playhead al inicio → Opacity = **0** → playhead en frame 12 → Opacity = **100** → playhead al final → Opacity = **0** → Keyframe Editor → seleccionar todos → clic derecho → **Ease Both**.
- **Gaussian blur en clip saliente:** Seleccionar Transition A → Filters → Blur → Gaussian Blur → playhead en frame 5 → Amount = **0** (keyframe) → playhead al final de Transition A → Amount = **300** (keyframe).
- **Fade out en clip saliente:** Seleccionar Transition A en timeline → Behaviors → Basic Motion → Fade In/Fade Out → cambiar Fade In time a **0** → Fade Out time a **3 frames**.
- **Ajustar clip entrante:** Arrastrar Transition B unos frames hacia atrás en el timeline para que coincida con el fade out → extenderlo hasta el final del proyecto.
- **Limpiar placeholders antes de publicar:** Seleccionar Transition A → Inspector → Image → **Clear** → Transition B → **Clear** → Command + S para guardar.
- **Publicar parámetros editables en Final Cut:** Seleccionar Gradient → Inspector → en cada swatch de color → menú desplegable → **Publish** → seleccionar línea del proyecto en panel superior → Inspector → Project → renombrar parámetros publicados (ej. "top left", "bottom right") → Command + S.
- **Aplicar en Final Cut:** Arrastrar la transición "Gradient Zoom" entre dos clips → para refrescar cambios, eliminar y reaplicar la transición → en Inspector aparecen los colores publicados con los nombres asignados.

## Reglas para agentes
- Usa **Final Cut Transition** como tipo de proyecto en Apple Motion cuando crees transiciones para Final Cut Pro.
- Usa **Ease Both** en todos los keyframes de interpolación para evitar cambios bruscos.
- Publica parámetros (colores, opacidades, etc.) desde Motion cuando quieras que sean editables en Final Cut; renómbralos con nombres descriptivos (ej. "top left", "bottom right").
- Siempre limpia los placeholders (Clear en Image) antes de guardar la versión final de la transición.
- Nunca dejes keyframes lineales sin ajustar; cambia siempre la interpolación a curvas suaves.
- Nunca uses Fade In en el clip saliente (Transition A) porque generaría un fundido a negro no deseado.

## Errores comunes que evita o menciona
- **Confundir Transition A y B:** El tutorial aclara que Transition A es el clip saliente (outgoing) y Transition B el entrante (incoming), no dos transiciones separadas.
- **No usar placeholders:** Trabajar sin clips de referencia dificulta visualizar el resultado final de la transición.
- **Olvidar limpiar placeholders antes de publicar:** Si no se borran, los clips de prueba aparecerán en Final Cut.
- **No publicar parámetros:** Si no se publican los colores del degradado (o cualquier otro parámetro), no se podrán modificar desde Final Cut.
- **Dejar keyframes lineales:** Sin aplicar Ease Both, la transición se verá mecánica y poco natural.