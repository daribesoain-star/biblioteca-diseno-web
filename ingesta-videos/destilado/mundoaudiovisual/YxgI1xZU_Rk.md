# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 17 - Las Máscaras
**Fuente:** mundoaudiovisual | https://youtu.be/YxgI1xZU_Rk

## Qué enseña (2-3 líneas)
Este capítulo enseña a crear y animar máscaras de opacidad en Adobe Premiere Pro 2020 para eliminar objetos no deseados o revelar contenido de clips subyacentes. Se explica el proceso completo de máscara manual cuadro por cuadro, incluyendo la creación de puntos de ancla, animación con keyframes y ajuste fino para seguir movimientos naturales como la apertura de una puerta o el desplazamiento de una persona caminando.

## Lecciones accionables
- **Crear una máscara de opacidad:** Seleccionar el clip en la línea de tiempo → ir a **Effects Controls** → desplegar **Opacity** → hacer clic en el ícono de **Freehand Curve** (herramienta de máscara de forma libre) para crear puntos de ancla.
- **Invertir la máscara:** En **Effects Controls > Opacity > Mask**, marcar la casilla **Inverted** para que el área seleccionada se oculte en lugar de mostrarse.
- **Ajustar el difuminado (feathering):** En **Mask > Mask Feather**, establecer el valor a **0** (cero) para bordes duros y precisos.
- **Animar la máscara cuadro por cuadro:** Activar el botón **Toggle Animation** (cronómetro) junto a **Mask Path** en **Effects Controls**. Avanzar **2 fotogramas (frames)** a la vez usando las teclas de flecha derecha/izquierda, y en cada fotograma mover los puntos de ancla manualmente para que sigan el movimiento del objeto.
- **Añadir puntos adicionales a la máscara:** Hacer clic en cualquier punto del borde de la máscara con la herramienta **Freehand Curve** para insertar un nuevo punto de ancla y refinar la forma.
- **Ajustar el zoom de visualización:** En el panel **Program Monitor**, hacer clic en el menú desplegable de **Zoom** (junto a "Fit") y seleccionar **400%** para ver detalles finos al posicionar puntos de ancla.
- **Aplicar efecto de iluminación progresiva:** En el clip de la máscara, ir a **Effects Controls > Opacity > Exposure** → activar **Toggle Animation** → en el fotograma inicial establecer **Exposure = 0** → en el fotograma final (cuando la puerta está abierta) establecer **Exposure = 3.4** para simular entrada de luz.
- **Añadir transición de disolución:** Arrastrar **Dissolve** desde **Effects > Video Transitions** al inicio del clip para que aparezca desde negro.
- **Ajustar velocidad del clip:** Seleccionar clip → clic derecho → **Speed/Duration** → aumentar el porcentaje (ej. 200%) para acelerar el movimiento.
- **Silenciar pista de audio no deseada:** Hacer clic en el icono de altavoz (Mute) en la pista de audio correspondiente en el panel **Timeline**.

## Reglas para agentes
- Usa **Toggle Animation** en **Mask Path** antes de comenzar a mover puntos de ancla, o la animación no se registrará.
- Avanza siempre **2 fotogramas** por cada ajuste de máscara para mantener precisión sin omitir movimientos.
- Invierte la máscara (**Inverted**) cuando quieras ocultar el área seleccionada y mostrar el clip de abajo.
- Aplica **Mask Feather = 0** para bordes duros en efectos de ocultación de objetos.
- Coloca el clip con máscara en una **pista de video superior** (V2, V3) y el clip de fondo en la pista inferior (V1).
- Mutea o elimina el audio del clip con máscara si interfiere con el audio del clip de fondo.

## Errores comunes que evita o menciona
- Olvidar activar el botón **Toggle Animation** en **Mask Path** antes de animar, lo que impide que la máscara siga el movimiento.
- No invertir la máscara cuando se desea ocultar el área seleccionada en lugar de mostrarla.
- Dejar el **Mask Feather** con valores altos, lo que produce bordes borrosos y poco realistas para efectos de ocultación precisa.
- Mover más de 2 fotogramas por ajuste, lo que provoca saltos bruscos en la animación de la máscara.
- No ajustar el zoom al 400% en el **Program Monitor**, dificultando la colocación precisa de puntos de ancla en detalles pequeños.