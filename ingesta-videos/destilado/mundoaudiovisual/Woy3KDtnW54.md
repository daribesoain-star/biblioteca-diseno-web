# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 5 - Cámara Rápida y Cámara Lenta
**Fuente:** mundoaudiovisual | https://youtu.be/Woy3KDtnW54

## Qué enseña
Cómo crear cámara rápida (time-lapse) y cámara lenta (slow motion) en Adobe Premiere Pro 2020, explicando la relación entre los fotogramas por segundo (fps) de grabación y los fps de la secuencia. Enseña a calcular el porcentaje máximo de ralentización sin pérdida de fluidez y a usar la interpretación de fotogramas (Frame Sampling, Frame Blending, Optical Flow) para mejorar clips con pocos fps.

## Lecciones accionables
- **Para cámara rápida (time-lapse):** Haz clic derecho sobre el clip en la línea de tiempo → selecciona "Speed/Duration" → en el campo "Speed" escribe 200 (para duplicar velocidad) → marca "Ripple Edit, Shifting Trailing Clips" para que los clips siguientes se reubiquen automáticamente → presiona OK.
- **Para cámara lenta correcta (con suficientes fps):** Calcula el porcentaje máximo usando la fórmula: (fps de la secuencia ÷ fps del clip) × 100. Ejemplo: secuencia a 24 fps, clip a 60 fps → (24 ÷ 60) × 100 = 40%. Aplica ese valor en "Speed/Duration".
- **Para cámara lenta con pocos fps (mejorar fluidez):** Haz clic derecho en el clip → "Speed/Duration" → establece el porcentaje deseado (ej. 20%) → en el menú desplegable "Time Interpolation" elige "Optical Flow" (la mejor opción) → procesa la secuencia con atajo "I" para marcar entrada, "O" para marcar salida, y luego "Sequence" → "Render In to Out".
- **Uso de la herramienta Rate Stretch:** Presiona la tecla "R" para activar la herramienta "Rate Stretch" (dentro del grupo de Ripple Edit) → arrastra el borde del clip hacia la izquierda (acelerar) o derecha (ralentizar) directamente en la línea de tiempo.
- **Para silenciar el clip durante la edición:** Arrastra la línea de volumen del clip hacia abajo hasta que desaparezca el sonido.
- **Procesar (renderizar) el clip:** Marca entrada con "I" y salida con "O" en la línea de tiempo → ve a "Sequence" → "Render In to Out" para que la línea amarilla se vuelva verde y el efecto se vea fluido.

## Reglas para agentes
- Usa la fórmula (fps_secuencia ÷ fps_clip) × 100 para calcular el porcentaje máximo de ralentización sin pérdida de fluidez.
- Cuando el clip no tenga suficientes fps para slow motion, usa "Time Interpolation" → "Optical Flow" para que Premiere interprete los fotogramas faltantes.
- Siempre procesa (renderiza) el clip de entrada a salida después de aplicar cambios de velocidad para ver el resultado correcto.
- Nunca uses "Frame Sampling" si buscas la máxima fluidez en slow motion; prefiere "Optical Flow" o "Frame Blending" como segunda opción.
- Activa "Ripple Edit, Shifting Trailing Clips" al cambiar velocidad para evitar huecos en la línea de tiempo.

## Errores comunes que evita o menciona
- **Ralentizar un clip sin suficientes fps:** Si aplicas un porcentaje menor al calculado (ej. 40% en un clip de 30 fps en secuencia de 24 fps), el slow motion se verá entrecortado (saltos). El video muestra el ejemplo con un clip a 29.97 fps forzado a 40% y luego a 20%, resultando en movimientos bruscos.
- **No procesar el clip después del cambio de velocidad:** El clip se muestra en amarillo (sin procesar) y no se ve el efecto real hasta que se renderiza (Sequence → Render In to Out).
- **Olvidar silenciar el clip:** Al ralentizar, el audio se distorsiona; se recomienda bajar el volumen o desactivar la pista de audio.