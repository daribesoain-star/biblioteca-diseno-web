# CURSO GRATIS FINAL CURT PRO 12 - Capítulo 9 - Los Fotogramas Clave - KEYFRAMES
**Fuente:** mundoaudiovisual | https://youtu.be/Sws0MKVUpeI

## Qué enseña
Explica qué son los fotogramas clave (keyframes) en Final Cut Pro 12, cómo marcar puntos A y B en la línea de tiempo para crear animaciones progresivas en parámetros como posición, escala, opacidad, recorte, volumen y efectos. Muestra que los keyframes están disponibles en múltiples parámetros del inspector y que la transición entre valores es lineal.

## Lecciones accionables
- Para mover parámetros en el inspector: haz clic y arrastra el mouse horizontalmente (izquierda/derecha para valor, mismo gesto para subir/bajar).
- Para agregar un keyframe: ubícate en el punto deseado de la línea de tiempo y haz clic en el diamante "Añadir fotograma clave" (junto al parámetro en el inspector).
- Al modificar un parámetro después de marcar el primer keyframe, el segundo keyframe se agrega automáticamente.
- Navega entre fotogramas clave usando las flechas izquierda/derecha en el inspector.
- Para reiniciar un parámetro animado: usa el botón "Restablecer parámetro" (icono de flecha circular) en el inspector.
- Usa el botón "Transformar" para agregar un keyframe que afecta a todos los parámetros de posición simultáneamente.
- Para animar recorte: selecciona el clip, ve al menú de recorte en el inspector, marca keyframe en un punto, avanza en la línea de tiempo y ajusta el recorte.
- Para animar volumen en audio: marca keyframe en volumen 0, avanza al punto donde comienza la voz, marca otro keyframe y baja el volumen (ejemplo: -28 dB).
- Para animar efectos (blanco y negro, sepia, cómic): aplica el efecto, busca el parámetro "Cantidad" en el inspector, marca keyframe en 0%, avanza y ajusta la cantidad al 100%.

## Reglas para agentes
- Usa keyframes solo en parámetros que tengan el diamante "Añadir fotograma clave" (se vuelve amarillo al activarse).
- Siempre marca el primer keyframe en el punto A antes de modificar el parámetro para el punto B.
- Cuando muevas un parámetro después del primer keyframe, verifica que se haya creado automáticamente el segundo keyframe.
- Para animaciones de aparición/desaparición, usa opacidad: keyframe en 0% para invisible, keyframe en 100% para visible.
- Para animaciones de escala, usa el parámetro "Escala" en el inspector.
- Nunca esperes poder ajustar curvas de velocidad en Final Cut Pro 12; las transiciones entre keyframes son siempre lineales.

## Errores comunes que evita o menciona
- No confundir recorte (crop) con recorte de duración (trim) al animar el marco del video.
- No olvidar que al mover un parámetro después del primer keyframe, el segundo se agrega automáticamente (no es necesario presionar el diamante de nuevo).
- No asumir que todos los parámetros tienen keyframes disponibles; verifica la presencia del diamante en el inspector.
- No esperar curvas de movimiento no lineales (aceleración/desaceleración) porque Final Cut Pro 12 solo maneja keyframes lineales.