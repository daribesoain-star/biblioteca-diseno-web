# How To Use Elevenlabs - Master This AI Voice Generator in 23 minutes!
**Fuente:** eh-elevenlabs-audio | https://youtu.be/s7p6OLwV_50
## Qué enseña (2-3 líneas)
Guía completa para usar ElevenLabs al máximo: desde selección de voces únicas en la librería, diseño de voces personalizadas mediante prompts, clonación instantánea y profesional, hasta ajustes finos de parámetros (velocidad, estabilidad, similitud, estilo) y herramientas avanzadas como cambiador de voz, aislador de voz, efectos de sonido, estudio de doblaje y creación de audiolibros.

## Lecciones accionables
- **Registro y plan:** Usa el enlace de afiliado para obtener 10,000 créditos gratis. Para clonación profesional y funciones avanzadas, el plan Creator es necesario; el plan gratuito no incluye voice cloning.
- **Selección de voces únicas en Voice Library:** Ve a `Voices > Voice Library`. Filtra por `Trending > Latest`, selecciona idioma. Evita voces sobreusadas (como "Adam"). Ejemplos de voces recomendadas: "Ivy Premium", "Aaron", "Alex". Haz clic en `Add` para guardarlas.
- **Diseño de voz personalizada (Voice Design):** Ve a `Voices > Voice Design`. Incluye en el prompt tres factores obligatorios: edad, nacionalidad y género. Ejemplo de prompt: *"A middle-aged American with a soft, high voice, conversational, quick, and cheerful."* Opcional: añade tono, pitch, entonación, velocidad y emoción. Usa `Randomize` para explorar. Mantén settings en default (loudness, quality, guidance scale). ElevenLabs genera 3 opciones; selecciona la mejor, nómbrala (ej. "Karen, middle-aged female, American"), añade etiqueta de idioma y descripción, guarda.
- **Clonación instantánea de voz:** Ve a `Voices > Voice Cloning > Instant Voice Clone`. Sube 30 segundos de audio o graba directamente. Nombra el clon. Luego en `Text to Speech`, selecciona esa voz en el menú desplegable.
- **Clonación profesional de voz:** Ve a `Voices > Voice Cloning > Professional Voice Clone`. Requiere plan Creator. Usa micrófono XLR con interfaz de audio, filtro pop, sala tratada acústicamente, grabación sin ruido. Sube 30 minutos de voz de alta calidad. Sigue el video instructivo dentro de la herramienta.
- **Ajustes en Text to Speech:** Selecciona modelo `11labs V2`. Parámetros clave:
  - **Speed:** Valor recomendado: 1 o ligeramente más rápido.
  - **Stability:** Por debajo de 30% → más emocional pero inestable. 50% → normal. 90% → robótico. Recomendación: experimentar, evitar extremos.
  - **Similarity:** Default 75%. Bajo (5%) → menos parecido a la voz original. Alto (100%) → más parecido pero puede sonar entrecortado. Recomendación: dejar margen, no al 100%.
  - **Style Exaggeration:** Default 0%. A mayor valor, más se amplifican acento, tono, pausas y pronunciación. Recomendación: experimentar según la voz.
  - **Speaker Boost:** Activar siempre. Mejora la calidad aunque tarda más en generar.
- **Control de pausas en el texto:** Tres métodos:
  1. `<break time="1.5s"/>` → pausa de duración específica (ej. 1.5 segundos).
  2. `[break]` → pausa corta.
  3. `...` o `—` (tres puntos o raya) → pausa natural. Regenerar varias veces hasta obtener el resultado deseado.
- **Control de emoción con dialogue tags:** Añade etiquetas como `he claimed excitedly` al final de la línea. Ejemplo: *"I am the best," he exclaimed.* Luego elimina manualmente la etiqueta del audio final.
- **Voice Changer (speech-to-speech):** Ve a `Voice Changer`. Selecciona micrófono de alta calidad. Graba tu voz con la emoción deseada. Selecciona la voz destino (ej. Arabella). Ajusta stability y similarity si suena extraño. Genera. Ideal para controlar tono y emoción.
- **Voice Isolator:** Ve a `Audio Tools > Voice Isolator`. Sube archivo o graba audio. Elimina ruido de fondo (ej. cadenas de motosierra, entornos ruidosos). Funciona incluso con micrófono de laptop.
- **Sound Effects:** Ve a `Sound Effects`. Usa prompts descriptivos como `"cat purring loudly"`, `"truck reversing"`, `"mopping a floor"`, `"alien spacecraft taking off"`. Genera 4 muestras; selecciona la mejor.
- **Studio para audiolibros:** Ve a `Studio`. Sube archivo de contenido (PDF, TXT). Selecciona voz (ej. "Declan - storyteller"). Settings default. Crea. El costo es ~60 segundos de procesamiento. Comparación: en Fiverr cuesta ~$35 por 1000 palabras.
- **Studio para videos narrativos:** Sube transcripción. Selecciona voz. Genera y superpone sobre video. Ejemplo: canales de creepy pasta.
- **Voice Over Studio (multipista):** Ve a `Audio Tools > Voice Over Studio`. Importa clips. Añade pistas de voz (texto a voz) y SFX en la línea de tiempo. Usa voice-to-voice para modificar tono. Todo generado con IA.
- **Dubbing (doblaje multilingüe):** Ve a `Dubbing`. Crea nuevo proyecto. Idioma origen (ej. inglés). Idiomas destino (múltiples). Sube video o usa URL de YouTube. Ajusta número de hablantes, duración, desactiva voice clone si necesario. El sistema detecta texto, traduce y dobla manteniendo la voz original en otro idioma. Ejemplos: español, hindi, chino.
- **Planes recomendados:** Creator para funciones completas. Pro o Scale para canales con muchos videos. Usa enlace de afiliado para 10K créditos gratis.

## Reglas para agentes
- Usa el modelo `11labs V2` siempre que generes texto a voz para máxima calidad.
- Activa `Speaker Boost` en toda generación de voz; mejora significativamente el resultado aunque aumente el tiempo de procesamiento.
- Incluye edad, nacionalidad y género en todo prompt de diseño de voz personalizada; omítelos solo si usas voces predefinidas.
- Mantén `Stability` entre 30% y 70% para equilibrio entre emoción y estabilidad; nunca uses valores extremos (<30% o >90%) sin probar antes.
- Usa `Similarity` al 75% por defecto; solo ajústalo si el clon suena muy distinto o muy glitchy.
- Usa `Style Exaggeration` al 0% inicialmente; increméntalo solo si necesitas amplificar acentos o patrones de habla específicos.
- Para pausas, prefiere `<break time="Xs"/>` cuando necesites duración exacta; usa `...` o `[break]` para pausas naturales y cortas.
- Elimina manualmente las `dialogue tags` (ej. "he exclaimed") del audio final después de generar la emoción deseada.
- Usa `Voice Changer` en lugar de `Text to Speech` cuando necesites control preciso de emoción y tono.
- Usa `Voice Isolator` antes de cualquier otra herramienta si el audio de entrada tiene ruido de fondo.
- Para doblaje, verifica manualmente la traducción generada antes de exportar; el sistema puede tener errores.
- Nunca subas audio de baja calidad (<30 segundos para instant clone, <30 minutos para professional clone); la calidad del clon depende directamente de la calidad de la muestra.

## Errores comunes que evita o menciona
- **Usar voces populares sobreusadas:** Evita voces como "Adam" que aparecen en miles de canales; filtra por `Latest` para encontrar voces únicas.
- **No incluir los tres factores en prompts de diseño:** Olvidar edad, nacionalidad o género produce voces genéricas y poco controlables.
- **Poner Stability por debajo de 30% sin probar:** Genera inestabilidad y sonidos no deseados (ej. "uh", énfasis extraños).
- **Poner Similarity al 100%:** Puede sonar glitchy y entrecortado; dejar margen (75% es el default recomendado).
- **No activar Speaker Boost:** Reduce la calidad de la voz generada.
- **Usar solo texto plano sin pausas ni emociones:** Resulta en voces monótonas y robóticas; usar breaks y dialogue tags.
- **No regenerar el audio varias veces:** A veces la misma configuración da resultados diferentes; regenerar hasta obtener el mejor.
- **Dejar las dialogue tags en el audio final:** Hay que recortarlas manualmente; olvidarlo arruina la naturalidad.
- **Usar micrófono de baja calidad para clonación profesional:** Recomiendan XLR con interfaz, pop filter y sala tratada; de lo contrario el clon suena mal.
- **Ignorar el Voice Isolator en entornos ruidosos:** Incluso con micrófono de laptop, elimina ruido de fondo eficazmente.
- **No verificar traducciones en Dubbing:** El sistema puede traducir incorrectamente; revisar antes de publicar.
- **Usar el plan gratuito esperando clonación de voz:** No incluye voice cloning; necesario plan Creator.