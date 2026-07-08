# Clone Layer Title Templates in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/WROgHt7O70I

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear dos animaciones de texto dinámicas en Apple Motion usando capas clonadas (clone layers): un efecto "multiplier" con tracking y prism, y un efecto de "caja 3D" con rotación y overshoot. Explica cómo publicar estos títulos como plantillas para Final Cut Pro.

## Lecciones accionables
- **Crear un proyecto de título:** En el Project Browser, selecciona "Final Cut Title", preset 4K 24 fps, duración 6 segundos. Elimina los elementos por defecto.
- **Añadir texto base:** Usa la herramienta Texto, escribe "multiplier", fuente Phosphate (Solid), tamaño 288, centra con "Reset Parameters" en Properties, ajusta baseline a -90 con la regla.
- **Añadir blur in:** Selecciona el texto, ve a Behaviors > Text > Basic > Blur In. Reduce la duración a 14 frames (playhead en frame 14, presiona O). En Inspector > Controls, cambia "Animate Line" a "All". En Text > Appearance, cambia el glow a blanco.
- **Keyframe de tamaño:** En frame 15, añade keyframe en Text > Format > Size. Salta 10 frames (Shift + flecha derecha), cambia size a 225, añade keyframe. En Keyframe Editor, selecciona ambos keyframes, clic derecho > Bezier, ajusta a curva "S invertida".
- **Keyframe de tracking:** Desde frame 15, salta 15 frames más, añade keyframe en tracking. Salta 20 frames, cambia tracking a 68%. En Keyframe Editor, Bezier, curva en "S" normal.
- **Keyframe de tracking inverso:** Desde el último keyframe, salta 50 frames, añade keyframe en tracking (sin cambiar valor). Salta 20 frames, cambia tracking a -70%. En Keyframe Editor, Bezier, clic derecho > Break Tangents para aislar un lado y lograr un efecto de "snapping".
- **Clonar texto:** Selecciona el texto, clic derecho > Make Clone Layer o atajo K. Desactiva el texto original.
- **Filtros en clone layer:** Añade Filter > Stylize > Edges (intensity alta). Luego Filter > Blur > Prism. Keyframe el amount: al inicio 0, en el pico de tracking súbelo, al final bájalo a 0. En Keyframe Editor, aplica "Ease Both" a todos.
- **Escalar clone layer:** En Properties, escala el clone layer para que llene el frame.
- **Recortar texto con grupo:** Como texto no tiene opción de crop, agrupa el texto (clic derecho > Group). Selecciona el grupo, en Properties activa "Crop". Keyframe Left y Right crop: unos frames antes del final del tracking, valor 0; luego más adelante, valor 90. En Keyframe Editor, Bezier.
- **Publicar opacidad:** Agrupa el clone layer, publica la opacidad del grupo (Properties > Opacity > Publicar). Renombra el slider en Project > Inspector.
- **Guardar plantilla:** File > Save As, nombre "multiplier text", categoría propia (ej. "Jen's titles"), publicar.
- **Segundo efecto (caja 3D):** Nuevo proyecto Final Cut Title, texto "box flip", fuente Montserrat Black, tamaño 288, baseline 95. Añade cámara (Add Object > Camera).
- **Clonar para caja:** Clona el texto dos veces (K). Desactiva el clon superior. En el primer clon, usa Anchor Point Tool para colocar el ancla en la parte superior del texto. En Inspector > Rotation, rota X a -90. Ajusta posición Z para que quede detrás del texto original (casi tocando). En el segundo clon, ancla también arriba, rota X a +90, ajusta posición Y para que coincida con la esquina inferior del texto original.
- **Ocultar clones:** Ajusta la rotación X de cada clon en incrementos de 0.1° hasta que desaparezcan de la vista frontal (ej. -88.7° y -91.2°).
- **Black hole filter:** Selecciona el texto original, Filter > Distortion > Black Hole. En frame 0, center X = -375, amount alto (texto desaparece), keyframe en amount. Salta 10 frames, amount = 0, keyframe.
- **Overshoot behavior:** Selecciona el grupo (texto + clones), Behaviors > Parameter > Overshoot. Apply to: Properties > Transform > Rotation > X. Trim inicio a frame 9, fin a frame 30. Start value = 500, ajusta ramp duration y overshoot a gusto.
- **Ajustar ancla del grupo:** En Properties > Anchor Point, modifica Z a -90 para que la rotación sea desde el centro de la caja.
- **Prism con oscillate:** Añade Filter > Blur > Prism al texto original. Trima el prism para que coincida con el flip. Añade Behavior > Parameter > Oscillate, Apply to: Filters > Prism > Amount. En Keyframe Editor, ajusta speed para redondear la curva. Ajusta amplitude si es necesario.
- **Segundo overshoot:** Copia el overshoot behavior (Cmd+C, Cmd+V), muévelo al final. En Inspector, start value = 0, end value = 3000, acceleration alto, ramp duration al máximo.
- **Copiar prism con oscillate:** Copia prism y oscillate, pégalos al final. En el oscillate copiado, cambia Apply to a "Filters > Prism copy > Amount". Ajusta speed para que coincida con la curva del overshoot.
- **Fade out:** Añade Behavior > Basic Motion > Fade In/Fade Out. Fade in = 0, fade out = 8 frames.
- **Publicar black hole center:** Selecciona el black hole filter, publica el parámetro Center (X) para poder ajustarlo en Final Cut.

## Reglas para agentes
- **Usa clone layers (atajo K)** cuando necesites duplicar un texto y aplicar filtros o transformaciones independientes sin poder modificar el texto original.
- **Usa Group + Crop** cuando necesites recortar texto, ya que la propiedad Crop no está disponible directamente en objetos de texto.
- **Publica parámetros desde grupos** (no desde el objeto clonado) si el clon tiene keyframes, para evitar sobrescribir animaciones en Final Cut.
- **Ajusta la rotación de clones en incrementos de 0.1°** cuando trabajes en 3D para ocultar caras laterales, ya que 90° exactos no siempre funcionan por perspectiva.
- **Usa Break Tangents** en el Keyframe Editor cuando necesites ajustar un solo lado de una curva Bezier sin afectar el otro.
- **Aplica Ease Both** a keyframes de filtros (como prism) para suavizar cambios de intensidad.
- **Usa el atajo Shift + flecha derecha** para saltar exactamente 10 frames en la línea de tiempo.

## Errores comunes que evita o menciona
- **No se puede modificar propiedades de texto en un clone layer** (como fuente, tamaño, tracking); para cambiar la apariencia hay que usar filtros (ej. Edges para contorno).
- **En proyectos de título (Final Cut Title), recortar un clone layer en el timeline no elimina sus keyframes**; los keyframes se mueven con el clon. La solución es agrupar y usar Crop en el grupo.
- **La opción Crop no está disponible en objetos de texto directamente**; hay que agrupar el texto y aplicar crop al grupo.
- **Al copiar un behavior Oscillate**, el parámetro "Apply to" puede apuntar al filtro original; hay que reasignarlo manualmente al filtro copiado (ej. "Prism copy").
- **La rotación exacta de 90° en clones 3D no siempre oculta las caras laterales** por la perspectiva; hay que ajustar en décimas de grado hasta que desaparezcan visualmente.