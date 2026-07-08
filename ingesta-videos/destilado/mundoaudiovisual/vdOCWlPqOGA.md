# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 9 - Los fotogramas claves.
**Fuente:** mundoaudiovisual | https://youtu.be/vdOCWlPqOGA

## Qué enseña
Explica qué son los fotogramas clave (keyframes) en DaVinci Resolve y cómo se usan para crear animaciones en cualquier parámetro: posición, zoom, opacidad, volumen, color y efectos. Muestra cómo animar texto, logotipos y clips con movimientos orgánicos usando interpolación temporal y curvas de keyframe.

## Lecciones accionables
- **Crear un keyframe básico:** localiza el parámetro a animar (ej. Zoom en Transformación), haz clic en el diamante gris a la derecha del parámetro → se vuelve rojo indicando keyframe activo.
- **Animar zoom en texto:** coloca el cabezal al inicio, marca keyframe en Zoom con valor pequeño; mueve el cabezal más adelante, cambia Zoom a valor grande → se genera automáticamente el segundo keyframe.
- **Navegar entre keyframes:** usa los botones de flecha (anterior/siguiente keyframe) en el inspector o en la línea de tiempo para saltar directamente a cada keyframe.
- **Modificar un keyframe existente:** sitúate sobre el keyframe (el diamante en la línea de tiempo se vuelve rojo al pasar el cursor) y ajusta el parámetro en el inspector.
- **Duplicar clips con Alt:** mantén presionada la tecla Alt y arrastra el clip para duplicarlo en la línea de tiempo.
- **Añadir marcadores:** presiona la tecla M en la línea de tiempo para marcar puntos de referencia donde tienes keyframes.
- **Aplicar interpolación temporal (curvas de keyframe):** selecciona el clip, haz clic en el botón "Curva" (junto a los diamantes), elige el parámetro animado (ej. Posición X), haz clic derecho sobre un keyframe → selecciona "Aceleración inicial" o "Desaceleración final" para movimientos orgánicos.
- **Ajustar manualmente la curva:** en la ventana de curvas, arrastra la línea hacia arriba (acelera salida) o hacia abajo (acelera entrada) para modificar la velocidad del movimiento.
- **Animar efectos (Gaussian Blur):** arrastra el efecto desde la biblioteca de efectos al clip, en el inspector ajusta el parámetro "Intensidad" a 0, marca keyframe, avanza en el tiempo, sube la intensidad → se crea animación de desenfoque progresivo.
- **Suavizar animación de blur:** separa los keyframes en el tiempo (más distancia entre ellos) para que el cambio sea más gradual y suave.
- **Simular motion blur sin versión de pago:** usa "Directional Blur" o "Gaussian Blur" con keyframes: keyframe en intensidad 0 al inicio, keyframe con intensidad media en el punto medio del movimiento, keyframe en 0 al final del movimiento.
- **Eliminar keyframes:** haz clic derecho sobre el diamante rojo en el inspector y selecciona "Eliminar" o vuelve a hacer clic en el diamante para desactivarlo.

## Reglas para agentes
- Usa el diamante gris (keyframe) en cualquier parámetro del inspector cuando necesites animar un cambio en el tiempo.
- Marca siempre un keyframe inicial antes de modificar el valor del parámetro en otro punto de la línea de tiempo.
- Usa "Aceleración inicial" en curvas de keyframe cuando quieras que el movimiento empiece rápido y termine lento (entrada orgánica).
- Usa "Desaceleración final" cuando quieras que el movimiento empiece lento y termine rápido.
- Nunca dejes keyframes sin propósito: si no necesitas animación, no actives el diamante.
- Para animaciones idénticas en múltiples clips, usa los mismos valores de parámetro en los mismos puntos de tiempo exactos.
- Cuando simules motion blur con keyframes, asegúrate de que el blur coincida con la dirección del movimiento (ajusta el ángulo en Directional Blur).

## Errores comunes que evita o menciona
- No confundir keyframes con marcadores: los keyframes son diamantes rojos en el inspector, los marcadores son triángulos en la línea de tiempo (tecla M).
- No olvidar que al mover un keyframe en la línea de tiempo (arrastrando el clip) se acelera o ralentiza la animación; más distancia entre keyframes = animación más lenta y suave.
- No usar interpolación lineal siempre: los movimientos constantes se ven robóticos; aplicar curvas de keyframe (aceleración/desaceleración) da naturalidad.
- No animar sin marcar el keyframe inicial: si solo cambias el parámetro sin activar el diamante, no se crea animación.
- No eliminar keyframes accidentalmente: para borrar, haz clic derecho sobre el diamante rojo y selecciona "Eliminar", no solo desactives el parámetro.