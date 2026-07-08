# How AI Filmmaking Pros ACTUALLY Make AI Videos
**Fuente:** imskaigenerated | https://youtu.be/xql3lLn-yco

## Qué enseña (2-3 líneas)
Muestra el flujo de trabajo profesional para crear cortometrajes con IA consistentes, evitando el aspecto "falso" de clips inconexos. El método se centra en la "dirección de vibra" (vibe directing) en lugar de prompting aislado, usando Open Art Director como plataforma unificada para mantener continuidad visual, de personajes y tono narrativo.

## Lecciones accionables
- **Usa Open Art Director como plataforma única** para todo el flujo: desde la creación de historia hasta la generación de video, sin saltar entre herramientas.
- **Empieza con la historia**: abre Claude, sube el "MD story brief builder" y pega tu idea base. Ejemplo de idea: *"Un detective intenta resolver un caso de desaparición en un pueblo pequeño, estilo noir"*. El resultado incluye título de trabajo, tono y estructura narrativa.
- **Pega la historia en Open Art Director** → haz clic en "director" para que la IA la convierta en una narrativa completa. Ejemplo de salida: *"Ray Mercer regresa a su ciudad natal para investigar la desaparición de Lena Voss, con silencio, culpa y presión moral"*.
- **Genera la hoja de personaje (character sheet)** con Claude: pide un prompt para una hoja realista de detective noir con tres vistas (frente, perfil, tres cuartos). El prompt debe describir: *"cicatriz, fedora, gabardina, ojos cansados, aspecto desgastado"*.
- **En Open Art, ve a "images"**, selecciona el modelo **Nano Banana 2**, pega el prompt, configura **aspect ratio 16:9**, **resolución 2K** y genera la hoja.
- **Sube la hoja de personaje al director** → el director sugerirá cambios para que encaje mejor en la película. Acepta o modifica hasta que el personaje se sienta *"más oscuro y más arraigado"*.
- **Deja que el director genere los otros 3 personajes** automáticamente. Itera hasta tener un elenco perfecto.
- **Genera las ubicaciones (locations)** desde el director; suelen ser buenas desde la primera generación.
- **Genera la película completa** dentro de Open Art Director, no clip por clip. Esto asegura que el detective, el pueblo y el tono noir se mantengan consistentes.
- **Refina con notas pequeñas** en lugar de regenerar desde cero. Ejemplos de notas:
  - *"Haz el callejón más oscuro"* (escena 1)
  - *"El coche debe estar estacionado detrás del oficial de policía y no debe llover"* (escena 4)
  - *"Mantén al oficial de policía mirando en la misma dirección durante todo el video, sin cortes"* (escena 2)
- **Usa la línea de tiempo (timeline)** para ajustar ritmo, limpiar secuencias y añadir subtítulos. Ahí se controla el pacing final.
- **Prueba cambios de idioma**: en escena 4, indica *"haz que el oficial de policía hable el mismo diálogo en japonés"*. El lip-sync y la voz se mantienen.

## Reglas para agentes
- **Usa Open Art Director como plataforma única** para todo el flujo de producción; nunca saltes entre herramientas para generar clips aislados.
- **Empieza siempre con la historia** usando un story brief builder (ej. en Claude) antes de generar cualquier imagen o video.
- **Genera primero la hoja de personaje** con tres vistas (frente, perfil, tres cuartos) antes de crear cualquier escena.
- **Sube la hoja de personaje al director** antes de generar el elenco secundario.
- **Genera la película completa de una vez** dentro del director; nunca generes clips individuales para unirlos después.
- **Refina con notas pequeñas y específicas** en lugar de regenerar escenas completas.
- **Usa la línea de tiempo al final** para ajustar ritmo y añadir subtítulos; no confíes solo en la generación inicial.
- **Configura aspect ratio 16:9 y resolución 2K** para todas las imágenes de personajes.
- **Selecciona el modelo Nano Banana 2** para generar hojas de personaje.

## Errores comunes que evita o menciona
- **Generar clips por separado y luego unirlos**: hace que la cara, la iluminación y el estado de ánimo cambien entre tomas, dando un resultado falso.
- **Regenerar la misma toma 20 veces**: es ineficiente; mejor refinar con notas.
- **No tener una hoja de personaje consistente**: es la razón principal por la que las películas de IA se ven falsas; los personajes cambian de aspecto entre escenas.
- **No usar una plataforma unificada**: saltar entre herramientas rompe la continuidad visual y narrativa.
- **Confiar solo en el prompting inicial**: el flujo profesional es "vibe directing" (guiar la historia y refinar), no generar clips aleatorios.