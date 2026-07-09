# gpt-image / Generación de Imágenes de OpenAI-ChatGPT

## que_ensena
Guía completa para generar, editar y combinar imágenes usando los modelos gpt-image-1 y GPT Image 1.5 integrados en ChatGPT y su API. Cubre desde la configuración básica en Python hasta técnicas avanzadas de prompting con fórmula de 6 componentes, edición localizada con máscaras, transferencia de estilo, consistencia de personajes, y uso de la interfaz nativa de ChatGPT para cuentas gratuitas y de pago.

## reglas_para_agentes
- Usa `model="gpt-image-1"` explícitamente en todas las llamadas de generación/edición de imágenes en la API; nunca uses el modelo por defecto.
- Aplica la fórmula de 6 componentes en todo prompt: Sujeto + Acción + Entorno + Estilo + Iluminación + Detalles; omitir uno degrada el resultado.
- Especifica `aspect ratio 16 to 9` (o la relación deseada) como primera línea del prompt para fijar la estructura visual desde el inicio.
- Para inpainting, genera siempre una máscara PNG con canal alfa, mismo formato y tamaño que la imagen original; el área blanca se modificará, el área negra se preservará.
- Cuando combines imágenes en la API, pasa el parámetro `image` como lista de objetos binarios (archivos abiertos en modo "rb").
- Usa `moderation: "auto"` por defecto; usa `moderation: "low"` solo cuando el caso de uso requiera menos restricciones de filtrado.
- Especifica `quality: "low"` para prototipos rápidos y `quality: "high"` para producción profesional; el costo varía según la calidad.
- Usa `aspect_ratio: "square"` por defecto a menos que se requiera `portrait` o `landscape`.
- En retratos, incluye "sharp focus on the face" para evitar que todo el encuadre salga nítido.
- En fotografía de producto sobre fondo blanco, añade "no shadows" para eliminar sombras amateurs.
- En ediciones de imagen, incluye SIEMPRE "natural lighting consistent with the subject" para evitar que el sujeto parezca pegado.
- Para consistencia de personajes, sube una imagen de referencia y usa "match the likeness and style of the uploaded reference image".
- Limita el texto generado a títulos o frases cortas (1-2 párrafos máximo); no intentes párrafos completos o diseños con múltiples tamaños de fuente.
- Nunca reutilices el mismo chat para múltiples generaciones de imágenes; abre un nuevo chat por cada imagen para evitar contaminación de contexto.
- Verifica la cuenta con ID antes de intentar usar la API gpt-image-1, o recibirás errores de acceso; el proceso toma ~30 minutos.
- Usa GPT-4o como modelo en ChatGPT antes de intentar generar o editar imágenes.
- Para transferencia de estilo, primero pide a ChatGPT que describa en detalle la imagen de referencia, luego usa esa descripción como prompt.
- En fotos grupales, usa "all faces in sharp focus" y "distinct facial features, realistic skin tones, varied expressions" para evitar caras similares.
- Para catálogos e-commerce, añade "maintain the exact same product design, color, and dimensions across all variations" para consistencia entre imágenes.
- Cuando edites solo una parte de la imagen en la interfaz nativa, activa `select area` y delimita exactamente la zona azul que debe modificarse; el resto permanece intacto.

## errores_comunes
- **Safety restrictions:** El modelo rechaza prompts que considera inapropiados (ej: "image that is embarrassing to show off"); usar prompts más neutrales como "my room that is messy" funciona.
- **Costo inesperado:** El precio depende de la calidad seleccionada y el número de imágenes; el playground incurre en costos reales de API, no es gratuito.
- **Máscara incorrecta:** Para inpainting, la máscara debe ser un PNG con canal alfa del mismo tamaño que la imagen original; usar PIL/Pillow para generarla programáticamente.
- **Olvidar verificación:** No se puede usar gpt-image-1 sin verificar la identidad primero; el proceso es rápido (~30 min) pero obligatorio.
- **Prompt vago:** Escribir "portrait of a woman" da resultados genéricos; usar los 6 componentes da resultados profesionales.
- **Falta de enfoque:** No especificar "sharp focus on the face" hace que GPT Image 1.5 intente enfocar todo, perdiendo el efecto profesional.
- **Texto ilegible:** Intentar generar párrafos largos o múltiples tamaños de fuente causa errores; limitar a títulos o frases cortas.
- **Deriva de personaje:** Sin imagen de referencia, el personaje cambia entre escenas; subir referencia y añadir "exact same facial features" corrige la deriva.
- **Baja resolución por defecto:** El modelo genera imágenes con resolución sorprendentemente baja; el mercado se mueve hacia mayor fidelidad pero esto no se ha priorizado.
- **Tiempo de generación lento:** Aunque OpenAI afirma que es 4 veces más rápido, en pruebas reales toma ~58 segundos por imagen, independientemente del método.
- **Consistencia visual:** El modelo no mantiene consistencia para personajes recurrentes o elementos de marca entre múltiples generaciones; usa inpainting para refinar.
- **No especificar dimensiones:** No especificar dimensiones obliga a editar la imagen después para ajustarla al formato deseado.

## fuentes_videos
- OpenAI gpt-image-1 API - Build AMAZING AI Image Apps: Here's How — https://youtu.be/t7nlRXpXBXw
- OpenAI's New GPT Image Model API in 5 Minutes 📸 — https://youtu.be/k-G71JZA75A
- GPT Image 1.5 Full Beginner Tutorial – Interface, Editor & Tricks — https://youtu.be/6H-Y-aOqVns
- ULTIMATE GPT IMAGE 1.5 TUTORIAL: 15 PROMPT TECHNIQUES — https://youtu.be/QT1nMo-QMDQ
- How to Make & Edit Images with ChatGPT for Beginners — https://youtu.be/JKQCWSVqNYc
- How to Make Images with ChatGPT for Beginners — https://youtu.be/bocO2GIPAdc
- How To Generate Images With ChatGPT (Create AI Art with Chat GPT) — https://youtu.be/ULW9bgSYIrw