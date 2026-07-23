# 光影 | 色彩 | 镜头语言「南门录像厅」
**Fuente:** zh_jingtou | https://youtu.be/FvFPt6kVmtY

## Que ensena (2-3 lineas)
El video desglosa técnicas de lenguaje cinematográfico de Hollywood aplicables a cualquier producción, centrándose en el uso narrativo del plano secuencia (long take) y la coreografía de cámara para guiar la emoción del espectador. Enseña a construir tensión y liberación mediante movimientos de cámara precisos, cambios de foco y composición dentro de una misma toma, evitando cortes tradicionales.

## Lecciones accionables
- **Plano secuencia narrativo (Long Take / Oner):** Usa un solo plano continuo para cubrir una escena completa. En prompts de IA, especifica `continuous shot`, `one-take sequence`, `no cuts`. Combínalo con `camera follows character` para que la IA entienda que el movimiento es motivado por la acción.
- **Coreografía de cámara (Blocking & Staging):** Planifica el movimiento del actor y la cámara como una coreografía. En el prompt, detalla la trayectoria: `camera dollies in as subject walks forward, then pans left to reveal`.
- **Cambio de foco narrativo (Rack Focus):** Usa `rack focus` para cambiar la atención del espectador entre objetos en primer plano y fondo. Ejemplo de prompt: `rack focus from a glass of water in foreground to a character's face in background, shallow depth of field`.
- **Profundidad de campo (Depth of Field):** Para aislar al sujeto, usa `shallow depth of field, bokeh background`. Para planos generales con detalle, usa `deep focus, everything in sharp focus`.
- **Movimientos de cámara específicos:**
    - **Dolly:** `dolly in` (acercamiento lento para intimidad), `dolly out` (alejamiento para aislamiento).
    - **Pan:** `pan left/right` (para revelar espacio o seguir acción horizontal).
    - **Tilt:** `tilt up/down` (para revelar altura o poder).
    - **Steadicam / Gimbal:** `steadicam shot, smooth following movement` para planos secuencia fluidos.
- **Focales recomendadas para prompts:**
    - **24mm-35mm:** Para planos secuencia y tomas de establecimiento (establishing shot). Sensación de inmersión.
    - **50mm:** Para planos medios (medium shot) y diálogos. Visión natural.
    - **85mm-135mm:** Para primeros planos (close-up) y aislar al sujeto. Compresión de fondo.
- **Iluminación de contraste (High Contrast / Chiaroscuro):** Usa `hard light, deep shadows, single key light` para crear misterio o tensión. Para publicidad más limpia, usa `soft diffused light, high key`.
- **Color grading:** Especifica la paleta en el prompt: `teal and orange color palette`, `desaturated with warm skin tones`, `cool blue shadows`.

## Reglas para el director de fotografia IA
- **Usa "one continuous shot" o "long take"** cuando quieras que la IA genere una secuencia sin cortes; de lo contrario, tenderá a crear transiciones abruptas.
- **Para no alucinar en video IA, especifica la duración del movimiento:** en lugar de solo "camera moves", usa `slow dolly in over 5 seconds` o `camera pans right for 3 seconds`. La IA necesita una restricción temporal.
- **Define el punto de entrada y salida del movimiento:** `camera starts on a close-up of hands, then pulls back to reveal the full room`. Sin esto, la IA puede generar un movimiento sin dirección narrativa.
- **Usa "shallow depth of field"** cuando el fondo sea complejo; la IA tiende a alucinar fondos borrosos si no se lo pides explícitamente.
- **Para evitar parpadeo o morphing en rostros**, usa `static camera, no camera shake` en planos de diálogo. Si necesitas movimiento, usa `slow, smooth camera movement`.
- **Especifica el tipo de lente:** `anamorphic lens` para flares y aspecto cinematográfico; `spherical lens` para nitidez y realismo.

## Errores comunes que evita o menciona
- **No abuses del zoom digital:** El video menciona que el zoom debe ser físico (dolly) para mantener la perspectiva. En IA, evita prompts de "zoom in" sin especificar `dolly zoom` o `push in`, ya que la IA puede generar un zoom digital que se ve artificial.
- **No uses planos secuencia sin motivación:** El movimiento de cámara debe justificarse por la acción del personaje o la revelación de información. Si el prompt solo dice "camera moves", la IA generará un movimiento sin sentido narrativo.
- **Evita cortes dentro de un plano secuencia:** Si pides un long take, no incluyas palabras como "cut to" o "scene change" en el mismo prompt, o la IA mezclará conceptos.
- **No ignores el sonido:** Aunque el prompt sea visual, el video enfatiza que el sonido (ambiente, diálogo) debe coreografiarse con la cámara. En IA, aunque no generes audio, el ritmo visual debe sugerir el sonido (ej: `camera moves in sync with a heartbeat sound`).
- **No satures de movimiento:** Un error común es pedir demasiados movimientos en un solo prompt. Limítate a 1-2 movimientos por toma para que la IA no genere un caos visual.