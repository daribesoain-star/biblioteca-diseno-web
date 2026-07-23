# Timeline Prompting in Sora 2 is CRAZY for Cinematic AI Videos
**Fuente:** sora | https://youtu.be/KWH46O99oLE

## Que enseña (2-3 lineas)
Timeline prompting es un método de estructuración de prompts por segmentos temporales (inicio, contexto, clímax, resolución) que permite mantener consistencia de personajes, objetos y estilo en videos generados con Sora 2. Se diferencia del JSON prompting al ser más accesible y directo, funcionando tanto en text-to-video como image-to-video, dando al director control narrativo sobre cada momento del plano.

## Lecciones accionables

### Estructura del Timeline Prompt (formato recomendado)
1. **Estilo:** `gritty medieval cinematic realism style` / `horror style VHS realism, eerie and analog aesthetic`
2. **Cámara (primer bloque):** `50mm to 85mm prime lens` + `slow dolly gently moving across the scene`
3. **Hook (0-3s):** `tight profile close-up shot` + `slow dolly` + descripción de acción
4. **Contexto (3-6s):** `camera tilting down` + `focus on parchment map` + `fingers tracing route`
5. **Clímax (6-9s):** `over the shoulder medium shot` + dirección de acción
6. **Resolución (9-12s):** plano final + acción conclusiva

### Prompts VERBATIM del video
- **Input básico (lo que NO hacer):** `A knight is looking at the map, he puts it away, and then he starts marching forward on the battlefield.`
- **Timeline prompt completo (image-to-video):** `gritty medieval cinematic realism style. 50mm to 85mm prime lens, slow dolly gently moving. First 3 seconds: tight profile close-up shot, slow dolly, wind hissing, capturing metal and chain mail shimmer. Next: focus on parchment map, camera tilting down as fingers trace route. Climax: over the shoulder medium shot. Resolution: knight marching into empty battlefield.`
- **Text-to-video prompt generado por GPT:** `horror style VHS realism, eerie and analog aesthetic. Camera: VHS recorder with handheld shakiness, zoom glitches, interlaced flicker, tracking errors. Beginning: close-up of VHS recorder. Then: handheld view from behind. Then: medium shot. End: video heavily distorting, alien appears in front of camera.`

### Parámetros técnicos
- **Duración:** 12 segundos (estándar para timeline)
- **Resolución:** 1080p
- **Aspect ratio:** 16:9
- **Plataforma:** Artlist Sora 2 (standard vs Pro)
- **Input:** image-to-video da más control que text-to-video (estilo, personaje, objetos predefinidos)

### Movimientos de cámara mencionados
- `slow dolly` (dolly lento)
- `camera tilting down` (tilt hacia abajo)
- `handheld shakiness` (cámara en mano con vibración)
- `zoom glitches` (zoom con glitches)
- `interlaced flicker` (parpadeo entrelazado)
- `tracking errors` (errores de tracking)

### Focales
- `50mm to 85mm prime lens` (rango de focal para retrato/close-up cinematográfico)

## Reglas para el director de fotografía IA

1. **Usa image-to-video siempre que tengas un personaje o estilo definido** — el input visual elimina la ambigüedad del text-to-video y fuerza consistencia en diseño, iluminación y texturas.

2. **Estructura el prompt en 4 bloques temporales (hook, contexto, clímax, resolución)** — sin esta segmentación, la IA no tiene contexto para saber qué debe pasar en cada momento y alucinará transiciones o cambios de personaje.

3. **Define primero el estilo y la cámara como bloque separado** — antes de describir acciones, fija el look (ej: `gritty medieval cinematic realism`) y el lenguaje de cámara (ej: `50mm to 85mm prime lens, slow dolly`). Esto condiciona toda la generación.

4. **Para no alucinar en video IA, especifica el tipo de plano en cada segmento** — usa términos como `tight profile close-up`, `over the shoulder medium shot`, `handheld view from behind`. Sin esto, la IA decide el encuadre arbitrariamente.

5. **Usa ChatGPT como "timeline prompter"** — genera el prompt estructurado a partir de una idea o imagen, luego edítalo manualmente para ajustar planos y transiciones.

6. **En text-to-video, describe la escena completa en el prompt inicial** — no asumas que la IA "sabe" lo que quieres; cada detalle de cámara, acción y transición debe estar escrito.

7. **Acepta que no puedes replicar exactamente el mismo resultado** — incluso con el mismo prompt, Sora 2 genera variaciones. Genera múltiples versiones y selecciona la mejor.

## Errores comunes que evita o menciona

- **Prompt demasiado corto y genérico** — ej: `A knight is looking at the map, he puts it away, and then he starts marching forward.` La IA no tiene contexto de planos, cámara ni transiciones, resultando en inconsistencias.
- **No definir el estilo visual primero** — si no especificas `cinematic realism`, `VHS horror`, etc., la IA elige un estilo por defecto que puede no coincidir con tu visión.
- **No segmentar por tiempo** — un solo bloque de texto sin marcas temporales hace que la IA mezcle acciones o las ejecute en orden incorrecto.
- **Usar text-to-video sin imagen de referencia para personajes complejos** — la IA puede cambiar la apariencia del personaje entre planos si no hay un input visual que lo ancle.
- **Esperar control absoluto en prompts complejos** — el creador admite que con prompts muy detallados, los resultados varían y no se puede replicar exactamente lo deseado.
- **No probar Sora 2 standard vs Pro** — el Pro es más caro pero no necesariamente mejor; el standard puede dar resultados igualmente buenos con menos glitches.