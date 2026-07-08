# Course - Final Cut Pro X - 2020 - 🎬 * Chapter 13 - Cloning Effect -
**Fuente:** mundoaudiovisual | https://youtu.be/jsQ8wKz0fpQ

## Qué enseña (2-3 líneas)
Cómo crear un efecto de clonación (cloning effect) en Final Cut Pro X superponiendo dos clips grabados con la misma toma estática, sincronizando audio y video, y usando recorte, keyframes de color y freeze frames para que dos versiones del mismo sujeto interactúen en pantalla.

## Lecciones accionables
- **Grabar dos clips con la misma toma fija**: cámara estática, sin moverla del lugar, mismo encuadre en clip 1 y clip 2.
- **Crear nuevo evento y proyecto**: en Final Cut Pro X, crear nuevo evento llamado "efecto" y nuevo proyecto "Cloning Effect" a 1080p, 25 fps.
- **Importar los dos clips de video y el audio externo** (grabado con micrófono y grabadora externa).
- **Sincronizar audio con el clap**: buscar el punto del clap en el video, cortar el audio externo en ese punto y alinearlo con el clap del video.
- **Ajustar sonido**:
  - Ir a "Audio bars" y aplicar el efecto "Voice-over optimization".
  - Abrir "Equalizer channel" para añadir carácter a los bajos y reducir ruido de fondo.
  - Ajustar volumen para evitar cortes.
- **Crear un compound clip**: seleccionar el clip de video y el de audio (Shift + clic), luego menú > "Create new compound clip" para manejarlos como un solo clip.
- **Colocar clip 1 en línea de tiempo**, cortar donde termina su acción, colocar clip 2 encima en una capa superior.
- **Recortar el clip superior**:
  - Seleccionar el clip de arriba.
  - Activar "Crop tool" (herramienta de recorte) desde la barra de herramientas izquierda.
  - Ajustar en el inspector hasta que el recorte oculte la parte no deseada (ej. recortar hasta la línea de un mueble para disimular el corte).
  - Hacer clic en "Accept".
- **Ajustar color con keyframes**:
  - Ir a "Color wheels" (ruedas de color).
  - Añadir keyframes en los puntos donde cambia la iluminación.
  - En el keyframe inicial, subir "Highlights" (altas luces) para igualar luminancia.
  - Avanzar en el clip y añadir nuevos keyframes reduciendo la luz cuando el sujeto pasa frente a una fuente de luz.
- **Ajustar velocidad**:
  - Seleccionar clip, ir a "Speed" (velocidad) y reducir a 50% para ralentizar.
  - Usar "Fast motion" para acelerar partes si es necesario.
- **Añadir freeze frame**:
  - Buscar "freeze frame" en la ayuda o menú.
  - Colocar el playhead donde se quiere congelar la imagen.
  - Seleccionar "Add freeze frame".
  - Arrastrar el freeze frame a la línea de tiempo para mantener al sujeto quieto mientras el otro habla.
- **Ajustar volumen de diálogos**: cuando un clon no habla, bajar su volumen a cero para evitar feedback entre los dos audios.

## Reglas para agentes
- Usa "Create new compound clip" cuando tengas video y audio sincronizados que deban moverse juntos.
- Aplica "Crop tool" solo al clip de la capa superior; la capa inferior se muestra completa.
- Usa keyframes en "Color wheels" cuando la iluminación cambie dentro del mismo clip; ajusta "Highlights" para igualar luminancia.
- Nunca muevas la cámara entre la grabación del clip 1 y el clip 2; la toma debe ser idéntica.
- Nunca dejes el volumen de ambos clones activo al mismo tiempo si están en el mismo plano; baja a cero el que no habla.

## Errores comunes que evita o menciona
- **Corte visible en la línea de recorte**: se evita recortando justo en la línea de un mueble u objeto vertical para disimular la transición.
- **Desajuste de iluminación entre clips**: se corrige con keyframes en las ruedas de color, ajustando las altas luces progresivamente.
- **Sujeto quieto por demasiado tiempo**: se evita usando freeze frame solo cuando es necesario y acelerando partes con "Fast motion" para mantener naturalidad.
- **Feedback de audio**: se evita bajando el volumen del clon que no está hablando a cero.