# 三、拍摄篇之3 基础镜头语言——运镜
**Fuente:** zh_jingtou | https://youtu.be/LOAY7TLjCHM

## Que ensena (2-3 lineas)
Este video desglosa los movimientos de cámara (camera movement) esenciales del lenguaje cinematográfico de Hollywood, explicando cómo cada tipo de movimiento —pan, tilt, dolly, truck, pedestal, boom— cumple una función narrativa específica. Enseña a usar el movimiento para guiar la atención del espectador, revelar información o crear tensión emocional, y advierte sobre el uso excesivo o sin motivo del movimiento de cámara.

## Lecciones accionables

**1. PAN (Panorámica horizontal)**
- **Técnica:** Giro horizontal de la cámara sobre su eje vertical (yaw). No desplaza el punto nodal.
- **Función narrativa:** Seguir a un sujeto en movimiento, revelar un espacio amplio, conectar dos elementos en la escena (ej: personaje mira algo → pan hacia ese algo).
- **Prompt IA:** `"slow pan right, revealing a vast desert landscape, cinematic, 24fps"`
- **Parámetros:** Velocidad lenta (5-10°/seg) para drama; rápida (30-45°/seg) para acción o caos (whip pan).
- **Focales:** 35mm-50mm para pan natural; 85mm+ para pan comprimido (menos sensación de velocidad).

**2. TILT (Inclinación vertical)**
- **Técnica:** Giro vertical de la cámara sobre su eje horizontal (pitch).
- **Función narrativa:** Revelar altura (tilt up desde pies a rostro), mostrar poder (tilt down desde un edificio a un personaje), o crear misterio (tilt up lento desde el suelo).
- **Prompt IA:** `"slow tilt up from a pair of shoes to a man's face, dramatic reveal, cinematic lighting"`
- **Parámetros:** Tilt up = ascenso, poder; tilt down = descenso, vulnerabilidad.
- **Focales:** 24mm-35mm para tilt con distorsión dramática; 50mm para tilt neutral.

**3. DOLLY (Traveling / Dolly in / Dolly out)**
- **Técnica:** Desplazamiento físico de la cámara hacia adelante (dolly in) o hacia atrás (dolly out) sobre rieles o ruedas.
- **Función narrativa:** Dolly in = acercamiento psicológico, intimidad, tensión creciente. Dolly out = alejamiento, aislamiento, revelación de contexto.
- **Prompt IA:** `"dolly in slowly towards a woman's face, shallow depth of field, emotional intensity, 50mm lens"`
- **Parámetros:** Velocidad: lenta (0.5-1 m/s) para drama; rápida (2-3 m/s) para impacto.
- **Focales:** 35mm-50mm para dolly natural; 85mm para dolly comprimido (menos sensación de profundidad).

**4. TRUCK (Truck left / Truck right)**
- **Técnica:** Desplazamiento lateral de la cámara, paralelo al sujeto.
- **Función narrativa:** Seguir a un personaje caminando, crear ritmo visual, mostrar el entorno en movimiento.
- **Prompt IA:** `"truck right following a man walking down a busy street, cinematic, 24fps, anamorphic lens"`
- **Parámetros:** Velocidad sincronizada con el sujeto. Usar estabilización (gimbal o dolly).
- **Focales:** 24mm-35mm para truck con sensación de velocidad; 50mm para truck más estable.

**5. PEDESTAL (Pedestal up / Pedestal down)**
- **Técnica:** Movimiento vertical de la cámara sin inclinar (sube o baja el trípode/grúa).
- **Función narrativa:** Cambiar la altura del punto de vista sin cambiar el ángulo. Pedestal up = poder, dominio. Pedestal down = sumisión, vulnerabilidad.
- **Prompt IA:** `"pedestal down from eye level to low angle, making the character look powerful, cinematic"`
- **Parámetros:** Movimiento suave, 0.5-1 m/s.
- **Focales:** 35mm-50mm.

**6. BOOM (Boom up / Boom down)**
- **Técnica:** Movimiento vertical con pluma/grúa, combinando altura y desplazamiento.
- **Función narrativa:** Revelaciones épicas (boom up desde un personaje hasta un paisaje), transiciones dramáticas.
- **Prompt IA:** `"boom up from a close-up of a hand to a wide shot of the city, cinematic, epic scale"`
- **Parámetros:** Movimiento lento y majestuoso. Usar grúa o drone.
- **Focales:** 24mm-35mm para gran angular.

**7. ZOOM (Zoom in / Zoom out)**
- **Técnica:** Cambio de distancia focal sin mover la cámara.
- **Función narrativa:** Zoom in = enfoque selectivo, tensión. Zoom out = revelación, contexto. **Advertencia:** El zoom no es un movimiento de cámara real; no crea profundidad física.
- **Prompt IA:** `"slow zoom in on a detail, shallow depth of field, 85mm to 135mm"`
- **Parámetros:** Velocidad lenta para drama; rápida para impacto (crash zoom).
- **Focales:** 24-70mm para zoom versátil; 70-200mm para zoom comprimido.

**8. COMBINACIONES (Dolly + Zoom / Truck + Pan)**
- **Técnica:** Combinar dos movimientos para crear efectos complejos.
- **Ejemplo clásico:** Dolly out + Zoom in (efecto Vertigo / Hitchcock zoom). Crea desorientación, ansiedad.
- **Prompt IA:** `"dolly out while zooming in, creating a vertigo effect, disorienting, cinematic, 24fps"`
- **Parámetros:** Sincronización perfecta entre dolly y zoom. Requiere práctica o IA avanzada.

## Reglas para el director de fotografia IA

- **Usa "slow" + movimiento cuando quieras tensión dramática:** `"slow dolly in"`, `"slow pan right"`. La IA tiende a generar movimientos rápidos por defecto; especificar "slow" o "fast" es crítico.
- **Especifica la focal en el prompt para controlar la compresión:** `"50mm lens"` para natural, `"24mm lens"` para gran angular dramático, `"85mm lens"` para compresión y bokeh.
- **Para no alucinar en video IA, evita movimientos complejos en planos muy cerrados (close-up).** La IA alucina más con dolly in en close-up porque el fondo se distorsiona. Prefiere zoom in o pan/tilt en close-ups.
- **Usa "cinematic" + "24fps" + "shallow depth of field" como base en todo prompt de movimiento.** Esto fuerza a la IA a generar un look cinematográfico.
- **Para movimientos laterales (truck), especifica la dirección y el sujeto:** `"truck left following a car"`. Sin sujeto, la IA puede generar un movimiento sin propósito.
- **Para movimientos verticales (pedestal, boom), especifica el punto de partida y llegada:** `"pedestal down from eye level to low angle"`. La IA necesita el rango para calcular la trayectoria.
- **Evita el zoom digital en post-producción.** La IA prefiere zoom óptico en el prompt. Usa `"zoom in"` en el prompt, no en edición.
- **Para efectos Vertigo (dolly + zoom), usa prompts separados o herramientas que permitan keyframes.** La mayoría de IAs de video (Runway, Kling) no sincronizan bien dos movimientos simultáneos. Prefiere generarlos por separado y combinarlos en post.

## Errores comunes que evita o menciona

- **Movimiento sin motivo narrativo:** El video advierte que mover la cámara solo porque "se ve cool" distrae al espectador. Cada movimiento debe tener una función: revelar, seguir, conectar o emocionar.
- **Velocidad incorrecta:** Movimientos demasiado rápidos para escenas dramáticas (parecen videoclip) o demasiado lentos para acción (pierden energía). Ajusta la velocidad al tono de la escena.
- **Olvidar el punto de partida y llegada:** Un movimiento sin un "antes" y un "después" claro es confuso. Siempre define qué muestra el plano al inicio y al final.
- **Usar zoom como sustituto de dolly:** El zoom no crea profundidad real. Para acercamientos psicológicos, prefiere dolly in. El zoom es para enfoque selectivo, no para inmersión.
- **No estabilizar:** En video IA, los movimientos inestables (handheld sin motivo) se ven amateur. Usa `"smooth"` o `"gimbal stabilized"` en el prompt para movimientos limpios.
- **Exceso de movimientos en un solo plano:** El video recomienda un máximo de 1-2 movimientos por plano. Más de eso confunde al espectador y a la IA (alucinaciones).