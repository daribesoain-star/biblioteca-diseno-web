# Timeline Prompting in Sora 2 is CRAZY for Cinematic AI Videos
**Fuente:** Dan Kieft | https://youtu.be/KWH46O99oLE

## Qué enseña
Enseña la técnica de "timeline prompting" en Sora 2 (accesible vía Artlist) para generar videos cinematográficos con control de escena, cámara y narrativa. Explica cómo estructurar prompts por segmentos temporales (hook, contexto, clímax, resolución) y cómo usar image-to-video para mayor consistencia de personajes y estilo.

## Técnicas accionables
- **Modelo usado:** Sora 2 (estándar) y Sora 2 Pro en Artlist. Para imágenes base se usa Midjourney (ejemplo: dragón).
- **Estructura de timeline prompt (VERBATIM del tutorial):**
  ```
  [ESTILO] gritty medieval cinematic realism style
  [CÁMARA] 50mm to 85mm prime lens, slow dolly gently moving across the scene
  [HOOK - primeros 3 segundos] tight profile close-up shot, slow dolly, wind hissing, capturing metal and chain mail shimmer
  [CONTEXTO - siguiente shot] focus on parchment map, camera tilting down as fingers trace the route
  [CLÍMAX] over the shoulder medium shot
  [RESOLUCIÓN] knight marching into empty battlefield
  ```
- **Otro ejemplo de prompt (text-to-video, horror VHS):**
  ```
  [ESTILO] horror style VHS realism, eerie and analog aesthetic
  [CÁMARA] VHS recorder with handheld shakiness, zoom glitches, interlaced flicker, tracking errors
  [INICIO] close-up of a VHS recorder
  [SEGUNDO SHOT] handheld view from behind
  [TERCER SHOT] medium shot
  [FINAL] video heavily distorting, alien appears in front of camera
  ```
- **Parámetros:** 16:9, 12 segundos, 1080p (en Sora 2 Pro).
- **Image-to-video:** Subir imagen (ej: de Midjourney) a Sora 2, luego aplicar timeline prompt. Da más control que text-to-video.
- **Consistencia de personaje:** Se logra describiendo exactamente qué ocurre en cada segmento temporal, sin dejar ambigüedad.
- **Uso de ChatGPT:** Se creó un "timeline prompter" personalizado (GPT) que genera el prompt completo a partir de una idea o imagen.
- **JSON prompting:** Mencionado como formato alternativo más complicado, pero no se detalla.

## Reglas para el erudito
- Usa image-to-video cuando quieras máximo control sobre estilo, personajes y objetos; text-to-video es más aleatorio.
- Usa timeline prompting (no JSON prompting) para dar contexto temporal detallado: hook (0-3s), contexto, clímax, resolución.
- Especifica siempre el estilo al inicio del prompt (ej: "gritty medieval cinematic realism style").
- Define lente y movimiento de cámara exactos (ej: "50mm to 85mm prime lens, slow dolly").
- Describe cada cambio de shot con tipo de plano (close-up, over the shoulder, medium shot) y acción específica.
- Usa ChatGPT para generar el prompt si no sabes redactarlo, pero revisa y ajusta manualmente los segmentos.
- Genera múltiples veces para obtener resultados distintos; no esperas replicación exacta en prompts complejos.

## Errores comunes / limitaciones que menciona
- **Prompts vagos:** "A knight is looking at the map, he puts it away, and then he starts marching forward" da poco contexto y resultados pobres.
- **Censura en Sora:** "Sam, please allow us to do a bit more uncensored stuff on Sora" — el creador señala que Sora puede censurar contenido (ej: dragón siendo derribado).
- **Falta de control total:** "You cannot replicate exactly what you want if you're doing these kind of complex prompts" — incluso con timeline prompting, resultados varían entre generaciones.
- **Sora 2 Pro es caro:** "The most expensive tool on the market right now" — aunque produce mejor calidad, el costo es alto.
- **Glitches no deseados:** En el ejemplo VHS, Sora 2 Pro generó "glitching a little bit too much" sin instrucción explícita.