# ideogram_prompting
**Fuente:** imagen-ia | https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide

## Qué enseña
Guía completa para escribir prompts efectivos en Ideogram, cubriendo desde fundamentos hasta técnicas avanzadas como JSON Prompting en Ideogram 4.0. Explica estructura de prompts, manejo de negativos, iteración y refinamiento, y herramientas creativas disponibles en la plataforma.

## Lecciones accionables
- **Estructura básica de un prompt:** Usa el formato `[sujeto] + [acción/estilo] + [detalles/contexto] + [estilo artístico]`. Ejemplo: `"un gato naranja sentado en una silla vintage, estilo acuarela, iluminación suave"`
- **JSON Prompting (Ideogram 4.0):** Usa el endpoint `https://api.ideogram.ai/generate` con método POST. Estructura exacta del body:
  ```json
  {
    "image_request": {
      "prompt": "tu prompt aquí",
      "aspect_ratio": "1:1",
      "model": "V_4",
      "magic_prompt_option": "AUTO"
    }
  }
  ```
- **Parámetros disponibles en JSON Prompting:**
  - `model`: `"V_4"` (Ideogram 4.0), `"V_3"`, `"V_2"`, `"V_1"`
  - `aspect_ratio`: `"1:1"`, `"16:9"`, `"9:16"`, `"4:3"`, `"3:4"`, `"2:3"`, `"3:2"`
  - `magic_prompt_option`: `"AUTO"`, `"ON"`, `"OFF"`
  - `seed`: número entero (para reproducibilidad)
  - `style_type`: `"GENERAL"`, `"REALISTIC"`, `"ANIME"`, `"3D_RENDER"`, `"PHOTOGRAPHIC"`, `"DIGITAL_ART"`, `"FANTASY_ART"`, `"NEON_PUNK"`, `"ISOMETRIC"`, `"PIXEL_ART"`, `"TEXTURE"`, `"TATTOO"`, `"WATERCOLOR"`, `"STICKER"`, `"POSTER"`, `"LOGO"`
- **Manejo de negativos:** Usa el campo `negative_prompt` en JSON. Ejemplo: `"negative_prompt": "borroso, distorsionado, feo, mutilado"`
- **Precios (según plan):**
  - Plan Gratuito: 10 generaciones/día
  - Plan Basic ($8/mes): 100 generaciones/día
  - Plan Plus ($20/mes): 400 generaciones/día
  - Plan Pro ($40/mes): 1000 generaciones/día
  - API: $0.04 por generación (modelo V_4)
- **Límites de API:** Máximo 60 requests por minuto para cuentas Pro; 10 requests por minuto para cuentas gratuitas
- **Pasos para iteración:** 1) Generar prompt inicial → 2) Revisar resultado → 3) Ajustar palabras clave → 4) Probar variaciones con `seed` fijo → 5) Refinar con `magic_prompt_option: "ON"`
- **Feature "Magic Prompt":** Automáticamente expande y mejora tu prompt. Se activa con `"magic_prompt_option": "AUTO"` o `"ON"` en JSON

## Reglas para agentes
- Usa `model: "V_4"` cuando necesites la máxima calidad y comprensión de prompts complejos
- Usa `magic_prompt_option: "OFF"` cuando el prompt ya esté completamente detallado y no quieras modificaciones automáticas
- Nunca uses `negative_prompt` con términos contradictorios al prompt principal (ej: no pidas "gato" y "sin gato" en negativo)
- Siempre especifica `aspect_ratio` explícitamente cuando generes para un formato específico (redes sociales, presentaciones, etc.)
- Usa `seed` fijo cuando necesites reproducir exactamente el mismo resultado o hacer variaciones controladas
- Para estilos específicos, usa `style_type` en lugar de describir el estilo en el prompt de texto

## Errores comunes que evita o menciona
- **Prompts demasiado cortos:** Menos de 5 palabras generan resultados genéricos y poco controlables
- **Negativos mal formulados:** Usar "no" o "sin" en el prompt principal en lugar de `negative_prompt` causa confusión en el modelo
- **Contradicciones en el prompt:** Pedir "realista" y "dibujo animado" simultáneamente produce resultados híbridos no deseados
- **Olvidar especificar el modelo:** Usar el modelo por defecto (V_1) cuando se necesita V_4 para prompts complejos
- **Ignorar Magic Prompt:** Desactivarlo cuando el prompt es vago o incompleto, resultando en baja calidad
- **Exceder límites de API:** No verificar el rate limit (60 req/min para Pro) causa errores 429 Too Many Requests