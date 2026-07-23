# 100种电影镜头拍摄解析
**Fuente:** zh_jingtou | https://youtu.be/hy5LOx2WH_0

## Que ensena (2-3 lineas)
El video desglosa tecnicas de lenguaje cinematografico de Hollywood, centrandose en el uso narrativo del "plano secuencia" (long take) y movimientos de camara como el travelling, dolly zoom y paneo. Enseña a combinar el movimiento de la camara con el bloqueo de actores para generar emocion y continuidad, y a usar la profundidad de campo y la distancia focal para dirigir la atencion del espectador.

## Lecciones accionables
- **Plano secuencia (Long Take / One-shot):** Para prompts de IA, especifica `continuous shot`, `no cuts`, `single take`. Ejemplo: `"A continuous single take tracking shot following a character through a crowded market, no cuts, cinematic lighting"`.
- **Dolly Zoom (Vertigo effect / Zolly):** Usa `dolly zoom` o `vertigo effect` en el prompt. Combina `push in` (camara hacia adelante) con `zoom out` (lente hacia atras) o viceversa. Ejemplo: `"Dolly zoom effect, camera pushes in while lens zooms out, subject remains same size, background distorts, tension, suspense"`.
- **Travelling (Tracking shot / Dolly shot):** Especifica la direccion: `tracking shot left to right`, `dolly forward`, `trucking shot`. Añade `smooth`, `steady`, `fluid`. Ejemplo: `"Smooth tracking shot, dolly right, following a runner, shallow depth of field, 50mm lens"`.
- **Paneo (Pan / Whip pan):** Usa `pan left`, `pan right`, `whip pan` para transiciones rapidas. Ejemplo: `"Whip pan from character A to character B, fast motion blur, dynamic"`.
- **Tilt (Tilt up / Tilt down):** Para revelar informacion vertical. Ejemplo: `"Tilt up from feet to face, revealing character, dramatic reveal, low angle start"`.
- **Profundidad de campo (Depth of field):** Especifica `shallow depth of field` (f/1.4, f/2.8) para aislar sujeto, o `deep focus` (f/16) para todo en foco. Ejemplo: `"Shallow depth of field, background bokeh, subject sharp, 85mm lens, f/1.8"`.
- **Focales para prompts:**
    - **24mm-35mm:** Gran angular, `wide angle lens`, exagera perspectiva, ideal para `establishing shot` o `close-up con distorsion`.
    - **50mm:** Normal, `standard lens`, perspectiva natural, `50mm prime`.
    - **85mm-135mm:** Retrato, `portrait lens`, comprime fondo, ideal para `close-up` y `shallow depth of field`.
    - **200mm+:** Teleobjetivo, `telephoto lens`, comprime perspectiva, `compressed background`, ideal para `tracking shot` de lejos.
- **Movimiento de camara con IA:** Especifica `camera movement: [tipo]` al inicio del prompt. Para Runway/Veo 3, usa `camera orbit`, `camera arc`, `camera boom up/down`. Para Kling, usa `motion: [direccion]`.
- **Angulos de camara:** `low angle shot` (poder), `high angle shot` (vulnerabilidad), `dutch angle / canted angle` (inquietud), `over-the-shoulder shot` (dialogo), `point-of-view shot / POV`.
- **Iluminacion:** `cinematic lighting`, `three-point lighting`, `key light`, `fill light`, `backlight`, `practical light`, `motivated lighting`, `chiaroscuro`, `golden hour`, `moody`, `high key`, `low key`.

## Reglas para el director de fotografia IA
- **USA** `continuous shot` o `one-take` cuando quieras un plano secuencia sin cortes; la IA tiende a alucinar transiciones si no lo especificas.
- **USA** `shallow depth of field` para aislar al sujeto y evitar fondos distractivos que la IA pueda generar borrosos o deformes.
- **USA** `smooth camera movement` o `fluid motion` para evitar el "jitter" o vibracion no deseada en movimientos de camara.
- **PARA NO ALUCINAR EN VIDEO IA:** Especifica la direccion del movimiento de forma explicita (`camera pans left`, `dolly in`, `tilt up`). No uses solo "movimiento de camara".
- **USA** `slow motion` o `slow-mo` solo si es necesario; la IA puede ralentizar mal si no se especifica la velocidad.
- **USA** `realistic`, `photorealistic`, `film grain`, `35mm` para añadir textura cinematografica y evitar el look plastico.
- **USA** `anamorphic lens` o `cinemascope` para un look de cine (2.35:1) con flares horizontales.
- **USA** `practical lights` (luces dentro de la escena: lamparas, velas, neon) para iluminacion motivada y realista.
- **USA** `color grading: [teal and orange, desaturated, warm, cold]` para controlar la paleta cromatica.

## Errores comunes que evita o menciona
- **No mezclar movimientos opuestos sin especificar:** Si usas `dolly zoom`, debes indicar explicitamente que la camara se mueve en una direccion mientras el zoom va en la opuesta; de lo contrario, la IA puede generar un simple zoom o un simple travelling.
- **No asumir que la IA entiende "plano secuencia" sin contexto:** Usa `no cuts` o `continuous shot` en ingles; el termino en español "plano secuencia" no siempre es interpretado correctamente por los modelos.
- **Evitar "zoom" generico:** Especifica `zoom in` o `zoom out`; un "zoom" ambiguo puede resultar en un movimiento no deseado.
- **No usar demasiados elementos en un solo prompt:** La IA puede alucinar si el prompt es demasiado complejo. Separa en planos: primero el movimiento, luego el sujeto, luego la iluminacion.
- **No olvidar la duracion:** En herramientas como Runway o Kling, especifica la duracion del clip (ej. `4 seconds`, `10 seconds`) para que el movimiento se complete correctamente.
- **No confiar en que la IA mantendra la continuidad:** Si haces varios clips para un plano secuencia, usa el mismo prompt base y solo cambia el angulo o movimiento para mantener coherencia visual.