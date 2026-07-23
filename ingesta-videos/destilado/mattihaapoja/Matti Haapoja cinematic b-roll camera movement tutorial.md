# Matti Haapoja cinematic b-roll camera movement tutorial
**Fuente:** mattihaapoja | https://youtu.be/Matti Haapoja cinematic b-roll camera movement tutorial

## Que enseña (2-3 lineas)
Matti enseña sus dos movimientos de gimbal favoritos para b-roll cinematográfico: el dolly forward y el low-angle follow, además de compartir con su invitado Daniel el orbit shot y el "reverse focus reveal". También revisa el gimbal Feiyu Tech AK4500, destacando su bloqueo de ejes y capacidad de carga de 10 libras.

## Lecciones accionables

### Movimientos de cámara clave (útiles para prompts de video IA)

**1. Dolly Forward (avance frontal)**
- **Descripción:** Cámara avanza directamente hacia el sujeto. Difícil antes por falta de autofocus, ahora esencial para sensación ominosa y cambio de perspectiva.
- **Focal recomendada:** Gran angular (16mm o más abierto).
- **Prompt sugerido:** "cinematic dolly forward shot, wide angle 16mm, subject walking towards camera, smooth motion, shallow depth of field, golden hour lighting"

**2. Low-angle follow (seguimiento desde abajo)**
- **Descripción:** Gimbal invertido, cámara pegada al suelo siguiendo a un sujeto que camina, patina o se mueve. El movimiento del suelo añade dinamismo incluso a acciones lentas.
- **Focal recomendada:** 16mm, lo más ancho posible.
- **Prompt sugerido:** "low angle gimbal shot, camera upside down close to ground, following skateboarder, wide angle 16mm, ground motion blur, fast movement, cinematic"

**3. Orbit (órbita alrededor del sujeto)**
- **Descripción:** Giro de 180 a 360 grados alrededor del sujeto. Con focal más larga se logra efecto parallax (estilo Michael Bay).
- **Focal recomendada:** Teleobjetivo para parallax (ej. 85mm o más).
- **Prompt sugerido:** "360 degree orbit around subject, telephoto lens 85mm, parallax effect, cinematic camera movement, subject in center frame, smooth rotation"

**4. Reverse Focus Reveal (revelación inversa de enfoque)**
- **Técnica:** Cámara cerca del sujeto, enfoque manual fijado en su rostro. Se aleja suavemente. En postproducción se invierte el clip y se aplica speed ramp.
- **Efecto:** Sale de desenfoque a foco, creando tensión y revelación dramática.
- **Prompt sugerido:** "reverse focus pull reveal, camera starts close to subject face, pulls back slowly, out of focus to sharp focus, cinematic tension, speed ramp effect"

### Parámetros técnicos para prompts
- **Focales:** 16mm (gran angular para low shots y dolly), 85mm+ (tele para orbit parallax)
- **Movimiento:** Smooth, steady, gimbal-stabilized, low angle, orbit, dolly, pull back
- **Estilo:** Cinematic b-roll, shallow depth of field, golden hour, dramatic lighting

## Reglas para el director de fotografía IA

- **Usa "dolly forward" cuando** quieras crear tensión o revelar un sujeto que avanza hacia cámara; en video IA, especifica "smooth forward movement, subject walking towards camera".
- **Usa "low angle gimbal shot" cuando** necesites dinamismo en acciones cotidianas (caminar, patinar); en prompts, añade "camera close to ground, wide angle, ground motion blur".
- **Usa "orbit around subject" cuando** quieras mostrar el entorno o crear efecto parallax; especifica "360 degree rotation, telephoto lens for parallax".
- **Usa "reverse focus reveal" cuando** busques un efecto de tensión-resolución; en video IA, indica "reverse clip, out of focus to sharp focus, speed ramp".
- **Para no alucinar en video IA:** evita movimientos complejos de cámara con cambios bruscos de dirección; prefiere movimientos suaves y predecibles (dolly, orbit, low follow). No combines múltiples ejes de movimiento simultáneo (ej. orbit + tilt + zoom) porque la IA tiende a generar artefactos.
- **Para evitar parpadeo o inestabilidad:** usa prompts con "smooth gimbal movement, steady shot, no camera shake". Especifica "single axis movement" si el movimiento es simple.
- **Para mantener coherencia temporal:** en secuencias de b-roll, mantén la misma focal y estilo de movimiento entre clips; la IA alucina cambios de lente o perspectiva.

## Errores comunes que evita o menciona

- **No usar follow focus en gimbal pequeño:** Matti dice que es "virtualmente imposible" obtener buenos planos moviendo el gimbal y enfocando al mismo tiempo. En video IA, no intentes prompts que combinen enfoque manual complejo con movimiento de cámara; prefiere autofocus o enfoque fijo.
- **No confiar en el "mimic" o control remoto sin monitor:** El control del gimbal con un segundo mando (como el de Feiyu) es inútil sin un monitor para ver lo que se graba. En IA, evita prompts que impliquen control remoto o movimientos no lineales sin referencia visual.
- **No sobrecargar el gimbal:** Matti menciona vibraciones ocasionales incluso con una cámara mediana (Canon EOS R + micrófono + 16-35mm). En prompts, especifica "light camera setup" si buscas movimientos muy rápidos o bruscos.
- **No grabar sin verificar el encuadre:** Matti bromea sobre "olvidar presionar record" y perder tomas. En IA, revisa siempre el output antes de iterar; la IA puede generar planos vacíos o mal encuadrados.
- **No usar el orbit con sujetos estáticos sin fondo interesante:** El efecto parallax requiere un fondo con profundidad. En prompts, añade "layered background, trees or buildings in background" para que el orbit funcione visualmente.