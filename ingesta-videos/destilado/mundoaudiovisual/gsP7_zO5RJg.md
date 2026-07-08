# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 5 - Las máscaras.
**Fuente:** mundoaudiovisual | https://youtu.be/gsP7_zO5RJg

## Qué enseña (2-3 líneas)
Explica cómo crear y usar máscaras en Fusion dentro de DaVinci Resolve para definir áreas de transparencia en clips. Cubre máscaras rectangulares, elípticas, poligonales (Bézier) y el uso de la pluma, además de animar la máscara con keyframes para efectos de aparición.

## Lecciones accionables
- **Crear una máscara rectangular:** Selecciona el nodo del clip (ej. texto), ve al menú de máscaras y haz clic en el ícono de rectángulo. La máscara se coloca automáticamente en la capa de máscara del nodo. Ajusta ancho y alto arrastrando los controles en el visor.
- **Invertir la máscara:** Usa el botón "Invert" (invertir) en los controles de la máscara para mostrar lo que está fuera de la forma en lugar de lo que está dentro.
- **Ajustar opacidad de la máscara:** En el menú de controles de la máscara, modifica el parámetro "Level" (nivel) para controlar la opacidad del recorte (0 = completamente transparente, 1 = completamente opaco).
- **Suavizar bordes con desenfoque:** En el menú de la máscara, usa el control "Feather" (pluma) y selecciona el tipo "Gaussian Blur" (desenfoque gaussiano) para difuminar los bordes de la máscara.
- **Redondear esquinas en rectángulo:** Ajusta el parámetro "Corner Radius" (radio de esquina) en los controles de la máscara rectangular para redondear las esquinas.
- **Crear máscara poligonal (Bézier):** Selecciona el nodo del clip, haz clic en el ícono de polígono. Haz clic en el visor para añadir puntos. Mantén presionado el botón del mouse sobre un punto y arrastra para crear curvas Bézier. Cierra la máscara haciendo clic en el primer punto.
- **Animar aparición con keyframes en máscara rectangular:**
    1. Coloca el cabezal de reproducción al inicio del clip.
    2. En los controles de la máscara, haz clic en el diamante de keyframe junto al parámetro "Width" (ancho) para fijar un keyframe en valor 0.
    3. Avanza unos fotogramas (ej. fotograma 4).
    4. Cambia el ancho al valor deseado (ej. 1) y haz clic en el diamante de keyframe nuevamente.
    5. Para suavizar la animación, ve al editor de curvas (spline), selecciona la curva del ancho y ajústala (ej. curva en S).
- **Animar entrada desde abajo con keyframes en posición:**
    1. Coloca el cabezal al inicio, ajusta la posición Y de la máscara para que esté fuera del encuadre (ej. valor negativo grande).
    2. Fija keyframe en el parámetro "Center Y" (centro Y).
    3. Avanza unos fotogramas, ajusta Center Y a la posición deseada (ej. 0.5) y fija otro keyframe.
    4. Aplica feathering para suavizar bordes.
- **Usar máscara con video de fondo:** Conecta un nodo MediaOut al clip con máscara. Coloca un video en la línea de tiempo debajo (track 1) y el clip con máscara en track 2 para que el video de fondo se vea a través de la transparencia.

## Reglas para agentes
- Usa el botón "Invert" cuando quieras ocultar el área dentro de la máscara y mostrar lo que está fuera.
- Aplica "Feather" con tipo "Gaussian Blur" siempre que necesites bordes suaves y naturales en la máscara.
- Usa keyframes en los parámetros de la máscara (Width, Center, etc.) para animar efectos de aparición o movimiento.
- Conecta siempre el nodo con máscara a un MediaOut y coloca un clip de fondo en un track inferior para que la transparencia sea visible.
- Nunca dejes la máscara sin ajustar si el clip de video se mueve; necesitarás tracking para que la máscara siga al objeto.

## Errores comunes que evita o menciona
- No invertir la máscara cuando se quiere ocultar una parte específica y mostrar el resto.
- Olvidar que la máscara es estática: si el video se mueve, la máscara no sigue al objeto automáticamente (requiere tracking manual).
- No usar feathering en máscaras poligonales, lo que deja bordes duros y poco naturales.
- Colocar keyframes demasiado juntos, lo que acelera la animación; separa los fotogramas para un efecto más lento y suave.