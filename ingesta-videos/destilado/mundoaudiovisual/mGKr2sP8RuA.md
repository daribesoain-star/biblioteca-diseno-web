# Curso de After Effects en español - 🎬 Capítulo 6 - Tracking en 3D - Así se hizo La Casa de Papel.
**Fuente:** mundoaudiovisual | https://youtu.be/mGKr2sP8RuA

## Qué enseña (2-3 líneas)
Enseña a reemplazar una pantalla real en un video grabado en exteriores (Plaza Callao, Madrid) insertando un clip propio mediante 3D Camera Tracking en After Effects, replicando el efecto usado en La Casa de Papel pero sin presupuesto ni green screen. Cubre análisis de tracking, creación de nulos 3D, ajuste de bordes con efecto Corner Pin y refinamiento fotograma a fotograma.

## Lecciones accionables
- **Activar el Tracker:** Ve a `Window` > activa `Tracker`. En el panel Tracker, selecciona `Track Camera`. Haz clic en `Accept` cuando aparezca el mensaje sobre máscaras.
- **Ajustar visibilidad de puntos de tracking:** En el panel del Tracker, aumenta el parámetro `Point Size` para hacer los puntos más grandes y visibles.
- **Seleccionar puntos de tracking:** Elige al menos 4 puntos de tracking que estén cerca del área donde insertarás el video (evita puntos sobre la pantalla que tiene video en movimiento). Mantén presionada la tecla `Shift` para seleccionar múltiples puntos.
- **Crear nulo desde puntos seleccionados:** Con los puntos seleccionados, haz clic derecho > `Create Null` (o `Create Text` / `Create Solid` según necesites). Esto genera un objeto nulo 3D que sigue el movimiento de la cámara.
- **Importar y preparar el video a insertar:** Importa tu clip (el instructor usó 1080 x 1080 píxeles, formato cuadrado). Activa la propiedad `3D Layer` en la capa del clip.
- **Vincular el video al nulo:** En la capa del clip, usa el pick whip para enlazar `Position` al nulo creado, o simplemente asigna `Parent` al nulo.
- **Ajustar escala y posición:** Escala el clip con `Shift` presionado para mantener proporciones. Posiciónalo sobre la pantalla objetivo.
- **Aplicar efecto Corner Pin:** Ve a `Effects & Presets` panel, busca `Corner Pin` y arrastra el efecto sobre la capa del clip. Ajusta los cuatro puntos (`Upper Left`, `Upper Right`, `Lower Left`, `Lower Right`) para alinear los bordes del clip con los bordes de la pantalla real.
- **Refinar con keyframes:** Agrega keyframes a los parámetros de `Corner Pin` y avanza fotograma a fotograma ajustando los puntos para que el clip cubra perfectamente la pantalla en todo momento.
- **Añadir efectos de realismo:** Aplica `Vignette` (en `Basic Correction`) con valor mínimo para crear un borde negro que disimule los bordes del clip. Aplica `Dispersion Effect` (visto en capítulo anterior) para hacer desaparecer el clip como si se rompiera.

## Reglas para agentes
- Usa `3D Camera Tracking` cuando necesites reemplazar una pantalla, cartel o superficie plana en un video con movimiento de cámara.
- Selecciona siempre al menos 4 puntos de tracking en áreas estáticas (paredes, bordes de edificios) y nunca sobre la superficie que contiene video en movimiento.
- Activa `3D Layer` en cualquier capa que vayas a enlazar a un nulo de tracking 3D.
- Aplica `Corner Pin` para ajustar bordes cuando la superficie objetivo no sea perfectamente rectangular o tenga perspectiva variable.
- Refina keyframes de `Corner Pin` fotograma a fotograma para evitar desajustes visibles en bordes.
- Usa `Vignette` con valor mínimo para ocultar imperfecciones en los bordes del clip insertado.

## Errores comunes que evita o menciona
- **No seleccionar puntos sobre la pantalla con video:** El tracker no detecta bien el movimiento en zonas donde el contenido cambia constantemente (como la pantalla del cine). En su lugar, elige puntos en las paredes o marcos alrededor.
- **No usar puntos de tracking insuficientes:** Con menos de 4 puntos el tracking puede ser inestable. Siempre selecciona al menos 4 puntos cercanos al área de inserción.
- **No ajustar bordes fotograma a fotograma:** Confiar solo en el tracking inicial puede dejar bordes visibles. Es necesario añadir keyframes a `Corner Pin` y ajustar manualmente en cada fotograma donde la alineación se desvíe.
- **Olvidar activar 3D Layer:** Si la capa del clip no tiene `3D Layer` activado, no seguirá correctamente al nulo 3D.