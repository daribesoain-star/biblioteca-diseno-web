# 이젠 조명 하나로도 충분하쥬? [빛쟁이강의] / Aputure 조명 / 영화조명
**Fuente:** ko_light | https://youtu.be/jcOvyJCnFPc

## Que ensena (2-3 lineas)
Cómo lograr tres looks cinematográficos de video musical (silueta dramática, fondo blanco limpio, naturalismo melancólico) usando una sola fuente de luz. Enseña a disimular la luz como práctico en escena, a falsear un estudio blanco con una softbox gigante, y a esculpir el rostro con rebotes y cortes sin luces adicionales.

## Lecciones accionables

**Setup 1 – Silueta dramática con luz en cuadro**
- **Fuente:** Aputure 120d Mark II + Light Dome Mini 2 + 2 capas de CTO + 1 capa de difusión adicional.
- **Posición:** Luz centrada detrás del talento, funcionando como práctico (lámpara en escena).
- **Control de rebote:** Foam boards negros + sábana negra alrededor del set para absorber toda luz parásita.
- **Atmósfera:** Haze ligero en fondo para difuminar el borde de la luz y crear halo.
- **Prompt de cámara IA:** `low-key lighting, silhouette against bright practical light, heavy contrast, black background, haze in air, backlight only, no fill, dramatic mood, 50mm, shallow depth of field, cinematic music video look`

**Setup 2 – Fondo blanco neutro (falso cyc)**
- **Fuente:** Aputure Nova P300c + Octabox gigante de 5 pies (DOP Choice).
- **Posición:** Luz justo encima del actor, ligeramente frontal, para extender luz pareja sobre rostro y fondo blanco.
- **Ajuste:** Dimmer bajado para evitar hot spots en la cara.
- **Relleno:** Bounce card (blanco) desde abajo para levantar sombras bajo mentón y ojos.
- **Prompt de cámara IA:** `high-key lighting, soft even light on face, white seamless background, large softbox overhead, minimal shadows, bounce fill from below, clean beauty look, 85mm, flat lighting, fashion music video aesthetic`

**Setup 3 – Naturalismo melancólico con un solo punto**
- **Fuente:** Aputure 300x en modo tungsteno (3200K) + Light Dome Mini.
- **Modificador clave:** Doble net (red de doble densidad) frente a la luz para bajar 1 stop y crear degradado suave en el fondo.
- **Borde/contra:** Mirror board (reflector duro) rebotando la key hacia el lado de relleno del rostro para crear edge light sutil.
- **Relleno inferior:** White card justo debajo de la cámara.
- **Control de exposición:** Single net sobre el torso del talento para bajar brillo de la camisa.
- **Prompt de cámara IA:** `single source tungsten key, soft warm light from side-front, gradient background falloff, subtle edge light from bounce, fill card low, moody naturalistic, 35mm, shallow focus, cinematic portrait, melancholic atmosphere`

## Reglas para el director de fotografia IA

- **Usa haze en prompts de silueta:** Sin partículas en el aire, el borde de la luz se ve duro y artificial. Especifica `haze, atmospheric fog, light beam visible`.
- **Para no alucinar sombras en video IA:** Cuando pidas `high-key white background`, fuerza `no shadows on background, flat even illumination, white cyc wall` o el modelo generará sombras duras de pie.
- **Cuando la luz está en cuadro:** Indica `practical light source in frame, lamp visible, tungsten color temperature` para que la IA no la trate como flare no deseado.
- **Para rebotes sin segunda luz:** Usa `bounce card fill from below, subtle fill, reflector board` en lugar de `fill light` – así la IA entiende que es pasivo, no activo.
- **Control de stops con nets:** En prompts de video IA, traduce `double net` como `light intensity reduced by 1 stop, fabric scrim in front of source` para evitar que la IA ignore la gradación.
- **Edge light con mirror board:** Especifica `hard bounce edge light, mirror reflection, rim light from fill side` – la IA tiende a hacer rim lights simétricos si no se detalla la dirección.

## Errores comunes que evita o menciona

- **No poner foam board negro en siluetas:** Si no absorbes el rebote, la luz de fondo iluminará el rostro y arruinará la silueta. En prompts: `black flags on both sides, no spill light on subject`.
- **Hot spots en fondo blanco:** Si la softbox está demasiado cerca o sin dimmer, la cara se quema. En IA: `no blown-out highlights on face, soft falloff, exposure controlled`.
- **Sombras duras bajo mentón sin bounce:** En el setup blanco, sin bounce card la barbilla queda negra. Prompt: `fill card below chin, lift shadows, no deep under-eye shadows`.
- **Fondo sin degradado en naturalismo:** Si no usas double net, el fondo queda plano. Prompt: `background gradient from dark to light, vignette falloff, single source shadow`.