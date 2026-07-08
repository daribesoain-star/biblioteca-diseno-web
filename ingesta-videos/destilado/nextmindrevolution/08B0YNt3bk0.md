# Nano Banana + Flow: The workflow to 100% Consistent AI Characters
**Fuente:** nextmindrevolution | https://youtu.be/08B0YNt3bk0
## Qué enseña (2-3 líneas)
Enseña un flujo para mantener personajes consistentes usando una hoja/grilla de referencia en Flow con Nano Banana.  
La clave es crear un personaje base, convertirlo en una reference sheet, renombrarla y reutilizarla como ingrediente en imágenes o videos.

## Lecciones accionables
- Usa una grilla o sheet como base de consistencia: “A grid or sheet are the best way to ensure character consistency.”
- Herramientas usadas: Nano Banana dentro de Flow; el método también aplica a “any other capable image generator”.
- Primer prompt para crear personaje base: `Full body shot of a warrior, plain green background.`
- Luego usa esa imagen como `ingredient` y aplica un prompt largo para crear la sheet. La transcripción no verbaliza el prompt completo, pero especifica que debe incluir: tarea concreta, layout/grilla, vistas diferentes del mismo sujeto y formato de salida final.
- Puedes usar un solo `ingredient`, aunque Flow permite agregar más.
- Revisa manualmente la sheet generada: confirma que detalles, ropa, rostro, accesorios y proporciones sean consistentes en todas las celdas.
- Si la sheet no convence, usa `reuse prompt` sobre la misma generación y vuelve a ejecutar.
- Si quieres controlar variación, especifica un tamaño muy concreto para cada celda/grilla; si no, cada ejecución devolverá una composición “just a little bit different”.
- Para editar un personaje, vuelve a la imagen original o a la grid, entra en `edit` y pide un cambio específico. Ejemplo verbalizado: `The woman has an eye patch.`
- Nano Banana aplica el cambio a todas las vistas de la reference grid si entiende que estás trabajando con una grilla de referencia.
- Para edits múltiples, el autor recomienda hacerlos “one by one”, no todos a la vez.
- Al aprobar el resultado, pulsa `done`.
- Renombra los archivos de referencia en Flow. Ejemplo: la guerrera se renombra como `Tyler`.
- Para reutilizar una referencia, escribe `@` y selecciona la imagen nombrada, por ejemplo `@Tyler`.
- Para extraer una celda específica de la grilla, usa la grid como `ingredient` y pide la posición exacta. Prompt verbalizado: `Extract the image in the cell number three, maintain details and consistency.`
- Segundo personaje creado con el prompt: `Full body shot of a young podcaster, plain green background.`
- Repite el proceso de grilla para el segundo sujeto y renómbralo. Ejemplo: `Mia`.
- Para escenas con múltiples personajes, referencia ambos con `@`. Prompt verbalizado: `Mia is interviewing Tyler on a film set.`
- Otro prompt de prueba: `Tyler is piggyback riding Mia on a supermarket.`
- La consistencia se mantiene mejor en sujetos/personajes que en detalles de escena si el prompt es demasiado simple.
- Para video, entra en `video`, luego `ingredients`, usa `@` y selecciona las referencias. Ejemplo: `Mia is interviewing Tyler on a film set.`
- En video, la diferencia clave es “lock the characters”: bloquea los personajes usando las referencias.
- Diálogo mostrado en el video generado: `So, what was it like on the battlefield?` / `It was fierce, but we held the line. We always do.` / `Incredible. Any memorable moments?`

## Reglas para agentes
- Usa una reference sheet cuando necesites consistencia de personaje entre varias imágenes o videos.
- Genera primero un personaje de cuerpo completo sobre fondo simple antes de crear la grilla.
- Usa `plain green background` cuando quieras aislar mejor el sujeto base.
- Usa la imagen base como `ingredient` antes de pedir la grilla.
- Incluye en el prompt de sheet la tarea, el layout, las vistas del mismo sujeto y el output esperado.
- Reejecuta con `reuse prompt` si la primera grilla no conserva bien los detalles.
- Especifica tamaño o estructura de cada celda si necesitas reducir variación entre ejecuciones.
- Verifica manualmente consistencia de rostro, ropa, accesorios y silueta antes de aceptar la sheet.
- Edita un cambio por vez cuando modifiques un personaje.
- Renombra cada referencia aprobada con nombres cortos y únicos.
- Usa `@Nombre` para invocar personajes ya guardados en Flow.
- Para extraer una pose o vista, pide la celda exacta por número y añade `maintain details and consistency`.
- Para escenas con varios personajes, referencia explícitamente a todos los personajes con `@`.
- En video, usa `ingredients` y bloquea los personajes antes de generar.
- Nunca confíes solo en un prompt textual para consistencia multi-personaje si ya tienes sheets disponibles.
- Nunca aceptes una grilla sin revisar celda por celda.

## Errores comunes que evita o menciona
- Crear escenas nuevas sin una sheet de referencia y perder consistencia del personaje.
- No revisar detalles de la grilla antes de usarla como fuente.
- Hacer demasiados edits en un solo prompt.
- No renombrar referencias, lo que dificulta reutilizarlas con `@`.
- Esperar resultados idénticos al reejecutar sin especificar tamaño o estructura exacta de cada celda.
- Usar prompts demasiado simples para escenas complejas y luego obtener detalles flojos o elementos inesperados.
- No bloquear personajes al pasar de imagen a video.