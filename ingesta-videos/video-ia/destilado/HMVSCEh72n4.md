# The Complete Guide to Making Cinematic AI Videos (2026)
**Fuente:** Roboverse | https://youtu.be/HMVSCEh72n4

## Qué enseña (2-3 líneas)
Flujo completo para crear cortometrajes cinematográficos con IA: desde la planificación narrativa en Claude hasta la generación de video con control de cámara, lente y color grading en Higgsfield, más edición final en CapCut y upscaling a 4K con Topaz Video AI. El método clave es guardar personajes como "elementos" reutilizables para mantener consistencia visual entre tomas.

## Técnicas accionables

- **Planificación narrativa:** pegar en Claude este prompt: *"Create a detailed cinematic short film plan. Include: character list (age, build, face, wardrobe), locations, scene breakdown in exact generation order, dialogue, aesthetic direction, and color grading directions. Fill in brackets with my ideas: [personajes, locaciones, género, tono]"*.

- **Generación de character sheets (Higgsfield → Cinema Studio):** seleccionar modo *Image*, modelo *GPT Image 2*, aspect ratio *16:9*, calidad *High*. Prompt para personaje masculino: *"A three-part character sheet of our main male character. He's standing in two different poses, one from the front and one from the back. And right next to them, a detailed close-up of his face."* Repetir con descripción femenina.

- **Guardar personajes como elementos reutilizables:** tras generar, hacer clic en *Save as Element*, asignar nombre. Luego invocar con *@nombre* en cualquier prompt futuro.

- **Generación de locación:** mismo modelo y ajustes, prompt: *"A very dark and misty park at night, cinematic"*.

- **Composición de escena (image-to-image):** generar primera imagen del personaje en la locación con prompt: *"He's sitting alone on one side of the bench with his coffee held in both hands. The lamp post is right behind him, and the rest of the bench is empty."* Para añadir segundo personaje, usar la imagen generada como referencia y prompt: *"[descripción de la segunda persona añadida a la escena]"*.

- **Color grading pre-video:** abrir panel *Color Grading* en Higgsfield, seleccionar preset *Black and White Film*, mantener *Film Grain* activado. Aplicar el mismo grade a todas las imágenes de referencia antes de generar video.

- **Configuración de cámara para video (Cinema Studio → Video mode):**
  - Cámara: *Film*
  - Lente: *Anamorphic 35mm*
  - Apertura: *F 1.4*
  - Género: *Noir*
  - Aspect ratio: *21:9* (ultra-wide cinematográfico)

- **Estructuración de prompts en JSON:** usar herramienta gratuita *videoprompt.studio* para convertir cada prompt de texto plano a JSON antes de pegarlo en el generador.

- **Generación de video:** cargar las imágenes con color grading como referencia, pegar el JSON prompt, ajustar duración por toma.

- **Edición en CapCut:** importar los 3 videos, ordenar en timeline, recortar frames donde el personaje "toma el camino equivocado" o aparecen objetos sin explicación (ej: taza de café sin que se vea colocarla).

- **Upscaling a 4K con Topaz Video AI:** modelo *Starlight Precise* (especializado para video generado por IA), frame rate *30 fps* (no 60 fps, que da aspecto de transmisión en vivo).

## Reglas para el erudito

- Usa Claude para planificar toda la narrativa (personajes, locaciones, diálogos, orden de escenas, dirección de color) antes de abrir cualquier generador.
- Guarda cada personaje como "elemento" con nombre en Higgsfield inmediatamente después de generarlo; invócalo con @nombre en todos los prompts futuros para mantener consistencia.
- Genera la locación por separado de los personajes, luego combínalos en una sola imagen antes de animar.
- Aplica el color grading (blanco y negro, grano) a las imágenes de referencia antes de generar video, no en el prompt de video.
- Usa aspect ratio 21:9 y apertura F 1.4 con lente anamórfica 35mm para lograr look cinematográfico.
- Convierte cada prompt a JSON usando videoprompt.studio antes de pegarlo en el generador de video.
- Mantén el frame rate final en 30 fps; no subas a 60 fps.
- Usa el modelo Starlight Precise de Topaz Video AI para upscaling de video generado por IA.

## Errores comunes / limitaciones que menciona

- Saltar directamente a generar videos sin planificar la historia produce clips desconectados, personajes incorrectos en escenas equivocadas, diálogos que no coinciden y locaciones inconsistentes.
- Los modelos de IA siempre cometen pequeños errores (ej: personaje toma el camino equivocado y desaparece, objetos aparecen sin explicación). No se pueden evitar; deben corregirse en edición recortando frames.
- Subir el frame rate a 60 fps arruina el look cinematográfico y da aspecto de transmisión en vivo o deportiva.
- Confiar en escribir "blanco y negro" en el prompt de video es menos fiable que aplicar el color grading directamente a las imágenes de referencia antes de generar el movimiento.