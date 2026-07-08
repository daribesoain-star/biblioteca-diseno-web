# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 8: Los fotogramas clave
**Fuente:** mundoaudiovisual | https://youtu.be/eewmdAjBpiY

## Qué enseña (2-3 líneas)
Este capítulo explica el concepto y uso de fotogramas clave (keyframes) en DaVinci Resolve 18 para animar propiedades como zoom, posición, opacidad, recorte, saturación, desenfoque y volumen. Muestra cómo crear animaciones lineales y no lineales mediante la interpolación de curvas, y cómo aplicar keyframes a transformaciones, títulos, efectos de color y audio.

## Lecciones accionables
- **Activar keyframe en Zoom:** Ubica el diamante (diamond shape) junto a la propiedad "Zoom" en el inspector. Coloca el cabezal en el punto A, haz clic en el diamante para añadir un keyframe. Mueve el cabezal al punto B, ajusta el valor de zoom (ej. acercar) y se añadirá automáticamente un segundo keyframe. Al reproducir, el zoom cambia progresivamente de A a B.
- **Keyframe en Transformación:** En el inspector, haz clic en el diamante de "Transform" para añadir un keyframe a todas las propiedades de transformación simultáneamente. En el punto B, ajusta "Position" (arrastra en el visor) y se insertará otro keyframe automáticamente. Úsalo para zooms dinámicos con movimiento de cámara.
- **Controlar velocidad de animación:** Acerca los keyframes en la línea de tiempo para que la animación sea más rápida; sepáralos para que sea más lenta.
- **Animar recorte (Crop):** En el inspector, bajo "Crop", añade un keyframe en "Left" o "Right". En otro punto, cambia el valor del recorte. Úsalo para transiciones de barrido entre clips en pistas superpuestas.
- **Animar opacidad para fundido:** En "Opacity", añade keyframe en 0% en el punto A y en 100% en el punto B para un fundido de entrada (fade in). Invierte los valores para fundido de salida.
- **Animar posición de texto:** Con un título básico seleccionado, en el inspector bajo "Position", añade keyframe en el punto A (ej. abajo del encuadre) y en el punto B (ej. arriba). El texto se moverá entre ambas posiciones.
- **Interpolación no lineal con curvas (Shift+C):** Selecciona un keyframe en la línea de tiempo, presiona **Shift+C** para abrir el editor de curvas. Haz clic en el keyframe y conviértelo en curva (arrastra los manejadores). Para que una animación empiece lento y termine rápido, curva hacia arriba al inicio; para que empiece rápido y termine lento, curva hacia abajo al final.
- **Animar saturación (blanco y negro a color):** En la pestaña "Color", añade un nodo "Color Compressor". Ajusta "Saturation" a 0, añade keyframe. En otro punto, sube "Saturation" a 100. Al reproducir, la imagen pasa gradualmente de blanco y negro a color.
- **Animar desenfoque (Blur):** En el inspector, bajo "Blur", ajusta "Blur Intensity" a 0 y añade keyframe. En otro punto, sube el valor (ej. 50) y se añadirá otro keyframe. La imagen se desenfoca progresivamente.
- **Animar volumen de audio:** En la línea de tiempo, selecciona el clip de audio. En el inspector de audio, ajusta el volumen (ej. 0 dB) y añade keyframe. En otro punto, cambia el volumen (ej. -10 dB) para crear subidas y bajadas de volumen.

## Reglas para agentes
- Usa el diamante (keyframe diamond) junto a cualquier propiedad en el inspector para añadir el primer keyframe en el punto A.
- Cuando modifiques una propiedad después de tener un keyframe, se añadirá automáticamente otro keyframe en la posición actual del cabezal.
- Presiona **Shift+C** para abrir el editor de curvas de interpolación cuando necesites animaciones no lineales (acelerar/desacelerar).
- Convierte keyframes a curva en el editor de curvas para animaciones más dinámicas y naturales (ej. caída de una pelota).
- Separa los keyframes en la línea de tiempo para animaciones lentas; acércalos para animaciones rápidas.
- Nunca asumas que los keyframes solo funcionan en transformación; aplícalos también a opacidad, recorte, saturación, desenfoque, volumen y posición de títulos.

## Errores comunes que evita o menciona
- **No confundir keyframe lineal con no lineal:** Las animaciones lineales se ven planas y poco dinámicas; usar curvas (interpolación) mejora el resultado visual.
- **Olvidar que al modificar una propiedad después del primer keyframe se añade automáticamente otro:** No es necesario hacer clic manualmente en el diamante en el punto B si ya hay un keyframe previo.
- **No ajustar la distancia entre keyframes para controlar la velocidad:** Si la animación es muy rápida o muy lenta, separa o acerca los keyframes en la línea de tiempo.
- **Pensar que solo se pueden animar transformaciones:** El video muestra que se puede animar recorte, opacidad, saturación, desenfoque y volumen, entre otras propiedades.