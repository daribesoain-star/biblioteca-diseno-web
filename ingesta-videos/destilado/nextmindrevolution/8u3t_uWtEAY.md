# How to Create an AI Restoration Videos (Step-by-Step Tutorial)
**Fuente:** nextmindrevolution | https://youtu.be/8u3t_uWtEAY
## Qué enseña (2-3 líneas)
Enseña a crear videos virales de restauración con IA usando imágenes por etapas y animaciones con fotograma inicial/final.  
El flujo parte del resultado final perfecto, genera versiones deterioradas/intermedias y luego une clips tipo time-lapse en una sola pieza.

## Lecciones accionables
- Usa Freepik, aunque también menciona Polo AI, Hicksfield o Flow, siempre que soporten animaciones con **start frame** y **ending frame**.
- Primero crea la imagen final restaurada. El tutorial usa el generador de imágenes con **Nano Banana 2**.
- Prompt base mencionado para la imagen final: **“wide shot of an old car”**.
- Define el entorno del auto: garaje, carretera o campo. El ejemplo usa un auto clásico.
- Parámetros de imagen final: **ratio 16:9** y **2K**.
- Para controlar la restauración, crea etapas visuales. El ejemplo usa 3 imágenes: auto destruido, auto parcialmente reparado y auto final restaurado.
- Para destruir el auto, usa la imagen final como referencia en **edit image** con **Nano Banana**.
- En el prompt de edición, especifica que quieres modificar el vehículo pero preservar: **original framing**, **background**, **camera angle** y **car scale**.
- Añade explícitamente que el fondo no cambia: **background never changes**.
- Para la etapa destruida, el prompt narrado indica: pintura arruinada, sin ventanas, sin ruedas, sin luces y con oxidación pesada.
- Para la etapa intermedia, no escribas “fix the car”. Especifica solo lo que quieres reparar en esa fase.
- En la etapa intermedia, el tutorial pide mantener framing, background y angle; arreglar ventanas y luces; remover óxido y pulir la carrocería.
- Para generar video, usa el generador de video con start frame y ending frame.
- Primer clip: start frame = auto completamente destruido; ending frame = auto parcialmente reparado.
- Keyword exacta del prompt de video: **“fast motion time-lapse”**.
- Prompt narrado del primer clip: mecánicos arreglando el auto, el cuerpo oxidado se transforma en acero pulido, se arreglan las ventanas, manteniendo framing y lighting entre frames.
- Parámetros de salida de video: **1080p**, duración **6 seconds**, ratio **16:9**.
- Segundo clip: start frame = auto parcialmente reparado/cromado; ending frame = restauración final.
- Prompt narrado del segundo clip: **“fast motion time-lapse”**, mecánicos borrosos restaurando el vehículo, pintan el auto, colocan las ruedas, **static framing and lighting throughout**.
- Si quieres una transformación más detallada, especifica exactamente qué deben hacer los mecánicos en cada etapa.
- Descarga los videos generados, colócalos en una timeline y únelos en un solo clip.
- Para un cierre extra, genera una imagen final con mecánicos apoyados en el auto, sonriendo y saludando a cámara.
- Para esa imagen final usa como referencia la imagen restaurada y el modelo **Google Nano Banana Pro** o **Nano Banana 2**.
- Prompt narrado del cierre: mecánicos apoyados en el auto, sonriendo a cámara y saludando; pedir consistencia con la imagen de referencia.
- Para animar el cierre, usa **VO3.1**.
- En el cierre no usa final frame; solo usa la imagen de los mecánicos como frame inicial.
- Prompt del cierre mencionado: **“Happy mechanics just leaning on the car, waving and smiling at the camera.”**
- Movimiento de cámara exacto mencionado: **“slow dolly zoom in”**.
- Duración recomendada para el cierre: **4 seconds**.

## Reglas para agentes
- Usa una herramienta de video que permita **start frame** y **ending frame** cuando quieras controlar una restauración por etapas.
- Empieza siempre generando el resultado final perfecto antes de crear las versiones deterioradas.
- Mantén **framing**, **background**, **camera angle**, **car scale** y **lighting** constantes entre imágenes.
- Usa **“fast motion time-lapse”** como keyword cuando el video deba parecer una restauración acelerada.
- Divide la restauración en etapas pequeñas cuando necesites control sobre la progresión.
- Especifica qué se repara en cada etapa; nunca uses solo “fix the car” si quieres una transformación gradual.
- Usa duración más larga, como **6 seconds**, cuando la transformación tenga muchos cambios.
- Usa duración más corta, como **4 seconds**, para clips finales simples con pose o cámara.
- Genera un clip final separado si quieres una escena de celebración o resultado terminado.

## Errores comunes que evita o menciona
- Decir solo “fix the car”, porque la IA puede restaurarlo todo de golpe y eliminar la progresión.
- No fijar framing, fondo, ángulo o escala, porque el modelo puede cambiar el tamaño del auto o girar la cámara.
- Usar muy pocos segundos para una transformación compleja, porque puede verse rara o apresurada.
- No indicar acciones concretas de los mecánicos, lo que reduce el control sobre la animación.
- Aceptar artefactos del final del clip sin editar; el tutorial sugiere cortar las partes raras en la timeline.