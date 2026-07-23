# 【电影和运镜】1 固定镜头
**Fuente:** zh_jingtou | https://youtu.be/iO-6IRJuzOg

## Que ensena (2-3 lineas)
El video enseña cómo dominar el **fixed shot** (plano fijo) como base del lenguaje cinematográfico de Hollywood. Explica que la cámara estática no es aburrida si se usa correctamente la composición, el encuadre y el movimiento interno del sujeto. Destaca que el fixed shot es la herramienta más potente para dirigir la atención del espectador sin distracciones de cámara.

## Lecciones accionables
- **Fixed shot (plano fijo):** Cámara completamente estática sobre un trípode o superficie sólida. Sin movimiento de cámara (no pan, no tilt, no dolly). El movimiento solo proviene del sujeto o del entorno.
- **Composición interna:** Usa la **regla de los tercios** y **leading lines** para crear tensión o calma dentro del encuadre fijo.
- **Profundidad de campo:** Para fixed shots narrativos, usa **f/2.8 o menor** (gran apertura) para aislar al sujeto del fondo. Para planos de establecimiento (establishing shots), usa **f/8 a f/11** para mantener todo enfocado.
- **Focales recomendadas:**
    - **35mm o 50mm** para planos generales fijos (wide establishing shots).
    - **85mm o 135mm** para close-ups fijos (retratos, detalles).
    - **24mm** para crear sensación de espacio amplio en fixed shot.
- **Duración del plano:** En fixed shot, el corte debe ocurrir cuando la acción interna del sujeto se completa (ej: un personaje termina de hablar, un objeto llega a su punto focal). No cortes antes de que el ojo del espectador haya explorado el encuadre.
- **Prompt de cámara para IA (ejemplo):** `"Fixed shot, static camera on tripod, 50mm lens, f/2.8, shallow depth of field, subject centered, no camera movement, cinematic lighting, 24fps"`.
- **Movimiento interno:** En fixed shot, el sujeto debe moverse dentro del cuadro (entrar/salir, girar, interactuar con objetos). La IA alucina menos si el prompt especifica `"subject walks into frame from left, stops, looks at camera"` en lugar de solo `"person standing"`.

## Reglas para el director de fotografia IA
- **Usa fixed shot cuando:** Necesites que el espectador se concentre en una emoción, un detalle o un diálogo sin distracciones de cámara. Es ideal para planos de reacción, close-ups dramáticos y establishing shots de locaciones.
- **Para no alucinar en video IA:** Especifica siempre `"static camera"` o `"no camera movement"` en el prompt. Si no lo haces, modelos como Runway o Veo 3 pueden añadir micro-movimientos no deseados (parallax, respiración de cámara).
- **Evita el fixed shot cuando:** La escena requiere dinamismo, acción rápida o transiciones espaciales. Para persecuciones o bailes, usa dolly, pan o handheld.
- **Control de alucinación en IA:** Si el fixed shot tiene un sujeto que se mueve, define claramente su trayectoria: `"subject walks from left to right, exits frame right, camera remains static"`. La IA tiende a "seguir" al sujeto si no se lo prohibes.
- **Parámetro de duración:** En prompts para video IA, añade `"duration: 5 seconds"` para fixed shots cortos o `"duration: 10 seconds"` para planos contemplativos. La IA respeta mejor la duración si se especifica.

## Errores comunes que evita o menciona
- **Error: Confundir fixed shot con plano aburrido.** El video aclara que un fixed shot bien compuesto (con movimiento interno del sujeto o cambios de luz) es más cinematográfico que un plano con cámara en movimiento sin propósito.
- **Error: Cortar demasiado pronto en fixed shot.** El espectador necesita tiempo para leer el encuadre. En IA, si el prompt no especifica duración, el modelo puede generar un clip de 2 segundos que no permite apreciar la composición.
- **Error: Usar fixed shot para acción rápida.** La cámara fija no sigue al sujeto; si el personaje se mueve rápido, puede salirse del cuadro. En IA, especifica `"subject stays within frame"` para evitar que desaparezca.
- **Error: No definir el fondo en fixed shot.** Como la cámara no se mueve, el fondo es crítico. En prompts, describe el fondo con tanto detalle como el sujeto: `"static camera, brick wall background, shallow depth of field, subject in focus, background slightly blurred"`.