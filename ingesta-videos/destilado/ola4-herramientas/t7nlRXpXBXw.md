# OpenAI gpt-image-1 API - Build AMAZING AI Image Apps: Here's How [gptimage]
**Fuente:** ola4-herramientas | https://youtu.be/t7nlRXpXBXw

## Qué enseña
Cómo usar la API de OpenAI gpt-image-1 para generar, editar y combinar imágenes mediante código Python. Incluye la creación de una app de inpainting con máscaras personalizadas, generación desde texto, combinación de múltiples imágenes en una sola escena coherente, y edición localizada (reemplazar/eliminar elementos).

## Lecciones accionables
- **Configuración mínima para generar imagen desde texto (19 líneas de código):**
  ```python
  from openai import OpenAI
  client = OpenAI()
  response = client.images.generate(
      model="gpt-image-1",
      prompt="[tu prompt aquí]",
      n=1
  )
  # Guardar la imagen
  image_url = response.data[0].url
  ```
  Parámetros clave: `model="gpt-image-1"`, `prompt` (texto descriptivo), `n` (número de imágenes).

- **Combinar múltiples imágenes en una sola escena:**
  ```python
  response = client.images.generate(
      model="gpt-image-1",
      prompt="a photo of a woman streaming in her messy room with her friend. There's a poster of the AI company OpenAI on the wall",
      image=[open("girl.png", "rb"), open("messy_room.png", "rb"), open("charlie.png", "rb"), open("openai_logo.png", "rb")]
  )
  ```
  Usar el parámetro `image` como lista de archivos binarios. El modelo fusiona las imágenes respetando el prompt.

- **Inpainting con máscara (edición localizada):**
  1. Cargar imagen original con PIL/Pillow.
  2. Crear máscara binaria (blanco = área a editar, negro = área a preservar).
  3. Enviar a la API:
  ```python
  response = client.images.edit(
      model="gpt-image-1",
      image=open("original.png", "rb"),
      mask=open("mask.png", "rb"),
      prompt="Remove the necklace. Add a tattoo of a tiger on her arm. Remove the text on the microphone"
  )
  ```
  La máscara debe ser PNG con canal alfa o escala de grises.

- **Control de calidad/costo:** Seleccionar nivel de calidad afecta el conteo de tokens. Precio aproximado: $5 por 40 imágenes de entrada/salida (según demo). Costo real de prueba: ~$2-3 por 20-30 imágenes.

- **Verificación obligatoria:** Se requiere verificación de identidad (ID) para acceder al modelo gpt-image-1. El proceso toma ~30 minutos.

## Reglas para agentes
- Usa `model="gpt-image-1"` explícitamente en todas las llamadas de generación/edición de imágenes.
- Cuando combines imágenes, pasa el parámetro `image` como lista de objetos binarios (archivos abiertos en modo "rb").
- Para inpainting, genera siempre una máscara PNG donde el área blanca sea la que se modificará y el área negra la que se preservará.
- Nunca uses prompts que puedan violar restricciones de seguridad (el modelo rechaza contenido inapropiado con errores de safety restrictions).
- Si necesitas mantener el estilo/fuente original (ej: texto en logos), no especifiques cambios de fuente en el prompt; el modelo lo respeta automáticamente.
- Para resultados fotorrealistas, incluye "photo realistic" en el prompt cuando sea necesario.
- Verifica la cuenta con ID antes de intentar usar la API, o recibirás errores de acceso.

## Errores comunes que evita o menciona
- **Safety restrictions:** El modelo rechaza prompts que considera inapropiados (ej: "image that is embarrassing to show off" fue rechazado). Usar prompts más neutrales como "my room that is messy" funciona.
- **Costo inesperado:** El precio depende de la calidad seleccionada y el número de imágenes. Probar con configuraciones de calidad baja para desarrollo.
- **Máscara incorrecta:** Para inpainting, la máscara debe ser un PNG con formato correcto (blanco/negro). Usar PIL/Pillow para generarla programáticamente.
- **Olvidar verificación:** No se puede usar gpt-image-1 sin verificar la identidad primero. El proceso es rápido (~30 min) pero obligatorio.
- **No especificar modelo:** Usar el modelo por defecto en lugar de `gpt-image-1` no funcionará para las capacidades de edición/ combinación mostradas.