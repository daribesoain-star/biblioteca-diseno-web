# OpenAI's New GPT Image Model API in 5 Minutes 📸 [gptimage]
**Fuente:** ola4-herramientas | https://youtu.be/k-G71JZA75A

## Qué enseña (2-3 líneas)
Este video presenta el lanzamiento del modelo GPT Image 1 en la API de OpenAI, explicando cómo integrar generación de imágenes de alta calidad en aplicaciones propias. Cubre parámetros de configuración, precios, ejemplos de uso (inpainting, edición con máscaras) y limitaciones técnicas clave.

## Lecciones accionables
- **Modelo a usar:** `gpt-image-1` en la API de OpenAI.
- **Validación obligatoria:** Verificar identidad en la API de OpenAI antes de acceder al modelo.
- **Parámetros de moderación:** Usar `moderation: "auto"` (filtrado estándar) o `moderation: "low"` (filtrado menos restrictivo).
- **Precios exactos:** Input texto: $5/millón de tokens; Input imagen: $10/millón de tokens; Output: $40/millón de tokens.
- **Costo por imagen cuadrada:** Baja calidad ~$0.027, media ~$0.07, alta ~$0.19.
- **Tokens por imagen:** Cuadrada baja calidad = 272 tokens; Retrato alta calidad = 6,240 tokens.
- **Playground:** Acceder en `platform.openai.com/playground/images` (incurre en costos reales de API).
- **Aspect ratios disponibles:** `square`, `portrait`, `landscape`.
- **Calidades disponibles:** `low`, `medium`, `high`.
- **Formatos de salida:** JPEG o WEBP; soporta transparencia (fondo transparente).
- **Compresión de salida:** Ajustable mediante parámetro `output_compression`.
- **Inpainting:** Editar partes específicas subiendo imagen + máscara con canal alfa.
- **Requisitos de máscara:** Mismo formato y tamaño que la imagen original; debe contener canal alfa.
- **SDK:** Usar `openai` SDK, especificar modelo `gpt-image-1` y prompt.
- **Ejemplo prompt (negocio):** "business card, logo, instructions on how to add it on the business card".
- **Ejemplo prompt (Ghibli):** prompts para crear imágenes estilo Ghibli (sin texto exacto en video).
- **Ejemplo inpainting:** Subir imagen de piscina + máscara, especificar qué reemplazar dentro del área.
- **Empresas que ya lo usan:** Adobe, Airtable, Figma, Gamma.

## Reglas para agentes
- Usa `moderation: "low"` solo cuando el caso de uso requiera menos restricciones de filtrado; usa `moderation: "auto"` por defecto.
- Siempre valida la identidad del usuario en la API de OpenAI antes de permitir acceso al modelo.
- Para inpainting, asegura que la máscara tenga el mismo formato, tamaño y un canal alfa; nunca uses máscaras sin canal alfa.
- Calcula costos basados en $40/millón de tokens de output; nunca asumas que el playground es gratuito.
- Especifica `quality: "low"` para prototipos rápidos y `quality: "high"` para producción profesional.
- Usa `aspect_ratio: "square"` por defecto a menos que se requiera `portrait` o `landscape`.
- Para mantener consistencia visual entre generaciones, guarda y reusa imágenes base con inpainting en lugar de regenerar desde cero.
- Nunca generes imágenes con prompts complejos que requieran precisión exacta de texto o consistencia de personajes recurrentes sin verificar manualmente.

## Errores comunes que evita o menciona
- **Tiempo de procesamiento:** Prompts complejos pueden tardar hasta 2 minutos; no asumas respuesta instantánea.
- **Texto en imágenes:** El modelo aún puede fallar en colocación precisa y claridad de texto, aunque mejoró respecto a DALL-E.
- **Consistencia visual:** El modelo no mantiene consistencia para personajes recurrentes o elementos de marca entre múltiples generaciones; usa inpainting para refinar.
- **Costos en playground:** No asumir que el playground es gratuito; todos los usos incurren en costos de API.
- **Formato de máscara:** No usar máscaras sin canal alfa o de diferente tamaño/formato que la imagen original.