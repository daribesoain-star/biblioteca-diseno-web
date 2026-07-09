# Suno AI — Creación y producción musical completa con inteligencia artificial
## que_ensena
Este conjunto de tutoriales enseña a usar Suno AI para generar canciones completas (letra, voz y producción) desde nivel principiante hasta avanzado. Cubre los modos Simple y Custom, la escritura de prompts detallados de estilo, el uso de meta tags entre corchetes para control estructural, la subida de audio propio, la creación de Personas para consistencia vocal, y la edición profesional en Suno Studio con separación de stems, grabación de melodías personalizadas, paneo y mezcla.

## reglas_para_agentes
- Usa el modo **Simple** cuando el usuario quiera generar una canción rápidamente sin configurar parámetros; usa el modo **Custom** (o **Advanced**) cuando necesite control sobre letras, estilo, instrumentos o parámetros avanzados.
- En el campo "Style description" escribe el género, instrumentos y ambiente deseados; ejemplo exacto usado: `dreamy synth pop with ethereal female vocals, lush atmospheric pads, shimmering guitars, and a nostalgic 80s vibe`.
- Para generar letras automáticas, activa **"Auto"** en el campo de letras y escribe un tema como `chasing dreams under city lights and feeling alive in the moment`.
- Escribe **meta tags entre corchetes** dentro del campo de letras para instrucciones de producción y estructura; ejemplos exactos: `[verse one]`, `[chorus]`, `[bridge]`, `[outro]`, `[soft synth pads]`, `[gentle atmospheric build]`, `[verse one, whispered vocal delivery, minimal instrumentation]`, `[explosive chorus, soaring vocals, full production]`.
- Usa el **"magic wand"** en la caja de letras con dos opciones: "Edit lyrics" (modificar letras existentes escribiendo un tema como `a song about friendship` y luego "Enhance lyrics" con instrucciones como `make it happier`) o "Write full song" (generar canción completa automáticamente).
- Usa el **"magic wand"** en el style box para expandir una descripción genérica (ej. `emo`) a una descripción detallada de instrumentación y entrega vocal.
- Ajusta **Weirdness** a **50%** por defecto para resultados predecibles; súbelo si quieres que Suno tome más control creativo, bájalo para adherencia estricta al prompt. Nunca subas por encima de 80% sin advertir que los resultados serán caóticos.
- Ajusta **Style influence** a **50%** por defecto para equilibrio; súbelo a **75%** o **85%** si necesitas adherencia estricta al prompt, bájalo para dar más libertad a Suno.
- Activa **"Instrumental"** solo si el usuario explícitamente quiere una canción sin voces.
- Cuando subas audio propio, usa **Cover mode** para reimaginar el estilo y **Extend mode** para alargar la pieza; ajusta el slider **audio influence** al **70%** para balance entre fidelidad y creatividad.
- Para crear un **Cover**, selecciona "Cover" desde el menú de tres puntos de una canción; ajusta el slider "Audio influence" más alto para que el cover se parezca más al audio original, y el slider de estilo "pelea" con este.
- Crea una **Persona** a partir de una canción que te guste: haz clic en "persona" > "create new persona", selecciona una canción generada, nómbrala y escribe una descripción como `ethereal female vocals with dreamy reverb and emotional delivery`.
- En **Suno Studio**, usa `Command + Shift + S` para aislar (solo) una pista y `Command + Shift + M` para silenciarla; usa `Command + E` para dividir un clip en dos partes; mantén presionada `Command` mientras arrastras un clip para desactivar el ajuste a la cuadrícula.
- Al grabar audio en Studio, usa siempre **auriculares (headphones)** para evitar que el micrófono capte música de los altavoces.
- **Incluye siempre el BPM** en el style box cuando añadas capas en Studio (ej: `93 BPM heavy rock guitar lead`) para que el AI genere a la misma velocidad que el proyecto original.
- Para generar un nuevo instrumento basado en una grabación vocal en Studio, arrastra la región seleccionada al formulario de creación y escribe un prompt descriptivo del instrumento deseado (ej. `solo trumpet, brass, drum and bass`).
- Formatea las letras **cada frase en su propia línea con comas** para controlar pausas y ritmo vocal; evita líneas continuas sin saltos.
- Usa **V5** como modelo predeterminado para mejor calidad general; usa **V3** solo cuando busques sonidos de trap agresivo.
- Usa **Workspace** para organizar proyectos: crea workspaces separados por género o proyecto haciendo clic en el nombre del workspace > "create workspace".
- En el **Editor** (Pro Plan), usa `Control + D` para duplicar secciones; arrastra bloques de sección para reordenar estructura; haz clic en una sección > "replace lyrics" para reemplazar letras sin regenerar toda la canción.
- Descarga **stems** (vocals, drums, bass, synths) desde el menú de tres puntos > "get stems/MIDI" > "get all the stems separated" para llevar la canción a un DAW.
- **Aplica paneo** en Studio para evitar sonido embarrado: instrumentos principales ligeramente a izquierda/derecha, vocales al centro.
- Usa **"Keep current lyrics"** al remixar si no quieres cambiar la letra existente.
- Selecciona **"All detected stems"** al extraer para tener control total sobre cada instrumento; usa **"vocals plus instruments"** si solo te interesa la línea vocal.

## errores_comunes
- **Escribir prompts simples y genéricos:** la mayoría solo escribe "upbeat indie pop song" y obtiene resultados genéricos; hay que ser específico con instrumentos, mood y producción.
- **No usar meta tags:** la mayoría desconoce que los brackets en letras controlan estructura y producción, no solo el contenido cantado.
- **Confundir los sliders "Weirdness" y "Style influence":** son contrapuestos; subir uno requiere bajar el otro para mantener el balance deseado.
- **No subir audio propio:** limitarse a prompts de texto pierde la oportunidad de usar melodías originales (tarareadas, grabadas) como base.
- **Regenerar canciones completas para arreglar una sección:** el editor permite reemplazar letras o reordenar partes sin perder el resto de la canción.
- **No usar stems:** dejar la canción en el mix final de Suno sin posibilidad de ajustes profesionales en un DAW.
- **Escribir letras en una sola línea continua:** esto hace que Suno cante rápido y sin pausas, perdiendo control sobre el ritmo y la emoción vocal.
- **Grabar sin auriculares en Studio:** el micrófono capturará la música de los altavoces, causando problemas de sincronización y eco.
- **No incluir el BPM al añadir capas en Studio:** el AI puede generar a una velocidad diferente y no sincronizar con los drums existentes.
- **No separar stems antes de editar:** sin extraer stems, no se tiene control individual sobre instrumentos y vocales.
- **Aceptar el primer resultado de un stem:** hay versiones alternativas (hasta 10) que pueden ser más adecuadas; hay que revisarlas.
- **Poner armonías en toda la canción:** deben usarse con moderación ("como sal, solo un toque para realzar el sabor"), no reemplazar la vocal principal.

## fuentes_videos
- Suno Ai Tutorial 2026 (For Complete Beginners) — https://youtu.be/72R1NjNaUnE
- How to Use Suno: From Beginner to Pro Features Explained — https://youtu.be/Vfai49qhluA
- Suno Studio Tutorial: A Complete Beginner's Guide (2026) — https://youtu.be/qR4BefPvSiI
- How to Use Suno AI Better than 99% of People — https://youtu.be/DrRRvM4oc4w
- Suno Ai Tutorial 2025 — https://youtu.be/5OUpLRNdE9I
- How to Produce a Real Song in Suno AI (Don't Just Generate) — https://youtu.be/WczAMwG7U4w
- SUNO AI PROMPTING: GUIDE To Memorable EMOTIONAL Songs with SUNO PROMPTS — https://youtu.be/u-ZuCHAufqs