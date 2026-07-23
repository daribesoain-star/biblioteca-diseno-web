# How to Start Making AI Videos in 2026 - Full Course
**Fuente:** Youri van Hofwegen | https://youtu.be/gY9KTfMGauU

## Qué enseña
Curso completo para principiantes que enseña a crear videos cinematográficos con IA en menos de 15 minutos, priorizando el flujo image-to-video sobre text-to-video. Explica cinco principios cinematográficos (iluminación, profundidad, composición, emoción, color) y cómo aplicarlos en plataformas como Higgsfield con Cinema Studio 2.5/3.0 y C Dance 2.0.

## Técnicas accionables
- **Flujo principal: image-to-video** – Genera primero una imagen de alta calidad como primer frame, luego anímala. Evita text-to-video porque cada generación empieza desde cero y los personajes cambian.
- **Creación de personaje consistente en Higgsfield (Cinema Studio):** Usa la sección "character" con 8 categorías: género (14 opciones: action, drama, horror, war, etc.), presupuesto en millones (ej. 250M), era (ej. 2020s), arquetipo (ej. hero), género, identidad (female, Asian, athletic), altura, color de ojos, peinado (brown hair, fringe, wavy texture), outfit, tatuajes. Genera y guarda.
- **Creación de locación:** En "image section" > "location", escribe prompt detallado. Ejemplo usado: *"Rooftop over a war-torn city. Tension and urgency. Warm tones like orange and red in the sunset light that creates dramatic shadows."* Guarda como nueva locación.
- **Combinación personaje + locación:** En "image section" > "scenes", selecciona personaje y locación guardados. Resolución: 4K. Composición: coloca al sujeto en el tercio izquierdo del frame con líneas guía (ruinas). Profundidad: añade un objeto desenfocado en primer plano (ej. escombros), sujeto nítido en plano medio, fondo lejano.
- **Color grading:** Usa presets (natural, split tone, cinematic) o ajustes manuales: temperature, hue, saturation, contrast, bloom (brillo suave), halation (brillo rojo en altas luces), film grain. Herramienta "relight" para cambiar dirección de luz sin regenerar.
- **Animación (single shot):** En "video section" > "single shot", sube la imagen como starting frame. Configura: emotion (hope, anger, fear, tense but focused), genre (action), camera movement (slow cinematic push, dolly, 360 roll, zoom in), motion prompt en inglés simple (ej. *"She scans the horizon"*), speed ramp (auto, slow para tensión, fast para urgencia). Duración: 4 segundos.
- **Animación multi-shot:** En "multi shot manual mode", hasta 6 escenas por generación. Cada escena con su propio prompt, cámara y duración. Ejemplo de 3 escenas:
  - Escena 1: zoom in, speed ramp lento, 4s.
  - Escena 2: *"She raises her rifle"*, zoom in mientras rastrea objetivo, speed ramp alerta.
  - Escena 3: *"Impact happens"*, hero mode en speed, 3s.
- **C Dance 2.0 (video-to-video):** Toma un video completo como referencia y genera uno nuevo manteniendo estructura y movimiento. Prompt usado: *"Rebuilds your video in a completely new way while keeping the same structure and motion"* (el prompt exacto no se muestra, pero se usa para cambiar estilo, estado de ánimo o realismo).

## Reglas para el erudito
- **Usa image-to-video siempre** en lugar de text-to-video para mantener consistencia de personaje y escena entre múltiples tomas.
- **Aplica los 5 principios cinematográficos** antes de generar: iluminación direccional con sombras, profundidad (foreground desenfocado + midground nítido + background), composición con regla de tercios y líneas guía, emoción definida previamente, y paleta de color coherente (tonos cálidos para tensión/pasión, fríos para calma/aislamiento).
- **No mezcles tonos cálidos y fríos** en una misma escena; decide la emoción primero para saber qué dirección de color usar.
- **Usa pre-built options** en lugar de prompts largos para motion: emotion, genre, camera movement y speed ramp controlan el resultado mejor que descripciones extensas.
- **Configura el presupuesto en millones** al crear personajes (ej. 250M) para obtener pulido visual más refinado.
- **Guarda locación y personaje por separado** antes de combinarlos en escenas, para no desperdiciar créditos regenerando.
- **Usa "relight"** para corregir dirección de luz después de generar la imagen, sin perder detalles.

## Errores comunes / limitaciones que menciona
- **Text-to-video:** El 90% de principiantes lo usa y abandona porque cada generación es diferente (personajes, iluminación, entorno cambian). Imposible crear múltiples escenas coherentes.
- **Prompts demasiado largos en video:** Escribir descripciones enormes de motion/emotion/action confunde al modelo y da resultados inesperados. Usa pre-built options + inglés simple.
- **Generar imágenes promedio y esperar video cinematográfico:** La calidad del video depende directamente de la calidad de la imagen inicial. Sin los 5 principios, el resultado será plano.
- **Sujeto siempre centrado:** Los principiantes colocan al sujeto en el centro; los profesionales usan regla de tercios (sujeto en una de las líneas verticales).
- **Ignorar la emoción antes de generar:** Si no defines qué debe sentir el espectador, las decisiones técnicas (luz, color, composición) serán aleatorias y el resultado se sentirá de baja calidad.
- **Regenerar sin control:** Hacer clic en "generate" repetidamente esperando un resultado diferente sin ajustar parámetros quema créditos y no resuelve problemas de consistencia.