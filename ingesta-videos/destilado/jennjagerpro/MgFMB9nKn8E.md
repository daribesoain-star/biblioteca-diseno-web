# Beat Detection in Final Cut Pro | FULL TUTORIAL
**Fuente:** jennjagerpro | https://youtu.be/MgFMB9nKn8E

## Qué enseña (2-3 líneas)
Este tutorial enseña a usar la detección de beats impulsada por IA en Final Cut Pro para recortar y sincronizar pistas musicales con la duración exacta de un video, eliminando secciones intermedias no deseadas sin afectar la introducción ni el final. Muestra cómo usar la cuadrícula de beats (beat grid) para hacer cortes precisos en cambios de arreglo o tiempos fuertes, logrando transiciones musicales imperceptibles.

## Lecciones accionables
- **Habilitar detección de beats:** Seleccionar la pista de música, hacer clic derecho y elegir "Enable Beat Detection". Aparecen líneas verticales (beat grid): líneas gruesas indican cambios de arreglo, líneas sólidas delgadas son downbeats (tiempo 1 del compás), líneas punteadas son tiempos 2, 3 y 4.
- **Convertir a connected storyline:** Con la pista de música seleccionada, presionar **Command + G**. No omitir este paso.
- **Medir excedente de música:** Presionar **R** para la herramienta Range, seleccionar desde el final del video hasta el final de la música para ver cuántos segundos sobran (ej. 20-21 segundos).
- **Identificar secciones a recortar:** Con la herramienta Select (**A**), escuchar la música en solitario (clic derecho en pista → "Solo") y localizar las líneas gruesas que marcan cambios de arreglo. Decidir qué sección eliminar.
- **Cortar en cambios de arreglo:** Activar **Snapping** en la parte superior de la línea de tiempo. Presionar **B** (Blade tool) para cortar justo en la línea gruesa de inicio de la sección no deseada. Luego con **A**, arrastrar el borde del corte hasta la siguiente línea gruesa.
- **Recortar segundos restantes con downbeats:** Si sobran menos segundos (ej. 9 segundos) y las líneas gruesas están muy separadas, usar la herramienta Range (**R**) para seleccionar desde un downbeat (línea sólida delgada) hasta otro downbeat aproximadamente 9 segundos después. Presionar **Delete**.
- **Ajuste fino con slip edit:** Si la música termina muy pronto, presionar **T** (Trim tool), posicionar el cursor en el centro del corte de música, mantener presionado el mouse y deslizar hacia la derecha hasta que aparezca una línea sólida (downbeat) en el punto de corte. Esto desplaza la sección un compás (4 beats).
- **Extender música un beat:** Arrastrar el borde final de la pista de música un beat adicional para que coincida con el final del video.
- **Agregar fade out:** Aplicar un "teardrop fade" (fade en forma de gota) al final de la pista de música.

## Reglas para agentes
- Usa **Command + G** para convertir la pista de música en connected storyline antes de cualquier corte.
- Activa **Snapping** en la línea de tiempo antes de usar la Blade tool para asegurar cortes precisos en las líneas del beat grid.
- Cuando recortes secciones enteras, corta siempre en **líneas gruesas** (cambios de arreglo) para transiciones imperceptibles.
- Cuando necesites recortar menos de 10 segundos, usa **downbeats** (líneas sólidas delgadas) como puntos de inicio y fin del rango a eliminar.
- Para ajustar la sincronización final, usa **slip edit** (herramienta T) desplazando exactamente hasta que aparezca una línea sólida en el punto de corte.
- Nunca cortes en medio de un compás (entre líneas punteadas) si buscas una transición musical limpia.

## Errores comunes que evita o menciona
- **No omitir el paso de convertir a connected storyline (Command + G):** Si se salta, los cortes no se comportarán correctamente al mover la pista.
- **No recortar solo el final con fade out:** Es menos profesional; la técnica correcta es eliminar secciones intermedias para preservar intro y outro.
- **No cortar en puntos aleatorios:** Usar siempre las líneas del beat grid (gruesas para cambios de arreglo, sólidas para downbeats) para que la edición sea imperceptible.
- **No ignorar el snapping:** Sin snapping activado, es difícil alinear los cortes exactamente en las líneas del beat grid.
- **No extender la música demasiado:** Si la música termina antes que el video, usar slip edit para desplazar un compás completo (4 beats) en lugar de estirar o repetir.