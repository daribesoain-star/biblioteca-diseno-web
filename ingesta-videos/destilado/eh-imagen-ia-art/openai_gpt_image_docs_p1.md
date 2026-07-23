# openai_gpt_image_docs
**Fuente:** imagen-ia | https://developers.openai.com/api/docs/guides/image-generation

## Qué enseña
Documenta los modelos de generación de imágenes GPT (gpt-image-1, gpt-image-2, etc.), sus endpoints, parámetros técnicos, precios por token y capacidades de edición. Cubre desde creación básica hasta edición con máscaras, entrada multi-imagen y refinamiento iterativo.

## Lecciones accionables
- **Endpoint principal de creación:** `POST /v1/images/generations`
- **Endpoint de edición:** `POST /v1/images/edits`
- **Modelos disponibles:** `gpt-image-2`, `gpt-image-1.5`, `gpt-image-1`, `gpt-image-1-mini`
- **Parámetro `size`:** valores exactos: `1024x1024`, `1536x1024`, `1024x1536`, `2048x2048`, `3840x2160`, `auto`. Máximo borde: 3840px. Múltiplos de 16px. Relación de aspecto ≤ 3:1
- **Parámetro `quality`:** valores: `low`, `medium`, `high`, `auto` (default)
- **Parámetro `background`:** valores: `opaque`, `transparent`, `auto`. Nota: `gpt-image-2` no soporta `transparent`
- **Parámetro `output_format`:** valores: `png`, `jpeg`, `webp` (default: `png`)
- **Parámetro `output_compression`:** rango 0-100% (solo para `jpeg` y `webp`)
- **Parámetro `moderation`:** valores: `auto`, `low` (controla estrictez del filtro)
- **Parámetro `n`:** entero. Genera múltiples imágenes en una sola llamada
- **Parámetro `partial_images`:** rango 0-3. Habilita streaming de resultados parciales
- **Parámetro `action` (solo Responses API):** valores: `auto`, `generate`, `edit`
- **Precios `gpt-image-2` (solo tokens de salida):**

| Calidad | Resolución 1024x1024 | Tokens |
|---------|----------------------|--------|
| Low     | 1024x1024            | 196    |
| Medium  | 1024x1024            | 1,632  |
| High    | 1024x1024            | 6,528  |

- Cada imagen parcial (streaming) añade 100 tokens de salida adicionales
- **Edición con máscara:** proporcionar imagen PNG con canal alfa para especificar regiones a editar
- **Entrada multi-imagen:** referenciar múltiples imágenes para tareas de composición
- **Edición multi-turno (Responses API):** usar `previous_response_id` para refinamiento iterativo
- **Latencia:** hasta 2 minutos para prompts complejos
- **Moderación:** errores devuelven objeto `moderation_details` con campos `moderation_stage` (`input`/`output`/`unknown`) y `categories` (`harassment`, `self-harm`, `sexual`, `violence`)

## Reglas para agentes
- Usa `POST /v1/images/generations` para crear imágenes desde cero; usa `POST /v1/images/edits` para modificar imágenes existentes
- Usa `background: transparent` solo con modelos `gpt-image-1` (no con `gpt-image-2`) para fondos transparentes en logos, stickers o recortes de producto
- Usa `output_format: jpeg` o `webp` y ajusta `output_compression` entre 0-100 cuando necesites controlar tamaño de archivo
- Usa `quality: low` para reducir costos (196 tokens vs 6,528 tokens en alta) cuando la fidelidad visual no sea crítica
- Usa `partial_images: 1-3` para obtener resultados parciales en streaming; cada imagen parcial suma 100 tokens de salida
- Usa `previous_response_id` en Responses API para ediciones iterativas multi-turno
- Nunca uses dimensiones que no sean múltiplos de 16px ni relaciones de aspecto mayores a 3:1
- Nunca uses `size` con bordes que excedan 3840px
- Nunca ignores el objeto `moderation_details` en errores; revisa `moderation_stage` y `categories` para diagnosticar bloqueos

## Errores comunes que evita o menciona
- El modelo puede fallar en la colocación precisa de texto y claridad tipográfica
- Dificultad con control de composición en diseños estructurados
- Latencia de hasta 2 minutos para prompts complejos
- `gpt-image-2` no soporta fondo transparente (usar `gpt-image-1` para esa funcionalidad)
- Todos los prompts y salidas son filtrados según políticas de uso; errores de moderación devuelven `moderation_details` con `moderation_stage` y `categories`