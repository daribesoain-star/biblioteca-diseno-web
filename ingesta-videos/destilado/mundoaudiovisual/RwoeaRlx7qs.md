# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 4 - Los fotogramas clave.
**Fuente:** mundoaudiovisual | https://youtu.be/RwoeaRlx7qs

## Qué enseña (2-3 líneas)
Explica cómo crear y animar fotogramas clave en Fusion, centrándose en la interpolación de curvas paramétricas para lograr movimientos orgánicos. Muestra cómo modificar la velocidad de una animación (aceleración y desaceleración) y cómo activar el desenfoque de movimiento (Motion Blur) para mayor realismo.

## Lecciones accionables
- Para crear una animación básica: selecciona un nodo (ej. MediaIn), ve al Inspector, haz clic en el diamante (keyframe) junto al parámetro deseado (ej. Position X) en el fotograma inicial, luego avanza en la línea de tiempo (ej. frame 10) y cambia el valor del parámetro (ej. X a 0.89) para generar el segundo keyframe.
- Para renombrar nodos: haz clic derecho sobre el nodo, selecciona "Rename" y escribe el nombre (ej. "logo 1", "Almería 1").
- Para escalar un elemento: en el Inspector, ajusta los parámetros Size (ej. Y: 0.15, X: 0.1) o Scale (ej. 0.15 en Y, 0.1 en X).
- Para abrir la curva paramétrica de un nodo: selecciona el nodo, ve al menú "Splines" o haz clic en "Spline" (curva paramétrica) en la parte superior del Inspector, luego elige el canal (ej. "Media 1 Displacement").
- Para cambiar la interpolación de un keyframe: en la curva paramétrica, selecciona el punto (keyframe) y haz clic en el botón "Convert to curve" (ícono de curva). Luego arrastra los manejadores para modificar la forma de la curva.
- Para crear una animación que empiece lento y termine rápido: en la curva paramétrica, arrastra el manejador del primer keyframe hacia arriba (curva cóncava hacia arriba).
- Para crear una animación que empiece rápido y termine lento: en la curva paramétrica, arrastra el manejador del primer keyframe hacia abajo (curva cóncava hacia abajo).
- Para activar Motion Blur: selecciona el nodo, ve al Inspector, busca la opción "Motion Blur" y actívala. Ajusta la calidad (ej. 4) en el campo "Quality".
- Para recortar la duración de una composición Fusion: ve al módulo de edición, coloca el cursor al final del clip y presiona Ctrl+B (o Cmd+B en Mac) para cortar.

## Reglas para agentes
- Usa "Convert to curve" en la curva paramétrica cuando necesites interpolación no lineal (aceleración/desaceleración).
- Activa Motion Blur con calidad 4 cuando quieras que las animaciones se vean más realistas y fluidas.
- Nunca dejes la interpolación como "linear" (línea recta) si buscas movimientos orgánicos; modifica la curva paramétrica.
- Siempre renombra los nodos (ej. "logo 1", "logo 2") para mantener el proyecto organizado.
- Cuando añadas un nuevo MediaIn mientras otro está seleccionado, se conectará automáticamente al foreground del nodo anterior.

## Errores comunes que evita o menciona
- No usar interpolación de keyframes (dejar la curva como línea recta) produce animaciones artificiales con velocidad constante.
- Olvidar activar Motion Blur hace que los movimientos rápidos se vean entrecortados o poco realistas.
- No renombrar los nodos dificulta identificar qué elemento es cada uno cuando hay múltiples logos o capas.
- No ajustar la duración de la composición en el módulo de edición puede dejar espacio muerto al final del clip.