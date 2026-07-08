# KLING Omni One Expressions: How I Get any expression I need
**Fuente:** nextmindrevolution | https://youtu.be/b2rirpRvvzM
## Qué enseña (2-3 líneas)
Enseña cómo cambiar expresiones faciales en KLING Omni One usando prompts simples y referencias visuales.  
La conclusión técnica es que pedir una expresión por texto funciona para cambios básicos, pero para expresiones difíciles o muy específicas es más confiable subir una imagen de referencia y pedir que la imite.

## Lecciones accionables
- Usa una imagen base con expresión facial plana o neutra cuando quieras probar cambios de expresión; esto permite evaluar mejor si Omni One realmente modificó la cara.
- En Omni One, adjunta primero la imagen del sujeto: ve a `uploads`, selecciona la imagen ya subida, entra en `image`, elige `select from history`, llévala a `uploads` y confirma.
- Según la documentación de KLING Omni One, usa esta plantilla exacta: `change the expression to [expression]`.
- Antes de generar, configura el formato en `16:9` y pide `one single output`.
- Para invocar la imagen dentro del prompt, usa `@` y etiqueta la imagen antes de escribir la instrucción.
- Prompts verbatim usados:
  - `change the expression to smile`
  - `change the expression to laugh`
  - `change the expression to euphoric`
  - `change the expression to scared`
  - `change the expression to proud`
  - `change the expression to a sad watery eyes`
- Ejecuta cada expresión como una tarea separada con `run the task`; no intentes mezclar varias expresiones en una sola generación si quieres comparar resultados.
- Resultados observados:
  - `smile` produjo una sonrisa clara.
  - `laugh` produjo una risa reconocible.
  - `euphoric` no logró una expresión convincente.
  - `scared` se vio más como tristeza que como miedo.
  - `proud` generó un cambio muy sutil, casi igual a otros resultados.
  - `a sad watery eyes` no produjo un resultado claramente triste ni con ojos llorosos.
- La guía de KLING/Omni One sugiere que algunas expresiones funcionan mejor que otras, pero la transcripción no incluye toda la lista mostrada en pantalla.
- Para expresiones difíciles, usa una segunda imagen como referencia de expresión en vez de depender solo del texto.
- Flujo recomendado con referencia:
  - Mantén la imagen 1 como sujeto base.
  - Añade una imagen 2 con la expresión exacta que quieres replicar.
  - Usa el prompt: `change the expression on [image 1] to be the same as [image 2]`.
  - Ejecuta la tarea.
- Omni One funciona muy bien como “reference machine”: puede imitar una expresión específica desde una imagen de referencia mejor que interpretarla desde una palabra abstracta.
- Si no encuentras una referencia en la web, toma una foto tuya haciendo la expresión deseada y úsala como segunda referencia.

## Reglas para agentes
- Usa `change the expression to [expression]` cuando quieras pedir una expresión simple por texto.
- Usa una imagen de referencia cuando la expresión sea compleja, ambigua o difícil de describir.
- Usa una imagen base con expresión neutra cuando necesites medir cambios faciales con claridad.
- Configura `16:9` y `one single output` si quieres replicar el flujo del video.
- Ejecuta una tarea por expresión para comparar resultados limpiamente.
- Verifica visualmente si la expresión generada coincide con la intención; no asumas que `scared`, `euphoric` o expresiones abstractas serán interpretadas correctamente.
- Si el resultado por texto es sutil o ambiguo, cambia inmediatamente a referencia visual.
- Cuando Omni One reutilice un prompt anterior por caché, copia el prompt actual, borra todo el contenido del campo y vuelve a pegarlo antes de ejecutar.
- Nunca confíes solo en palabras abstractas como `euphoric` si necesitas una expresión precisa.
- Nunca des por correcto un resultado solo porque el prompt fue aceptado; compara la salida contra la expresión objetivo.

## Errores comunes que evita o menciona
- Esperar que todas las expresiones escritas en texto produzcan cambios claros y auténticos.
- Usar palabras ambiguas como `euphoric` o `scared` sin una referencia visual.
- Confundir una expresión generada con otra: el ejemplo de `scared` terminó pareciendo más `sad`.
- Pensar que las expresiones soportadas siempre serán exageradas; en Omni One pueden ser muy sutiles.
- No revisar el bug de caché: al cambiar un prompt y volver a ejecutar, Omni One puede correr el prompt anterior.
- Intentar forzar expresiones complejas solo con texto cuando una referencia visual daría un resultado mucho más confiable.