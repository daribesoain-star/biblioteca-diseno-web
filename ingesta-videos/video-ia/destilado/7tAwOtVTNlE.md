# The ULTIMATE Sora 2 Prompting Guide (Complete Control + Amazing Results)
**Fuente:** Noble Goose | https://youtu.be/7tAwOtVTNlE

## Qué enseña
Enseña a estructurar prompts para Sora 2 combinando intención de escena, composición de plano y estilo lumínico/tonal. Cubre desde prompts simples de texto a video hasta prompts avanzados con múltiples cortes, diálogos, efectos de sonido y uso de image-to-video con control total sobre cada segundo de la generación.

## Técnicas accionables
- **Fórmula universal del prompt en Sora 2:** `Scene intent + Shot composition + Lighting and tone`. Siempre en ese orden.
- **Scene intent (1-3 oraciones):** Describe el tema/mundo/estilo visual. Ejemplo textual: *"High quality 2D anime film style cinematic realism. A samurai woman with long white hair walks slowly along a coastal path beside the ocean."*
- **Shot composition:** Define cortes con timestamps o etiquetas de corte. Estructura VERBATIM para múltiples cortes:
  ```
  Cut 1: [descripción de acción y cámara, duración implícita]
  Cut 2: [transición, nueva acción, sonido/diálogo]
  Cut 3: [close-up, diálogo textual entre comillas]
  ```
  Ejemplo exacto del tutorial: *"In cut one, we want to watch her walk slowly down the fence. In cut two, we want to see the camera tilt downward towards the rocks below. And then in cut three, we want to see her eyes reflecting and we want her to say, 'It's been so long.'"*
- **Diálogos y efectos de sonido:** El diálogo específico va dentro del corte correspondiente (ej: *she says "It's been so long"* en cut 3). Sonidos tonales/fondo van en la sección de lighting and tone (ej: *sound of distant waves and wind, ship horn*).
- **Lighting and tone (párrafo final):** Define look global. Ejemplo textual: *"Golden late afternoon sunset with soft shadows, dynamic ocean reflections, sound of distant waves and wind completes the tranquil environment."*
- **Image-to-video:** Usa imágenes externas (Midjourney, etc.) como primer frame. Ajusta el lenguaje: en lugar de "the woman walks", usa *"the woman gently shifts her weight, then begins walking a few slow steps towards the fence down the path"* para animación natural desde el frame inicial.
- **Control de duración:** Sora 2 permite 10 segundos (plan gratuito) o 12 segundos (plan pro). Distribuye los cortes para ocupar todo el tiempo.
- **Custom GPT del creador:** Usa un GPT entrenado en mejores prácticas de Sora 2 (enlace en descripción del video) para generar prompts automáticamente con la estructura correcta.

## Reglas para el erudito
- Usa la fórmula `scene intent + shot composition + lighting and tone` en TODOS los prompts de Sora 2, sin excepción.
- Cuando uses image-to-video, describe la transición desde el frame inicial con verbos de movimiento gradual ("gently shifts", "begins walking") en lugar de acciones directas.
- Coloca el diálogo textual ENTRE COMILLAS dentro del corte específico donde debe ocurrir; los sonidos ambientales van en lighting and tone.
- Separa los cortes con etiquetas "Cut 1:", "Cut 2:", etc., y describe cada uno con acción + movimiento de cámara + sonido si aplica.
- Termina SIEMPRE con un párrafo de lighting and tone que unifique atmósfera, iluminación y emociones.

## Errores comunes / limitaciones que menciona
- No especificar cortes ni timestamps en prompts complejos: Sora necesita dirección explícita para usar los 10-12 segundos completos.
- Mezclar diálogos específicos con sonidos ambientales en la misma sección: el diálogo va en el corte, los sonidos de fondo en lighting and tone.
- Usar lenguaje genérico en image-to-video: si no describes la transición desde el frame inicial, el movimiento puede no ser natural.
- Escribir prompts largos manualmente sin apoyo de GPT: el creador recomienda su custom GPT para ahorrar tiempo, ya que "estos prompts toman mucho tiempo para escribir".