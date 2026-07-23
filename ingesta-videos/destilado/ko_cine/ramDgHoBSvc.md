# 영화 속 카메라는 어떻게 움직이는가(팬,틸트,트래킹샷,달리샷,줌,붐) [영화학개론 3화]
**Fuente:** ko_cine | https://youtu.be/ramDgHoBSvc

## Que ensena (2-3 lineas)
El video desglosa los 6 movimientos de cámara fundamentales en cinematografía (Pan, Tilt, Tracking/Dolly, Zoom, Boom/Crane) y explica su función narrativa: cada movimiento dirige la atención del espectador, revela información o crea una emoción específica. Enseña a diferenciar entre movimiento físico de la cámara (dolly/tracking) y movimiento óptico (zoom), y cómo combinarlos para lograr un lenguaje visual profesional.

## Lecciones accionables
(maximo detalle tecnico: terminos de camara en ingles que sirven para prompts, prompts VERBATIM si aparecen, parametros, focales, movimientos)

*   **PAN (Panorámica horizontal):** Giro horizontal de la cámara sobre su eje vertical. **Uso en prompt:** `pan left`, `pan right`, `slow pan`, `reveal pan`. **Función:** seguir a un sujeto en movimiento horizontal, revelar un paisaje o conectar dos elementos en la escena. **Prompt ejemplo:** `"slow pan right revealing a vast desert landscape, cinematic, 24fps"`
*   **TILT (Inclinación vertical):** Giro vertical de la cámara sobre su eje horizontal. **Uso en prompt:** `tilt up`, `tilt down`, `slow tilt`. **Función:** revelar la altura de un objeto (edificio, persona), seguir un movimiento vertical o cambiar el poder de un personaje (tilt up para hacerlo ver imponente). **Prompt ejemplo:** `"tilt up from a pair of shoes to a character's face, dramatic reveal, 50mm lens"`
*   **TRACKING SHOT / DOLLY SHOT (Travelling / Dolly):** Movimiento físico de la cámara hacia adelante, atrás o lateralmente sobre rieles o ruedas. **Uso en prompt:** `tracking shot`, `dolly in`, `dolly out`, `dolly forward`, `dolly backward`, `lateral tracking`, `camera moves forward`. **Función:** sumergir al espectador en la escena (dolly in para intimidad), alejarse (dolly out para aislamiento) o seguir a un personaje. **Prompt ejemplo:** `"dolly forward through a crowded market, following a character, shallow depth of field, 35mm lens"`
*   **ZOOM (Zoom óptico):** Cambio de la distancia focal sin mover la cámara. **Uso en prompt:** `zoom in`, `zoom out`, `slow zoom`, `crash zoom`. **Función:** acercar o alejar la perspectiva sin cambiar la posición física. **Atención:** No confundir con dolly. **Prompt ejemplo:** `"slow zoom in on a character's eyes, building tension, 85mm lens"`
*   **BOOM / CRANE SHOT (Grúa / Pluma):** Movimiento vertical de la cámara sobre un brazo mecánico. **Uso en prompt:** `boom up`, `boom down`, `crane shot`, `crane up`, `crane down`. **Función:** mostrar escala, transiciones dramáticas de nivel (del suelo a una vista aérea). **Prompt ejemplo:** `"crane shot rising from ground level to an aerial view of the city, epic scale, 24mm lens"`
*   **COMBINACIONES CLAVE:** El video menciona que los movimientos se combinan. **Prompt ejemplo:** `"dolly in combined with tilt up, revealing the character's full stature, cinematic lighting"`

## Reglas para el director de fotografia IA
(imperativas: "usa X cuando Y"; "para no alucinar en video IA, Z")

*   **Usa "dolly in" cuando quieras acercarte a un personaje para crear intimidad o tensión; usa "zoom in" solo cuando quieras un cambio de perspectiva sin desplazamiento físico. La IA confunde ambos si no eres específico.**
*   **Para no alucinar en video IA, especifica la velocidad del movimiento:** `slow pan`, `fast tracking shot`, `gentle tilt`. Los movimientos bruscos o sin especificar velocidad pueden generar artefactos o movimientos no deseados.
*   **Usa "tracking shot" en lugar de "follow" para que la IA entienda que la cámara se mueve físicamente con el sujeto. "Follow" puede interpretarse como un paneo.**
*   **Para movimientos de grúa (boom/crane), especifica el punto de inicio y final:** `crane up from ground to rooftop`. La IA necesita un arco narrativo claro para el movimiento.
*   **Evita prompts genéricos como "camera moves". Sé preciso: "dolly backward revealing the full scene". La IA interpreta mejor acciones concretas.**
*   **Para zooms suaves y cinematográficos, usa "slow zoom" y especifica la lente (ej: `85mm lens`). Los zooms rápidos pueden verse antinaturales si no se pide explícitamente un "crash zoom".**

## Errores comunes que evita o menciona

*   **Confundir Zoom con Dolly:** El error más común. El zoom cambia la distancia focal (comprime o expande la perspectiva), mientras que el dolly mueve la cámara físicamente (cambia la perspectiva real). En IA, un "zoom in" puede verse como un "dolly in" si no se especifica la lente.
*   **Movimientos sin propósito narrativo:** El video enfatiza que cada movimiento debe tener una razón (revelar, seguir, crear emoción). En IA, un movimiento aleatorio sin dirección clara (ej: `camera moves randomly`) genera resultados incoherentes.
*   **Velocidad inconsistente:** No especificar la velocidad (slow, fast, gentle) puede resultar en movimientos bruscos o temblorosos, especialmente en tomas largas.
*   **Olvidar la lente:** No incluir la distancia focal (35mm, 50mm, 85mm) hace que la IA elija una lente por defecto, que puede no ser la adecuada para el movimiento deseado (ej: un zoom con una lente gran angular se ve muy diferente a uno con teleobjetivo).