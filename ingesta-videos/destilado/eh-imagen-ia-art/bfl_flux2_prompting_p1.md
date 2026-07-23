# bfl_flux2_prompting
**Fuente:** imagen-ia | https://docs.bfl.ml/guides/prompting_guide_flux2
## Qué enseña (2-3 líneas)
Guía completa de prompting para FLUX.2 [pro] y [max] que cubre estructura de prompts, estilos fotorrealistas, tipografía, control preciso de color con códigos HEX, prompting JSON estructurado, edición multi-referencia y técnicas avanzadas como tiras cómicas y upsampling de prompts. No soporta prompts negativos.

## Lecciones accionables
- **Estructura de prompt recomendada:** `Subject + Action + Style + Context`. El orden de las palabras importa: FLUX.2 presta más atención a lo que va primero. Prioridad: sujeto principal → acción clave → estilo crítico → contexto esencial → detalles secundarios.
- **Longitud de prompt:** Corto (10-30 palabras) para exploración rápida; Medio (30-80 palabras) ideal para la mayoría de proyectos; Largo (80+ palabras) para escenas complejas.
- **Estilos fotorrealistas por referencia:**
  - Modern Digital: `"shot on Sony A7IV, clean sharp, high dynamic range"`
  - 2000s Digicam: `"early digital camera, slight noise, flash photography, candid, 2000s digicam style"`
  - 80s Vintage: `"film grain, warm color cast, soft focus, 80s vintage photo"`
  - Analog Film: `"shot on Kodak Portra 400, natural grain, organic colors"`
- **Simulación de cámara:** Especificar modelo, lente y configuración. Ejemplo: `"Shot on Hasselblad X2D, 80mm lens, f/2.8, natural lighting"` o `"Canon 5D Mark IV, 24-70mm at 35mm, golden hour, shallow depth of field"`.
- **Tipografía y texto:** Usar comillas para el texto exacto: `"The text 'OPEN' appears in red neon letters above the door"`. Especificar ubicación, estilo (`"elegant serif typography"`, `"bold industrial lettering"`, `"handwritten script"`), tamaño (`"large headline text"`, `"small body copy"`, `"medium subheading"`) y color HEX.
- **Códigos HEX para color:** Señalar con palabras clave `"color"` o `"hex"` seguidas del código. Ejemplo: `"The logo text 'ACME' in color #FF5733"`. Para gradientes: `"Gradient start: #02eb3c, Gradient end: #edfa3c"`.
- **JSON Structured Prompting (esquema base):**
```json
{
  "scene": "overall scene description",
  "subjects": [
    {
      "description": "detailed subject description",
      "position": "where in frame",
      "action": "what they're doing"
    }
  ],
  "style": "artistic style",
  "color_palette": ["#hex1", "#hex2", "#hex3"],
  "lighting": "lighting description",
  "mood": "emotional tone",
  "background": "background details",
  "composition": "framing and layout",
  "camera": {
    "angle": "camera angle",
    "lens": "lens type",
    "depth_of_field": "focus behavior"
  }
}
```
- **Control preciso de color en JSON:** Usar `"color_match": "exact"` en cada sujeto. Ejemplo de producto con múltiples componentes:
```json
{
  "subjects": [
    { "type": "Main Torso", "description": "strictly in color #FFFFFF white", "color_match": "exact" },
    { "type": "Shoulder Panels", "description": "strictly in color #000000 black", "color_match": "exact" },
    { "type": "Sleeves", "description": "strictly in color #86E04A lime green", "color_match": "exact" }
  ]
}
```
- **Prompt Upsampling:** Parámetro `prompt_upsampling` que automáticamente enriquece el prompt. Útil para iteraciones rápidas sin redactar prompts detallados.
- **Aspect Ratios y resolución:**
  - 1:1 (Square): 1024×1024, 1536×1536 — redes sociales, fotos de producto
  - 16:9 (Widescreen): 1920×1080, 1536×864 — paisajes, tomas cinematográficas
  - 9:16 (Portrait): 1080×1920, 864×1536 — contenido móvil, retratos
  - 4:3 (Classic): 1536×1152, 1024×768 — layouts de revista, presentaciones
  - 21:9 (Ultrawide): 2048×864 — panorámicas
  - Límites: mínimo 64×64, máximo 4MP (ej. 2048×2048). Dimensiones deben ser múltiplos de 16. Recomendado hasta 2MP.
- **Multi-Reference Image Editing:** API [pro] tiene límite total de 9MP para input+output. A 1MP de output se pueden usar hasta 8 imágenes de referencia, a 2MP hasta 7, etc. [flex]: 10 referencias, [dev]: ~6.
- **Seed para resultados reproducibles:** `seed: 42`
- **Guidance [flex]:** `guidance: 4.5` (rango 1.5-10)
- **Steps [flex]:** `steps: 50` (máximo 50)

## Reglas para agentes
- Usa la estructura `Subject + Action + Style + Context` para todos los prompts, poniendo los elementos más importantes al inicio.
- Nunca uses prompts negativos; FLUX.2 no los soporta. Describe siempre lo que quieres, no lo que no quieres.
- Asocia siempre los códigos HEX con objetos específicos. Usa `"The car is #FF0000"` en lugar de `"use red #FF0000 in the image"`.
- Para fotorrealismo, especifica siempre modelo de cámara, lente y configuración. `"Shot on Fujifilm X-T5, 35mm f/1.4"` produce resultados más auténticos que `"professional photo"`.
- Usa JSON estructurado cuando necesites control preciso sobre múltiples elementos, escenas complejas o automatización. Usa lenguaje natural para iteraciones rápidas o escenas simples de un solo sujeto.
- Para consistencia de personajes en tiras cómicas, repite la descripción detallada e idéntica del personaje en cada panel.
- Para edición multi-referencia, describe claramente el rol de cada imagen de entrada: sujeto de imagen 1, estilo de imagen 2, fondo de imagen 3.
- Usa el idioma nativo del contexto cultural deseado (francés para escenas parisinas, japonés para estilos anime).
- Para prompts con texto legible, usa comillas alrededor del texto exacto, especifica ubicación, estilo, tamaño y color.
- Verifica que las dimensiones de salida sean múltiplos de 16.

## Errores comunes que evita o menciona
- **No usar prompts negativos:** FLUX.2 no soporta prompts negativos. En lugar de `"sin desenfoque"`, usa `"sharp focus throughout"`. En lugar de `"sin personas"`, describe una `"empty scene"`.
- **Referencias de color vagas:** `"use #FF0000 somewhere"` produce resultados inconsistentes. Siempre asociar códigos HEX a objetos específicos.
- **Ignorar el orden de palabras:** FLUX.2 presta más atención a lo que va primero. Poner detalles secundarios al inicio puede diluir el resultado principal.
- **Exceder límites de resolución:** Máximo 4MP (ej. 2048×2048). Mínimo 64×64. Dimensiones deben ser múltiplos de 16.
- **Exceder límite de imágenes multi-referencia:** API [pro] tiene límite total de 9MP para input+output. A 1MP de output máximo 8 imágenes, a 2MP máximo 7.
- **Usar lenguaje natural cuando se necesita precisión:** Para flujos de producción, automatización o escenas con múltiples sujetos, usar JSON estructurado en lugar de lenguaje natural.