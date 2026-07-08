# Editando UN VÍDEO MÍO con DAVINCI RESOLVE
**Fuente:** mundoaudiovisual | https://youtu.be/owlPfhaCT08

## Qué enseña (2-3 líneas)
El creador muestra su flujo de trabajo completo para editar clips de drone (DJI Avata) en DaVinci Resolve, desde la selección de tomas y corrección de color hasta la sincronización con música y la aplicación de efectos como speed ramp y transiciones. El objetivo es crear reels para Instagram y videos cortos para YouTube.

## Lecciones accionables
- **Crear proyecto nuevo:** Ve a "New Project" en DaVinci Resolve, luego al módulo de edición.
- **Abrir panel de medios:** Haz clic en "Media Panel" y busca la carpeta con los clips de drone.
- **Configurar línea de tiempo:** Al crear el proyecto, elige el tamaño de línea de tiempo deseado; el creador prefiere tener el panel de medios pequeño para maximizar el timeline.
- **Seleccionar tomas:** Revisa los clips en el panel de medios, identifica las mejores partes (p. ej., circuitos cerca de objetos, sombras del drone) y arrastra las secciones seleccionadas directamente al timeline.
- **Corregir color (nodo base):**
    1. Selecciona un clip con buena exposición (evitar contraluz fuerte).
    2. En la página "Color", crea un nodo.
    3. Ajusta contraste: baja "Shadows" (sombras) y sube "Highlights" (altas luces).
    4. Aplica "Color Enhancement" a un valor de 5.
    5. Aumenta ligeramente "Saturation" (saturación).
    6. En "Shadows", añade un tono naranja (oranges); en "Highlights", añade un tono azul (blues) para crear contraste de color.
    7. Copia el nodo con `Control + C` y pégalo en los demás clips con `Control + V`.
    8. Ajusta individualmente si las sombras quedan demasiado oscuras, subiendo "Shadows" o usando "Pivot".
- **Elegir música:** Usa una biblioteca de música (ej. artlist.io). Filtra por "epic mood" y "nature/scenery". Descarga una pista y arrástrala al timeline.
- **Sincronizar con música:**
    - Coloca marcadores en la línea de tiempo en los puntos donde la música cambia (p. ej., un "break").
    - Ajusta los clips de video para que los cortes coincidan con esos marcadores.
- **Añadir transiciones:** Usa "Opacity Transition" (transición de opacidad) entre clips.
- **Añadir efectos de sonido (SFX):**
    - Busca en la biblioteca de sonidos (p. ej., "software" o "whoosh").
    - Coloca el SFX en el punto exacto donde ocurre una acción (p. ej., al entrar en un espacio).
    - Para un efecto más grave, cambia la velocidad del SFX al 50% (clic derecho > "Change Clip Speed" > 50%).
- **Aplicar speed ramp:**
    1. Selecciona el clip en el timeline.
    2. Presiona `Control + R` para mostrar los fotogramas de velocidad.
    3. Haz clic derecho en la línea de velocidad y selecciona "Add Speed Point" para marcar inicio y fin del cambio.
    4. Arrastra los puntos para acelerar o ralentizar la sección deseada.
    5. Presiona `Shift + C` para abrir "Frame Tweening" y elige una opción (p. ej., "Optical Flow") para suavizar.
    6. Haz clic derecho en la línea de velocidad y selecciona "Convert to Curve" para que la transición sea más orgánica.
- **Generar archivos optimizados:** Para evitar cortes durante la reproducción, haz clic derecho en el clip y selecciona "Generate Optimized Media".
- **Crear formato vertical:** Crea una nueva secuencia vertical (p. ej., 1080x1920) y arrastra la secuencia horizontal dentro, luego ajusta el encuadre (pan & scan) para la parte deseada del video.

## Reglas para agentes
- Usa `Control + C` y `Control + V` para copiar y pegar nodos de corrección de color entre clips.
- Bloquea la pista de audio (icono de candado) antes de cortar video con `Command + B` para no cortar la música accidentalmente.
- Nunca uses clips con contraluz fuerte para la corrección de color base; elige uno con buena exposición.
- Aplica "Color Enhancement" a 5 como valor predeterminado; ajusta solo si es necesario.
- Siempre convierte la línea de velocidad a curva ("Convert to Curve") para que el speed ramp sea más orgánico.
- Usa "Frame Tweening" (`Shift + C`) después de crear un speed ramp para evitar saltos entre fotogramas.
- Genera "Optimized Media" en clips con speed ramp para evitar problemas de reproducción.

## Errores comunes que evita o menciona
- No usar clips con sombras demasiado oscuras después de la corrección de color; ajusta "Shadows" o "Pivot" para recuperar detalle.
- No dejar la música sin sincronizar con los cortes; usa marcadores en los puntos de cambio rítmico.
- No olvidar bloquear la pista de audio antes de cortar video con `Command + B` para evitar cortar la música.
- No aplicar speed ramp sin convertir la línea de velocidad a curva, ya que el resultado sería menos orgánico.
- No reproducir clips con speed ramp sin generar "Optimized Media", lo que causa cortes o lag.