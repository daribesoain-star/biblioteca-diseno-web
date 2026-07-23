# higgsfield_image_models
**Fuente:** imagen-ia | https://docs.higgsfield.ai

## Qué enseña
Higgsfield es una pasarela multi-modelo que expone modelos propios (Soul) y de terceros (Google, OpenAI, Bytedance, BFL, xAI, Kling, Recraft, Tongyi) para generación y edición de imágenes vía API. Se detallan resoluciones, parámetros de calidad, costos en créditos y requisitos específicos para cada modelo, incluyendo la funcionalidad de personaje consistente mediante soul_id.

## Lecciones accionables
- **Modelos propios Higgsfield:**
  - `soul_2` / `soul_v2`: Quality `1.5k` o `2k` (default `2k`). Acepta `soul_id` para identidad personalizada. 1 imagen de referencia. Tags: ugc, fashion, editorial, realistic, character, portrait.
  - `soul_cinematic`: Quality `1.5k`/`2k`. `soul_id` para personaje cinematográfico. Tags: cinematic, dramatic, concept-art, lighting, film.
  - `soul_cast`: `budget` 10-500 (default 50). Identidad de personaje cinematográfico consistente.
  - `soul_location`: Generación de entornos, ubicaciones, fondos, paisajes.
  - `cinematic_studio_2_5`: `resolution` `1k`/`2k`/`4k`. Stills cinematográficos hasta 4K.
  - `marketing_studio_image`: `resolution` `1k`/`2k`/`4k`, `aspect` auto. Imágenes de producto para ads sociales.
  - `ms_image`: REQUIERE `style_id` (llamar `show_marketing_studio type=image_style` ANTES; sin style_id = error). `brand_kit_id` opcional. `batch_size` 1-20, hasta 4 `product_ids`, hasta 14 imágenes de referencia.
  - `image_auto`: Auto-selecciona el mejor modelo según la intención del prompt.
  - `autosprite`: `frame_count` 2-64 (default 25), `frame_size` 32-512 (default 256), `video_tier` turbo/pro/max, `remove_bg` default/ultra. Anima personaje en sprite sheet PNG game-ready.

- **Modelos de terceros:**
  - `nano_banana` (Google): Text-to-image + image-to-image. Budget-friendly.
  - `nano_banana_2` (Google): `resolution` `1k`/`2k`/`4k`. Alta calidad, rápido.
  - `nano_banana_pro` (Google): `resolution` `1k`/`2k`/`4k`. Mejor para text-rendering + diagramas. Calidad ULTIMATE.
  - `nano_banana_2_lite` (Google): `thinking` MINIMAL/HIGH.
  - `gpt_image_2` (OpenAI): `1k`/`2k`/`4k`, `quality` low/medium/high. Tags: text-rendering, editing, typography, photorealistic, high-resolution.
  - `openai_hazel` (OpenAI): `quality` low/medium/high. Mejor text rendering. Tags: text-rendering, editing, typography, logos, diagram, infographic.
  - `seedream_v4_5` (Bytedance): `quality` basic (~4K) / high (~6K). 4K, control preciso.
  - `seedream_v5_lite` / `seedream_v5_pro` (Bytedance): Pro hasta 2K. Razonamiento visual, edición por instrucción.
  - `flux_2` (Black Forest Labs): `resolution` `1k`/`2k`. Variantes pro/flex/max. Adherencia PRECISA al prompt.
  - `flux_kontext` (Black Forest Labs): Edición context-aware, transferencia de estilo, typography, remix.
  - `kling_omni_image` (Kling O1 Image): Fotorrealista versátil, wide aspect ratio.
  - `grok_image` (xAI): `mode` std/quality. Expresivo, alto contraste, edición.
  - `z_image` (Tongyi-MAI): Super rápido, estilizado, budget.
  - `recraft_v4_1` (Recraft): `model_type` standard/vector/utility/utility_vector. `colors` hasta 10 (#RRGGBB), `background_color`. Vector = logos/tipografía/iconos/SVG; utility = product shots/mockups planos.

- **Utilidades de post:**
  - `image_background_remover`: Quita fondo.
  - `outpaint`: Expande/descuadra la imagen (uncrop).
  - `topaz_image`: `sharpen`/`denoise` 0-1, `face_enhancement`. Variantes: Standard V2 / Low Resolution V2 / CGI / High Fidelity V2 / Text Refine.
  - `topaz_image_generative`: `creativity` 1-6, `texture` 1-5. Variantes: Standard MAX/Redefine/Recovery.
  - `bytedance_image_upscale`: Upscale a 2k/4k.

## Reglas para agentes
- Verifica saldo con MCP `higgsfield balance` ANTES de generar (plan PAGADO de Dari).
- Usa `soul_id` con modelos Soul (`soul_cast`/`soul_cinematic`/`soul_2`) para personaje consistente.
- Para ads de producto rápidos, usa `marketing_studio_image` o `ms_image` (este último exige `style_id` vía `show_marketing_studio`).
- Cuando no sepas qué modelo usar, llama `image_auto` o `models_explore action=recommend` con el objetivo + contexto de input.
- Nunca generes sin `style_id` en `ms_image` (provoca error).
- Nunca uses modelos de terceros sin verificar primero el saldo disponible.

## Errores comunes que evita o menciona
- Usar `ms_image` sin llamar `show_marketing_studio type=image_style` primero → error por falta de `style_id`.
- No verificar saldo antes de generar con modelos de alta resolución (4K, 6K) que consumen más créditos.
- Olvidar que `soul_id` es necesario para personaje consistente en modelos Soul.
- Asumir que todos los modelos aceptan cualquier resolución (cada modelo tiene límites específicos: 1k/2k/4k).
- No especificar `quality`/`resolution` en modelos que lo requieren para controlar costo.