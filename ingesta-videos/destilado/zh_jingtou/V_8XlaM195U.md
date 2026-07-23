# 8.01.镜头语言-理解景别和如何拍摄画面 | Adobe Premiere 2020教程
**Fuente:** zh_jingtou | https://youtu.be/V_8XlaM195U

## Que ensena (2-3 lineas)
El video desglosa los fundamentos del lenguaje cinematográfico a través de los diferentes tipos de planos (shot sizes) y su impacto narrativo. Explica cómo la distancia de la cámara al sujeto define la emoción y el enfoque de una escena, desde el contexto general hasta el detalle íntimo, aplicable tanto a rodaje real como a generación con IA.

## Lecciones accionables
- **Extreme Long Shot (ELS) / Establishing Shot:** Usa focal 14-24mm. En prompt: `"extreme wide shot, epic landscape, tiny subject in frame, cinematic composition"`. Ideal para abrir escenas y mostrar ubicación.
- **Long Shot (LS) / Full Shot:** Cuerpo entero del sujeto, cabeza a pies. Focal 24-35mm. Prompt: `"full body shot, subject standing in center, environmental portrait, natural lighting"`. Útil para mostrar acción y vestimenta completa.
- **Medium Long Shot (MLS) / ¾ Shot:** De rodillas hacia arriba. Focal 35-50mm. Prompt: `"medium long shot, cowboy shot, subject from knees up, dynamic pose"`. Muy usado en publicidad para equilibrio entre sujeto y entorno.
- **Medium Shot (MS):** De cintura hacia arriba. Focal 50-85mm. Prompt: `"medium shot, waist up, subject looking at camera, shallow depth of field"`. El plano estándar para diálogos y entrevistas.
- **Medium Close-Up (MCU):** Del pecho hacia arriba. Focal 85-105mm. Prompt: `"medium close-up, chest up framing, intimate, soft focus background"`. Aumenta la conexión emocional con el personaje.
- **Close-Up (CU):** Rostro completo. Focal 85-135mm. Prompt: `"close-up shot, face filling frame, intense expression, detailed texture on skin"`. Para capturar emociones y reacciones.
- **Extreme Close-Up (ECU):** Detalle de ojos, boca o manos. Focal 100mm+ macro. Prompt: `"extreme close-up, eye detail, shallow depth of field, dramatic lighting"`. Máxima tensión o énfasis en un objeto.
- **Movimiento de cámara clave para prompts:**
    - **Dolly In / Push In:** `"camera pushes in slowly towards subject"`. Aumenta tensión.
    - **Dolly Out / Pull Out:** `"camera pulls back revealing environment"`. Revela contexto.
    - **Pan:** `"panning shot left to right"`. Muestra paisaje o sigue acción.
    - **Tilt:** `"camera tilting up from ground to face"`. Revela sujeto gradualmente.
    - **Tracking / Follow:** `"tracking shot following subject walking"`. Inmersión.
- **Parámetros de lente en prompt:** Siempre especificar `"shot on 50mm lens"`, `"shot on anamorphic lens"` o `"wide angle 24mm"` para controlar distorsión y compresión.

## Reglas para el director de fotografia IA
- **Usa ELS / Establishing Shot** cuando necesites que la IA genere el contexto geográfico o arquitectónico de una escena publicitaria (ej: un resort, una ciudad).
- **Usa Close-Up (CU)** para productos pequeños o para capturar la reacción emocional del talento ante un producto; la IA alucina menos con texturas y expresiones en CU.
- **Usa Medium Shot (MS)** para la mayoría de las interacciones producto-persona; es el plano más estable para que la IA no deforme extremidades.
- **Para no alucinar en video IA:** Evita cambios bruscos de plano dentro de un mismo clip. Si necesitas cambiar de LS a CU, genera dos clips separados y edítalos. La IA no maneja bien zooms digitales extremos ni cambios de focal en medio de la generación.
- **Especifica la profundidad de campo** en el prompt: `"shallow depth of field, bokeh background"` para CU y MCU; `"deep focus, everything sharp"` para ELS y LS.
- **Usa términos de cámara en inglés** en el prompt: `"cinematic, 35mm film grain, anamorphic flares, 24fps, 2.35:1 aspect ratio"` para forzar estética cinematográfica.

## Errores comunes que evita o menciona
- **No mezclar planos en un solo prompt:** Pedir "close-up que se convierte en wide shot" en un solo clip de Runway/Kling suele generar morphs extraños. Genera por separado.
- **No usar "zoom" genérico:** La IA interpreta "zoom" como un zoom digital feo. Usa `"dolly in"` o `"camera push"` para movimiento suave y realista.
- **Evitar "full body" en movimiento rápido:** La IA alucina piernas y brazos en LS si el sujeto camina. Prefiere MS o MCU para acción.
- **No olvidar el aspect ratio:** Sin especificar `"16:9 cinematic"` o `"2.35:1 anamorphic"`, la IA por defecto da 1:1 o vertical. Para publicidad, siempre forzar 16:9 o 2.35:1.
- **No usar "extreme close-up" en objetos muy pequeños sin contexto:** La IA puede generar texturas irreales. Acompaña con `"macro lens, detailed texture, soft lighting"`.