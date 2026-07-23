# Cinematographers Bible - 6 Rules Every DP Should Know
**Fuente:** en_dp2 | https://youtu.be/C_EoouRA1hg

## Que ensena (2-3 lineas)
Seis reglas fundamentales de cinematografía aplicables a cualquier producción, desde documentales hasta comerciales. Enfatiza que el conocimiento de la imagen y la narrativa visual importa más que el equipo técnico. Enseña a usar movimiento, encuadres, iluminación y cobertura para contar historias, no solo para lucir técnica.

## Lecciones accionables

**1. Movimiento motivado (Motivated Movement)**
- No muevas la cámara solo porque tienes gimbal. Los mejores planos pueden ser *locked off* (fijos).
- Regla de *Mad Men*: solo mover cámara cuando el personaje se mueve en el cuadro.
- *Dolly in* = algo importante ocurre en la mente del personaje.
- *Dolly out* = la escena termina o la historia va a un nuevo lugar.
- **Prompt de cámara IA:** `slow push-in on subject's face, motivated movement, emotional intensity, locked off until emotional peak, cinematic dolly zoom effect`

**2. Estudia la imagen, no el equipo (Study the Image, Not the Gear)**
- Conoce cómo se comporta tu cámara en ISO específicos (400 vs 3000).
- Ejemplo: Sony maneja mal los canales amarillos subexpuestos.
- Sabe cómo reacciona tu cámara a ciertos LUTs antes de post-producción.
- **Prompt de cámara IA:** `cinematic color grading, S-Log3 with LUT overlay, low light performance at ISO 3200, filmic texture, subtle yellow channel underexposure`

**3. Consigue el contraplano / reacción (Get the Counter Shot / Reaction Shot)**
- La persona que habla es mitad de importante que la que escucha.
- Si tienes una cámara, graba a la persona escuchando aunque no sea la conversación exacta.
- Pide al sujeto que repita lo que acaban de decir para capturar reacción genuina.
- **Prompt de cámara IA:** `reaction shot, medium close-up, person listening intently, soft focus background, natural eye movement, documentary style coverage`

**4. Más equipo no es mejor footage (More Gear ≠ Better Footage)**
- Películas premiadas como *Nomadland* usaron equipos mínimos (Alexa + 2 lentes, 4 personas en set).
- El proyecto *Tornado* usó un solo lente en FX6.
- Si no sabes usar un gimbal o Steadicam, no lo lleves al set. Practica antes.
- **Prompt de cámara IA:** `minimalist camera setup, single prime lens, handheld with subtle micro-jitters, intimate documentary aesthetic, no gimbal movement`

**5. Ángulos de cámara y su comunicación (Camera Angles & Framing)**
- **Low angle** = poder, fortaleza, antagonista. `low angle shot, subject looking down at camera, power dynamic, wide lens distortion`
- **High angle** = pequeñez, vulnerabilidad. `high angle shot, subject diminished in frame, vulnerability, overhead perspective`
- **Wide angle** = soledad, pérdida. `wide shot, subject small in large frame, loneliness, negative space composition`
- **Tight angle** = intensidad emocional. `extreme close-up, intense emotion, shallow depth of field, eye detail`
- **Cramped / Poorly framed** = incomodidad. `off-center framing, subject in corner of frame, uncomfortable composition, negative space`
- **Dutch angle** = caos, peligro. `dutch angle, tilted horizon, chaos, horror film aesthetic, disorientation`

**6. Una luz grande y suave > tres luces pequeñas (One Big Soft Light > Three Small Lights)**
- Ahorra para una luz grande y suave (ej: Aputure 300D con softbox grande).
- Complementa con tubos LED pequeños (Nanlite PavoTube) y lámparas prácticas con bombillas de baja potencia.
- **Prompt de cámara IA:** `single large soft light source, key light from above, soft shadows, practical lamp in background, low-wattage bulb, cinematic lighting ratio 3:1`

## Reglas para el director de fotografia IA

- **Usa "locked off" cuando** quieras que la IA genere planos estables sin movimiento parásito. Especifica `no camera movement, static shot, tripod locked` en prompts de Veo 3 / Kling / Runway.
- **Para no alucinar en video IA, evita** movimientos complejos combinados (dolly + pan + tilt simultáneos). La IA tiende a distorsionar fondos. Usa un solo eje de movimiento por prompt.
- **Usa "motivated movement" como prefijo** en prompts de Runway Gen-3: `motivated camera movement, slow push-in triggered by character emotion`.
- **Para reacciones faciales en IA**, especifica `subtle micro-expressions, natural eye blink, listening reaction` para evitar rostros congelados o parpadeos erráticos.
- **Cuando uses low/high angle**, añade `consistent perspective, no perspective distortion` para evitar que la IA deforme el fondo.
- **Para iluminación con una sola fuente**, escribe `single key light, soft shadow falloff, no fill light, chiaroscuro effect` para que la IA no invente luces secundarias.
- **En prompts de Kling**, usa `camera angle: [low/high/dutch]` como parámetro separado, no dentro de la descripción narrativa.

## Errores comunes que evita o menciona

- **Mover la cámara sin motivo:** si todo se mueve, nada es especial. La IA tiende a generar movimiento constante si no lo bloqueas explícitamente.
- **No conocer el comportamiento de tu cámara en ISO específicos:** en IA, traduce esto como `film stock simulation, grain at ISO 3200, color science: [camera brand]`.
- **No grabar contraplanos/reacciones:** en IA, si generas una conversación, pide explícitamente `shot-reverse-shot, reaction close-up, listening character`.
- **Llevar equipo que no sabes usar:** en IA, no pidas movimientos complejos (gimbal, crane, Steadicam) si no puedes controlar el resultado. Mejor `handheld with intentional shake`.
- **Usar muchas luces pequeñas en vez de una grande:** en IA, una sola fuente de luz grande produce sombras más naturales que múltiples luces pequeñas que la IA puede alucinar como fuentes inconsistentes.
- **No entender qué comunica cada ángulo:** la IA no interpreta intención narrativa. Debes especificar `power dynamic` o `vulnerability` en el prompt para que el ángulo tenga sentido en la escena.