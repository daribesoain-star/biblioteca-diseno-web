# Apple Motion Behaviors Tutorial
**Fuente:** jennjagerpro | https://youtu.be/mkvdzUcXS5U

## Qué enseña
Cómo combinar dos behaviors aleatorios de Apple Motion (Repel y Write On) para crear una animación de logo completa sin keyframes manuales. Incluye técnicas de máscaras, anclaje, overshoot, gravedad y organización de capas para lograr un resultado profesional.

## Lecciones accionables
- **Aplicar Write On a formas:** Seleccionar el objeto → ir a Behaviors > Shape > Write On. O usar Paint Stroke Tool (icono de pincel en centro de pantalla) para dibujar trazos que se animan automáticamente con Write On incorporado.
- **Ajustar Paint Strokes:** Seleccionar todos los trazos en el panel de proyecto → en Inspector, aumentar Width para cubrir formas → cambiar color (ej. amarillo) para visibilidad → hacer clic derecho en canvas > Edit Points para ajustar puntos manualmente.
- **Sincronizar duración de behaviors:** En timeline, seleccionar todos los behaviors Write On → arrastrar extremo derecho para comprimir a 25 frames → asegurar que todos tengan la misma longitud.
- **Agrupar y enmascarar con Image Mask:** Seleccionar todos los Paint Strokes → clic derecho > Group → colapsar grupo → seleccionar logo original → Object > Add Image Mask → en Inspector, arrastrar el grupo de trazos al campo Mask Source.
- **Máscaras circulares para elementos individuales:** Seleccionar capa de logo → Mask Tool > Circle Mask → dibujar alrededor de cada punto (rosa, azul, amarillo) → repetir para cada copia del logo.
- **Overshoot behavior con escala:** Seleccionar capa → Behaviors > Parameter > Overshoot → en Inspector, en Apply To elegir Properties > Transform > Scale > All → llevar playhead al inicio → ajustar Start Value hasta que el elemento sea invisible → acortar duración del behavior en timeline.
- **Ajustar anchor point para overshoot:** Seleccionar capa → clic derecho en canvas > Anchor Point → arrastrar flecha roja (X) y verde (Y) para centrar el punto azul en el elemento → verificar que la animación origine desde la posición natural.
- **Copiar behaviors entre capas:** Seleccionar behavior en timeline → clic derecho > Copy → seleccionar capa destino en panel de proyecto → clic derecho > Paste.
- **Repel behavior con objetos específicos:** Seleccionar el logo principal → Behaviors > Simulations > Repel → en Inspector, cambiar Related Objects a Specific Objects → arrastrar la copia del círculo (no el original) al campo → ajustar Strength (valores negativos invierten dirección).
- **Gravity behavior para caída:** Seleccionar círculo copia → Behaviors > Simulations > Gravity → en Inspector, aumentar Acceleration para caída más rápida.
- **Repel con dirección controlada:** Duplicar behavior Repel en logo original → eliminar objeto afectado anterior → arrastrar nuevo círculo copia → ajustar Strength positivo/negativo según dirección deseada → en Include desactivar X o Y para movimiento solo vertical/horizontal.
- **Fade In/Fade Out en elementos:** Seleccionar capa → Behaviors > Basic Motion > Fade In/Fade Out → en Inspector, Fade In Time = 0, Fade Out Time = 6 → en timeline, reducir duración total del elemento.
- **Opacidad inicial suave:** Seleccionar capa → en Inspector > Properties > Opacity = 30%.
- **Overshoot en rotación de grupo:** Seleccionar grupo completo → Behaviors > Parameter > Overshoot → Apply To > Properties > Transform > Rotation > Z → ajustar Start Value a número negativo → acortar duración → reducir Ramp Duration y Cycles para efecto más rápido y elástico.
- **Crop para aislar texto:** Seleccionar capa de logo → en Inspector > Properties > Crop = On → ajustar recortes desde Bottom, Left, Top según la palabra deseada.
- **Overshoot en rotación X de texto:** Seleccionar texto recortado → Behaviors > Parameter > Overshoot → Apply To > Properties > Transform > Rotation > X → Start Value positivo hasta que desaparezca → acortar duración → reducir Ramp Duration y Cycles.
- **Stagger timing:** En timeline, seleccionar cada elemento de texto y arrastrarlos a posiciones diferentes (ej. texto "fuller" primero, "center" después, "tomorrow begins today" al final).
- **Fade In en texto final:** Seleccionar última capa de texto → Behaviors > Basic Motion > Fade In/Fade Out → Fade In Time = 8 frames.

## Reglas para agentes
- Usa **Paint Stroke Tool** para Write On cuando necesites animar trazados que sigan formas orgánicas, no shapes geométricas.
- Siempre **duplica el logo original** antes de modificar, mantén una copia sin alteraciones como referencia de alineación.
- Aplica **Repel al objeto principal** (no a los que quieres que se muevan) y usa **Specific Objects** para controlar qué elementos son repelidos.
- Usa **valores negativos en Strength** de Repel para invertir la dirección del movimiento.
- Ajusta el **anchor point** siempre que uses Overshoot en escala o rotación para que la animación origine desde la posición natural del elemento.
- Agrupa elementos relacionados (Paint Strokes, círculos) y nómbralos claramente para mantener organización en proyectos complejos.
- Nunca apliques Overshoot sin antes verificar el anchor point; si el elemento no rota/escalea desde su centro, la animación se verá incorrecta.
- Cuando copies behaviors entre capas, verifica que el anchor point de cada capa destino esté ajustado individualmente.

## Errores comunes que evita o menciona
- **No verificar el anchor point antes de Overshoot:** Si el elemento rota o escala desde el centro del canvas en lugar de su posición natural, la animación se ve desplazada. Solución: usar Anchor Point Tool para centrar el punto azul en el elemento.
- **Aplicar Repel al objeto equivocado:** Aplicar Repel a los círculos que quieres mover en lugar del logo principal. Solución: aplicar Repel al logo y usar Specific Objects para seleccionar los círculos copia.
- **No ajustar Start Value en Overshoot:** Si no se modifica el valor inicial, el behavior no produce ningún efecto visible. Solución: llevar playhead al inicio y ajustar Start Value hasta que el elemento desaparezca o cambie según lo deseado.
- **Olvidar que Write On necesita Paint Stroke:** Write On no funciona directamente en shapes regulares; debe aplicarse a trazos dibujados con Paint Stroke Tool.
- **No sincronizar duración de behaviors múltiples:** Si los Write On tienen longitudes diferentes, la animación se ve desordenada. Solución: comprimir todos al mismo número de frames (ej. 25).