# CURSO GRATIS FINAL CURT PRO 12 - Capítulo 7 - LAS RAMPAS DE VELOCIDAD
**Fuente:** mundoaudiovisual | https://youtu.be/tsm_hn5YfmE

## Qué enseña
Cómo crear rampas de velocidad (speed ramps) en Final Cut Pro 12 para transiciones dinámicas entre cámara lenta y rápida, sincronizando los cambios al ritmo de la música. Incluye el uso de atajos de teclado, personalización de velocidad, suavizado de transiciones y la adición de barras negras cinematográficas.

## Lecciones accionables
- **Crear una rampa de velocidad con atajos:** Selecciona el clip en la línea de tiempo, presiona `Shift+B` para abrir el ajuste de velocidad y marcar el inicio del rango. Vuelve a presionar `Shift+B` al final del rango. Luego, en el inspector de velocidad, introduce el valor deseado (ej. `6000` para acelerar 6000%).
- **Personalizar la velocidad manualmente:** Después de crear el rango con `Shift+B`, arrastra los bordes del clip en la línea de tiempo para comprimirlo o expandirlo visualmente. El inspector mostrará el porcentaje de velocidad actualizado automáticamente.
- **Suavizar la transición de velocidad:** En el inspector de velocidad, ajusta el control deslizante de suavizado (smoothing) hacia el centro (posición media) para que el cambio de velocidad no sea abrupto y suene más orgánico.
- **Sincronizar rampas con la música:** Coloca marcadores en los beats o cambios de ritmo de la pista de audio. Usa `Shift+B` para crear rampas que coincidan con esos puntos, personalizando la velocidad (ej. `6000`) para que el cambio visual acompañe el ritmo.
- **Añadir barras negras cinematográficas:** Crea un clip de ajuste con `Option+A` (o `Alt+A`). En el inspector de recorte (crop), añade un keyframe en el fotograma inicial y otro en el final. Ajusta los valores de recorte superior e inferior (ej. `21` y `210`) para simular formato de cine.
- **Combinar cámara lenta y rápida:** Para una transición de lento a rápido, corta el clip con `Command+B` (o `B` para la herramienta Blade). En la primera parte, reduce la velocidad al 50% (o según la calculadora de tu web). En la segunda parte, acelera con `Shift+B` y personaliza a `6000`. Aplica suavizado en ambos segmentos.
- **Usar la herramienta de velocidad (R):** Presiona `R` para activar la herramienta de ajuste de velocidad, arrastra hacia arriba para acelerar o hacia abajo para ralentizar. Luego usa `Shift+B` para definir rangos precisos y personalizar porcentajes exactos.

## Reglas para agentes
- Usa `Shift+B` para abrir el ajuste de velocidad y marcar el inicio/fin de un rango de rampa.
- Aplica suavizado (smoothing) al centro en todas las rampas de velocidad para evitar cambios abruptos.
- Nunca uses la aceleración automática por compresión de línea de tiempo; siempre personaliza el porcentaje manualmente (ej. `6000`) para control total.
- Cuando combines cámara lenta y rápida, corta el clip con `Command+B` antes de aplicar velocidades diferentes.
- Para barras negras, usa un clip de ajuste (`Option+A`) y keyframes en recorte, no recortes directamente el clip de video.
- Sincroniza siempre las rampas con los beats de la música usando marcadores visuales en la línea de tiempo.

## Errores comunes que evita o menciona
- **No comprimir el timeline automáticamente:** Al acelerar un clip, no uses el ajuste de velocidad que comprime la línea de tiempo; en su lugar, usa `Shift+B` y personaliza el porcentaje manualmente para mantener el control.
- **Evitar cambios de velocidad abruptos:** No dejar el suavizado (smoothing) en cero; ajustarlo al centro para que la transición sea orgánica y no brusca.
- **No ignorar la frecuencia de fotogramas:** Si usas 25 fps en Europa o 30 fps en América para evitar problemas de parpadeo con la iluminación.
- **No olvidar la calculadora de cámara lenta:** Para ralentizar clips, usa la calculadora disponible en la web del instructor para saber cuánto puedes reducir sin perder calidad (basado en la tasa de fotogramas de grabación, ej. 60 fps).