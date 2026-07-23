# New Kling AI Camera Prompts Supercharge Your Videos
**Fuente:** ai_kling | https://youtu.be/zcRoGyGrNdA

## Que enseña
Cómo usar los nuevos comandos textuales de control de cámara en Kling AI (función "Get Inspirations") para simular movimientos cinematográficos reales en video generado por IA. Explica cada prompt de cámara, sus variantes y mejores prácticas para obtener resultados predecibles y de alta calidad, incluyendo el uso de imagen de inicio.

## Lecciones accionables

- **Siempre usar imagen de inicio (start image)** con todos los prompts de video en Kling. Esto produce resultados más predecibles y de mayor calidad que solo texto.
- **Camera rotates around the subject**: Simula un movimiento circular o en arco alrededor del sujeto. En modo Standard puede generar morphing en extremidades; usar **Professional mode** para eliminar ese artefacto.
- **Lens rotate (left lens rotate / right lens rotate)**: Alternativa más precisa a "camera rotates". Evita que el sujeto también rote, dando control fino sobre el movimiento.
- **Panning**: Movimiento lineal. Usar **left pan** o **right pan** para desplazamiento horizontal sin rotación del sujeto.
- **The camera is stationary**: Equivalente a un trípode. Mantiene al sujeto fijo en el encuadre.
- **Handheld device filming**: Emula footage de cámara en mano (móvil). Añade dinamismo y realismo a escenas cotidianas.
- **The camera zooms in / The camera zooms out**: Efectos de zoom suaves e inmersivos. Para zoom out, también funciona **camera pulls back** (genera un efecto con paralaje ligeramente diferente).
- **The camera follows the subject moving**: Tracking del sujeto. Mejorar precisión añadiendo contexto de escena, ej: *"woman walking away from the camera"*.
- **FPV (first person view)**: Para seguir al sujeto desde su punto de vista. Ejemplo: *"fpv fast walking away from camera into Forest"*.
- **Underwater scenes**: Usar contexto detallado como *"follow woman as she goes away from the camera into the water and swims under the water; the camera moves underwater"*.

## Reglas para el director de fotografía IA

- **Usa "start image" siempre** que quieras control predecible sobre el resultado; texto solo es impredecible.
- **Usa "Professional mode"** cuando el movimiento de cámara pueda causar morphing en extremidades (especialmente en rotaciones).
- **Usa "lens rotate" en lugar de "camera rotates"** cuando necesites que solo la cámara se mueva y el sujeto permanezca estático.
- **Añade contexto de escena** a los prompts de seguimiento (follow) para mejorar la precisión del tracking.
- **Para evitar alucinaciones en video IA**, no combines movimientos de cámara complejos sin imagen de inicio; el modelo puede inventar transiciones no deseadas.
- **Para underwater o FPV**, sé específico con la dirección del movimiento (away from camera, into water, etc.) para que la cámara no se desoriente.

## Errores comunes que evita o menciona

- **Morphing en rotaciones**: Ocurre en modo Standard al usar "camera rotates around the subject". Se soluciona cambiando a Professional mode.
- **Rotación doble (cámara + sujeto)**: Al usar "camera rotates", a veces el sujeto también gira. Se evita usando "lens rotate" (left/right).
- **Falta de contexto en prompts de seguimiento**: Usar solo "the camera follows the subject moving" sin especificar dirección o acción genera resultados imprecisos.
- **No usar imagen de inicio**: Produce resultados menos predecibles y de menor calidad en todos los movimientos de cámara.