# Course - Final Cut Pro X - 2020 - 🎬 * Chap. 18 - Masks in Final Cut Pro X
**Fuente:** mundoaudiovisual | https://youtu.be/hiVGXG9kaGk

## Qué enseña (2-3 líneas)
Este capítulo enseña a crear efectos visuales con máscaras de dibujo (Draw Mask) en Final Cut Pro X, específicamente para simular que al abrir una puerta se revela un fondo diferente (como barcos en tormenta o una playa soleada). Explica el proceso completo de animar la máscara fotograma a fotograma usando keyframes, ajustando puntos de control para seguir el contorno de la puerta que se abre y se cierra.

## Lecciones accionables
- **Activar/desactivar clips:** Presiona la tecla **V** para desactivar un clip (silenciar audio y video). Recuerda reactivarlo antes de exportar.
- **Crear máscara de dibujo:** Ve a **Effects > Masks > Draw Mask** y arrastra el efecto al clip.
- **Añadir keyframe inicial:** Coloca el cursor en el primer fotograma donde la puerta comienza a abrirse. Haz clic en el diamante de keyframe junto a **Control Points** en el inspector.
- **Dibujar puntos de control:** Haz clic en el visor para añadir puntos alrededor del contorno de la puerta. Imagina la línea de la puerta y coloca puntos siguiendo ese borde.
- **Invertir máscara:** En el inspector de la máscara, marca la casilla **Invert Mask** para que solo se muestre el área dentro de la máscara (el "agujero").
- **Animar fotograma a fotograma:** Avanza 2-3 fotogramas con las teclas de flecha derecha. Ajusta los puntos de control para que sigan el movimiento de la puerta. Haz clic en el diamante de keyframe para añadir un nuevo keyframe automáticamente.
- **Usar referencia visual:** Crea un rectángulo sin relleno (solo borde) desde **Shapes** en el menú de títulos/generadores. Rótalo y colócalo siguiendo la línea de la puerta como guía. Elimínalo después de ajustar los puntos.
- **Zoom para precisión:** Usa el menú desplegable de zoom en el visor (o atajo **Cmd +** ) para ampliar al 200% o 400% y ver detalles finos.
- **Cortar clip al final de la animación:** Cuando la puerta termina de abrirse, haz un corte (**Cmd + B**) en ese fotograma. En el clip siguiente, elimina la máscara (selecciona el efecto y presiona **Delete**).
- **Añadir clip de fondo:** Coloca el clip de fondo (ej. barcos) debajo del clip con máscara en la línea de tiempo. Ajusta su posición y escala con **Transform** en el inspector.
- **Ajustar exposición del fondo:** En el inspector del clip de fondo, modifica **Exposure** para que coincida con la iluminación de la escena principal.
- **Añadir efectos de sonido:** Busca sonidos de puerta, viento, mar, etc., desde el navegador de audio. Colócalos en la línea de tiempo y ajusta su volumen gradualmente con keyframes de audio (usando **Show Audio Animation**).
- **Grabar voz en off:** Ve a **Window > Record Voiceover** para grabar sonidos adicionales (ej. suspiros). Corta y coloca el audio en la línea de tiempo.
- **Aplicar corrección de color:** Arrastra un efecto de color (ej. **Dry Color Look**) desde **Effects > Color**. Ajusta con **Color Wheels**: modifica el master hacia naranja, aumenta saturación, baja sombras.
- **Añadir efecto de luz:** Usa el efecto de luz direccional desde **Effects > Light** para simular luz entrando por la puerta.

## Reglas para agentes
- Usa **Draw Mask** cuando necesites recortar formas irregulares que cambian con el tiempo (ej. una puerta abriéndose).
- Activa **Invert Mask** siempre que quieras que el área dentro de la máscara sea transparente y muestre el clip de abajo.
- Añade un keyframe de **Control Points** en cada fotograma donde la forma cambie (cada 2-3 fotogramas para animación suave).
- Usa la tecla **V** para desactivar clips temporalmente, pero nunca olvides reactivarlos antes de exportar.
- Nunca uses demasiados puntos de control innecesarios; equilibra precisión con facilidad de ajuste.
- Corta el clip con **Cmd + B** al inicio y final de la animación de máscara para aislar el efecto.
- Coloca siempre el clip de fondo debajo del clip con máscara en la línea de tiempo.
- Ajusta la exposición y color del clip de fondo para que coincida con la iluminación de la escena principal.

## Errores comunes que evita o menciona
- **No olvidar reactivar clips desactivados con V:** Si desactivas un clip para trabajar, reactívalo antes de exportar o el audio/video faltará.
- **No usar demasiados puntos de control innecesarios:** Más puntos dan más precisión pero dificultan el ajuste; encuentra un equilibrio.
- **No alinear mal los puntos de control con la línea de la puerta:** Usa una figura de referencia (rectángulo sin relleno) para guiar los puntos y evitar errores de alineación.
- **No olvidar invertir la máscara:** Si no marcas **Invert Mask**, el área dentro de la máscara se ocultará en lugar de mostrarse.
- **No saltarse fotogramas clave:** La animación de la máscara debe hacerse fotograma a fotograma para que siga el movimiento real de la puerta.
- **No olvidar animar también el cierre:** El proceso de máscara debe repetirse en reversa cuando la puerta se cierra.