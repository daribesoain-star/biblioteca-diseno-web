# How to Prompt Veo 3.1 Correctly: 95% of People Get It Wrong!
**Fuente:** ai_veo | https://youtu.be/npn3wb_8gpU

## Que ensena (2-3 lineas)
Cómo usar la generación de *first and last frame* en Veo 3.1 para crear transiciones narrativas fluidas entre dos imágenes fijas, y cómo un *prompt agent* especializado puede estructurar prompts detallados con parámetros de cámara, lente, movimiento y desglose temporal segundo a segundo.

## Lecciones accionables

### Flujo de trabajo First & Last Frame
1. **Subir dos imágenes** como *start frame* y *last frame*.
2. **Describir la transición deseada** al agente: ej. *"I want the person's arm to turn into a robot arm similar to Iron Man's suit, but do not use nanotech. He would not be speaking. And I want the camera to orbit to his left around him."*
3. **El agente genera un prompt estructurado** que incluye:
   - **Style** (estilo visual)
   - **Cinematography** (cinematografía)
   - **Lens size** (tamaño de lente)
   - **Motion** (movimiento de cámara)
   - **Duration** (duración)
   - **Action breakdown** (desglose de acciones por segundo)

### Prompt VERBATIM de ejemplo (usado en el video)
*"Analyze these two images. I want to create a transition between them. I have a first and last frame. I want the person's arm to turn into a robot arm similar to Iron Man's suit, but do not use nanotech. He would not be speaking. And I want the camera to orbit to his left around him."*

### Parámetros técnicos que el agente estructura
- **Lens size**: especifica la focal (ej. 35mm, 50mm, 85mm)
- **Camera motion**: *orbit*, *dolly*, *pan*, *tilt*, *tracking shot*
- **Duration**: en segundos, con acciones asignadas a cada segundo
- **Negative prompt**: para evitar artefactos, ej. *"avoid bad quality"*

### Iteración antes de generar
- Revisar el prompt completo antes de enviarlo a Veo 3.1 para *minimize wasted credits*
- Si algo no gusta, decir al agente: *"I don't like this one detail in the prompt"* y ajustar

## Reglas para el director de fotografia IA

- **Usa first and last frame** cuando necesites control narrativo total sobre inicio y final de una secuencia; el modelo rellena la transición creativa.
- **Especifica siempre el movimiento de cámara** en el prompt: *orbit*, *dolly in/out*, *pan left/right*, *tilt up/down*. No asumas que el modelo lo inferirá.
- **Para evitar alucinaciones en video IA**, revisa el prompt generado por el agente antes de ejecutar; verifica que cada segundo tenga una acción clara y coherente.
- **Usa negative prompt** genérico como *"bad quality, distortion, warping"* para mantener consistencia visual.
- **Itera con el agente** antes de gastar créditos: si la transición no es exacta (ej. un aullido que sale como rugido), vuelve al agente y refuerza ese detalle específico.
- **Para transiciones mecánicas** (mano a brazo robótico), evita términos como *nanotech* si quieres un efecto más práctico/industrial; sé explícito sobre lo que NO quieres.

## Errores comunes que evita o menciona

- **No revisar el prompt antes de generar**: el video menciona explícitamente *"always review the prompt first and make sure it's saying exactly what you want"* para no desperdiciar créditos.
- **Asumir que el modelo interpretará acciones implícitas**: en el ejemplo del hombre lobo, el aullido no se generó correctamente porque no se enfatizó lo suficiente en el prompt; hay que ser redundante en acciones clave.
- **Usar prompts genéricos sin estructura**: el agente demuestra que un prompt detallado con *style, cinematography, lens size, motion, duration* y *action breakdown* produce resultados muy superiores.
- **No especificar lo que NO quieres**: el uso de *"do not use nanotech"* es clave para dirigir el estilo de la transición robótica.