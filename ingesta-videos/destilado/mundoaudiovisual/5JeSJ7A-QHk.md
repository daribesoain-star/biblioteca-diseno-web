# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 11: Cámaras Rápidas y Cámaras lentas
**Fuente:** mundoaudiovisual | https://youtu.be/5JeSJ7A-QHk

## Qué enseña (2-3 líneas)
Explica la diferencia entre cámara rápida y cámara lenta en DaVinci Resolve 18, basada en la relación entre los fotogramas por segundo (FPS) del clip original y los FPS de la línea de tiempo. Muestra cómo la cámara lenta requiere clips grabados a altas tasas de fotogramas (ej. 100 fps) para ser fluida, y cómo la función Optical Flow con inteligencia artificial puede generar fotogramas faltantes en la versión Studio.

## Lecciones accionables
- **Para cámara rápida:** Haz clic derecho sobre el clip en la línea de tiempo → selecciona "Change Speed" → ingresa un valor superior a 100% (ej. 200% para el doble de velocidad, 400% para cuádruple). El clip se acorta proporcionalmente en la línea de tiempo.
- **Para cámara lenta fluida:** Asegúrate de que el clip original esté grabado a una tasa de fotogramas alta (ej. 100 fps). En la línea de tiempo configurada a 25 fps, haz clic derecho → "Change Speed" → ingresa 25% (cálculo: 25 fps de timeline ÷ 100 fps del clip = 0.25). El resultado será fluido sin saltos.
- **Para cámara lenta con clip de baja tasa de fotogramas (ej. 30 fps):** Haz clic derecho → "Change Speed" → ingresa el porcentaje deseado (ej. 25%). Luego, en el inspector, ve a "Retime and Scaling" → en "Retime Process" selecciona "Optical Flow" → en "Motion Estimation" elige "Enhanced Better" (disponible solo en DaVinci Resolve Studio). Espera a que se renderice automáticamente para que la IA genere los fotogramas faltantes.
- **Para verificar FPS de un clip:** Selecciona el clip en la línea de tiempo → ve al menú "File" → "Clip Attributes" → revisa el valor en "Frame Rate".
- **Para configurar FPS de una nueva línea de tiempo:** Ve al menú "File" → "New Timeline" → en "Timeline Frame Rate" selecciona 24, 25 o 29.97 fps según estándar (24 para cine, 25 para Europa, 29.97 para Estados Unidos).
- **Para activar auto-renderizado:** En la línea de tiempo, activa "Auto Render" (icono de rayo) para que los efectos de Optical Flow se procesen automáticamente al reproducir.

## Reglas para agentes
- Usa "Change Speed" con valores >100% solo para cámara rápida; nunca para cámara lenta si el clip tiene baja tasa de fotogramas (ej. 30 fps o menos) sin usar Optical Flow.
- Cuando apliques cámara lenta a un clip con FPS bajo, selecciona siempre "Optical Flow" → "Enhanced Better" en "Retime Process" para evitar saltos; nunca uses "Frame Sampling" o "Nearest" porque producirán movimiento entrecortado.
- Verifica los FPS del clip original antes de aplicar cámara lenta: si el clip tiene 30 fps y la timeline 25 fps, la reducción máxima fluida sin Optical Flow es 83.3% (25/30); nunca bajes de ese porcentaje sin activar Optical Flow.
- Para cámara lenta fluida sin IA, asegúrate de que el clip tenga al menos 4 veces los FPS de la timeline (ej. 100 fps para timeline de 25 fps); nunca uses clips con menos de esa relación si buscas fluidez sin Optical Flow.

## Errores comunes que evita o menciona
- **Error:** Aplicar cámara lenta a un clip grabado a 30 fps en una timeline de 25 fps sin usar Optical Flow. **Resultado:** El video se reproduce con saltos y movimiento entrecortado porque faltan fotogramas intermedios.
- **Error:** Pensar que grabar a 60 fps en un móvil es "mejor calidad" que 30 fps. **Corrección:** 60 fps solo es útil si planeas hacer cámara lenta; para velocidad normal, 30 fps es suficiente y no mejora la calidad de imagen.
- **Error:** Confundir la tasa de fotogramas del clip con la de la línea de tiempo. **Aclaración:** La línea de tiempo siempre muestra 25 fps (o la configurada), independientemente de los FPS del clip; la cámara lenta funciona extrayendo fotogramas del clip de alta tasa.