# Head to Head Apple Motion Behaviors Challenge
**Fuente:** jennjagerpro | https://youtu.be/rYGWxoP5N7A

## Qué enseña
Cómo combinar los behaviors Sequence Paint y Grow/Shrink en Apple Motion para crear animaciones creativas bajo presión de tiempo. Muestra el proceso completo de diseño de un botón de suscripción animado para YouTube, desde la configuración inicial hasta la aplicación de múltiples behaviors en capas.

## Lecciones accionables
- **Configurar un trazo con Sequence Paint:** Dibujar línea horizontal con la herramienta Line (Shape Tool) manteniendo Shift. En Inspector > Shape > Shape Style > Traditional > Dry Marker Heavy. Aumentar Width. Cambiar Brush Color a rosa.
- **Aplicar Write On:** Behaviors > Shape > Write On. Acortar duración arrastrando la barra púrpura en Timeline a 15 frames.
- **Primer Sequence Paint para color:** Behaviors > Shape > Sequence Paint. En Add, seleccionar Color. Cambiar color predeterminado de blanco a teal brillante. En Sequencing: Through, Unit Size: Dab, Spread: 100, Traversal: Ease In & Ease Out, Loops: 3.
- **Segundo Sequence Paint para ancho (separado):** Agregar otro Sequence Paint behavior. En Add, seleccionar Width, valor 80. Sequencing: Through, Unit Size: All, Traversal: Constant, Loops: 3.
- **Agregar texto e imagen:** Insertar texto y thumbs up image. Agruparlos (seleccionar ambos > clic derecho > Group). Renombrar grupo "like text".
- **Aplicar Wriggle al grupo de texto:** Behaviors > Parameter > Wriggle. Apply To: Properties > Transform > Position > All. Ajustar: Wriggle Amount 22, Frequency 0.57, Noisiness 0.62. Reducir duración a 3 segundos.
- **Image Mask para recorte:** Seleccionar línea > Object > Add Image Mask. Arrastrar grupo de texto al campo Mask Source. Activar Invert Mask.
- **Overshoot para rotación:** Behaviors > Parameter > Overshoot. Ajustar duración a 8 frames al final. Apply To: Properties > Transform > Rotation > Rotation X. End Value: 90°, Ramp Duration: 44, Cycles: 1.8.
- **Duplicar grupos para animación secuencial:** Clic derecho en grupo "like" > Duplicate. Renombrar "subscribe". Arrastrar en Timeline para que comience cuando el anterior termina. Cambiar texto, color de línea, color de Sequence Paint, y rotación opuesta.
- **Grow/Shrink para salida final:** Seleccionar grupo "ring the bell". Behaviors > Basic Motion > Grow/Shrink. Acortar duración al punto donde comenzaba Overshoot. En último frame, Scale 2 a -100 (desaparece volando).

## Reglas para agentes
- Usa Sequence Paint con parámetros separados (color y ancho) en behaviors independientes cuando necesites diferentes configuraciones de sequencing, traversal o loops.
- Aplica Image Mask con Invert Mask activado cuando quieras recortar una forma con texto u otro objeto como máscara.
- Usa Overshoot con Rotation X y End Value 90° para simular que un elemento se aplana y desaparece.
- Nunca agregues múltiples parámetros al mismo Sequence Paint si necesitan diferentes valores de sequencing, traversal o loops; crea behaviors separados.
- Siempre agrupa elementos que compartirán un mismo behavior (como Wriggle o Grow/Shrink) antes de aplicar el behavior al grupo.

## Errores comunes que evita o menciona
- No aplicar Sequence Paint con configuraciones idénticas para color y ancho cuando se desean efectos independientes; requiere behaviors separados.
- No olvidar reducir la duración de behaviors como Write On, Wriggle y Overshoot para que coincidan con el ritmo deseado (por defecto son demasiado largos).
- No dejar el tracking por defecto en textos con espacios grandes; usar Transform Glyph Tool para ajustar tracking negativo (ej. -60.6) solo en los espacios.
- No aplicar Grow/Shrink al elemento incorrecto; debe aplicarse al grupo completo, no solo a la línea, para que todo el conjunto se reduzca uniformemente.