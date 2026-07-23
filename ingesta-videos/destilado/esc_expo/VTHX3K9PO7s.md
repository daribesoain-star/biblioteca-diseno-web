# ISO: The Secret to Stunning Film Photos
**Fuente:** esc_expo | https://youtu.be/VTHX3K9PO7s

## Que enseña
Explica que ISO en cine es una medida fija de sensibilidad a la luz, determinada antes de rodar. Muestra cómo elegir ISO según la luz disponible y cómo el grano (grain) es un rasgo físico que afecta la textura y resolución. Introduce las técnicas de pushing y pulling para control creativo de contraste y rango dinámico.

## Lecciones accionables
- **ISO fijo por rollo:** Decide el ISO antes de cargar la cámara. No puedes cambiarlo entre tomas. Para prompts de video IA, define un ISO base (ej. “shot on 400 ISO film stock”) para que el modelo genere coherencia de grano en toda la secuencia.
- **Stops de luz:** ISO duplica o reduce a la mitad por stop. Bajo ISO (25-100) = menos sensible, ideal para exteriores soleados. Alto ISO (800-3200) = más sensible, para interiores o nublado. En prompts: “low ISO, fine grain, bright daylight” vs “high ISO, heavy grain, low light interior”.
- **Grano como textura creativa:** Bajo ISO = grano fino, más detalle (como alta resolución). Alto ISO = grano grueso, menos detalle, textura estilizada. Prompt: “grain texture, 800 ISO, visible silver crystals, cinematic film look”.
- **Pushing (subexponer + revelado extendido):** Dispara un rollo a ISO más alto del indicado (ej. 400 ISO a 1600). Aumenta contraste y grano. Útil en prompts: “pushed 2 stops, high contrast, harsh shadows, gritty texture”.
- **Pulling (sobreexponer + revelado reducido):** Dispara a ISO más bajo (ej. 400 ISO a 200). Reduce contraste, mejora detalle en sombras y altas luces. Prompt: “pulled 1 stop, flat contrast, wide dynamic range, soft shadows, highlight detail”.
- **Light meter:** Siempre configura el exposímetro al ISO del rollo. Para IA, simula esto con prompts de iluminación: “metered for ISO 400, correct exposure, balanced highlights and shadows”.
- **Focales y movimientos:** No menciona focales específicas, pero aplica: para bajo ISO usa lentes rápidas (f/1.4-f/2.8) en interiores. Para alto ISO, puedes cerrar diafragma (f/8-f/11) en exteriores. Movimiento de cámara: “slow pan, handheld, 35mm lens, ISO 800, grain visible”.

## Reglas para el director de fotografía IA
- **Usa ISO fijo por escena:** Cuando generes una secuencia con Veo 3, Kling o Runway, define un ISO único para todo el clip. No cambies de ISO entre frames porque el modelo alucinará cambios de grano e iluminación.
- **Para no alucinar en video IA, especifica el tipo de grano:** Si usas “film grain” genérico, la IA puede generar texturas inconsistentes. En su lugar, escribe: “consistent 400 ISO grain, fine texture, no digital noise”.
- **Usa “pushed” o “pulled” solo si buscas un look extremo:** Si pones “pushed 2 stops” sin contexto, la IA puede sobresaturar o crear halos. Acompaña con “high contrast, crushed blacks, blown highlights”.
- **Simula el exposímetro en el prompt:** Para escenas con poca luz, no pidas solo “dark”. Escribe: “underexposed by 1 stop, ISO 1600, shadow detail lost, grain prominent”.
- **Controla el rango dinámico con pulling:** Si necesitas detalle en sombras y altas luces, usa “pulled 1 stop, ISO 200, wide latitude, soft roll-off in highlights”.

## Errores comunes que evita o menciona
- **Confundir ISO digital con ISO de cine:** En digital puedes cambiar ISO por toma; en cine es fijo por rollo. Para IA, trata el ISO como una propiedad constante de la “película” que estás simulando.
- **Ignorar el grano como resolución:** Bajo ISO no es “mejor”, es diferente. No pidas “sin grano” si buscas look fílmico; en su lugar, pide “fine grain, low ISO, high detail”.
- **Pushing sin ajustar revelado:** Si pides “pushed” en un prompt sin indicar el revelado, la IA puede generar una imagen simplemente subexpuesta. Especifica: “pushed 2 stops in development, increased contrast, enhanced grain”.
- **Sobreexponer sin propósito:** Pulling no es solo “más luz”. Es para preservar detalle en altas luces. Prompt correcto: “pulled 1 stop, overexposed, flat negative, highlight retention”.
- **Usar ISO como slider de brillo:** En IA, cambiar ISO sin ajustar luz de escena crea inconsistencias. Siempre vincula ISO con la fuente de luz: “ISO 100, bright sun, hard shadows” vs “ISO 3200, dim tungsten, soft shadows”.