# 9 Time Saving (and Butt Saving!) AI Tools in FCP
**Fuente:** jennjagerpro | https://youtu.be/tF825ywlf8I

## Qué enseña (2-3 líneas)
Este video revela las nueve herramientas con inteligencia artificial integradas en Final Cut Pro, desde reframe automático y corrección de color hasta búsqueda por transcripción y ralentizado suave. Explica cómo activarlas, configurarlas y aplicarlas en flujos de edición reales para ahorrar tiempo y mejorar resultados.

## Lecciones accionables
- **Smart Conform (reframe automático):** Para convertir un timeline 16:9 a vertical, selecciona el proyecto en el navegador, haz clic derecho → "Duplicate Project As", cambia el aspect ratio a "Vertical" y marca la casilla "Smart Conform". Final Cut ajusta automáticamente la posición X de cada clip. Para un clip nuevo añadido después, selecciona el clip → menú "Modify" → "Smart Conform".
- **Enhance Light and Color (corrección automática):** Selecciona un clip, abre el inspector de color y haz clic en el botón "Enhance Light and Color". Ajusta instantáneamente todos los sliders de balance de color para un resultado más equilibrado y realista.
- **Magnetic Mask (máscara magnética):** Selecciona el clip, aplica ajustes de color, haz clic en el icono de máscara y elige "Add Magnetic Mask". Usa el cuentagotas en el visor para seleccionar el sujeto, presiona "Analyze", espera a que el motor de machine learning procese, luego presiona "Done". Ahora puedes hacer ajustes de color solo al sujeto sin afectar el fondo.
- **Object Tracker (rastreador de objetos):** Ve a Final Cut Pro → Settings → General → "Drop Effect in Viewer" → cámbialo a "Add Tracker". Arrastra un efecto (ej. pixelate) desde el navegador de efectos directamente sobre el objeto en el visor. Ajusta el tamaño del efecto en la pestaña "Shape" (reduce el anillo rojo de feather). Ve a la pestaña "Tracker" y presiona "Analyze". Final Cut rastrea el objeto sin necesidad de keyframes.
- **Transcript Search (búsqueda por transcripción):** En el navegador, usa el campo de búsqueda, establece el parámetro en "Transcript" → "Includes" y escribe una palabra exacta. O usa "Transcript" → "Related to" para encontrar contenido semánticamente relacionado (ej. "education" encuentra menciones de "college" o "high school"). Solo disponible en inglés.
- **Visual Search (búsqueda visual):** En el navegador, establece el parámetro en "Visual" y escribe un término (ej. "garnish"). Final Cut detecta clips que contengan visualmente ese elemento. Solo disponible en inglés.
- **Voice Isolation (aislamiento de voz):** Selecciona el clip, ve al inspector de audio, elige el canal de audio y activa la opción "Voice Isolation". Reduce drásticamente el ruido ambiental de fondo.
- **Transcribe to Captions (transcripción a subtítulos):** Coloca el clip en el timeline, haz clic derecho → "Transcribe to Captions". Final Cut genera subtítulos automáticamente en tiempo real (ej. un clip de 9 minutos se transcribe en segundos).
- **Smooth Slow Mo (ralentizado suave):** Selecciona el clip, ve a herramientas de retime → "Smooth Slow Mo". Elige la velocidad (ej. 50%). Final Cut analiza el clip (tarda unos minutos) y luego renderiza. El resultado es un ralentizado fluido incluso si el clip original es de 25 fps.

## Reglas para agentes
- Usa "Smart Conform" cuando conviertas timelines entre aspect ratios (16:9 a vertical) para reframe automático.
- Activa "Enhance Light and Color" en clips con balance de color deficiente o dominante de color no deseada.
- Aplica "Magnetic Mask" cuando necesites aislar un sujeto del fondo para ajustes de color selectivos.
- Cambia la configuración "Drop Effect in Viewer" a "Add Tracker" antes de arrastrar efectos a objetos en el visor.
- Usa "Transcript Search" con "Includes" para palabras exactas y "Related to" para búsqueda semántica.
- Habilita "Visual Search" y "Transcribe in English" durante la importación o mediante "Analyze and Fix" en clips ya importados.
- Activa "Voice Isolation" en clips de audio con ruido ambiental para limpiar la voz del sujeto.
- Usa "Transcribe to Captions" solo en clips ya colocados en el timeline, no en el navegador.
- Aplica "Smooth Slow Mo" en lugar de retime normal cuando necesites ralentizado fluido sin stuttering.
- Nunca uses retime normal (sin Smooth Slow Mo) para ralentizar clips de baja tasa de frames (ej. 25 fps) si buscas fluidez.

## Errores comunes que evita o menciona
- No olvidar marcar la casilla "Smart Conform" al duplicar un proyecto con cambio de aspect ratio; si no se marca, los clips no se reframean automáticamente.
- No aplicar "Enhance Light and Color" en clips que ya tienen ajustes manuales extensos, ya que sobrescribe los sliders.
- No usar "Magnetic Mask" en clips con movimiento rápido o fondos muy complejos sin revisar el tracking manualmente.
- No arrastrar efectos directamente al visor sin haber cambiado primero la configuración "Drop Effect in Viewer" a "Add Tracker"; de lo contrario, el efecto se aplica a todo el clip sin tracker.
- No asumir que "Transcript Search" y "Visual Search" funcionan sin haber habilitado "Transcribe in English" y "Visual Search" durante la importación o mediante "Analyze and Fix".
- No usar "Voice Isolation" en clips donde la voz y el ruido tienen frecuencias muy similares; puede degradar la calidad vocal.
- No olvidar renderizar después de aplicar "Smooth Slow Mo" para ver el resultado final fluido.
- No confundir "Smooth Slow Mo" con el retime normal; el retime normal produce stuttering en clips de baja tasa de frames.