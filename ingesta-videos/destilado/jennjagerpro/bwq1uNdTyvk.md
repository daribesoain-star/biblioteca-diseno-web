# Part 2: Why Does Final Cut Pro Do That?!
**Fuente:** jennjagerpro | https://youtu.be/bwq1uNdTyvk

## Qué enseña
Explica por qué Final Cut Pro aplica transiciones en ambos extremos de un clip por defecto, cómo evitarlo, y resuelve misterios sobre errores de transición por falta de metraje, comportamiento de transiciones en clips conectados, límites de recorte, barras negras por desajuste de dimensiones, y la alerta de fotogramas perdidos durante la reproducción.

## Lecciones accionables
- Para añadir una transición en un solo extremo del clip, selecciona el **final del clip** (no el clip completo) y presiona **Command + T**, o haz doble clic en la transición desde el navegador de transiciones.
- Usa las teclas de **corchete `[` o `]`** para seleccionar rápidamente el final de un clip en la línea de tiempo y luego aplica la transición con **Command + T**.
- Para verificar si hay suficiente metraje para una transición sin perder duración del proyecto, haz doble clic entre dos clips para abrir el **precision editor** y observa el metraje no utilizado (área gris) en cada clip.
- Para saber si has llegado al final del metraje de un clip, arrastra el borde del clip hacia atrás hasta que se vuelva **rojo**.
- Si una transición en un **clip conectado** toma el clip de la línea de tiempo primaria como parte de la transición (ej. clothesline), selecciona el clip conectado y presiona **Option + G** para crear un **compound clip** y evitar que Final Cut use el clip inferior.
- Para forzar un valor más allá del límite de un deslizador en el inspector (ej. recorte), haz clic en el **número** del parámetro, mantén presionado el botón del ratón y arrastra hacia adelante para incrementar el valor manualmente.
- Para eliminar barras negras por desajuste de dimensiones, ve al inspector de video, localiza **Spatial Conform**, y cambia de **Fit** a **Fill**.
- Para desactivar la alerta "video frames were dropped during playback", haz clic en **"Do not show me again"** en el mensaje emergente.
- Para restaurar la alerta de fotogramas perdidos, ve a **Final Cut Pro > Settings > Playback** y vuelve a marcar las casillas correspondientes.

## Reglas para agentes
- Usa **Command + T** solo después de seleccionar el **final de un clip** (con clic o corchetes) para aplicar una sola transición.
- Cuando añadas una transición a un clip conectado y notes que afecta al clip de la línea de tiempo primaria, crea un **compound clip** con **Option + G** antes de aplicar la transición.
- Si aparece el mensaje de metraje insuficiente para una transición, ignóralo a menos que los primeros fotogramas del clip sean críticos; en ese caso, omite la transición.
- Para clips con dimensiones diferentes al proyecto, cambia **Spatial Conform** a **Fill** en lugar de escalar manualmente.
- Nunca te preocupes por la alerta de fotogramas perdidos durante la reproducción; todos los fotogramas estarán presentes en la exportación.

## Errores comunes que evita o menciona
- **Añadir transiciones en ambos extremos:** Ocurre al seleccionar todo el clip y presionar Command + T; se soluciona seleccionando solo el final del clip.
- **Transición que duplica el clip inferior:** Sucede con transiciones como "clothesline" en clips conectados; se evita creando un compound clip (Option + G).
- **Proyecto se acorta al añadir transición:** Final Cut toma fotogramas del metraje visible si no hay metraje extra; se previene verificando con el precision editor o arrastrando el borde hasta que se ponga rojo.
- **No poder recortar más allá del límite del deslizador:** Se soluciona arrastrando el valor numérico en el inspector más allá del tope del slider.
- **Barras negras en clips:** Causado por dimensiones diferentes al timeline; se corrige cambiando Spatial Conform de Fit a Fill.
- **Alarma innecesaria por fotogramas perdidos:** No afecta la exportación; se recomienda desactivarla para evitar interrupciones.