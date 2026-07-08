# Gemini Omni Video is Here: Templates, Avatars, & Video Editing
**Fuente:** nextmindrevolution | https://youtu.be/veTTlAXXq90
## Qué enseña (2-3 líneas)
Explica cómo usar las nuevas capacidades de video de Gemini: texto a video, plantillas, montajes con imágenes, avatares personalizados, continuaciones de escena y edición de clips existentes.  
También muestra límites prácticos importantes: generaciones diarias muy bajas, fallos en prompts demasiado ambiciosos y mejor uso de Google Flow para producción más pulida.

## Lecciones accionables
- En Gemini, entra a video desde el chat con `+` → `Create video`, o desde la opción `Videos` en la barra izquierda.
- Usa plantillas cuando quieras un estilo específico sin escribir prompts largos. Ejemplo: la plantilla `Indie Pastel` produce un look tipo Wes Anderson sin incluir las keywords `Wes Anderson style`.
- Para una escena con plantilla: selecciona la plantilla, escribe qué ocurre en la escena, añade imágenes si hacen falta, elige ratio `landscape` o `portrait`, y genera.
- Prompt mostrado para plantilla `Indie Pastel`: una mujer en primer plano mirando directo a cámara y diciendo: `"Life is like a box of chocolates."`
- Algunas plantillas requieren inputs distintos:
  - `Montage`: pide imágenes; placeholder exacto: `"Add photos for your montage."`
  - Para montajes, ahora también exige descripción. Prompt usado: `create a montage`
  - `Cut Paper`: pide texto; instrucción exacta: `"what text do you want animated?"`
  - Otra plantilla requiere subir una imagen propia o de una persona.
- Para texto a video desde cero, puedes subir referencias con el botón de upload o arrastrando imágenes al chat.
- Ejemplo UGC: subir una imagen de un helado y una mujer, luego pedir una escena donde ella coma helado y diga líneas específicas.
- Líneas usadas en el prompt UGC: `"Whoa, this ice cream is the best."` y `"Tasty. You have to try it."`
- Gemini falla cuando se le pide demasiado en 8-10 segundos: hablar, comer, pausar y volver a hablar en una sola toma suele producir cortes, objetos que desaparecen o mala continuidad.
- Solución recomendada para prompts complejos: simplificar la acción, por ejemplo que el personaje pruebe el helado y luego diga una sola línea, o usar una instrucción multi-shot con transiciones.
- Para usar avatar personalizado: crea primero el avatar con un selfie video desde el teléfono, siguiendo instrucciones de tracking en pantalla y leyendo números en voz alta.
- El avatar debe ser tuyo; no está pensado para crear avatares de otras personas.
- Una vez creado, el avatar queda asociado a tu cuenta. Se inserta desde `+` → `More uploads`, o escribiendo `@` para seleccionarlo.
- Al usar el avatar, trátalo como una referencia normal: selecciónalo, adapta el prompt al género/persona correcta, añade otras referencias y genera.
- El clon de voz del avatar es bueno pero no 100% fiel, porque el entrenamiento solo usa lectura breve de números, no una muestra larga como en ElevenLabs.
- El avatar funciona mejor cuando la audiencia no conoce exactamente tu cara, voz o movimientos de boca.
- Para continuar un video, sube o usa un clip existente en el mismo chat y pide una continuación de frame.
- Prompt usado para continuación: `"Extend this scene."`
- Instrucción de continuación usada: `"She says, 'Always remember, stay in school, kids.'"`
- La continuación puede fallar mezclando contexto anterior: en el ejemplo repitió parte del clip previo y luego añadió la nueva línea, en vez de continuar desde el último frame.
- Para revisar límites: ve a barra izquierda → `Settings` → `Usage limits`.
- Límites mencionados: cuenta Pro alrededor de 5 videos por día o menos; cuenta Ultra alrededor de 10 videos por día; además existe límite semanal.
- Para producción de video más intensiva o pulida, conviene usar `Google Flow` y sus créditos en vez de Gemini, porque Gemini se queda sin generaciones rápido.
- Para editar un video existente: sube el clip, deja que Gemini lo analice, añade referencias visuales y pide cambios simples.
- Ejemplo de edición: video de un hombre caminando con taza de café; referencias subidas: imagen llamada `red coffee cup` y otra llamada `Ray-Ban sunglasses`.
- Prompt exacto de edición: `Replace coffee mug in the video with a red cup of coffee. He is wearing Ray-Ban sunglasses and he's wearing a plain black shirt.`
- Para que Gemini vincule bien una referencia, usa en el prompt el mismo nombre conceptual que el archivo o imagen: por ejemplo `red cup of coffee` si la referencia se llama `red coffee cup`.

## Reglas para agentes
- Usa plantillas cuando el objetivo principal sea lograr un estilo visual concreto sin cargar el prompt con descripciones largas.
- Usa texto a video desde cero cuando necesites control narrativo específico sobre acciones, diálogo y referencias.
- Sube referencias visuales cuando el objeto, persona, ropa o accesorio deba mantenerse reconocible.
- Usa el mismo nombre del asset en el prompt cuando quieras que Gemini aplique una referencia concreta.
- Mantén las instrucciones de video simples si el clip dura 8-10 segundos.
- Divide acciones complejas en varios shots cuando haya diálogo, acción física y pausa.
- Nunca pidas en una sola generación demasiadas acciones secuenciales si además hay diálogo sincronizado.
- Usa `Settings` → `Usage limits` antes de experimentar con variantes.
- No gastes generaciones de Gemini en pruebas largas si necesitas iterar muchas veces; usa Google Flow para producción más seria.
- Usa avatares solo para la persona propietaria del avatar.
- Verifica ratio antes de generar; no dejes `9:16` si necesitas `16:9`.
- Para continuaciones, espera inconsistencias y valida si realmente continúa el último frame.
- Para edición de video, cambia pocos elementos por generación: objeto, ropa o accesorio, pero evita pedir ediciones complejas simultáneas.

## Errores comunes que evita o menciona
- Escribir prompts enormes para estilos que una plantilla ya resuelve.
- Olvidar que algunas plantillas no aceptan los mismos inputs: unas piden imágenes, otras texto y otras una persona.
- Intentar generar un montaje sin descripción cuando Gemini ahora la exige.
- Pedir que el personaje hable, coma, pause y vuelva a hablar en un solo clip corto.
- Esperar continuidad perfecta al extender videos.
- Agotar límites diarios o semanales por reintentar generaciones fallidas.
- Usar Gemini como si tuviera la misma capacidad de iteración que Google Flow.
- Olvidar cambiar el aspect ratio antes de generar.
- Esperar que el avatar replique al 100% la voz y la forma real de mover la boca.
- Pedir ediciones complejas sobre videos complejos y quedarse sin créditos con resultados malos.