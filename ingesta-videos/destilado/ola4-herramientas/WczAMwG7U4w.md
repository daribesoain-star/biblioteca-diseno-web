# How to Produce a Real Song in Suno AI (Don't Just Generate) [suno]
**Fuente:** ola4-herramientas | https://youtu.be/WczAMwG7U4w

## Qué enseña (2-3 líneas)
Este video enseña un flujo de trabajo intermedio para producir una canción completa en Suno Studio, no solo generarla. Muestra cómo separar stems, grabar y convertir melodías cantadas/hummed en instrumentos específicos, añadir capas como armonías y power chords, aplicar paneo, transposición y drops, y controlar la mezcla como un productor real.

## Lecciones accionables
- **Crear canción base:** En Suno dashboard, modo custom, pegar letras. En style box escribir: `"Uplift hip-hop anthem rock style for the last chorus"`. En advanced options: seleccionar male vocals, weirdness a 15%, style influence a 85%. Click create.
- **Abrir en Suno Studio:** Click tres puntos junto al título de la canción → "Remix or edit" → "Open in studio".
- **Separar stems:** Click en la canción en la línea de tiempo → pestaña "Clip" → "Extract stems" → seleccionar "All detected stems" → click "Insert all". Obtienes vocales, backing vocals, drums, bass guitar, etc. como pistas individuales.
- **Grabar melodía personalizada para guitar solo:** Crear nueva pista de vocal. Ponerse audífonos (headphones) para evitar que el micrófono capte música de los altavoces. Seleccionar la porción relevante, click record, y cantar/humear la melodía deseada.
- **Convertir grabación en instrumento:** Arrastrar el clip de vocal grabado a la izquierda donde dice "Drag here to remix". Seleccionar "Keep current" para mantener letras. En style box escribir: `"93 BPM heavy rock guitar lead, powerful start"` (incluir el BPM del proyecto original para sincronización). Advanced: weirdness 15%, style influence y audio influence en 60s (audio influence alto para que siga la melodía cantada). Click create.
- **Extraer solo el stem de guitarra:** Del resultado generado, extraer stems nuevamente y conservar solo el stem de guitarra. Arrastrarlo a la línea de tiempo principal y alinearlo con la transición.
- **Generar power chords distorsionados para el coro:** Crear nueva pista, seleccionar instrumento "guitar". En style box: `"Distorted power chords"`. Resaltar la sección del coro en la línea de tiempo y click create.
- **Seleccionar versiones alternativas de un stem:** Si no gusta el resultado, click en la línea verde del clip en la pista izquierda → se abre lista de otras versiones generadas. Arrastrar la versión deseada a la línea de tiempo.
- **Paneo para claridad:** Paneo ligeramente a la izquierda la guitarra principal y la transición. Esto deja espacio para que las vocales destaquen sin que la música las opaque.
- **Generar armonías femeninas:** Arrastrar la pista vocal original al "Drag here to remix". "Keep current lyrics". En style box: `"93 BPM harmonies"`. Extraer stems del resultado, elegir "vocals plus instruments", conservar solo la vocal femenina. Cortar el stem para que cante solo en partes específicas ("como sal, solo un toque para realzar el sabor").
- **Texturizar sección rap:** Copiar la sección rap de la pista vocal principal a una nueva pista. En clip settings, usar "Transpose" a +4 (sube el tono, da textura crujiente). Mantener volumen bajo, justo debajo de la vocal principal.
- **Crear imagen estéreo ancha en rap:** Generar dos tomas vocales adicionales usando remix tool. Paneo una dura a la izquierda, otra dura a la derecha. La disposición final: vocal principal al centro, vocal con transpose +4 al centro, vocal generada 1 izquierda, vocal generada 2 derecha.
- **Insertar drop:** Seleccionar el compás justo antes del redoble de batería. Eliminar los stems de drum y bass de solo ese compás, dejando solo las vocales. Esto crea un momento de silencio total con vocales antes de que el beat regrese.

## Reglas para agentes
- **Incluye siempre el BPM** en el style box cuando añadas capas (ej: "93 BPM heavy rock guitar lead") para que el AI genere a la misma velocidad que el proyecto original.
- **Usa audífonos (headphones)** al grabar vocales para evitar que el micrófono capte música de los altavoces.
- **Aplica paneo** para evitar sonido embarrado: instrumentos principales ligeramente a izquierda/derecha, vocales al centro.
- **Usa "Keep current lyrics"** al remixar si no quieres cambiar la letra existente.
- **Selecciona "All detected stems"** al extraer para tener control total sobre cada instrumento.
- **Usa "vocals plus instruments"** al extraer si solo te interesa la línea vocal.
- **Ajusta weirdness a 15%** para mantener estructura estable y evitar sorpresas aleatorias.
- **Usa audio influence alto (60s)** cuando quieras que el AI siga fielmente la melodía que grabaste.
- **Usa style influence alto (85%)** cuando quieras que el AI se adhiera estrictamente al estilo indicado.
- **Copia y transpone (+4)** la sección rap para dar textura crujiente sin reemplazar la vocal principal.

## Errores comunes que evita o menciona
- **No generar solo una canción y dejarla así:** El video enfatiza que Suno no es solo un generador, sino una herramienta de producción que requiere capas, edición y mezcla.
- **No incluir el BPM al añadir capas:** Si no se especifica el BPM, el AI puede generar a una velocidad diferente y no sincronizar con los drums existentes.
- **No usar audífonos al grabar:** El micrófono captará la música de los altavoces y arruinará la grabación.
- **No separar stems antes de editar:** Sin extraer stems, no se tiene control individual sobre instrumentos y vocales.
- **Dejar todo paneado al centro:** Hace que la mezcla suene embarrada y las vocales se pierdan.
- **Aceptar el primer resultado de un stem:** El video muestra que hay versiones alternativas (hasta 10) que pueden ser más adecuadas; hay que revisarlas.
- **Usar el resultado completo de un remix como capa:** Si el AI genera una canción completa cuando solo se quería un solo, hay que extraer stems y quedarse solo con el instrumento deseado.
- **Poner armonías femeninas en toda la canción:** Deben usarse con moderación ("como sal, solo un toque para realzar el sabor"), no reemplazar la vocal principal.