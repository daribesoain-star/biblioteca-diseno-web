# Create Cinematic AI Videos with Runway Gen-3! - Advanced Prompt Tutorial
**Fuente:** runway | https://youtu.be/rm-5TvlL8uU

## Que ensena (2-3 lineas)
Este tutorial enseña a escribir prompts cinematográficos para Runway Gen-3, enfocándose en control de color, movimiento de cámara y consistencia visual usando imágenes de referencia como último fotograma. Revela estrategias iterativas para refinar prompts y superar las limitaciones del modelo, como la saturación no deseada y la tendencia a zoom-in automático.

## Lecciones accionables

- **Control de paleta de color:** Añade `desaturated colors`, `muted colors` o `low contrast` al prompt para evitar que Gen-3 sature y aumente el contraste de la imagen de referencia al animarla. Ejemplo: *"desaturated pastel colors"* mantiene la consistencia cromática.
- **Último fotograma como ancla:** Marca la opción "last frame" al subir una imagen de referencia. El prompt debe describir un movimiento que termine exactamente en esa imagen. No funciona en modo Turbo, solo en Gen-3 Alpha.
- **Control de cámara con contexto ambiental:** En lugar de solo pedir "zoom out", añade elementos que obliguen al encuadre. Ejemplo: *"full body shot of a black dress"* fuerza un zoom out para capturar el cuerpo; *"camera tilts up to the moon in the sky"* usa la posición de la luna para guiar el tilt hacia arriba.
- **FPV fly through:** Usa `FPV fly through` (first-person view) para simular un dron volando hacia adelante. Funciona mejor que "zoom in" genérico.
- **Iteración por peso de palabras:** Si un movimiento no se ejecuta, mueve la acción deseada al inicio del prompt. Ejemplo: cambiar `"woman smiles as she's speaking"` por `"smiling and speaking woman"` para que Gen-3 priorice la acción sobre la descripción.
- **Static shot para reducir alucinaciones:** Usa `static camera` o `static shot` cuando aparezcan objetos duplicados o deformaciones en el fondo. Reduce el movimiento general pero estabiliza la escena.
- **Zoom in con foco facial:** Para zoom in al rostro, pide explícitamente *"camera zooms in on her eyes"*. Esto fuerza a Gen-3 a mantener el rostro centrado y a menudo hace que el personaje gire la cabeza hacia cámara.

## Reglas para el director de fotografia IA

- Usa `desaturated colors` o `muted colors` cuando la imagen de referencia tenga tonos pastel o baja saturación; Gen-3 tiende a sobresaturar automáticamente.
- Para evitar que Gen-3 haga zoom-in no deseado en paisajes, usa `static shot` o `drone shot flying high into the air` en lugar de "zoom out" directo.
- Cuando quieras que un personaje hable, usa `talking` en lugar de `speaking`; Gen-3 responde mejor a "talking" para movimiento de labios realista.
- Para mantener la cara del personaje dentro del encuadre durante un zoom out, añade una acción facial en el prompt (ej: `as she smiles`) para que Gen-3 priorice mantener el rostro visible.
- Si aparecen objetos duplicados o alucinaciones geométricas, fuerza `static camera` al inicio del prompt para eliminar movimiento de cámara y estabilizar la escena.
- No confíes en un solo prompt; itera cambiando el orden de las palabras y probando sinónimos (ej: "speaking" vs "talking") hasta lograr el resultado deseado.

## Errores comunes que evita o menciona

- **Saturación automática:** Gen-3 cambia la saturación y contraste de la imagen de referencia al animarla, haciendo que los colores se vuelvan más vívidos de lo original. Se corrige añadiendo `desaturated colors` o `low contrast` al prompt.
- **Zoom-in forzado:** El modelo tiende a hacer zoom-in incluso cuando se pide explícitamente "zoom out" o "pull back". Se mitiga usando contexto ambiental (ej: "full body shot") o `static shot`.
- **Duplicación de objetos:** Al animar rostros, Gen-3 puede generar elementos duplicados (ej: dos Torres Eiffel) si hay movimiento de cámara. Se soluciona con `static camera` para reducir el movimiento.
- **Falta de movimiento de labios:** Pedir "speaking" no siempre activa el habla; reemplazar por "talking" suele funcionar mejor para obtener movimiento de boca realista.
- **Inconsistencia facial:** Sin especificar `desaturated colors`, el rostro del personaje puede transformarse en otro (ej: de joven a anciana) durante la animación.