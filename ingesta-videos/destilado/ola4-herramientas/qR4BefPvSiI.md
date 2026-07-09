# Suno Studio Tutorial: A Complete Beginner's Guide (2026) [suno]
**Fuente:** ola4-herramientas | https://youtu.be/qR4BefPvSiI

## Qué enseña (2-3 líneas)
Este tutorial presenta Suno Studio, una herramienta de edición musical basada en IA que permite importar canciones propias o generadas en Suno, separarlas en stems (pistas individuales), reemplazar instrumentos, grabar voces o sonidos directamente, y generar nuevas pistas instrumentales a partir de una selección de audio combinada con prompts de texto.

## Lecciones accionables
- **Importar una canción existente de Suno:** ve a tu biblioteca de canciones en el workspace, haz clic y arrastra el track directamente sobre la línea de tiempo (timeline).
- **Separar una canción en stems:** haz doble clic en el título del track en el timeline para abrir el panel de información. Si ya extrajiste los stems, haz clic en "Insert all" para que aparezcan como pistas separadas debajo del original.
- **Silenciar o aislar una pista:** usa los botones "S" (solo) o el ícono de altavoz (mute) a la izquierda de cada pista. Atajos de teclado: `Command + Shift + S` para solo, `Command + Shift + M` para mute.
- **Reemplazar un stem por otro de una versión diferente:** arrastra el stem deseado desde otra canción (por ejemplo, una versión cover) directamente al timeline. Alinéalo con la cuadrícula de barras musicales.
- **Dividir un clip:** selecciona el clip y presiona `Command + E` para partirlo en dos segmentos independientes.
- **Ajustar el tono de un clip vocal:** selecciona el clip, ve a las opciones de edición de audio y usa el control de pitch para subir o bajar la nota.
- **Añadir un nuevo stem instrumental:** crea una nueva pista vacía, selecciona una región en blanco en el timeline, y elige entre 12 instrumentos predefinidos (por ejemplo, percusión). Suno generará automáticamente una parte para esa región.
- **Grabar una parte vocal o instrumental directamente:** crea una nueva pista, haz clic en los tres puntos (menú de opciones) y selecciona "Record". Usa auriculares para evitar que el sonido de la canción se regrabe en el micrófono.
- **Ajustar la posición de un clip grabado:** mantén presionada la tecla `Command` mientras arrastras el clip para desactivar el ajuste a la cuadrícula y colocarlo con precisión.
- **Generar una nueva versión de una sección con un instrumento específico:** selecciona la región que incluye la pista original y tu grabación, arrastra esa selección al formulario de creación (create form). Escribe un prompt como: `solo trumpet, brass, drum and bass`. Suno generará versiones que respetan el tempo y la armonía del proyecto.
- **Extraer stems de una canción generada por Suno Studio:** después de generar una nueva versión, espera a que los stems se carguen en el panel lateral. Luego arrastra el stem deseado (por ejemplo, brass) al timeline para combinarlo con otras pistas.

## Reglas para agentes
- Usa `Command + Shift + S` para aislar (solo) una pista y `Command + Shift + M` para silenciarla.
- Usa `Command + E` para dividir un clip en dos partes en el punto del cursor.
- Mantén presionada la tecla `Command` mientras arrastras un clip para desactivar el ajuste a la cuadrícula y lograr un posicionamiento fino.
- Cuando grabes audio, usa siempre auriculares para evitar que el sonido ambiente de la canción se regrabe en el micrófono.
- Para generar un nuevo instrumento basado en una grabación vocal, arrastra la región seleccionada (que incluye la grabación) al formulario de creación y escribe un prompt descriptivo del instrumento deseado (ej. "solo trumpet").
- Nunca asumas que el instrumento generado coincidirá exactamente con el tono de la grabación original; revisa varias versiones generadas y selecciona la que mejor se ajuste.

## Errores comunes que evita o menciona
- **Grabar sin auriculares:** si grabas con los altavoces del laptop encendidos, el micrófono capturará la canción de fondo, causando problemas de sincronización y eco.
- **Desalineación temporal al grabar:** la grabación puede quedar ligeramente fuera de tiempo; usa `Command + arrastre` para ajustar manualmente la posición del clip.
- **Confusión de instrumentos por la IA:** a veces Suno interpreta un instrumento como otro (por ejemplo, confunde trompeta con saxofón porque clasifica los saxofones como instrumentos de viento-madera). Revisa varias versiones generadas y combina stems de diferentes resultados para obtener el sonido deseado.
- **Asumir que el tono de la grabación vocal se respetará exactamente:** la IA puede cambiar la octava o la nota; prueba múltiples generaciones y selecciona la que coincida mejor con la intención original.