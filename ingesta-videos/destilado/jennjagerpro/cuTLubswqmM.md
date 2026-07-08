# Apple Motion Behaviors Challenge ft. Mark Spencer
**Fuente:** jennjagerpro | https://youtu.be/cuTLubswqmM

## Qué enseña
Cómo combinar los behaviors **Sequence Replicator** y **Write-On** en Apple Motion para crear una animación de logo profesional en 2 horas. Incluye técnicas de preparación de assets en Pixelmator Pro, uso de máscaras de imagen, y aplicación de overshoot para dar vida a elementos animados.

## Lecciones accionables
- **Preparar assets en Pixelmator Pro:** Crear proyecto 3840×2160, arrastrar logo, usar **Color Selection Tool** para aislar blancos y elementos de color (ej. pluma verde), copiar y pegar como capa, renombrar capas, exportar como **Motion Project** (File > Export > Motion Project o Cmd+E).
- **Configurar Write-On behavior:** Seleccionar shape Bézier en el panel de proyecto → Behaviors > Shape > Write-On. Ajustar duración en timeline (ej. 1s 20f). Cambiar dirección a **Reverse** para que el trazo aparezca desde el final.
- **Usar Image Mask con Write-On:** Seleccionar el outline blanco → Object > Add Image Mask. En el inspector, arrastrar la shape Bézier al well **Mask Source** para que el outline se dibuje siguiendo la máscara.
- **Ajustar anchor point para rotación:** Seleccionar elemento → Tools > Anchor Point. Arrastrar el punto azul al extremo deseado (ej. punta de pluma) usando las flechas del canvas.
- **Crear Replicator:** Seleccionar elemento → botón **Replicator** (esquina superior derecha). En inspector: Shape > Line, Start Point a 0, End Point a 0, Points a 6 (número de plumas). Ajustar **Angle End** para abanicar (ej. 145°).
- **Aplicar color sobre patrón:** En replicator → Color Mode > **Color Over Pattern**. En **Color Gradient**, agregar puntos de color con el **Eyedropper** tomando del logo original de referencia.
- **Añadir Sequence Replicator behavior:** Seleccionar replicator → Behaviors > Replicator > Sequence Replicator. En inspector, agregar parámetro **Rotation**, valor 180°. Ajustar **Spread** a 100, **Traversal** a **Ease Out**. Reducir duración en timeline a 2s.
- **Aplicar Gaussian Blur al elemento original:** Seleccionar la pluma original deshabilitada → Filters > Gaussian Blur, valor 200. Esto suaviza el gradiente en las plumas replicadas.
- **Recortar exceso con Image Mask:** Seleccionar replicator → Object > Add Image Mask. Arrastrar el logo completo original al well **Mask Source**.
- **Animar pájaro con Overshoot:** Seleccionar pájaro → Behaviors > Parameter > Overshoot. Duración 1s. En inspector: Apply To > Properties > Transform > Rotation > Z. Start Value 65, Ramp Duration valor, Cycles 3.
- **Añadir Fade In/Out:** Seleccionar elemento → Behaviors > Basic Motion > Fade In/Fade Out. Ajustar valores (ej. Fade In 3, Fade Out 4).

## Reglas para agentes
- **Usa Write-On solo en shapes Bézier** (no en grupos ni capas de imagen).
- **Usa Sequence Replicator solo sobre un Replicator** existente en el proyecto.
- **Cambia el color base a blanco** antes de aplicar Colorize filter si vas a sobrescribir colores con un gradiente.
- **Duplica el logo original** antes de usarlo como máscara o referencia para no perder la posición exacta.
- **Ajusta el anchor point** antes de animar rotación o escala en cualquier elemento.
- **Nunca dejes el Write-On con dirección Forward** si quieres que el trazo aparezca desde el final hacia el inicio.
- **Usa Spread 100** en Sequence Replicator para que los elementos se muevan en unisono en lugar de uno por uno.

## Errores comunes que evita o menciona
- **Write-On demasiado lento:** Ocurre cuando el behavior abarca toda la duración del proyecto; acortar el behavior en timeline a 1-2 segundos.
- **Colores incorrectos en gradiente:** Aplicar Colorize filter sobre un elemento que no es blanco produce tonos distorsionados; remapear blacks y whites a blanco puro primero.
- **Plumas no alineadas al abanicar:** Usar **Rulers** (View > Rulers) y **Guides** (arrastrar desde regla) para verificar que el ángulo final deje las plumas alineadas horizontalmente.
- **Gradiente se sale del contorno del logo:** Solucionar añadiendo **Image Mask** al replicator usando el logo completo como máscara.
- **Animación demasiado lenta o rápida:** Ajustar duración del Sequence Replicator en timeline (no solo los parámetros internos) para controlar la velocidad general.