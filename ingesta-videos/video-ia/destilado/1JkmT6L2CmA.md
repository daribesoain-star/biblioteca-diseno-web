# How To Make AI Videos - Prompting Guide For Beginners
**Fuente:** Mira AI | https://youtu.be/1JkmT6L2CmA

## Qué enseña
Este tutorial enseña a principiantes cómo generar videos con IA usando prompts estructurados, enfocándose en el modelo Seedance 2.0 dentro de la plataforma Higgs Field. Explica el flujo de trabajo profesional desde texto-a-video e imagen-a-video, incluyendo consistencia de personaje, control de cámara, audio integrado y la técnica de timeline prompting para evitar errores comunes.

## Técnicas accionables
- **Modelo principal usado:** Seedance 2.0 (dentro de Higgs Field). Modelo de imagen usado: Nano Banana Pro (para crear character boards).
- **Estructura de prompt VERBATIM (fórmula):** "Start with a [the] then [action], then [setting], then [camera], then [style]". Ejemplo dado: *"Medium tracking shot of our kid grooving down a New York sidewalk golden hour"*.
- **Character board:** Crear una sola imagen que muestre al personaje desde frente, lado y espalda. Prompt usado: *"A high school student around 16 with a rounded afro and white earphones"* + pedir "shots from the front, the side, and the back all in one image".
- **Image-to-video workflow:** Generar imagen primero con Nano Banana Pro, luego usar esa imagen como referencia fija en Seedance para animar.
- **Timeline prompting:** Dividir el clip en segmentos de tiempo. Ejemplo: "0 to 5 seconds: he struts and sings down the sidewalk. 5 to 10: he spins and stomps in a puddle right on the beat. 10 to 15: the camera lifts up into that beautiful overhead shot as he dances in the golden light."
- **Audio integrado en Seedance:** Tres tipos: 1) Diálogo entre comillas: *"The city feels so right tonight"*. 2) Efectos de sonido: "splash of water as his foot hits a puddle" o "hum of city traffic". 3) Mood general: "upbeat and funky" o "tense and quiet".
- **Truco de reutilización de audio:** Si un clip tiene buen audio pero video glitch, cubrir el video con una pantalla negra sólida (solid black screen) para que el AI solo tome el sonido sin confundirse con los viejos visuales.
- **Referencias etiquetadas:** Al usar múltiples referencias (imagen + video con audio), etiquetar en el prompt para que el AI sepa para qué sirve cada una.
- **Uso de Claude como asistente:** Dar la idea en inglés simple, pedirle que escriba el prompt optimizado para el modelo específico (Seedance). Luego hacer ajuste manual final.
- **Regla de props mínimos:** Cuantos menos accesorios tenga el personaje, menos glitches. Ejemplo: quitar mochila porque el AI duplicaba la mochila en la espalda.
- **En motion prompt, describir solo el movimiento, no la apariencia.** No reescribir la descripción del personaje (cara, pelo, outfit) porque eso rompe la consistencia.

## Reglas para el erudito
- Usa **imagen-a-video** siempre que necesites control total del personaje; texto-a-video es para pruebas rápidas pero pierdes consistencia.
- Usa la **fórmula [the] + [acción] + [setting] + [cámara] + [estilo]** para prompts estructurados; evita prompts vagos como "kid dancing in the city happy".
- Usa **timeline prompting** cuando necesites múltiples acciones en un clip de 15 segundos; asigna cada acción a un bloque de tiempo específico (0-5s, 5-10s, 10-15s).
- Usa **Claude** para pulir tu prompt y añadir toques cinematográficos, pero haz el ajuste final manualmente.
- Usa **pantalla negra sólida** sobre un video existente si quieres reutilizar solo su audio sin que el AI se confunda con los visuales antiguos.
- Limita cada clip a **una sola idea principal**; no metas más de 2-3 acciones simples por clip de 15 segundos.
- Mantén el **movimiento lento y suave**; el movimiento rápido y complejo (breakdance, giros de cabeza) causa glitches y deformaciones.
- Incluye **direcciones de cámara** explícitas en el prompt (slow dolly in, low angle, medium tracking shot, overhead shot) para tener control sobre el encuadre.

## Errores comunes / limitaciones que menciona
- **Error 1: Meter una película entera en un clip corto.** Si le das 10 acciones (caminar, parar, comprar, beber, revisar teléfono, cruzar calle, saludar, bailar), el AI acelera todo y se ve apresurado. Seedance limita a ~15 segundos.
- **Error 2: No especificar la cámara.** Sin dirección de cámara, el AI elige el ángulo y movimiento al azar, y cada generación es diferente (unos push in, otros drift sideways).
- **Error 3: Redescribir la apariencia del personaje en el motion prompt.** Si usas un character board pero luego escribes otra vez la cara, pelo y outfit, el primer frame se ve raro y rompe la consistencia.
- **Error 4: Demasiado movimiento rápido.** Pedir breakdance a velocidad completa causa glitches, piernas dobladas en direcciones imposibles, manos derretidas. El AI no puede mantener el ritmo con movimientos complejos rápidos.
- **Limitación de audio:** Seedance puede generar audio (diálogo, efectos, mood) pero para una pista musical pulida y completa es mejor usar una herramienta de música dedicada.
- **Glitch de props:** Darle una mochila al personaje resultó en que el AI duplicara la mochila en la espalda sin razón, arruinando el clip.