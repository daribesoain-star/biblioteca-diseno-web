# Davinci Resolve para iPad PRO   TRUCOS Y CONSEJOS   PARTE 2
**Fuente:** mundoaudiovisual | https://youtu.be/Fubd99Z52p4

## Qué enseña (2-3 líneas)
Edición completa de un video en Davinci Resolve para iPad Pro, desde corte y color hasta efectos de velocidad y exportación. Muestra atajos táctiles con teclado externo, corrección de color con curvas y ruedas de color, y creación de cámara lenta con interpolación de fotogramas.

## Lecciones accionables
- **Navegación con teclado externo en iPad:** Usa dos dedos para mover la línea de tiempo; Option + dos dedos para zoom; Shift + dos dedos para ajustar grosor de clips; Command + dos dedos para desplazamiento horizontal.
- **Atajos de teclado:** Command + B para cortar clip; Command + R para abrir panel de cambio de velocidad; Shift + C para abrir interpolación de fotogramas (Frame Interpolation); Command + C para copiar nodo de color; Command + V para pegar nodo.
- **Corrección de color con waveform:** Ve al módulo Color, selecciona "Graphic Representation" y cambia a "Waveform". Ajusta contraste moviendo la curva directamente. Luego ve a "Logarithmic", baja sombras al máximo, sube altas luces, añade saturación moderada y un toque de "Color Enhancement".
- **Estilo cinematográfico rápido:** En correcciones primarias, desplaza las altas luces hacia azul y las sombras hacia naranja.
- **Copiar corrección entre clips:** Selecciona el nodo de color del clip corregido, pulsa Command + C, selecciona el clip destino, pulsa Command + V.
- **Cámara lenta con speed points:** Pulsa Command + R en el clip. Añade un speed point donde empiece la cámara lenta y otro donde termine. Ajusta la velocidad al 50% (válido si grabas a 60fps en timeline de 30fps).
- **Interpolación de fotogramas orgánica:** Con el clip seleccionado, pulsa Shift + C. En "Speed Processing", cambia a "Optical Flow" y ajusta los fotogramas clave en curva para transición suave. Pulsa Command + C para cerrar el panel.
- **Transición de flash:** Ve a Effects > Video Transitions, busca "Flash" y arrastra al corte entre clips.
- **Fade out de audio:** Desbloquea la pista de audio. Pon un keyframe al inicio del fade, otro keyframe más adelante, y lleva el volumen a 0 en el segundo keyframe.
- **Exportación:** Ve al módulo Delivery. Selecciona formato "H.265 Master". Nombra el archivo, elige ubicación en iPad, pulsa "Add to Render Queue" y "Render All".

## Reglas para agentes
- Usa Command + B para cortar clips en la línea de tiempo.
- Usa Command + R para abrir el panel de cambio de velocidad en un clip seleccionado.
- Usa Shift + C para abrir la interpolación de fotogramas después de aplicar un cambio de velocidad.
- Cuando copies un nodo de color, usa Command + C en el nodo origen y Command + V en el clip destino.
- Para cámara lenta, usa 50% de velocidad si el material fuente es 60fps y el timeline es 30fps.
- Para transiciones suaves de velocidad, activa "Optical Flow" en Speed Processing.
- Al exportar, usa formato H.265 Master para calidad óptima en iPad.
- Nunca apliques cámara lenta sin ajustar la interpolación de fotogramas, o el movimiento será abrupto.

## Errores comunes que evita o menciona
- No olvidar activar la interpolación de fotogramas (Shift + C) después de cambiar la velocidad, para evitar cortes bruscos en cámara lenta.
- No usar velocidades por debajo del 50% si el material fuente es 60fps en timeline de 30fps, o se perderá fluidez.
- No dejar la pista de audio bloqueada al intentar ajustar keyframes de volumen; hay que desbloquearla primero.
- No exportar sin verificar que el formato seleccionado sea H.265 Master para mantener calidad.