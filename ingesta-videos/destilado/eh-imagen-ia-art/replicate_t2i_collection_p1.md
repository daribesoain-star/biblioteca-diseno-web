# replicate_t2i_collection
**Fuente:** imagen-ia | https://replicate.com/collections/text-to-image

## Qué enseña
Colección curada de modelos de generación de imágenes por IA disponibles en Replicate, clasificados por caso de uso: calidad general, fotorrealismo, razonamiento, tipografía, vectores SVG, velocidad y costo. Incluye modelos propietarios (OpenAI, Google, ByteDance, Black Forest Labs, xAI) y open-source (Stable Diffusion, FLUX, Recraft, Ideogram).

## Lecciones accionables
- **Modelo recomendado general:** `google/nano-banana-2` — fusión multi-imagen (hasta 14 imágenes), renderizado de texto multilingüe, edición conversacional. Versión Pro añade razonamiento Gemini 3 Pro, grounding con Google Search y salida 4K.
- **Fotorrealismo y calidad cinematográfica:** `black-forest-labs/flux-2-max` — consistencia de personajes entre lotes (hasta 8 imágenes de referencia), control de color mediante códigos hex. `bytedance/seedream-4.5` — resolución hasta 4K, generación por lotes y multi-referencia.
- **Razonamiento y conocimiento de dominio:** `bytedance/seedream-5-lite` — razonamiento multi-paso integrado, comprensión espacial/física/profesional (arquitectura, ciencia, salud, diseño). Edición basada en ejemplos, fusión multi-imagen (hasta 14 referencias), resolución hasta 3K.
- **Tipografía y diseño gráfico:**
  - `black-forest-labs/flux-2-flex` — especialista en tipografía, hasta 10 imágenes de referencia. Ajuste calidad-velocidad modificando número de pasos.
  - `ideogram-ai/ideogram-v3` — referencias de estilo (subir hasta 3 imágenes o usar 4.3 mil millones de presets de estilo). Tiers: Turbo, Balanced, Quality.
  - `recraft-ai/recraft-v4` — enfoque de diseño, composición intencional, relaciones de color refinadas.
- **Vectores SVG:** `recraft-ai/recraft-v4-svg` y `recraft-ai/recraft-v4-pro-svg` — archivos SVG nativos editables, capas limpias, rutas estructuradas. Abre directamente en Illustrator, Figma, Sketch.
- **Velocidad y costo:**
  - `google/imagen-4-fast` y `black-forest-labs/flux-schnell` — para iteración rápida.
  - `ideogram-ai/ideogram-v3-turbo` — $0.03 por imagen.
  - `prunaai/p-image` — sub 1 segundo.
  - `black-forest-labs/flux-2-klein-4b` — 4 pasos destilados, inferencia sub-segundo.
- **Edición de imágenes con texto:** `black-forest-labs/flux-kontext-pro`, `black-forest-labs/flux-kontext-max`, `bytedance/seedream-4.5` — soportan edición guiada por texto ("añadir gafas de sol", "convertir en pintura").
- **Consistencia de personajes:** usar imagen de referencia o semilla fija. Modelos que soportan ambos: `black-forest-labs/flux-kontext-pro`, `ideogram-ai/ideogram-v3-turbo`.
- **Resoluciones soportadas:** 512×512 hasta 4K. Resoluciones más altas incrementan costo y tiempo.
- **Fine-tuning:** algunos modelos lo soportan (buscar etiqueta "fine-tune" en la página del modelo o README). Ejemplo: `prunaai/p-image-lora` para usar LoRAs entrenados.
- **Uso comercial:** verificar sección "License" en la página del modelo. No todos permiten uso comercial.
- **Hosting propio en Replicate:** subir modelo desde GitHub con archivo `replicate.yaml`.

## Reglas para agentes
- Usa `google/nano-banana-2` cuando necesites el mejor equilibrio general entre velocidad, calidad, edición conversacional y fusión multi-imagen.
- Usa `black-forest-labs/flux-2-max` cuando el fotorrealismo y la consistencia de personajes entre lotes sean críticos (e-commerce, moda).
- Usa `bytedance/seedream-5-lite` para prompts complejos que requieran razonamiento multi-paso, comprensión espacial o conocimiento de dominio especializado.
- Usa `black-forest-labs/flux-2-flex` o `ideogram-ai/ideogram-v3` cuando el prompt contenga texto que deba renderizarse limpio (carteles, infografías, UI mockups).
- Usa `recraft-ai/recraft-v4-svg` o `recraft-ai/recraft-v4-pro-svg` cuando necesites salida vectorial SVG nativa y editable.
- Usa `ideogram-ai/ideogram-v3-turbo` ($0.03/imagen) o `google/imagen-4-fast` para iteración rápida con bajo costo.
- Usa `prunaai/p-image` (sub 1 segundo) o `black-forest-labs/flux-2-klein-4b` (4 pasos) para aplicaciones en tiempo real o producción de alta velocidad.
- Usa `black-forest-labs/flux-kontext-pro` o `bytedance/seedream-4.5` para edición de imágenes existentes mediante texto.
- Usa semilla fija o imagen de referencia para mantener consistencia de personajes/escenas entre múltiples ejecuciones.
- Nunca asumas que un modelo permite uso comercial sin verificar la sección "License" en su página.
- Nunca uses resolución 4K si velocidad y costo son prioritarios; selecciona variantes "fast" o "turbo".
- Nunca uses modelos de propósito general para tareas especializadas (tipografía, SVG, edición) cuando existan modelos dedicados.

## Errores comunes que evita o menciona
- **Confundir text-to-image con image-to-image:** text-to-image crea desde cero; image-to-image edita una existente. Elegir el endpoint incorrecto según la tarea.
- **Ignorar la licencia para uso comercial:** algunos modelos (open-source) pueden tener restricciones. Verificar siempre antes de usar outputs en productos públicos o comerciales.
- **No usar referencia o semilla fija para consistencia:** sin imagen de referencia o seed fijo, personajes y escenas variarán entre ejecuciones.
- **Seleccionar modelo incorrecto para texto:** modelos generales pueden renderizar texto ilegible. Usar `flux-2-flex`, `ideogram-v3` o `recraft-v4` para tipografía.
- **Asumir que mayor resolución siempre es mejor:** resoluciones altas (4K) incrementan costo y tiempo de inferencia. Usar variantes "fast" o resolución estándar para iteración rápida.
- **No ajustar el balance calidad-velocidad en FLUX:** en `flux-2-flex`, modificar el número de pasos permite ajustar la compensación calidad-velocidad. No dejarlo por defecto sin considerar el caso de uso.
- **Usar vectores trazados en lugar de SVG nativo:** `recraft-v4-svg` produce SVG con capas y rutas editables; otros modelos pueden generar rasters trazados que no son verdaderos vectores.