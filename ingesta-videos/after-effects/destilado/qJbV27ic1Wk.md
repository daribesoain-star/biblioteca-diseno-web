# Broadcast Graphics Kinetic Type
**Fuente:** The Video Shop | https://youtu.be/qJbV27ic1Wk

## Qué enseña
Cómo crear gráficos animados para canales de televisión usando principalmente Text Animators de After Effects. El tutorial cubre animación de números y texto con múltiples propiedades (escala, opacidad, tracking, rotación, posición) y técnicas para resolver problemas comunes como la falta de una función de repetición nativa.

## Técnicas accionables
- **Crear animación de números con 23 copias:** Escribir el número "1" 23 veces (sin usar expresión de repetición). Fuente: Helvetica Neue LT Com, tamaño 400, Kerning 200.
- **Animator de escala:** Añadir propiedad Scale al text layer. Renombrar el animator a "scale". En Advanced → Shape: Ramp Down. Escalar a 0. Ease High: 50.
- **Animator de opacidad (type on):** Añadir nuevo animator → Opacity. Renombrar a "type on". Ease High: 50. Keyframe End de 100 a 0. Smoothness: 0. Usar Graph Editor para suavizar keyframes.
- **Animator de tracking:** Añadir nuevo animator → Tracking. Renombrar a "tracking". Tracking Amount: -150. Keyframe End de 100 a 0. En Advanced → Based On: Words. Arrastrar último keyframe a ~8.5 segundos.
- **Animator de rotación:** Añadir animator → Rotate. Shape: Ramp Up. Ease High: -100, Ease Low: 40. Keyframe Offset de 100 a -100.
- **Duplicar animator de rotación (slide off right):** Duplicar el animator de rotación, renombrar a "slide off right". Eliminar rotación. Añadir Position → X: 3000. En Advanced: Ease High: -20, Ease Low: 100.
- **Segunda parte (números rosas):** Copiar text layer, eliminar animators. Tamaño: 750, Kerning: -250. Añadir animator Position → X: 800. Shape: Ramp Up. Ease High: 100, Ease Low: 100. Keyframe Offset de -100 a 100 (~1 segundo).
- **Añadir escala y tracking al mismo animator:** En el mismo animator "main animation", añadir Scale → 6. Añadir Tracking → 50.
- **Slide off right (segunda parte):** Nuevo animator Position → X: 3650. Shape: Ramp Up. Offset de 100. Ease High: -100, Ease Low: 100. Mover keyframes al inicio y a 3 segundos.
- **Time Remapping para acelerar:** Añadir Time Remapping al pre-comp. Mover keyframe de 220 a 2 segundos para acelerar ~30%.
- **Animación del número 4 con 8 copias:** Escribir "4", tamaño 130, Kerning -600. Copiar y pegar 8 veces (alternando blanco y negro, empezando y terminando con blanco). Añadir animator Scale → keyframe de 100 a 7500 en 3 segundos. Shape: Ramp Down. En More Options → Grouping Alignment: -3, -31. Ajustar posición para eliminar líneas verticales.
- **Cubrir líneas no deseadas con shape layer:** Usar Pen Tool para crear shape layer con Fill: Black, sin Stroke. Keyframe posición para cubrir líneas.
- **Typewriter para aislar caracteres:** Duplicar text layer, añadir efecto Typewriter. Cambiar modo de Add a Subtract. Ajustar para que solo queden los últimos 2 caracteres.
- **Ease con Flow:** Presionar Q para revelar todos los keyframes. Usar Flow para suavizar.
- **Animación "Back Soon":** Escribir "BACK SOON", título caps. Fuente: 85 Heavy (no Extended), tamaño 50, leading y kerning -14. Añadir expresión de repetición para repetir la línea 7 veces (1 repetición del texto).
- **Position animator (back soon):** Position: 270 en X, 5 en Y. Añadir animator Position → Y: 1050. Advanced → Based On: Words. Shape: Ramp Down. Ease High: 100, Ease Low: 100. Keyframe Offset de 100 a -100 en 1 segundo. More Options → Grouping Alignment: -93, Anchor Point Grouping: Word.
- **Line spacing animator:** Nuevo animator con Position y Line Spacing. Renombrar "position/line spacing". Line Spacing: 11. Keyframe a 1.5 segundos: Position Y: -186, Line Spacing: 13.
- **Scale + line spacing animator:** Nuevo animator con Scale y Line Spacing. Renombrar "scale lines facing shock". Scale: 2700, Line Spacing: 2015. Based On: Words. Shape: Ramp Up. Ease High: -100, Ease Low: 100. Offset de 100 a -100 en 1.5 segundos.
- **Time Remapping final (back soon):** Pre-componer, añadir Time Remapping para ralentizar. Añadir white layers para interés visual (wipe de abajo a arriba y de izquierda a derecha).
- **Animación "WEIRDBACK" con smear:** Escribir "WEIRDBACK" repetido. Tamaño 750, leading 650, kerning -15. Escala del layer: 32. Animator Position → X: 1900. Shape: Ramp Up. Offset de -100 a 100 en 2 segundos. Ease High: 100, Ease Low: 100. Añadir Scale → 0 y Tracking → -100.
- **Lines Moving animator:** Nuevo animator Position → X: 1500. Shape: Ramp Up. Ease High: 10, Ease Low: 16. Offset de -80 a 0 en 3 segundos.
- **Smear con Minimax:** Keyframe Position en ~20 frames. Añadir Expression Control → Slider, renombrar "speed". Expresión en speed: `Math.floor(position.speed)`. Añadir efecto Minimax: Channel: Alpha and Color, Direction: Horizontal. Expresión en Radius: `pick whip to speed / 20`.
- **Transform para dirección del smear:** Añadir efecto Transform. Expresión en Position (Shift+Position): `x = [valor] - thisComp.layer("NOMBRE").effect("Minimax")("Radius"); y = [valor]; [x, y]`. Ajustar valor para que el smear se extienda a la izquierda.
- **Recortar capa para evitar jank:** Ctrl+Shift+D para dividir la capa donde termina la animación. Recortar out point.
- **Corregir cutout del 4 con shape layer:** Con Pen Tool, trazar el gap del 4 (sin seleccionar text layer). Crear shape layer, sin stroke. Usar Alpha Matte invertido con el text layer como fuente. Parentear shape layer al text layer.
- **Solución alternativa (2 capas):** Duplicar text layer. Capa superior: quitar Fill y Minimax. Capa inferior: mantener Minimax. Expression Link Source Text de la capa superior a la inferior. Usar Fill y CC Composite en capa inferior para color.
- **Animación tipo bounce con texto 3D:** Text layer con 3D activado, cámara con keyframes de posición. Dot animado con keyframes de posición y parenteado a Null con bounce.
- **Scale animator (spring effect):** Añadir animator Scale → 0. Renombrar "scale up". Shape: Ramp Up. Keyframe Offset de -100 a 100. Ease Low: 100.
- **Scale down animator:** Duplicar "scale up", renombrar "scale down". Scale: 85. Shape: Ramp Down. Ease Low: 0, Ease High: -100. Desfasar keyframes arrastrándolos.
- **Trim de caracteres con Opacity:** Añadir animator Opacity → 0. Renombrar "trim". Smoothness: 0. Ajustar Start/End para eliminar carácter específico (ej. "I").
- **Aislar carácter con modo Subtract:** Duplicar text layer. En animator "trim", cambiar modo de Add a Subtract para aislar el carácter eliminado.
- **Fill Color animator:** Añadir animator → Fill Color. Cambiar color a Black. Smoothness: 0. Keyframe Start con Hold keyframes para cambiar color cuando el dot golpea cada letra.
- **Invertir keyframes de color:** Presionar U para revelar keyframes. Seleccionar y Time Reverse Keyframes.
- **Modo Subtract para color:** Cambiar Start a 100, modo a Subtract. Keyframe End para que los caracteres vuelvan al color original.

## Reglas para el erudito
- Usa Shape: Ramp Down para efectos de escala que disminuyan gradualmente; Ramp Up para aumentos.
- Cuando uses múltiples animators en un mismo text layer, renómbralos para mantener organización (ej. "scale", "type on", "tracking").
- Para efectos type-on, usa Smoothness: 0 y ajusta keyframes en el Graph Editor para control preciso.
- Cuando animes Offset, keyframe de 100 a -100 (o viceversa) para controlar dirección del efecto.
- Para efectos de slide off, usa valores grandes de Position X (ej. 3000, 3650) para que los caracteres salgan completamente del cuadro.
- En animators con múltiples propiedades, agrupa en un solo animator para mantener keyframes sincronizados.
- Usa Based On: Words cuando quieras que el efecto se aplique palabra por palabra en lugar de carácter por carácter.
- Para efectos de repetición de texto, usa la expresión de repetición (repeat expression) como workaround ya que After Effects no tiene función nativa.
- Cuando uses Minimax para smear, ajusta el valor de división (ej. /20) según preferencia personal para controlar la intensidad.
- Para corregir cutouts en caracteres con Minimax, usa shape layers con Alpha Matte invertido en lugar de máscaras directas.
- Usa Hold keyframes para cambios de color sincronizados con eventos (ej. impacto de un objeto).
- Time Remapping es útil para ajustar timing sin re-animar; pre-componer y aplicar Time Remapping para ralentizar o acelerar.
- Cuando trabajes con 3D layers y cámara, parentea objetos a Nulls para animaciones de bounce más controladas.

## Errores comunes que evita o menciona
- No usar la expresión de repetición (repeat expression) cuando se necesitan colores alternados en el texto, porque hace que todo el texto sea del mismo color (blanco en el ejemplo). En su lugar, copiar y pegar manualmente el texto.
- El Minimax effect extiende el smear en ambas direcciones (izquierda y derecha); para controlar la dirección, usar efecto Transform con expresión que vincule la posición al radio del Minimax.
- El Minimax puede hacer que se pierdan partes recortadas de caracteres (ej. el agujero del "4"); solucionar con shape layer y Alpha Matte invertido.
- Al usar la solución de dos capas para smear, hay que cambiar el texto en ambas capas; se puede solucionar con Expression Link del Source Text.
- Al animar color con Fill Color animator, es fácil invertir el orden de los keyframes; usar Time Reverse Keyframes para corregir rápidamente.
- Si se cambia la tipografía o el tipo de letra, las máscaras directas quedan inservibles; usar animators de Opacity con modo Subtract es más flexible.
- El tutorial menciona que After Effects no tiene una función de repetición nativa para Text Animators (a diferencia de Shape Layers), y sugiere usar la expresión de repetición como workaround.