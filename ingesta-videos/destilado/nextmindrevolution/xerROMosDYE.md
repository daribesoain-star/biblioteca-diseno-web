# Gemini Canvas Deep Dive: The 2026 Beginner's Guide
**Fuente:** nextmindrevolution | https://youtu.be/xerROMosDYE

## Qué enseña
Guía completa para usar Gemini Canvas como editor de documentos inline, creador de páginas web, infografías, quizzes, flashcards y audio overviews sin necesidad de codificar. Muestra cómo editar documentos seleccionando texto y pidiendo cambios específicos a Gemini, y cómo convertir documentos en aplicaciones web interactivas.

## Lecciones accionables
- Para iniciar: selecciona "thinking" o "pro" para mejores resultados, luego ve a "tools" y selecciona "Canvas"
- Prompt de ejemplo para documento: "Write me an essay about cleaning guitars"
- Para editar texto seleccionado: selecciona el texto y escribe instrucciones como "convert to a list" o "make it more concise"
- Para cambiar longitud: usa el slider en "change length" (arrastra hacia arriba para más largo, hacia abajo para más corto)
- Para cambiar tono: usa el slider en "tone" (casual a formal)
- Para sugerencias de edición: selecciona texto, haz clic en "suggest edits", revisa cambios resaltados, haz clic en "apply" para aceptar o "delete all" para rechazar
- Para compartir documento: ve a "share & export" → "share" → copia el enlace (formato gemini.google.com)
- Para crear web page: ten un documento listo, ve a "create" → "web page" (genera HTML básico automáticamente)
- Para editar web page sin código: usa "select and ask" en la parte inferior, selecciona el elemento visual, escribe el cambio (ej: "change it to a pie type of chart")
- Para editar web page con código: ve al panel de código, modifica directamente (ej: agregar `<div>😊</div>` dentro de un div tag)
- Para agregar chat interactivo a web page: haz clic en "add Gemini features" (genera un AI assistant en la página)
- Prompt para crear aplicación específica: "Create an application where a user can write a paragraph and it will analyze if it's simple or complex using Flesch-Kincaid grade level. Use Tailwind. Color scheme: [especificar]"
- Para crear infographic: ten un documento, ve a "create" → "infographic" (genera single-page application HTML)
- Para crear quiz: desde el documento, ve a "create" → "quiz" (genera interfaz interactiva con preguntas y respuestas)
- Para crear flashcards: desde el documento, ve a "create" → "flashcards" (genera tarjetas de estudio)
- Para crear audio overview: desde el documento, ve a "create" → "audio overview" (genera podcast de ~5 minutos sobre el contenido)
- Para exportar a Google Docs: ve a "share & export" → "export to Google Docs"
- Para imprimir: usa el botón "print" en la parte superior
- Para deshacer/rehacer: usa los botones en la parte superior del editor

## Reglas para agentes
- Usa "thinking" o "pro" cuando trabajes con Canvas para obtener resultados de mayor calidad
- Selecciona siempre el texto específico antes de pedir cambios a Gemini (no edites todo el documento si solo necesitas modificar una sección)
- Valida la información del documento ANTES de convertirlo a web page, infographic, quiz, flashcards o audio overview
- Cuando pidas cambios vía chat, sé específico: usa nombres de secciones o elementos (ej: "Remove the guitar icon on the header" no solo "remove the icon")
- Usa "select and ask" para cambios visuales en web pages en lugar de editar código manualmente si no eres desarrollador
- Después de editar código manualmente en una web page, haz clic en "refresh" en la vista previa para ver los cambios
- Cuando crees aplicaciones, especifica librerías y frameworks en el prompt (ej: "Use Tailwind", "Create a React application")
- Para compartir contenido educativo, usa la función "share" para generar un enlace de Gemini (no un enlace web estándar)
- Nunca asumas que Canvas puede manejar APIs, archivos o backends complejos sin ayuda de un desarrollador

## Errores comunes que evita o menciona
- No asumir que Canvas es solo para desarrolladores (no requiere codificación para uso básico)
- No confundir Canvas con el chat normal de Gemini: en Canvas puedes editar partes específicas del documento sin regenerar todo el contenido
- No olvidar que los cambios en Canvas se guardan automáticamente (no necesitas hacer clic en "save")
- No intentar crear aplicaciones con APIs, manejo de archivos o backend sin ayuda de un desarrollador (Canvas tiene limitaciones en estos casos)
- No usar el chat para cambios simples cuando puedes seleccionar el texto directamente y pedir el cambio (es más eficiente)
- No compartir enlaces de web page como si fueran URLs web estándar (son enlaces de Gemini que abren en una nueva instancia de Gemini)
- No esperar que la función "quiz" genere interfaces personalizables (siempre devuelve el mismo formato estándar)
- No subestimar la función "audio overview": suena como un podcast real, no como texto leído por una máquina