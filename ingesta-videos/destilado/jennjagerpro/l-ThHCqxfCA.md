# Final Cut Pro Multicam Tricks Nobody Talks About
**Fuente:** jennjagerpro | https://youtu.be/l-ThHCqxfCA

## Qué enseña (2-3 líneas)
Cinco trucos avanzados para edición multicámara en Final Cut Pro: cómo simular multicam con una sola cámara, integrar fondos de pantalla verde en clips multicam, aplanar multicam para estabilización o envío a coloristas, emparejar colores entre ángulos usando el visor de comparación, y crear transiciones entre pantalla completa y split screen dentro de un mismo clip multicam.

## Lecciones accionables
- **Simular multicam con una cámara:** Haz clic derecho en el clip → "New MultiCam Clip" → nombra (ej. "fake multi") → OK. En el timeline multicam, despliega menú desplegable → "Add angle" → mantén Option + arrastra el clip original al nuevo ángulo. En el inspector de video, escala y reposiciona el segundo ángulo. Arrastra el clip multicam al timeline principal y alterna entre ángulos.
- **Green screen + multicam (orden crítico):** Coloca ambos clips de cámara en el timeline principal → aplica keyer verde → añade fondo (ej. de Pixabay) → escala/reposiciona → aplica desenfoque (Effect Browser → Blur). Para el plano cerrado, usa el efecto gratuito "Alex4D" (permite rotación en X e Y) para ajustar la perspectiva del fondo. Selecciona clip ancho + su fondo → Option + G → nombra "wide shot". Repite con plano cerrado → nombra "closeup". En el inspector de información, asigna "Camera Angle A" al ancho y "Camera Angle B" al cerrado. Selecciona ambos compound clips → clic derecho → "New MultiCam Clip" → nombra (ej. "multi1"). Los compound clips desaparecen automáticamente (novedad FCP 11). Para modificar fondos después: menú View → Browser → "Show Hidden Clips" → doble clic en compound clip para editar.
- **Multicam Flattener (workflow extension):** Instala "Automatic Duck Multicam Flattener". En Final Cut, haz clic en el icono de puzzle → selecciona "Multicam Flattener" → arrastra el proyecto a la ventana → procesa → arrastra el nuevo proyecto (icono de carrete) al navegador. El proyecto nuevo reemplaza clips multicam por clips fuente originales, preservando cortes, efectos, transformaciones y keyframes. Útil para estabilizar (no posible en multicam nativo) o enviar a colorista.
- **Color matching con visor de comparación:** Abre el ángulo principal → cierra el visor de ángulos → abre Scopes (Command + 7) → corrige color base. Abre visor de ángulos (Shift + Command + 7) → cierra Scopes. Abre "Comparison Viewer" (Control + Command + 6) o menú Window → "Show in Workspace" → "Comparison Viewer". En el timeline multicam, coloca el fotograma de referencia → haz clic en "Save Frame". Cierra visor de ángulos → navega a otro ángulo → ajusta color comparando lado a lado. Repite con cada ángulo. Cierra Comparison Viewer → abre visor de ángulos para vista grupal final.
- **Split screen dentro de multicam:** Sincroniza clips de pantalla completa (ej. 3 participantes) en un clip multicam (nombra "multi4 sync"). En el timeline principal, copia (Command + C) y pega (Command + V) los clips que quieras en split (ej. 2 personas). Aplica efecto "Split Pop" (enlace en descripción) → desactiva "Build In" y "Build Out" en el inspector. Ajusta tamaño/posición. Selecciona ambos → Option + G → nombra compound clip (ej. "Steve and Sarah"). Repite para otras configuraciones (ej. 3-way split). Selecciona todos los clips (full screen + split screens) → clic derecho → "New MultiCam Clip". El clip multicam final contiene ángulos de pantalla completa y split screen; edita normalmente.

## Reglas para agentes
- Usa "New MultiCam Clip" solo después de tener los clips sincronizados en el timeline principal.
- Aplica el keyer verde **antes** de crear el compound clip y el multicam, no después.
- Asigna "Camera Angle A" y "Camera Angle B" en el inspector de información **antes** de crear el multicam desde compound clips.
- Usa el efecto "Alex4D" (gratuito) cuando necesites rotar fondos en ejes X e Y para igualar la perspectiva de la cámara.
- Activa "Show Hidden Clips" (View → Browser) para editar fondos dentro de compound clips ya integrados en multicam.
- Usa "Multicam Flattener" cuando necesites estabilizar clips o enviar el timeline a un colorista.
- Abre "Comparison Viewer" (Control + Command + 6) para comparar ángulos lado a lado durante la corrección de color.
- Desactiva "Build In" y "Build Out" en el inspector de efectos al usar "Split Pop" para splits estáticos.
- Crea compound clips de cada configuración de split screen **antes** de agruparlos en un multicam final.

## Errores comunes que evita o menciona
- **No estabilizar clips multicam nativos:** El inspector de video no muestra opción de estabilización en clips multicam; usa Multicam Flattener para convertir a clips fuente y luego estabilizar.
- **No usar el visor de ángulos para color matching con muchos ángulos:** Las imágenes son demasiado pequeñas; en su lugar, usa el Comparison Viewer con un fotograma guardado para vista lado a lado.
- **No aplicar green screen después de crear el multicam:** El orden correcto es aplicar keyer en el timeline principal, luego crear compound clips, luego multicam; de lo contrario, la composición se vuelve tediosa.
- **Olvidar que los compound clips desaparecen en FCP 11 al crear multicam:** No es un error, es una función; usa "Show Hidden Clips" para recuperarlos si necesitas editar fondos.
- **Dejar Build In/Build Out activados en splits:** Causa transiciones no deseadas en los cortes de split screen; desactivarlos manualmente en el inspector.