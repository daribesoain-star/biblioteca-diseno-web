# How To Use Google Flow to Create Consistent AI Characters & Videos 
**Fuente:** AI Edge Mastery | https://youtu.be/oCcU1C8WilI

## Qué enseña
Cómo crear personajes IA consistentes (rostro, voz, identidad) usando Google Flow y reutilizarlos en múltiples escenas de video e imagen. Cubre desde la creación del personaje hasta la generación de videos con el modelo Omni Flash, incluyendo técnicas de consistencia multi-toma.

## Técnicas accionables
- **Crear personaje desde plantilla:** en la sección "Character", haz clic en cualquier template; Flow genera automáticamente un prompt y un personaje nuevo.
- **Crear personaje con prompt propio:** usa un "skill" de Claude (sistema que enseña a la IA a construir prompts). Describe el personaje en Claude, deja que genere el prompt, revísalo, cópialo y pégalo en Flow.
- **Crear personaje desde imagen de proyecto:** sube una imagen desde tu proyecto actual u otro proyecto, luego haz clic en "Add to character".
- **Crear personaje subiendo imagen externa:** sube una imagen de personaje ya creada, asígnale un nombre (evita nombres comunes o de famosos para no contaminar el resultado).
- **Configurar voz personalizada:** selecciona una voz base, asígnale nombre, describe cómo quieres que suene, añade una línea de muestra para que la IA la lea, genera la voz y ajústala si es necesario. Guarda como "new voice".
- **Rellenar "Character info":** describe personalidad, forma de hablar y reacciones habituales para mejorar la consistencia entre escenas.
- **Editar personaje (peinado/color):** haz clic en "+" para que Flow genere automáticamente un prompt para una "character sheet" (vistas adicionales del personaje). Alternativamente, crea la character sheet externamente: proporciona la imagen original y una plantilla a ChatGPT (modelo de imagen) para generar vistas coincidentes. Sube el resultado a Flow.
- **Usar personaje en generación de imagen:** escribe `@` y selecciona el personaje desde la sección "Character". Puedes importar personajes de otros proyectos.
- **Generar video desde imagen (método 1):** arrastra la imagen al cuadro de prompt, escribe un prompt describiendo la escena, menciona al personaje con `@`. Usa el modelo **Omni Flash** (el más reciente). Genera videos de 4 a 10 segundos.
- **Tipos de referencia para video:** "Ingredients" mantienen consistencia de personajes/objetos pero no fijan el primer frame. "Frames" sí fijan la imagen exacta de inicio.
- **Generar video desde texto (método 2):** usa un "multi-shot prompt". Menciona al personaje con `@`. El modelo genera múltiples tomas basadas en el prompt.
- **Extender video (Omni Flash no soporta extensión directa):** guarda el último frame del video, arrástralo al área de prompt, escribe un nuevo prompt para la siguiente escena, vuelve a mencionar al personaje, genera el nuevo clip. Luego regresa al primer video y añade el nuevo clip a la línea de tiempo. Recorta partes para naturalidad. Al presionar "Done", Flow guarda todos los clips como un solo video en la sección "Scene".

## Reglas para el erudito
- Usa nombres de personaje no comunes ni vinculados a famosos para evitar que el modelo tire de conocimiento existente y afecte el resultado.
- Crea primero el personaje en la sección "Character" antes de saltar a generación de video.
- Usa "Frames" cuando necesites que el video comience desde una imagen exacta; usa "Ingredients" cuando solo necesites consistencia sin fijar el primer frame.
- Para extender videos con Omni Flash, guarda el último frame y úsalo como inicio del siguiente clip; no intentes extender directamente.
- Añade la character sheet (vistas múltiples) para mejorar la consistencia del personaje en diferentes imágenes y videos.

## Errores comunes / limitaciones que menciona
- Omni Flash no soporta extender videos generados directamente; hay que usar el método manual de guardar último frame y crear nuevo clip.
- Si usas nombres de personaje demasiado comunes o de famosos, el modelo puede contaminar el resultado con conocimiento previo.
- La opción "Ingredients" no fija el primer frame de la imagen; si necesitas que el video empiece exactamente desde una imagen, debes usar "Frames".