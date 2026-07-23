# 《导演思维看电影》— 听导演杨超解读视听语言
**Fuente:** zh_jingtou | https://youtu.be/on-jd6q5gjs

## Que ensena
El video enseña cómo descomponer el lenguaje visual cinematográfico de Hollywood, centrándose en el uso expresivo del **lente largo (long take)** y la **puesta en escena** para transmitir emoción y narrativa sin cortes. Explica que la cámara no solo registra, sino que **construye significado** a través del movimiento, la profundidad de campo y la relación entre el sujeto y el entorno.

## Lecciones accionables
- **Long take / Plan secuencia:** Para generar tensión o inmersión, usa un solo plano continuo de 30-60 segundos. En prompts: `"single continuous long take, no cuts, camera slowly pushes in on subject"`.
- **Deep focus / Profundidad de campo extendida:** Mantén enfocados primer plano y fondo para que el ojo del espectador elija dónde mirar. Prompt: `"deep focus, foreground and background both sharp, 24mm wide angle lens, f/8 aperture"`.
- **Blocking / Movimiento de actores y cámara:** Coreografía el desplazamiento del sujeto dentro del encuadre mientras la cámara se mueve en sentido contrario (contra-movimiento). Prompt: `"subject walks left to right, camera tracks right to left, dolly shot, shallow depth of field, 50mm lens"`.
- **Rack focus / Cambio de foco:** Para redirigir la atención del espectador sin cortar. Prompt: `"rack focus from foreground object to background character, slow pull focus, cinematic"`.
- **Camera push-in / Dolly in:** Para aumentar la intensidad emocional o revelar un detalle. Prompt: `"slow dolly in on actor's face, 85mm lens, shallow depth of field, emotional close-up"`.
- **Establecer la geografía del espacio:** Usa un plano general (wide shot) al inicio de la escena para que el espectador entienda la disposición. Prompt: `"establishing wide shot, 16mm lens, high angle, shows entire room layout"`.

## Reglas para el director de fotografia IA
- **Usa "deep focus" cuando quieras que la IA genere múltiples puntos de interés en un mismo plano** (ej: personaje en primer plano y acción en el fondo); de lo contrario, la IA tiende a desenfocar todo el fondo.
- **Para no alucinar en video IA, especifica la duración del plano en segundos** (ej: `"10-second long take"`) y evita movimientos de cámara complejos en planos de menos de 3 segundos.
- **Usa "dolly" en lugar de "zoom"** cuando quieras un cambio de perspectiva realista; el zoom digital en IA suele generar parpadeos o deformaciones.
- **Especifica la focal exacta** (24mm, 35mm, 50mm, 85mm) para controlar la distorsión y la compresión espacial; la IA por defecto usa una focal media genérica.
- **Para mantener la coherencia del personaje en un long take**, describe su trayectoria completa en el prompt: `"character walks from left door to center table, camera pans to follow, then tilts up to reveal window"`.

## Errores comunes que evita o menciona
- **No usar zoom digital en IA** porque rompe la ilusión de profundidad y genera artefactos; prefiere un dolly shot simulado.
- **Evitar cortes rápidos en secuencias de acción** si buscas "lenguaje Hollywood"; el video enseña que el long take es más efectivo para mantener la tensión.
- **No saturar el encuadre con demasiados elementos en movimiento** porque la IA pierde coherencia espacial; limita a 1-2 sujetos activos por plano.
- **No usar profundidad de campo muy reducida (f/1.2) en planos generales** porque la IA desenfoca elementos clave; reserva shallow DOF para close-ups.