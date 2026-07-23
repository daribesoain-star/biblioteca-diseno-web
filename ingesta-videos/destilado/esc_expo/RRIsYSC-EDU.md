# Your ISO Settings Are Ruining Your Filmmaking
**Fuente:** esc_expo | https://youtu.be/RRIsYSC-EDU

## Que ensena (2-3 lineas)
ISO no afecta la cantidad de luz que llega al sensor; solo amplifica la señal ya capturada. La clave para imágenes limpias en escenas oscuras es exponer a la derecha (ETTR) usando un ISO bajo y más luz física, no subir el ISO. El trade-off real es entre ruido en sombras y detalle en altas luces, y debes decidir según la escena.

## Lecciones accionables
- **ISO es amplificación, no exposición:** Aperture y shutter speed controlan la luz real. ISO solo amplifica la señal post-captura. Ejemplo: graba a ISO 400, 800 y 1600 con misma apertura y shutter speed; al normalizar el brillo en post, las tres imágenes son idénticas en ruido.
- **Exposing to the Right (ETTR) para escenas oscuras:** Usa ISO bajo (ej. 200-400) y aumenta la luz física o abre el iris (aperture) para sobreexponer la escena intencionalmente. Luego reduce el brillo en post (lower brightness) para empujar el noise floor hacia abajo, obteniendo sombras más limpias. Esto imita el "thick negative" del cine fotoquímico.
- **Trade-off dinámico:** ISO bajo (200-400) → sombras limpias, pero highlights clip más rápido (menos detalle en altas luces). ISO alto (1600+) → más headroom en highlights, pero más ruido en sombras y lower mid-range (photon shot noise).
- **Focales y movimiento recomendados:** Para escenas moody/low-light, usa lentes rápidos (f/1.4-f/2.8) para maximizar luz sin subir ISO. Shutter speed a 180° (1/48s a 24fps) para motion blur natural; no lo sacrifiques por ISO.
- **Prompts VERBATIM (si aparecen):** No hay prompts explícitos en el video. Para video IA, traduce los conceptos: "low-light scene, ISO 400, exposed to the right, clean shadows, shallow depth of field, 35mm lens, f/1.8, cinematic mood, no highlight clipping".

## Reglas para el director de fotografia IA
- **Usa ISO bajo (200-400) en prompts para escenas oscuras** cuando quieras sombras limpias y sin ruido. Ejemplo: "ISO 400, exposed to the right, clean shadows, moody interior".
- **Usa ISO alto (1600+) en prompts para escenas diurnas o con altas luces** cuando necesites detalle en el cielo o fuentes de luz. Ejemplo: "ISO 1600, bright daylight, detailed sky, no blown highlights".
- **Para no alucinar en video IA, especifica siempre "shutter speed 1/48" o "180-degree shutter"** para evitar motion blur artificial o staccato. No confíes en que la IA infiera el motion blur correcto.
- **Define el trade-off en el prompt:** Si la escena tiene sombras profundas y sin altas luces, fuerza "ISO 200, underexposed shadows, clean blacks". Si hay luces brillantes, fuerza "ISO 1600, highlight detail preserved, soft shadows".
- **Evita prompts genéricos como "low light" sin ISO:** La IA puede alucinar ruido excesivo o pérdida de detalle. Siempre ata el ISO a la intención de exposición.

## Errores comunes que evita o menciona
- **Error: Subir ISO para "exponer a la derecha".** En realidad estás amplificando el ruido, no añadiendo luz. La exposición real se controla con aperture y shutter speed.
- **Error: Pensar que ISO alto siempre da más ruido.** En escenas con altas luces (ej. paisajes diurnos), ISO alto protege los highlights y el ruido en sombras es irrelevante si el sujeto está en medios tonos.
- **Error: Usar el segundo native ISO (ej. 12800 en Sony FX3) para low-light sin considerar photon shot noise.** El ruido aparece en lower mid-range, no solo en sombras, y puede ser más molesto que el ruido de ISO 800.
- **Error: Sobreexponer sin control.** ETTR requiere bajar el brillo en post; si no lo haces, perderás detalle en altas luces. Siempre planea el "print down" o reducción en post.