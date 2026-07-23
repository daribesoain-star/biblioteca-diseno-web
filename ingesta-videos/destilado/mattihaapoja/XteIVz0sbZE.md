# 9 Filmmaking "Transitions" You Need To Know
**Fuente:** mattihaapoja | https://youtu.be/XteIVz0sbZE

## Qué enseña
Nueve tipos de transiciones cinematográficas prácticas para video, desde las más simples (B-roll) hasta técnicas avanzadas (match cuts, whip pans, overlays). Explica cómo usarlas para acelerar el montaje, avanzar la narrativa y corregir errores de rodaje, con énfasis en la intencionalidad narrativa sobre el efectismo.

## Lecciones accionables

**1. B-roll como transición narrativa**
- Corta de una escena a otra usando clips de cobertura (B-roll) que avancen la historia
- Úsalo para comprimir tiempo: "avanza la historia con mínimo tiempo perdido"
- En video IA: prompt `slow motion cinematic b-roll transition, 24fps, shallow depth of field`

**2. Whip Pan / Camera Movement Transition**
- Gira la cámara en la misma dirección en ambos clips
- Corta en el punto medio del movimiento (mitad del giro)
- Añade dissolve si es necesario
- Prompt: `whip pan transition, camera spinning 180 degrees, same direction, motion blur, cinematic handheld`

**3. Matching Textures (Match Cut por textura)**
- Conecta dos mundos distintos usando texturas similares (agua, burbujas, paredes texturizadas)
- Ejemplo: agua en Canadá → agua en Medio Oriente
- Prompt: `seamless texture match cut, water bubbles transitioning to [new scene], fluid morph, 4K`

**4. Overlays (Light Leaks)**
- Coloca un light leak entre dos clips en el punto de corte
- Modo de fusión: Screen, Add o Overlay
- Útil cuando dos clips no cortan bien juntos
- Prompt: `light leak overlay transition, bright flare, blending mode screen, cinematic glow, 24fps`

**5. Subject Movement Transition**
- Inicia un movimiento del sujeto, mueve la cámara, continúa el mismo movimiento en el siguiente clip
- Ejemplo: arreglar gorra → mover cámara → mismo gesto en otra locación
- Prompt: `subject movement match cut, character adjusting hat, camera pan right, seamless action continuity`

**6. Match Cut (Objeto / Movimiento)**
- Lanzar un objeto (gorra) → atraparlo en otra escena
- Misma posición del objeto en el encuadre en ambos clips
- Prompt: `match cut transition, object in same frame position, toss hat up, catch in new location, 50mm lens`

**7. Zoom Transition**
- Slow zoom que conecta dos clips
- No necesita ser dramático; un zoom lento y constante funciona
- Prompt: `slow zoom transition, dolly zoom effect, continuous movement, cinematic 35mm, 24fps`

**8. Sound Transition (Audio Bridge)**
- El sonido empieza en el clip A y continúa en el clip B
- El corte debe ocurrir en el punto más fuerte del sonido
- El sonido debe ser diegético (pertenecer a la escena)
- Prompt: `audio bridge transition, sound builds to peak at cut, diegetic sound design`

**9. Combinación de transiciones**
- Ejemplo: Whip pan + Match cut (sujeto en frame)
- No uses un solo tipo siempre; combínalos según la historia
- Prompt: `combined transition, whip pan with subject match cut, character remains centered, 360 spin`

## Reglas para el director de fotografía IA

- **Usa whip pans** cuando necesites conectar dos locaciones sin planificación previa del B-roll; en IA, especifica `same rotation direction` para evitar alucinaciones de movimiento
- **Usa matching textures** para transiciones entre mundos radicalmente diferentes (agua, fuego, polvo); en Kling/Veo, añade `fluid morph` para suavizar el cambio
- **Para no alucinar en video IA**, evita transiciones que requieran objetos que desaparecen/aparecen mágicamente; prefiere match cuts con el objeto siempre visible
- **Usa overlays (light leaks)** cuando dos clips generados por IA no corten bien; el flare oculta imperfecciones de continuidad
- **Aplica subject movement** para transiciones donde el personaje debe estar en exactamente la misma pose; en Runway, usa `action continuity` en el prompt
- **La transición debe ocurrir en el punto más fuerte del movimiento o sonido**; en IA, marca el frame exacto del corte en la línea de tiempo
- **Combina máximo 2 tipos de transición por escena**; más de 2 confunde al modelo y genera artefactos
- **Usa 24fps** para todas las transiciones cinematográficas; evita 30fps o 60fps que rompen la fluidez

## Errores comunes que evita o menciona

- **Transiciones sin propósito narrativo**: "no hay nada peor que una transición fancy que no encaja con la historia, es molesto y distractor"
- **Abuso de transiciones llamativas**: "no uses solo spin transitions todo el tiempo; úsalas responsablemente"
- **No planificar el movimiento**: en whip pans, "gira en exactamente la misma dirección" o la transición no funciona
- **Sonidos aleatorios**: "el sonido debe ser purposeful, no random; debe encajar con lo que pasa en los shots"
- **Overlays sin modo de fusión correcto**: prueba Screen, Add o Overlay hasta que funcione
- **Match cuts sin continuidad de posición**: el objeto debe estar en el mismo lugar del encuadre en ambos clips
- **Usar transiciones para cubrir pereza**: "puedes arreglar un error, pero no abuses de esto como muleta creativa"