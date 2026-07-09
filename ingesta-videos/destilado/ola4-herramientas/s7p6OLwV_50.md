# How To Use Elevenlabs - Master This AI Voice Generator in 23 minutes! [elevenlabs]
**Fuente:** ola4-herramientas | https://youtu.be/s7p6OLwV_50

## Qué enseña
Guía completa para usar Elevenlabs: desde la selección de voces predefinidas y diseño de voces personalizadas hasta clonación de voz (instantánea y profesional), ajuste de parámetros de generación (estabilidad, similitud, estilo), técnicas de prompting para pausas y emociones, y herramientas avanzadas como voice changer, voice isolator, sound effects, studio, voice over studio y dubbing multilingüe.

## Lecciones accionables
- **Registro y plan:** Usar el enlace de afiliado para obtener 10,000 créditos gratis; recomienda el plan Creator para acceder a clonación de voz y funciones avanzadas.
- **Voice Library - encontrar voces únicas:** Ir a "Voices" > "Voice Library". Para evitar voces sobreusadas, hacer clic en "Trending" > ordenar por "Latest", seleccionar idioma. Ejemplos de voces recomendadas: "Ivy Premium", "Aaron", "Alex". Añadir la voz con el botón "Add".
- **Voice Design - crear voz personalizada:** Ir a "Voices" > "Voice Design". Prompt debe incluir: edad, nacionalidad y género. Ejemplo de prompt: *"A middle-aged American with a soft, high voice, conversational, quick, and cheerful"*. Parámetros: Loudness, Quality, Guidance Scale (recomienda dejar en default). Elevenlabs genera 3 opciones; seleccionar la mejor, nombrarla, asignar idioma y descripción, guardar.
- **Voice Cloning - Instantánea:** Ir a "Voices" > "Voice Cloning" > "Instant Voice Clone". Subir 30 segundos de audio o grabar directamente. Nombrar la voz. Luego en "Text to Speech" seleccionarla de la lista.
- **Voice Cloning - Profesional:** Requiere plan Creator. Ir a "Professional Voice Clone". Requisitos: micrófono XLR con interfaz de audio, filtro pop, sala tratada acústicamente, grabación libre de ruido. Subir 30 minutos de voz de alta calidad (más datos = mejor clon).
- **Text to Speech - parámetros clave:** Seleccionar modelo "Elevenlabs V2" para mayor calidad. Ajustes:
  - **Speed:** Valor 1 o ligeramente más rápido es óptimo.
  - **Stability:** Por debajo de 30% = más emocional pero inestable; 50% = normal; 90%+ = robótico.
  - **Similarity:** Default 75%. Bajo (5%) = menos parecido a la voz original; alto (100%) = más parecido pero puede sonar entrecortado.
  - **Style Exaggeration:** Default 0%. A mayor valor, más se amplifica acento, tono, pausas y pronunciación. Recomienda experimentar.
  - **Speaker Boost:** Mantener activado. Tarda más en generar pero mejora la calidad.
- **Pausas en texto:** Tres métodos:
  1. `<break time="1.5s" />` - pausa de duración específica.
  2. `[break]` - pausa corta.
  3. `...` o `—` (tres puntos o raya) - pausa natural. Regenerar varias veces hasta obtener el resultado deseado.
- **Emoción con dialogue tags:** Añadir etiquetas como *"he claimed excitedly"* al final del texto. Ejemplo: *"I am the best. He exclaimed."* Nota: hay que eliminar manualmente la etiqueta del audio final.
- **Voice Changer (speech-to-speech):** Ir a "Voice Changer". Seleccionar equipo de grabación (mejor micrófono disponible). Grabar audio con la emoción deseada. Ajustar Stability y Similarity si suena extraño. Genera la voz seleccionada con la entonación de la grabación.
- **Voice Isolator:** Ir a "Audio Tools" > "Voice Isolator". Subir archivo o grabar audio. Elimina ruido de fondo (ej: sierras, tráfico). Funciona incluso con micrófono de laptop.
- **Sound Effects:** Ir a "Sound Effect". Usar prompt descriptivo. Ejemplo: *"cat purring loudly"*, *"truck reversing"*, *"alien spacecraft taking off"*. Genera 4 muestras.
- **Studio - crear audiolibro:** Ir a "Studio". Subir archivo de contenido (PDF). Seleccionar voz (ej: "Declan - storyteller"). Dejar settings en default. Crear. Ejemplo de costo: en Fiverr $35/1000 palabras; en Elevenlabs toma ~60 segundos.
- **Studio - video storytelling:** Subir transcripción, seleccionar voz, superponer con visuales. Útil para canales de narrativa.
- **Voice Over Studio:** Ir a "Audio Tools" > "Voice Over Studio". Crear nuevo proyecto. Importar clips. Añadir tracks (SFX o voz). Escribir guion en timeline. Usar voice-to-voice para control fino.
- **Dubbing:** Ir a "Dubbing". Crear nuevo proyecto. Idioma origen (ej: inglés), idioma(s) destino (múltiples permitidos). Subir footage o usar video de YouTube. Configurar número de hablantes, duración, opción de desactivar voice clone. Detecta texto, traduce y dobla manteniendo la voz original en otro idioma.
- **Planes:** Free (10K créditos con enlace), Creator (recomendado para funciones completas), Pro o Scale (para canales con muchos videos).

## Reglas para agentes
- Usa el modelo "Elevenlabs V2" siempre que generes texto a voz para máxima calidad.
- Mantén "Speaker Boost" activado en todas las generaciones de texto a voz.
- Incluye edad, nacionalidad y género en todo prompt de diseño de voz personalizada.
- Usa `<break time="1.5s" />` para pausas largas y `[break]` para pausas cortas en el texto.
- Nunca uses voces de la sección "Most Users" o "Most Characters Generated" si buscas originalidad; filtra por "Latest" en su lugar.
- No pongas Stability por debajo de 30% a menos que busques intencionalmente inestabilidad emocional.
- No pongas Similarity al 100% en voces clonadas porque puede sonar entrecortado o glitchy.
- Para clonación profesional, usa siempre micrófono XLR con interfaz, filtro pop y sala tratada acústicamente.
- Elimina manualmente las dialogue tags (ej: "he exclaimed") del audio final después de generar.
- Regenera el audio varias veces cuando uses pausas con `...` o `—` hasta obtener el resultado deseado.

## Errores comunes que evita o menciona
- Usar voces populares y sobreusadas (como "Adam") que suenan a "TikTok voice" genérica; en su lugar buscar voces en "Latest".
- No incluir edad, nacionalidad y género en el prompt de Voice Design, lo que produce voces genéricas.
- Subir audio de baja calidad para clonación instantánea (menos de 30 segundos o con ruido).
- Usar micrófono de baja calidad o sin tratamiento acústico para clonación profesional.
- Dejar Stability muy alto (90%+) produce voz robótica.
- Poner Similarity al 100% genera voz glitchy o entrecortada.
- No usar Speaker Boost, perdiendo calidad en la generación.
- Dumpiar el script sin usar técnicas de prompting para pausas y emociones, perdiendo control sobre la entonación.
- No regenerar el audio múltiples veces cuando se usan pausas con `...` o `—`.
- Olvidar eliminar las dialogue tags (ej: "he exclaimed") del audio final después de generar emoción.
- No usar Voice Isolator cuando se graba en entornos ruidosos.