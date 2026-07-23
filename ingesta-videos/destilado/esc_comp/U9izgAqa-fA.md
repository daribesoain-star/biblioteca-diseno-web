# Easily Understand THE RULE OF THIRDS - QUICK TIPS for Beginners - 4k
**Fuente:** esc_comp | https://youtu.be/U9izgAqa-fA

## Que ensena
Explica la regla de los tercios como herramienta fundamental de composición: dividir el encuadre en una cuadrícula de 2 líneas horizontales y 2 verticales equidistantes, colocando el punto de interés en las intersecciones para lograr imágenes naturales y equilibradas. También introduce la idea de romper la regla intencionalmente para transmitir emociones específicas.

## Lecciones accionables
- **Activar la cuadrícula en cámara:** Ve a settings > grid overlay > "rule of thirds" en tu cámara o app de video IA (Runway/Veo 3 no tienen grid nativo, pero puedes previsualizar en tu cámara real).
- **Colocar el sujeto en intersecciones:** Usa las 4 intersecciones (especialmente las superiores) para puntos focales. En prompts: `subject positioned on the upper right intersection of the rule of thirds grid`.
- **Dirección de mirada dentro del encuadre:** El sujeto debe mirar hacia el espacio vacío del frame, no hacia el borde. En prompts: `subject looking into the frame, eyes aligned with the left vertical third line`.
- **Uso de tercios inferiores para escala:** Colocar al sujeto en la intersección inferior para enfatizar pequeñez vs. paisaje. Prompt: `tiny figure at the bottom left intersection, vast landscape occupying the upper two thirds`.
- **Focales recomendadas:** Para retrato con tercios: 50mm-85mm (full frame). Para paisaje con tercios: 24mm-35mm.
- **Movimiento de cámara:** Si el sujeto está en un tercio, un leve *pan* o *track* que mantenga esa posición refuerza la composición. Prompt: `slow tracking shot, subject locked on the left third line`.

## Reglas para el director de fotografia IA
- **Usa la cuadrícula de tercios como guía de framing:** En prompts de video IA, especifica la posición exacta: `subject framed on the upper left third intersection, negative space on the right two thirds`.
- **Para no alucinar en video IA, evita centrar sujetos estáticos:** El centrado perfecto tiende a generar movimientos erráticos o deformaciones en Kling/Veo 3. Usa tercios para dar "aire" visual que estabilice la generación.
- **Cuando rompas la regla, sé explícito:** Si quieres sujeto centrado para simetría, añade `symmetrical composition, centered subject, rule of thirds intentionally broken for dramatic effect`.
- **Para entrevistas o diálogos:** Prompt obligatorio: `subject looking into the frame, not at the camera, positioned on the right third line, eye line at the upper horizontal third`.
- **Control de profundidad con tercios:** Usa `shallow depth of field, subject on the left third, background blurred` para que la IA no disperse el foco en todo el frame.

## Errores comunes que evita o menciona
- **Sujeto centrado sin intención:** Hace la imagen "staged", demasiado simétrica y poco natural. La IA tiende a centrar por defecto, debes forzar el desplazamiento.
- **Mirada hacia afuera del frame:** Si el sujeto mira al borde del encuadre, la composición se siente incómoda. En video IA, esto puede generar que la IA "complete" el espacio vacío con objetos no deseados.
- **Ignorar las intersecciones superiores:** Son las más poderosas para retrato. Colocar ojos en el centro del frame es un error común de principiantes.
- **No activar la cuadrícula en previsualización:** Sin referencia visual, es fácil que la IA desplace al sujeto al centro. Usa siempre un *reference frame* con la cuadrícula dibujada si tu herramienta lo permite.