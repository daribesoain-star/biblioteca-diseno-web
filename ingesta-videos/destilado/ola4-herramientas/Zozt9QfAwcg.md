# The Only ElevenLabs Tutorial You'll Need (2026) [elevenlabs]
**Fuente:** ola4-herramientas | https://youtu.be/Zozt9QfAwcg

## Qué enseña (2-3 líneas)
Tutorial completo de la plataforma ElevenLabs: desde texto a voz, clonación y diseño de voces, hasta generación de efectos de sonido y música. Cubre navegación del dashboard, parámetros de modelos V2/V3, uso de expresiones con brackets, voice changer, voice isolator, y el estudio de proyectos.

## Lecciones accionables
- **Selección de plan:** empezar con Starter ($5/mes, 30,000 créditos) o Creator ($22/mes, 100,000 créditos, 120k BPS, 10 slots de voz). El plan gratuito es muy limitado.
- **Navegación principal:** ir a "Text to Speech" desde el panel izquierdo para la funcionalidad principal.
- **Selección de voz:** en el desplegable de voces, las que tienen checkmark son "professional voice clones" y ocupan 1 de tus 10 slots. Las "default voices" (Liam, Chris, Harry, Jessica) no ocupan slots.
- **Modelos de voz:**
  - **V3 (11 V3):** permite control de expresiones con brackets. No tiene control de velocidad.
  - **V2:** permite ajustar velocidad, estabilidad, similitud. Usar V2 si la voz en V3 habla demasiado lento.
  - **V2.5:** 50% más barato, para presupuestos ajustados.
- **Parámetros recomendados (V2):** estabilidad al 50% (más estable = más monótono; menos estable = más humano pero errático). Velocidad: aumentar solo 0.1 o 0.2, más suena antinatural. Style exaggeration: se puede subir ligeramente.
- **Uso de expresiones con brackets (V3):** escribir `[whispers]` o `[excited]` dentro del texto para dirigir la entonación. Ejemplo: `[whispers] We can listen to all I have to say, but you must listen carefully. [clears throat] [excited] I can't wait to tell you my story.`
- **Botón "Enhance alpha":** en V3, analiza todo el texto y sugiere expresiones automáticas (thoughtful, long pause, short pause, sigh, whisper). Útil para no dirigir manualmente cada línea.
- **Descarga inmediata:** antes de regenerar, descargar el audio deseado. Si se pierde, ir a "History" y buscar por fecha.
- **Añadir segundo speaker:** botón "Add speaker" en text to speech. Al regenerar, TODO el contenido del documento se regenera. Borrar líneas anteriores antes de generar nuevas para evitar duplicados.
- **Voice Changer:** arrastrar archivo MP4 o MP3. Seleccionar voz destino, modelo "multilingual v2". La entonación y timing originales se mantienen. Ideal para reemplazar voces en videos AI (ej. Google V3, Kling 2.6).
- **Voice Design (crear voz desde texto):** botón "Create or clone a voice" → "Voice design". Prompt mínimo: acento, género, edad. Ejemplo: `Old British man, sounds like Morgan Freeman, 65 years old, raspier voice`. Incluir al menos 3 descriptores. 350 créditos por generación. Da 3 opciones. No hay historial de voces diseñadas.
- **Parámetros en Voice Design:** "Guidance scale" controla qué tan fiel es la AI al prompt. Dejar en medio. "Volume" no tocarlo.
- **Instant Clone:** subir audio de al menos 10 segundos. Tarda ~2 minutos. Se puede regenerar si no gusta el resultado.
- **Voice Remixing:** subir voz existente y añadir prompt como "make the voice raspier" o "more friendly".
- **Voice Isolator:** subir archivo con música/ruido de fondo. Aísla la voz. Ejemplo: 30 segundos cuestan ~500 créditos.
- **Sound Effects:** pestaña "Sound effects". Categorías predefinidas (booms, heartbeat, etc.) o generar desde texto. Ejemplo de prompt: `cinematic thud for dramatic effect`. Opciones: loop (se reproduce en ciclo), duración (auto o manual), adherence al prompt (dejar en 30%). 200 créditos por generación. Guardar en "Favorites" para reuso.
- **Soundboard:** cargar múltiples efectos para uso en vivo/DJ. Editar modo y añadir desde prompt.
- **Music Tab:** similar a Sunno AI. Pestaña "Compose". Prompt ejemplo: `upbeat swing tune featuring lively saxophone line`. Duración: auto o específica (ej. 30 segundos). Opciones: instrumental only, auto (puede generar letras), custom (escribir letras exactas). Créditos: ~1,350 mínimo, varía según duración y variantes. Más variantes = más créditos.
- **Studio:** para organizar proyectos (YouTube channel 1, audiobook, clientes). Mismas herramientas (text to speech, voice isolator, AI soundtrack) pero en interfaz tipo software. Crear "New blank project".
- **Templates:** sección nueva que combina múltiples modelos AI (visual + audio). Pre-tuned prompts para lip sync y contenido generativo.

## Reglas para agentes
- Usa V3 cuando necesites control de expresiones con brackets; usa V2 cuando necesites ajustar velocidad.
- Nunca aumentes la velocidad más de 0.2 en V2, o sonará antinatural.
- Deja la estabilidad en 50% siempre; no la muevas a menos que busques un efecto específico.
- Descarga el audio inmediatamente después de generarlo; no confíes en el historial para recuperarlo después de muchas generaciones.
- Borra el texto anterior antes de generar una nueva línea si quieres evitar duplicados al regenerar.
- Usa "multilingual v2" como modelo en Voice Changer; no toques los otros parámetros.
- Incluye al menos tres descriptores (acento, género, edad) al diseñar una voz desde texto.
- No intentes clonar voces de celebridades; el sistema lo detecta y lo bloquea.
- No elimines voces diseñadas desde texto (text prompt) porque son difíciles de recuperar; solo elimina voces con checkmark (professional voice clones) que están en la biblioteca de ElevenLabs.
- Usa "instrumental only" en Music si no quieres riesgo de que genere letras automáticas.
- Guarda en "Favorites" los sound effects que uses frecuentemente para acceso rápido.

## Errores comunes que evita o menciona
- No usar el plan gratuito: es muy limitado y frustrante; mejor empezar con Starter ($5/mes).
- Olvidar descargar el audio antes de regenerar: se pierde la generación anterior. Usar "History" como respaldo solo si no se ha generado mucho después.
- Regenerar sin borrar líneas anteriores cuando se añade un segundo speaker: duplica todo el contenido.
- Aumentar la velocidad más de 0.2 en V2: suena antinatural.
- Mover estabilidad lejos de 50%: demasiado estable suena monótono, demasiado inestable suena errático.
- Intentar clonar voces de figuras públicas: el sistema bloquea la clonación.
- Eliminar voces diseñadas desde texto: son difíciles o imposibles de recrear exactamente.
- Usar Voice Design sin incluir al menos acento, género y edad: el resultado será impreciso.
- No seleccionar "instrumental only" en Music cuando se quiere música sin letra: el sistema puede generar letras automáticas.
- Confiar en que el historial de voces diseñadas guarde las opciones previas: no hay historial, una vez que se regenera se pierden las opciones anteriores.