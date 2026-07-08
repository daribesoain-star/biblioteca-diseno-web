# Así hago que mi DJI Mini 5 Pro parezca una PELÍCULA (DaVinci Resolve paso a paso)
**Fuente:** mundoaudiovisual | https://youtu.be/32AqEd9Rz0A

## Qué enseña (2-3 líneas)
El tutorial muestra cómo editar footage de dron (DJI Mini 5 Pro) con estilo cinematográfico usando DaVinci Resolve. Cubre configuración de proyecto, corrección de color básica, creación de speed ramps con curvas de velocidad, cortes al ritmo de la música, y adición de barras negras cinematográficas.

## Lecciones accionables
- **Configurar proyecto:** Crear proyecto nuevo, ir a "Project Settings" → "Master Settings", ajustar resolución a 3840x2160 y frame rate a 25 fps (o 30 fps según región). Guardar.
- **Importar clips:** Arrastrar archivos al "Media Pool". Si el proyecto está a 25 fps y los clips a 50 fps, seleccionar "No" al mensaje de cambio de frecuencia para poder hacer slow motion.
- **Seleccionar música:** Usar música épica o acorde al estilo. El creador recomienda su sitio mundoaudiovisual.com → "Music Gallery" (registro gratuito). Descargar la canción y arrastrarla a la timeline.
- **Bloquear pista de música:** Hacer clic en el candado de la pista de audio para evitar moverla accidentalmente.
- **Corrección de color básica:** Ir a pestaña "Color". Aplicar "DJI LUT" (si está disponible). Ajustar curvas: bajar ligeramente las altas luces, subir medios. Aumentar temperatura (más cálido). Bajar "Lifts" y subir "Gain" ligeramente.
- **Crear speed ramp (aceleración progresiva):** Seleccionar clip, presionar `Command + R` (o `Ctrl + R` en Windows). Agregar "Speed Point" al inicio y al final del segmento a acelerar. Reducir la distancia entre puntos para aumentar velocidad. Ir a "Keyframes" → "Keyframe Curves", buscar "Speed Processing". Convertir ambos puntos en curvas (clic derecho → "Curve"). Ajustar la forma de la curva para transición orgánica.
- **Speed ramp con efecto progresivo hacia adelante:** En "Keyframe Curves", convertir solo un punto en curva y arrastrar el otro punto hacia arriba para aceleración gradual.
- **Cortes al ritmo de la música:** Escuchar la música y marcar los beats. Cortar clips en esos puntos usando la herramienta de tijera (`B` o `Ctrl + B`). Alternar clips rápidos entre cortes.
- **Slow motion:** Seleccionar clip, ir a "Change Clip Speed" (clic derecho o `Command + R`). Reducir velocidad a 50% o 70%. Marcar "Retime Process" → "Optical Flow" para interpolación suave.
- **Barras negras cinematográficas:** Crear "Adjustment Clip" desde el menú "Effects" → "Generators". Arrastrarlo sobre la timeline. En "Inspector" → "Video" → "Cropping", ajustar "Top" y "Bottom" a valores como 1212 (o según preferencia) para simular formato de cine.

## Reglas para agentes
- Usa 25 fps para proyectos en Europa, 30 fps para América Latina.
- Cuando los clips estén grabados a 50 fps y el proyecto a 25 fps, responde "No" al cambiar frecuencia para preservar capacidad de slow motion.
- Siempre bloquea la pista de música antes de editar clips para evitar desplazamientos accidentales.
- Para speed ramps, convierte los puntos de velocidad en curvas en "Keyframe Curves" para transiciones orgánicas.
- Aplica "Optical Flow" en "Retime Process" cuando hagas slow motion para evitar saltos.
- Nunca uses barras negras como máscara fija; usa "Adjustment Clip" con recorte para mantener flexibilidad.

## Errores comunes que evita o menciona
- No cambiar la frecuencia de fotogramas del proyecto al importar clips de 50 fps si se planea slow motion.
- No dejar la música sin bloquear al editar, ya que se mueve accidentalmente.
- No usar speed ramps sin curvas de velocidad, pues el cambio es brusco y poco orgánico.
- No olvidar ajustar el volumen de los efectos de sonido (como "watch") para que no sobresalgan sobre la música.
- No aplicar barras negras directamente sobre el clip; usar "Adjustment Clip" para poder modificar todo el timeline de una vez.