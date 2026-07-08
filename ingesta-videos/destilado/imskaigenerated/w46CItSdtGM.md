# Create AI Videos That Actually Look Like YOU - Higgsfield AI
**Fuente:** imskaigenerated | https://youtu.be/w46CItSdtGM

## Qué enseña
Flujo completo de 4 pasos para crear videos hiperrealistas de uno mismo usando Higgsfield AI, desde la creación de un clon digital hasta la edición final. Revela cómo mantener la identidad facial consistente en escenas generadas por IA, evitando la pérdida de parecido típica de otros workflows.

## Lecciones accionables
- **Paso 1: Crear el clon AI**
  - Desde higgsfield.ai → click en "Character" → "Create Character"
  - Subir **20+ fotos** (máximo 80) donde: solo tú en el encuadre, rostro claramente visible, múltiples ángulos, expresiones y poses variadas
  - Si faltan fotos: usar **Nano Banana 2** (modelo dentro de Higgsfield) para generarlas
  - Configuración Nano Banana 2: modelo = "Nano Banana 2", aspect ratio = 16:9, calidad = 4K, batch size = 4
  - Subir una foto de referencia profesional (ej: desde tu YouTube studio) como prompt base
  - Generar por separado: perfil derecho, perfil izquierdo, fotos de estudio profesionales, fotos naturales cotidianas
  - Prompts de ejemplo (verbatim):
    - *"right side profile"*
    - *"left side profile"*
    - *"me at a hardware store reading the label of a paint can"*
    - *"me taking a bathroom selfie before bed"*
  - Al crear el personaje: nombre = "Sky", modelo = **Soul 2.0** (mejor que Soul original)
- **Paso 2: Generar los frames de las escenas**
  - Click en "Generate"
  - Configuración: modelo = Soul 2.0, aspect ratio = 16:9, resolución = 2K, "Prompt Enhancement" = ON, batch size = 4
  - Opciones adicionales: "Color Transfer" (control de colores), "Mood Boards" (cambiar ambiente) — mantener default
  - Para escena 1: usar foto de estudio como frame inicial → generar frame final con prompt: *"cyberpunk street at night"*
  - Para escena 2: prompt *"high-fashion environment"*
  - Para escena 3: prompt *"black and white 1950s environment"*
- **Paso 3: Generar los videos de cada escena**
  - Click en "Cinema Studio" → seleccionar "Video"
  - Configuración: "Single Shot" (sin cortes de cámara), aspect ratio = 16:9, resolución = 1080p, género = "General", "Sound Generation" = OFF, batch size = 4
  - Camera movement = "Dolly In", Speed ramp = "Linear"
  - Subir frame inicial y frame final de cada escena
  - Prompt para llenar el gap entre frames (ejemplo genérico usado en el video)
  - Escena 2: el último frame de escena 1 se vuelve el primer frame de escena 2
  - Escena final: el último frame vuelve al frame inicial original (loop)
- **Paso 4: Editar todo junto**
  - Usar **CapCut** (o cualquier editor de video)
  - Importar todas las escenas → alinear transiciones
  - Añadir transiciones extra, efectos de sonido y toques finales

## Reglas para agentes
- Usa **Soul 2.0** siempre que generes clones o frames, nunca el modelo Soul original
- Sube mínimo **20 fotos** para crear un clon; si buscas máxima calidad, usa hasta **80**
- Asegura que cada foto de referencia tenga: solo una persona en el encuadre, rostro claramente visible, ángulo diferente
- Activa **Prompt Enhancement** en toda generación de frames para mejor adherencia al prompt
- Selecciona **"Single Shot"** en Cinema Studio cuando quieras transiciones suaves sin cortes de cámara
- Desactiva **Sound Generation** al generar videos si planeas añadir audio en postproducción
- Usa **Nano Banana 2** (no Nano Banana Pro) para generar fotos de referencia: mejor consistencia y adherencia
- Mantén el mismo aspect ratio (16:9) en todos los pasos: generación de fotos, frames y videos

## Errores comunes que evita o menciona
- **No usar solo fotos de estudio**: necesitas mezcla de fotos profesionales y naturales/cotidianas para mejor consistencia
- **No subir fotos con otras personas**: el clon se confunde si hay más de un rostro en el frame
- **No usar el modelo Soul original**: Soul 2.0 genera resultados muy superiores
- **No saltarse la generación de perfiles laterales**: sin ellos, el clon no funciona bien en ángulos de 3/4
- **No usar prompts genéricos**: los prompts detallados (ej: "hardware store reading paint can label") dan mejores resultados que "a photo of me"
- **No olvidar que el último frame de una escena se vuelve el primero de la siguiente**: esencial para transiciones fluidas