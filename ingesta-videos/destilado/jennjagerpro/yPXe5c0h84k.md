# Keyframe Magic: Animate Like a Pro in Apple Motion!
**Fuente:** jennjagerpro | https://youtu.be/yPXe5c0h84k

## Qué enseña (2-3 líneas)
Este tutorial enseña 10 técnicas esenciales para dominar el editor de fotogramas clave en Apple Motion, desde la lectura de gráficos de velocidad hasta la creación de curvas avanzadas como la S exagerada. Muestra cómo aplicar interpolaciones (lineal, continua, bezier) y sincronizar animaciones entre múltiples objetos para lograr movimientos profesionales similares a los de la motion graphics moderna.

## Lecciones accionables
- **Abrir el editor de fotogramas clave:** Haz clic en el ícono del editor en la línea de tiempo y asegúrate de que el botón "mostrar fotogramas clave en la línea de tiempo de video" esté resaltado.
- **Configurar la vista del editor:** En el panel del editor de fotogramas clave, selecciona la vista "Animated" (no "All") para ver solo las líneas de los parámetros que has modificado y evitar distracciones.
- **Crear una animación lineal básica:** Coloca el cabezal al inicio, haz un fotograma clave en la línea de Position X con valor -9115. Salta 2 segundos en la línea de tiempo y cambia el valor a +915 (se genera automáticamente otro fotograma clave).
- **Cambiar interpolación a Continuous:** Haz clic derecho sobre un fotograma clave → Interpolation → Continuous. Esto genera una curva de easing suave (acelera y desacelera).
- **Cambiar interpolación a Bezier:** Haz clic derecho sobre un fotograma clave → Interpolation → Bezier. Aparecerán manijas ajustables para personalizar la curva.
- **Crear una S-curve exagerada (look popular):**
    1. Selecciona el primer fotograma clave y arrastra su manija hacia la derecha, alineada horizontalmente con el segundo fotograma clave (mantén Shift para que quede perfectamente recta).
    2. Selecciona el segundo fotograma clave y arrastra su manija hacia la izquierda, alineada horizontalmente con el primer fotograma clave (mantén Shift).
- **Crear aceleración al inicio (ease out):** Toma la manija del primer fotograma clave y arrástrala hacia arriba (verticalmente, sin necesidad de Shift).
- **Crear desaceleración al final (ease in):** Toma la manija del segundo fotograma clave y arrástrala hacia arriba (verticalmente).
- **Atajo para crear curvas sin menú:** Mantén presionada la tecla Command, haz clic en un fotograma clave y arrastra para crear curvas bezier directamente. Luego suelta Command y usa Shift si necesitas alineación horizontal.
- **Corregir valores modificados accidentalmente:** Si al ajustar curvas cambiaste el valor deseado de un fotograma clave, coloca el cabezal en ese fotograma y escribe el valor correcto en el Inspector. Esto no altera la forma de la curva.
- **Romper tangentes para manijas independientes:** Al seleccionar un fotograma clave central (con dos manijas), haz clic derecho sobre una manija → Break Tangent. Así puedes mover cada manija por separado.
- **Autoajustar la vista del editor:** Usa el botón "Snap to Fit" para que las curvas queden dentro de la ventana horizontalmente. Usa la lupa (magnifying glass) para autoescalar verticalmente.
- **Añadir efecto de resorte (slingshot):** Selecciona el primer fotograma clave, arrastra su manija hacia abajo y a la derecha para que la curva se hunda por debajo del valor inicial. Esto hace que el objeto retroceda ligeramente antes de avanzar.
- **Ocultar parámetros en el editor:** Desmarca la casilla junto al parámetro (ej. Transform Position X) en el panel para ver solo las líneas de otros parámetros (ej. Position Y).
- **Sincronizar dos parámetros exactamente iguales:**
    1. Con ambos parámetros visibles, haz marquee selection sobre los primeros fotogramas clave de ambos.
    2. Mantén Shift y arrastra una de las manijas; ambas se moverán en conjunto.
    3. Repite con los siguientes pares de fotogramas clave.
- **Copiar y pegar fotogramas clave entre objetos:**
    1. Haz marquee selection sobre todos los fotogramas clave del objeto origen.
    2. Copia con Command+C.
    3. Coloca el cabezal donde quieras que inicie la animación en el objeto destino.
    4. Selecciona el objeto destino en el panel de proyecto y pega con Command+V.
- **Ajustar timing sin alterar valores:** Cierra el editor de fotogramas clave. En la línea de tiempo de video, arrastra los fotogramas clave rojos horizontalmente para cambiar su posición temporal sin modificar los valores.

## Reglas para agentes
- Usa la vista "Animated" en el editor de fotogramas clave cuando trabajes con un parámetro específico; nunca uses "All" a menos que necesites ver todos los parámetros simultáneamente.
- Mantén Shift al arrastrar manijas de curvas cuando necesites alineación perfectamente horizontal o vertical.
- Usa Command + clic + arrastre para crear curvas bezier sin pasar por el menú de interpolación.
- Nunca muevas fotogramas clave dentro del editor de fotogramas clave para cambiar timing; ciérralo y arrastra los fotogramas rojos en la línea de tiempo de video.
- Rompe las tangentes (Break Tangent) en fotogramas clave centrales cuando necesites control independiente de cada manija.
- Desmarca la casilla de un parámetro en el panel del editor cuando quieras ocultar su línea visualmente (la animación sigue activa).
- Usa el botón "Snap to Fit" y la lupa para mantener siempre visibles las curvas dentro del editor.

## Errores comunes que evita o menciona
- **Modificar valores accidentalmente al ajustar curvas:** Al jugar con las manijas en el editor de fotogramas clave, puedes cambiar sin querer el valor final del fotograma. Solución: anota el valor deseado y reintrodúcelo en el Inspector con el cabezal en ese fotograma.
- **Mover fotogramas clave en el editor para cambiar timing:** Esto altera los valores. La forma segura es cerrar el editor y arrastrar los fotogramas rojos en la línea de tiempo de video.
- **Tener las manijas bloqueadas (locked) en fotogramas clave centrales:** Por defecto, al mover una manija, la otra gira en espejo. Para control independiente, usa Break Tangent.
- **Usar la vista "All" en el editor:** Muestra demasiados parámetros innecesarios que distraen. Cambia a "Animated" para ver solo los que has modificado.
- **No sincronizar curvas de múltiples parámetros:** Si quieres que dos parámetros (ej. X e Y) tengan exactamente la misma forma de curva, selecciona sus fotogramas clave juntos y arrastra con Shift para mantenerlos alineados.