# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 13 - Efecto Clonación
**Fuente:** mundoaudiovisual | https://youtu.be/VpmqMehWkTk

## Qué enseña (2-3 líneas)
Enseña a crear el efecto de clonación (múltiples versiones de una misma persona en pantalla) usando máscaras de opacidad y cortes precisos en Adobe Premiere Pro 2020. Explica los requisitos de grabación previa (trípode fijo, exposición bloqueada) y cómo sincronizar dos clips para que los personajes interactúen.

## Lecciones accionables
- **Requisitos de grabación previa:** grabar dos clips con la cámara en trípode, sin mover la posición. Bloquear la exposición de la cámara (modo manual o bloqueo AE) para evitar cambios de luz entre tomas.
- **Sincronizar clips en la línea de tiempo:** colocar ambos clips en pistas separadas (ej. V1 y V2). Alinear manualmente el momento en que el segundo personaje aparece.
- **Duplicar clip y audio:** seleccionar el clip base, presionar `Ctrl+C` / `Cmd+C` y `Ctrl+V` / `Cmd+V` para duplicar. Si el audio está vinculado, desvincularlo con `Ctrl+L` / `Cmd+L` y luego vincular el duplicado con su audio correspondiente.
- **Cortar con la herramienta cuchilla (Razor Tool):** presionar `C` para activar la herramienta cuchilla, hacer clic en el punto exacto donde el segundo personaje entra en escena. Eliminar la parte sobrante del clip superior con `Supr`.
- **Crear máscara de opacidad:** seleccionar el clip superior, ir a `Effects Controls` > `Opacity` > elegir `Freeform Bezier` (curva libre). Bajar la opacidad al 75% para ver el clip inferior mientras se dibuja la máscara.
- **Dibujar la máscara alrededor del personaje:** hacer clics alrededor del personaje que debe permanecer visible, usando como referencia elementos fijos del fondo (ej. un cuadro en la pared). Cerrar la máscara uniendo el último punto con el primero.
- **Ajustar posición del clip inferior:** si hay desfase, seleccionar el clip inferior y usar los controles de `Motion` > `Position` (eje Y) para subir o bajar hasta alinear perfectamente ambos clips.
- **Eliminar máscara en segmentos donde no se necesita:** hacer un corte con la cuchilla en el clip superior justo antes de que el personaje salga. Seleccionar la máscara en `Effects Controls` y presionar `Supr` para eliminarla en ese segmento.
- **Rellenar espacios vacíos:** duplicar fragmentos del clip base (presionando `Alt` + arrastrar) para cubrir zonas donde el personaje original ya no está. Ajustar la duración con la herramienta `Rate Stretch Tool` (atajo `R`) o cambiando la velocidad en `Speed/Duration`.
- **Aplicar transición "Transform Cut":** ir a `Effects` > `Video Transitions` > `Dissolve` > `Transform Cut`. Arrastrar sobre los cortes entre fragmentos. Ajustar la duración de la transición a un valor pequeño (arrastrando el borde) para que analice y disimule los cortes bruscos.
- **Esperar análisis de fondo:** la transición "Transform Cut" muestra "background analysis" mientras procesa; dejar que termine para que el efecto sea óptimo.

## Reglas para agentes
- Usa siempre un trípode fijo y exposición bloqueada (manual o AE Lock) al grabar las tomas para clonación.
- Cuando dibujes la máscara con Freeform Bezier, baja la opacidad al 75% temporalmente para ver el clip inferior de referencia.
- Alinea los clips manualmente en la línea de tiempo; no uses sincronización automática para este efecto.
- Elimina la máscara en los segmentos donde el personaje ya no está presente para evitar artefactos.
- Aplica la transición "Transform Cut" solo en cortes entre fragmentos del mismo clip base, no en cortes entre clips diferentes.
- Nunca muevas la cámara ni cambies el encuadre entre tomas; cualquier variación arruinará la ilusión de clonación.

## Errores comunes que evita o menciona
- **No bloquear la exposición de la cámara:** si la exposición es automática, la luz cambiará entre tomas y el corte se notará.
- **Mover la cámara entre tomas:** el efecto solo funciona si el fondo es idéntico; cualquier movimiento del trípode rompe la ilusión.
- **No alinear correctamente los clips:** si los personajes no están en la misma posición relativa al fondo, se verá un salto visual.
- **Dejar la máscara activa en todo el clip:** si no se elimina la máscara cuando el personaje ya no está, se verán bordes o recortes extraños.
- **Usar transiciones genéricas en los cortes:** "Transform Cut" está diseñada para disimular cortes en clips con fondo estático; otras transiciones pueden verse artificiales.