# How to Lock Character, Voices & Avatars. Google Flow new Characters deep dive (2026)
**Fuente:** nextmindrevolution | https://youtu.be/IYBZqBE6m40
## Qué enseña (2-3 líneas)
Enseña cómo usar la nueva herramienta **Characters** de Google Flow para crear personajes consistentes con referencias visuales, perfiles de voz y metadatos de personalidad. También muestra cómo invocar personajes en prompts con `@`, cómo reutilizarlos entre proyectos y cómo funciona la nueva función beta de **avatar personal**.

## Lecciones accionables
- En Google Flow, entra por el panel izquierdo en **Characters**. Hay tres formas de crear un personaje: **Create from a template**, **Prompt one** y **Upload or import**.
- En **Create from a template**, Flow usa Gemini para generar automáticamente un prompt textual detallado del personaje, que luego puedes usar con **Nano Banana Pro** o **Nano Banana 2**. Si no te gusta el resultado, vuelve a hacer clic en el template para regenerar otra versión dentro del mismo “ballpark” del personaje.
- Los templates todavía son limitados y no se pueden personalizar directamente. La única forma de ajustarlos es editar manualmente el texto del prompt antes de generar.
- Para crear un personaje desde cero, usa **Prompt one** como si generaras una imagen normal en Nano Banana. Ejemplo de prompt usado: `It's a very standard, normal image of a man in his 30s looking directly into the camera. He has short hair, smiling, and you know, it's just a very standard type of character.`
- Tras generar la primera imagen, Flow pasa a una pantalla donde puedes asignar voz, metadatos y refinar la referencia. Usa el campo **“What do you want to change?”** para editar la imagen y **Show history** para revisar generaciones anteriores.
- Bloquea una primera referencia sólida antes de añadir más vistas. En la parte inferior, junto a la referencia principal, pulsa el botón `+` para agregar una segunda referencia con distintos ángulos del sujeto.
- Flow entrega un template para crear vistas alternativas del personaje. Solo debes completar el campo que pide describir cuerpo y outfit. Ejemplo usado: `he is wearing a minimalist dark navy sweater and cargo pants and maybe some blue shoes.`
- Puedes usar **Nano Banana Pro** o **Nano Banana 2** para generar las vistas adicionales. Flow toma la primera imagen como referencia y crea distintas vistas del mismo sujeto.
- Si una generación no sirve, coloca el cursor encima, usa la opción superior para descartarla, borra la imagen y vuelve a generar con cambios.
- Límite importante: solo puedes usar dos referencias visuales para el personaje: la imagen inicial y una segunda imagen con vistas/ángulos. No puedes agregar más referencias.
- Para asignar voz, abre **Select a voice** desde el panel izquierdo. Puedes escuchar templates con **Play** y asignarlos con **Add to character**.
- Para crear una voz derivada, usa **Create new voice**. Primero selecciona una voz base de los templates, luego define un nombre, descripción y sample dialogue.
- No se puede subir audio externo ni clonar una voz personalizada desde archivo. Solo se pueden modificar voces base incluidas en Flow.
- Ejemplo de nombre de voz: `Orlando`.
- Ejemplo de descripción de voz: `sad, low-pitched, fast-paced type of voice.`
- Ejemplo de sample dialogue: `I'm just a guy standing in front of an AI asking to create a voice.`
- Para previsualizar una voz custom, usa el icono de regeneración/procesamiento en la voz. Si cambias la descripción, vuelve a aparecer la opción para regenerar.
- Cuando la voz esté lista, pulsa **Save new voice**. La voz aparecerá en la lista, se podrá reproducir y borrar, pero no editar.
- Tras guardar una voz custom, asígnala con **Add to character**. Desde el personaje puedes reproducirla, quitarla o cambiarla.
- Añade un nombre claro al personaje. El video recomienda usar nombres específicos para evitar conflictos con celebridades o personas conocidas. Ejemplo: cambiar `Orlando` a `Orlando Hugh`.
- Usa **Optional character info** para definir personalidad base, quirks y mannerisms. Esta descripción alimenta directamente al nuevo **Flow agent tool**, para que el agente lea el perfil antes de usar el personaje en nuevas generaciones.
- Cuando el personaje esté completo, pulsa **Done**. Aparecerá en **All media**, en el dashboard principal y en la sección **Characters**.
- Para insertar un personaje en un prompt, escribe `@` y busca el nombre del personaje, o entra a **Characters** y selecciónalo. También puedes usar **Add to prompt** desde la tarjeta del personaje.
- Al pasar el cursor sobre el icono del personaje, Flow muestra qué assets usa, por ejemplo: dos imágenes de referencia y un perfil de voz.
- **Upload** permite subir una imagen como primera referencia. Flow procesa esa imagen y luego sigue el mismo flujo: añadir vistas, editar imagen, agregar voz y descripción.
- **Add from project** no importa personajes completos desde otros proyectos. Sirve para seleccionar una imagen creada en otro proyecto y usarla como referencia inicial.
- Para usar un personaje de otro proyecto, escribe `@`, entra en **Characters**, selecciona el proyecto donde vive el personaje y elige el personaje.
- Prompt de prueba para imagen: `a full body shot of Orlando walking in Tokyo.`
- Prompt de prueba para cambiar ropa: `Medium shot of Orlando. He is in his office drinking coffee and wearing a plain black shirt and red pants.`
- Aunque el personaje tenga ropa definida en sus referencias, puedes sobrescribir vestuario en el prompt, como `plain black shirt and red pants`.
- Para video, selecciona ingredientes de video, por ejemplo **Veo 3.1** y **new opening flash**, con duración de **8 seconds**.
- Prompt de video usado: `Medium close shot of Orlando Hugh. He's sitting on a cozy couch holding a red cup. He looks at the camera and says, "I think I should start drinking more tea."`
- Puedes añadir ingredientes adicionales a un prompt, como una imagen específica de una taza roja, para que `red cup` apunte a ese objeto concreto.
- Flow conservó bien la voz asignada en el video generado: la frase `I think I should start drinking more tea.` mantuvo el perfil vocal del personaje.
- Para probar consistencia multi-shot, usa una secuencia explícita. Prompt descrito: `I want a four-shot sequence of Orlando inside of a modern corporate office. First, I want a close-up shot, then I want a smooth tracking shot, a stable full body shot, and an overhead shot.`
- Flow permite videos de **8 seconds** y también una opción nueva de **10 seconds**.
- La consistencia visual funciona bien en escenas simples, como caminar en una oficina, pero puede degradarse en escenas complejas como peleas o acciones físicas intensas.
- La función **Avatar** crea un avatar con tu likeness visual y perfil de voz. Está en **beta**, depende del país y puede tener glitches.
- El avatar debe ser de la propia persona usuaria. Para configurarlo, abre **Gemini** en el teléfono, graba un selfie video siguiendo instrucciones y lee números en voz alta para crear el perfil de voz.
- El avatar queda ligado exclusivamente a tu cuenta. No se puede compartir ni usar en otras cuentas.
- Para invocar tu avatar, escribe `@` y luego `me`.
- Ejemplo de prompt para avatar UGC: `UGC type of video shot with a smartphone.`
- Para video tipo smartphone vertical, usa formato **9:16**.
- Prompt de avatar usado: `medium close-up shot of me in a real-world kitchen` con una referencia de helado y diálogo: `Woah, this ice cream is the best.` Luego: `Really, you have to try it.`
- El avatar puede parecerse de forma parcial, pero no perfecta, porque durante la captura solo toma vista frontal, lateral izquierda y lateral derecha. El modelo no conoce exactamente cómo ríes, hablas o mueves la boca.
- El avatar funciona mejor en imágenes y videos donde la audiencia no conoce tu cara ni tu voz con precisión.

## Reglas para agentes
- Usa **Characters** cuando necesites consistencia visual de un personaje en varias imágenes o videos.
- Usa **Prompt one** cuando el personaje deba ser custom desde cero.
- Usa **Create from a template** cuando quieras partir de un arquetipo rápido y editar el texto generado.
- Edita manualmente el prompt del template si necesitas personalización; no asumas que el preset se puede modificar desde controles.
- Genera primero una referencia frontal sólida antes de crear vistas adicionales.
- Añade siempre la segunda referencia de ángulos cuando el personaje se usará en video o escenas multi-shot.
- No intentes añadir más de dos referencias visuales; Flow solo admite la referencia inicial y una segunda imagen de vistas.
- Usa **Select a voice** para asignar voces existentes y **Create new voice** para derivar una voz desde un template.
- Nunca intentes subir audio externo para clonar una voz en esta función; Flow no lo permite.
- Define nombre, descripción vocal y sample dialogue antes de guardar una voz custom.
- Verifica la voz con **Play** antes de pulsar **Save new voice**, porque después no se puede editar.
- Usa nombres de personaje específicos, idealmente con apellido o identificador único, para evitar que el modelo confunda el nombre con celebridades.
- Completa **Optional character info** cuando el personaje deba mantener personalidad, quirks o mannerisms sin repetirlos en cada prompt.
- Invoca personajes con `@nombre_del_personaje` en el prompt.
- Selecciona el proyecto correcto cuando uses `@` para traer personajes que viven en otros proyectos.
- Usa ingredientes visuales adicionales cuando un objeto del prompt deba ser específico, por ejemplo una imagen exacta de una taza roja.
- Especifica duración, modelo y formato antes de generar video: por ejemplo **Veo 3.1**, **8 seconds**, **10 seconds** o **9:16**.
- Usa escenas simples para validar consistencia antes de probar acciones complejas.
- Usa `@me` solo para invocar el avatar personal ya configurado en Gemini.
- Nunca intentes compartir el avatar entre cuentas; está ligado a una sola cuenta.
- Usa avatar personal principalmente cuando la audiencia no necesite reconocer rasgos faciales o vocales con precisión absoluta.

## Errores comunes que evita o menciona
- Creer que los templates de personaje se pueden customizar directamente desde controles; en realidad hay que editar el texto.
- Usar una primera referencia floja y luego esperar consistencia alta en vistas o videos.
- Intentar añadir muchas referencias visuales; el límite práctico mostrado es dos.
- Intentar subir un archivo de audio externo para clonar una voz personalizada.
- Guardar una voz custom sin probarla antes, porque después no se puede editar.
- Nombrar personajes con nombres demasiado genéricos o asociados a famosos, lo que puede provocar resultados parecidos a celebridades.
- Confundir **Add from project** con importar un personaje completo; solo importa imágenes de otros proyectos.
- Esperar consistencia perfecta en escenas complejas como peleas o movimientos intensos.
- Esperar que el avatar beta reproduzca exactamente cara, risa, voz y movimiento de boca.
- Intentar crear un avatar de otra persona; la función exige que el avatar sea de la propia persona usuaria.