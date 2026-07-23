# gemini_image_docs
**Fuente:** imagen-ia | https://ai.google.dev/gemini-api/docs/image-generation

## Qué enseña
Documentación oficial de la API de Gemini para generación y edición de imágenes mediante los modelos Nano Banana. Cubre desde generación básica texto-a-imagen hasta edición multi-turno, uso de hasta 14 imágenes de referencia, grounding con Google Search, generación video-a-imagen, y salidas en resoluciones de hasta 4K. Incluye guías de prompting, configuraciones opcionales y selección de modelos.

## Lecciones accionables
- **Modelos disponibles (4) y sus IDs exactos:**
  - `gemini-3.1-flash-lite-image` (Nano Banana 2 Lite): más rápido y barato. Solo soporta resolución 1K. No optimizado para múltiples referencias ni edición secuencial multi-turno.
  - `gemini-3.1-flash-image` (Nano Banana 2): versátil, 4K, texto confiable, hasta 14 imágenes de referencia (10 objetos alta fidelidad, 4 personajes consistencia). Soporta 512px (0.5K), 1K, 2K, 4K.
  - `gemini-3-pro-image` (Nano Banana Pro): premium, máximo conocimiento mundial, consistencia de marca. Hasta 14 imágenes de referencia (6 objetos alta fidelidad, 5 personajes consistencia, 3 estilo). Soporta 1K, 2K, 4K.
  - `gemini-2.5-flash-image` (Nano Banana): legado. Se recomienda migrar a Nano Banana 2 Lite.

- **Endpoint de la API:** `client.interactions.create()` (Interactions API, recomendada). No usar generateContent API para nuevas implementaciones.

- **Parámetros obligatorios en la llamada:**
  - `model`: string con el ID del modelo (ej. `"gemini-3.1-flash-image"`)
  - `input`: string (texto) o array de objetos con `type` y `data`/`text`/`uri` para multimodal

- **Parámetros opcionales clave en `response_format`:**
  - `type`: `"image"` (para solo imagen) o `["text", "image"]` (para multimodal)
  - `mime_type`: `"image/png"` (default) o `"image/jpeg"`
  - `aspect_ratio`: valores exactos soportados → `"1:1"`, `"3:2"`, `"2:3"`, `"3:4"`, `"4:3"`, `"4:5"`, `"5:4"`, `"9:16"`, `"16:9"`, `"21:9"`, `"1:4"`, `"1:8"`, `"4:1"`, `"8:1"`
  - `image_size`: `"512px"` (solo 3.1 Flash), `"1K"`, `"2K"`, `"4K"` (usar K mayúscula obligatorio)

- **Tabla de resoluciones y tokens (modelo 3.1 Flash Image):**

| Aspect Ratio | 512px (0.5K) tokens | 1K tokens | 2K tokens | 4K tokens |
|---|---|---|---|---|
| 1:1 | 747 | 1120 | 1120 | 2000 |
| 16:9 | 747 | 1120 | 1120 | 2000 |
| 9:16 | 747 | 1120 | 1120 | 2000 |
| 4:3 | 747 | 1120 | 1120 | 2000 |
| 3:4 | 747 | 1120 | 1120 | 2000 |
| 21:9 | 747 | 1120 | 1120 | 2000 |
| 1:4 | 747 | 1120 | 1120 | 2000 |
| 4:1 | 747 | 1120 | 1120 | 2000 |
| 2:3 | 747 | 1120 | 1120 | 2000 |
| 3:2 | 747 | 1120 | 1120 | 2000 |
| 4:5 | 747 | 1120 | 1120 | 2000 |
| 5:4 | 747 | 1120 | 1120 | 2000 |
| 1:8 | 747 | 1120 | 1120 | 2000 |
| 8:1 | 747 | 1120 | 1120 | 2000 |

- **Generación texto-a-imagen (código Python):**
  ```python
  from google import genai
  import base64
  client = genai.Client()
  interaction = client.interactions.create(
      model="gemini-3.1-flash-image",
      input="Create a picture of a nano banana dish in a fancy restaurant with a Gemini theme",
  )
  with open("generated_image.png", "wb") as f:
      f.write(base64.b64decode(interaction.output_image.data))
  ```

- **Edición imagen-a-imagen:** pasar array en `input` con objetos `{"type": "text", "text": "..."}` y `{"type": "image", "data": base64, "mime_type": "image/png"}`

- **Edición multi-turno:** usar `previous_interaction_id=interaction.id` en la siguiente llamada para mantener contexto conversacional

- **Grounding con Google Search:** agregar `tools=[{"type": "google_search"}]` en la llamada. Para Image Search (solo 3.1 Flash): `tools=[{"type": "google_search", "search_types": ["web_search", "image_search"]}]`

- **Video-a-imagen (solo 3.1 Flash):** pasar en `input` un objeto `{"type": "video", "uri": "https://www.youtube.com/watch?v=...", "mime_type": "video/mp4"}`

- **Control de thinking:** usar `generation_config={"thinking_level": "minimal"}` (default) o `"high"`. Los tokens de thinking se facturan siempre.

- **Batch API:** todas las capacidades soportan ejecución por lotes con turnaround de hasta 24 horas.

- **Todas las imágenes generadas incluyen marca de agua SynthID.**

- **Idiomas recomendados para mejor rendimiento:** EN, ar-EG, de-DE, es-MX, fr-FR, hi-IN, id-ID, it-IT, ja-JP, ko-KR, pt-BR, ru-RU, ua-UA, vi-VN, zh-CN.

## Reglas para agentes
- Usa `client.interactions.create()` con el modelo `gemini-3.1-flash-image` como opción predeterminada para tareas generales de generación y edición de imágenes.
- Cuando necesites la máxima calidad y control profesional, usa `gemini-3-pro-image` (Nano Banana Pro).
- Para tareas de alto volumen donde velocidad y costo sean críticos, usa `gemini-3.1-flash-lite-image` (Nano Banana 2 Lite).
- Nunca uses `gemini-2.5-flash-image` para nuevas implementaciones; migra a Nano Banana 2 Lite.
- Especifica siempre `image_size` con K mayúscula (ej. `"1K"`, `"2K"`, `"4K"`); valores en minúscula como `"1k"` serán rechazados.
- Para contenido interleaved (texto + imágenes en misma respuesta), itera manualmente sobre `interaction.steps`; no uses `output_image` o `output_text` porque no capturan la secuencia completa.
- Cuando uses Grounding con Google Search con Image Search, muestra obligatoriamente los `search_suggestions` del paso `google_search_result` según los Términos de Servicio.
- Para preservar detalles críticos (rostros, logos) durante ediciones, describe esos elementos con gran detalle en el prompt junto con la instrucción de edición.
- Para consistencia de personajes en vistas 360°, incluye imágenes generadas previamente en prompts subsecuentes.
- Para generación de texto dentro de imágenes, primero genera el texto por separado y luego pide la imagen con ese texto.
- Nunca uses audio como input; la generación de imágenes no soporta entradas de audio.
- Para video inputs, úsalos solo con el modelo `gemini-3.1-flash-image`.
- Cuando uses el modelo `gemini-3.1-flash-image` con Grounding, no esperes que use imágenes reales de personas obtenidas de la web.
- Para edición con máscara semántica (inpainting), describe el cambio como "cambia solo [elemento específico] a [nuevo elemento], mantén todo lo demás exactamente igual".

## Errores comunes que evita o menciona
- **No usar `generateContent API`:** la documentación recomienda explícitamente usar Interactions API para acceso a todas las características y modelos más recientes.
- **No usar `1k` en minúscula:** el parámetro `image_size` debe usar K mayúscula (ej. `"1K"`), de lo contrario será rechazado.
- **No esperar que el modelo siga exactamente el número de imágenes solicitado:** el modelo no siempre genera la cantidad exacta que el usuario pide explícitamente.
- **No asumir que `output_image` captura todo en contenido interleaved:** para respuestas con texto e imágenes intercaladas (como cuentos ilustrados), las propiedades de conveniencia no capturan todas las partes; hay que iterar manualmente sobre los steps.
- **No usar Imagen para nuevas implementaciones:** los modelos Imagen están deprecados y se apagarán el 17 de agosto de 2026. Migrar a Nano Banana.
- **No olvidar que los tokens de thinking se facturan siempre:** aunque no se visualice el proceso de pensamiento, los tokens se cobran por defecto.
- **No subir imágenes sin derechos:** la política de uso prohibido aplica; no generar contenido que infrinja derechos de otros, incluyendo videos o imágenes que engañen, acosen o dañen.
- **No esperar soporte de audio:** la generación de imágenes no acepta entradas de audio.
- **No usar más de 3 imágenes como input con `gemini-2.5-flash-image`:** funciona mejor con hasta 3 imágenes. Para `gemini-3-pro-image` soporta 5 con alta fidelidad y hasta 14 en total.
- **No usar "no cars" como negative prompt:** en su lugar, describe la escena deseada positivamente (ej. "una calle vacía y desierta sin señales de tráfico").