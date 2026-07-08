# FCP for iPad Update
**Fuente:** jennjagerpro | https://youtu.be/vXLAMLtDpZM

## Qué enseña (2-3 líneas)
Este video presenta las novedades de Final Cut Pro para iPad versión 3.3, incluyendo subtítulos generados automáticamente, detección de ediciones en clips ya editados, separación de audio, nuevos atajos de teclado y plantillas adicionales. Explica paso a paso cómo usar cada función con gestos táctiles y comandos de Magic Keyboard.

## Lecciones accionables
- **Generar subtítulos automáticos:** en la línea de tiempo, haz marquee select (selección con marco) sobre todos los clips que necesiten subtítulos, luego long press (pulsación larga) y selecciona "generate captions". Final Cut procesa y los subtítulos aparecen automáticamente.
- **Modificar apariencia de subtítulos en lote:** marquee select sobre varios subtítulos, o si tienes Magic Keyboard, selecciona uno y presiona `Command + A` para seleccionarlos todos. Abre el inspector (inspector) para personalizar: animation style (estilo de animación), animation increment (incremento de animación: word/palabra, character/carácter, line/línea) y demás propiedades visuales.
- **Crear un título como subtítulo predeterminado:** navega a "titles" en el navegador, haz long press sobre el título deseado y selecciona "make default caption".
- **Ajustar duración de subtítulos (cuántas palabras aparecen a la vez):** ve al menú principal, presiona el botón de puntos suspensivos (ellipsis button), selecciona "settings", desplázate hacia abajo hasta "captions" y configura la duración.
- **Detección de ediciones (edit detection):** arrastra un video ya editado (baked video) a la línea de tiempo, selecciónalo, luego haz long press y elige "detect edits", o presiona el atajo `Shift + E`. Final Cut usa IA para detectar los puntos de edición y divide el video en clips separados.
- **Separar audio de un clip:** selecciona el clip en la línea de tiempo, haz long press y elige "detach audio".
- **Atajos de teclado nuevos (Magic Keyboard):**
  - `P`: invoca la herramienta de posición (position tool) para mover clips manteniendo la sincronía del proyecto, ya sea sobrescribiendo clips o creando gaps.
  - `Command + Shift + B`: divide múltiples clips a la vez (primary clips y connected clips) en la posición del playhead.
  - `Command +` (más) o `Command -` (menos): ajusta el nivel de audio decibelio por decibelio en el clip seleccionado.

## Reglas para agentes
- Usa marquee select para seleccionar múltiples clips o subtítulos a la vez en la línea de tiempo.
- Cuando necesites modificar todos los subtítulos simultáneamente, usa `Command + A` si hay Magic Keyboard, o marquee select en pantalla táctil.
- Para cambiar el estilo de subtítulo predeterminado, usa long press sobre un título en el navegador y selecciona "make default caption".
- Para dividir un video ya editado en clips separados, usa el atajo `Shift + E` o long press y "detect edits".
- Para separar audio de un clip, usa long press y "detach audio"; no uses menús ocultos.
- Para ajustar audio con precisión, usa `Command +` o `Command -` en lugar de deslizadores manuales.
- Nunca intentes generar subtítulos sin seleccionar primero los clips con marquee select; la opción "generate captions" no aparecerá.

## Errores comunes que evita o menciona
- **No saber que se puede modificar la duración de los subtítulos:** el video muestra que hay que ir a Settings > Captions para ajustar cuántas palabras aparecen por vez, no es un ajuste visible en el inspector.
- **Olvidar que se puede usar cualquier título como subtítulo predeterminado:** muchos usuarios creen que solo se pueden usar los estilos predefinidos, pero el video enseña a personalizarlos desde "make default caption".
- **No usar atajos de teclado para dividir múltiples clips:** el video destaca que `Command + Shift + B` es más eficiente que dividir clip por clip manualmente.
- **Confundir la herramienta de posición (P) con mover clips arrastrando:** la tecla P permite mover clips sin romper la sincronía del proyecto, algo que no se logra con arrastre simple.