# Cartoon Animation in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/u07pDKjdmjI

## Qué enseña (2-3 líneas)
Cómo crear una caricatura animada de uno mismo completamente dentro de Apple Motion, usando herramientas de forma, Bezier, cámara 3D, puntos de anclaje y behaviors. Cubre desde el dibujo de facciones y cuerpo hasta la animación de parpadeo, movimiento de cabeza, brazos y sincronización labial con audio.

## Lecciones accionables
- **Agregar cámara al inicio del proyecto:** para trabajar en 3D, añadir cámara desde el principio.
- **Convertir óvalo en puntos:** dibujar forma de rostro con la herramienta círculo, luego en Inspector > Geometry > "Convert to Points" para editar la forma manualmente.
- **Crear pestañas con Paint Stroke:** dibujar triángulo pequeño (sin outline, fill negro), duplicar el paint stroke del ojo, cambiar Outline de "Solid" a "Image" y arrastrar el triángulo como source.
- **Redondear cejas:** dibujar con Bezier, en Geometry aumentar "Roundness", cambiar "Start Cap" a "Square" y "End Cap" a "Arrow", ajustar "Arrow Width" para punta fina.
- **Duplicar ojo y aplicar Flop:** duplicar grupo del ojo, aplicar Filter > Distortion > Flop. Luego cambiar el grupo duplicado de 3D a 2D (ícono de capas) para que el movimiento en X sea en la dirección esperada.
- **Agrupar facciones superiores:** crear subgrupo dentro del grupo "face" que contenga rostro, nariz, labios, ojos, flequillo y frente del cabello (excluyendo cuello) para animar la cabeza independientemente.
- **Posicionar en Z-space:** para que el cabello delantero quede sobre el cuerpo, moverlo hacia adelante en Z (más cerca de la cámara) aunque en el panel de proyecto el cuerpo esté arriba.
- **Parpadeo con Oscillate:** dibujar círculo color piel sobre el ojo abierto, duplicar paint stroke del ojo, rotarlo como ojo cerrado, agrupar ambos como "closed left eye". Duplicar para el ojo derecho. Agrupar como "closed eyes". Aplicar Behavior > Parameter > Oscillate. En Inspector > Behaviors, en "Apply To" seleccionar Properties > Blending > Opacity. Cambiar "Wave Shape" de "Sine" a "Square". Ajustar "Speed", "Phase", "Start Offset" y "End Offset" para controlar cuándo y cuánto parpadea. Duplicar la barra púrpura del behavior en timeline para múltiples series de parpadeos.
- **Movimiento de cabeza con Randomize:** seleccionar grupo de facciones superiores (sin cuello), cambiar anchor point al punto del cuello (herramienta Anchor Point). Aplicar Behavior > Parameter > Randomize. En "Apply To" seleccionar Properties > Transform > Rotation > Z. Reducir "Noisiness" y "Frequency" para movimiento sutil.
- **Flequillo con Link:** seleccionar grupo de flequillo, cambiar anchor point a esquina superior. Aplicar Behavior > Parameter > Link. En "Source" arrastrar el grupo de la cabeza. En "Target Parameters" seleccionar Properties > Transform > Rotation > Z. En "Compatible Parameters" seleccionar Properties > Transform > Rotation > Z. Ajustar valores para movimiento semi-independiente.
- **Movimiento de brazos con Oscillate y Logarithmic:** cambiar anchor point de cada brazo al codo. Para un brazo: Behavior > Parameter > Oscillate, aplicar a Properties > Transform > Rotation > Z, reducir "Amplitude". Para el otro brazo: Behavior > Parameter > Logarithmic, aplicar a Properties > Transform > Rotation > Z, ajustar "End Value" a negativo para rotación hacia adentro. Duplicar behavior y cambiar "Apply To" a Rotation > X para movimiento hacia atrás.
- **Sincronización labial con Audio:** seleccionar labio superior. Behavior > Parameter > Audio. En "Audio Source" seleccionar el archivo de audio importado. En "Apply To" seleccionar Properties > Transform > Position > Y. Ajustar "Ceiling Value" y "Scale". Copiar behavior y pegar en labio inferior, cambiar "Scale" a número negativo para que se mueva hacia abajo.
- **Movimiento de cámara:** seleccionar cámara en panel de proyecto. Colocar playhead al inicio, agregar keyframe en Scale. Mover playhead al final, agregar otro keyframe en Scale y reducir el valor para zoom in.

## Reglas para agentes
- Usa "Convert to Points" en Geometry cuando necesites modificar la forma de un óvalo o círculo base.
- Cambia el grupo duplicado de ojo a 2D inmediatamente después de aplicar Flop para que el movimiento en X sea predecible.
- Agrupa siempre las facciones superiores (cara, ojos, nariz, labios, cabello frontal) en un subgrupo separado del cuello antes de animar la cabeza.
- Aplica "Square" como Wave Shape en Oscillate para parpadeos, nunca uses "Sine" porque produce transiciones graduales irreales.
- Usa valores negativos en Scale del behavior Audio para el labio inferior, para que se mueva en dirección opuesta al superior.
- Cambia el anchor point al punto de articulación natural (cuello, codo) antes de aplicar behaviors de rotación.
- Para que el cabello delantero quede sobre el cuerpo, ajústalo en Z-space (más cerca de la cámara) en lugar de reordenar capas en el panel de proyecto.

## Errores comunes que evita o menciona
- No olvidar apagar el "Write On" behavior en los Paint Strokes que se usan como formas estáticas (pestañas, nariz, labios).
- Al duplicar el ojo y aplicar Flop, el movimiento en X se invierte; la solución es cambiar el grupo duplicado a 2D antes de reposicionar.
- El parpadeo con Oscillate en modo Sine hace que los ojos se disuelvan gradualmente (no realista); usar Square para transición instantánea.
- Si no se agrupan las facciones superiores separadas del cuello, al rotar la cabeza el cuello se moverá junto con ella.
- No ajustar el anchor point antes de aplicar behaviors de rotación causa que el movimiento se centre en el punto incorrecto (ej. desde el labio en vez del cuello).