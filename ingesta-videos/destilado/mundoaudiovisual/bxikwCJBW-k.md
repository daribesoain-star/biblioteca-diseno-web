# Curso de After Effects en español - 🎬  Capítulo 7 - La Rotoscopia.
**Fuente:** mundoaudiovisual | https://youtu.be/bxikwCJBW-k

## Qué enseña (2-3 líneas)
Enseña a separar objetos en movimiento del fondo sin croma usando el Pincel de Rotoscopia de After Effects. Cubre el pintado inicial de la silueta, el refinado de bordes (especialmente en cabello) y la propagación automática cuadro a cuadro. Finalmente, muestra cómo duplicar el objeto rotoscopiado y combinarlo con la escena original usando máscaras y precomposiciones para efectos visuales.

## Lecciones accionables
- **Abrir el Pincel de Rotoscopia:** Seleccionar la capa en la línea de tiempo, luego hacer clic en el icono del pincel de rotoscopia en la barra de herramientas superior, o hacer doble clic en "efecto" en la capa. No se puede usar directamente en la composición; se trabaja dentro de la capa.
- **Ajustar el diámetro del pincel:** Mantener presionada la tecla **Command (Mac)** o **Control (Windows)** y mover el mouse hacia arriba o abajo para cambiar el diámetro en tiempo real.
- **Pintar la silueta (verde):** Con el pincel en modo verde (predeterminado), pintar sobre el área que se desea separar del fondo. El pincel busca áreas de contraste para crear el canal alfa.
- **Borrar áreas no deseadas (rojo):** Mantener presionada la tecla **Option (Mac)** o **Alt (Windows)** para cambiar el pincel a modo rojo y borrar las áreas que no deben incluirse en la selección.
- **Refinar bordes de cabello:** Usar la herramienta **Refine Edge Brush** (pincel de borde refinado) aplicándola únicamente sobre los bordes del cabello. Esto mejora la transparencia en áreas difíciles.
- **Propagar la rotoscopia:** Después del primer cuadro, extender la barra de propagación (línea gruesa en la línea de tiempo) hasta el final del clip y presionar **Play** para que After Effects analice y propague la selección automáticamente cuadro a cuadro.
- **Congelar el análisis:** Una vez que la propagación se ve correcta, hacer clic en **Freeze** (congelar) para guardar el caché y bloquear la propagación del pincel de rotoscopia y el refinado de bordes.
- **Ajustar bordes finales:** En los controles del efecto, usar los parámetros:
    - **Feather** (desvanecer): agregar un valor pequeño para suavizar los bordes.
    - **Contrast** (contraste): subir al máximo para definir mejor el borde.
    - **Reduce Chatter** (reducir vibración): para suavizar bordes temblorosos.
- **Duplicar el objeto rotoscopiado:** Duplicar la capa con **Command + D (Mac)** o **Control + D (Windows)**. En la copia, mantener el efecto de rotoscopia. En la capa original, eliminar el efecto para conservar el fondo completo.
- **Crear máscaras de superposición:** Precomponer la capa rotoscopiada (clic derecho > Pre-compose > seleccionar "Move all attributes into the new composition"). Luego dibujar una máscara en la precomposición y cambiarla a modo **Subtract** (restar) para ocultar partes del objeto detrás de elementos de la escena (ej. detrás de una silla o lámpara).

## Reglas para agentes
- Usa el Pincel de Rotoscopia solo dentro de la capa, nunca directamente en la composición.
- Siempre pinta primero la silueta completa en verde antes de borrar detalles en rojo.
- Aplica la herramienta Refine Edge Brush exclusivamente en bordes de cabello o pelaje, no en bordes sólidos.
- Extiende la barra de propagación hasta el final del clip antes de presionar Play para el análisis automático.
- Haz clic en Freeze solo después de verificar que la propagación es correcta en todos los cuadros.
- Para efectos de superposición, precompón la capa rotoscopiada con "Move all attributes into the new composition" antes de añadir máscaras.
- Nunca uses el Pincel de Rotoscopia en clips con poco contraste entre el objeto y el fondo; el análisis fallará.

## Errores comunes que evita o menciona
- No usar el pincel directamente en la composición; debe abrirse la capa para trabajar.
- No preocuparse por imperfecciones en el primer pintado; se corrigen después con el modo rojo (Option/Alt).
- No aplicar Refine Edge Brush en bordes que no sean cabello; está diseñado solo para áreas difusas.
- No olvidar extender la propagación antes de reproducir; de lo contrario, solo se analiza el primer cuadro.
- No descuidar la parte inferior del objeto si no se va a usar en el encuadre final; se puede ignorar para ahorrar tiempo.
- No olvidar precomponer antes de añadir máscaras de superposición; de lo contrario, la máscara no funcionará correctamente.