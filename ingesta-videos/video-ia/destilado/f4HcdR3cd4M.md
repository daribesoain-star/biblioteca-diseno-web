# Consistent Character Sheets in Nano Banana (Prompts Included!)
**Fuente:** AI Video School | https://youtu.be/f4HcdR3cd4M

## Qué enseña (2-3 líneas)
Cómo generar una hoja de referencia de personaje consistente a partir de una sola foto usando Nano Banana, y luego emplear esa hoja como ingrediente (element/reference) para crear imágenes y videos con el mismo personaje, incluso cambiando su vestimenta o teniendo múltiples personajes en una escena.

## Técnicas accionables
- **Modelo usado:** Nano Banana (plataforma de generación de imágenes y video con soporte de "ingredients" o "elements" o "references").
- **Estructura de prompt para crear la hoja de referencia (VERBATIM):** El creador pega el prompt directamente desde la descripción del video. No se transcribe el prompt exacto en el video, pero se muestra que se usa en la sección "Create Image" de Nano Banana.
- **Parámetros para la hoja de referencia:**
  - Modo: "Create Image"
  - Relación de aspecto: 16:9
  - Outputs: 2 (elige la que mejor muestre al personaje en primer plano)
  - Se añade la foto original como "reference image" (clic en "+")
  - Se pega el prompt de la descripción
- **Proceso para generar una imagen de inicio (start image) con el personaje:**
  - En Nano Banana, añadir la hoja de referencia como "reference sheet"
  - Añadir un prompt descriptivo (ejemplo: "stand and spin completely around")
  - Configurar en modo "ingredients to video"
- **Proceso para generar video con personaje consistente:**
  - Usar la imagen de inicio (start image) generada
  - Añadir la hoja de referencia como ingrediente adicional (aunque ya se tenga la start image)
  - Prompt de ejemplo: "stand and then spin completely around"
  - Modo: "ingredients to video"
- **Técnica para múltiples personajes en una escena:**
  - Subir ambas hojas de referencia como ingredientes
  - Prompt de ejemplo: "Thanks for agreeing to be on my podcast. It's my first one from outer space. Happy to help. It's my first podcast."
- **Truco de consistencia:** Incluir SIEMPRE la hoja de referencia como ingrediente en cada generación de video, incluso si ya se tiene una start image generada a partir de ella.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa Nano Banana en modo "Create Image" con relación 16:9 cuando generes la hoja de referencia a partir de una foto.
- Usa la hoja de referencia como ingrediente (element/reference) en TODAS las generaciones de video, incluso si ya tienes una start image derivada de ella.
- Usa el modo "ingredients to video" cuando combines la start image con la hoja de referencia para generar video.
- Usa dos hojas de referencia como ingredientes separados cuando necesites dos personajes consistentes en una misma escena.

## Errores comunes / limitaciones que menciona
- No menciona errores explícitos, pero la técnica depende de que el generador soporte "ingredients", "elements" o "references" (no todos los generadores lo hacen).
- La hoja de referencia debe mostrar al personaje en primer plano y con buena visibilidad frontal para que funcione mejor en planos abiertos.
- No se especifica compatibilidad con otros modelos (Veo/Kling/Seedance/Runway/Sora/Wan/Hailuo); solo se demuestra en Nano Banana.