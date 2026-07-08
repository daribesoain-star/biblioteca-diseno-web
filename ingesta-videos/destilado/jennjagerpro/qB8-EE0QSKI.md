# Apple Motion Page Flipping Tutorial
**Fuente:** jennjagerpro | https://youtu.be/qB8-EE0QSKI

## Qué enseña (2-3 líneas)
Cómo convertir un PDF de varias páginas en un libro animado con efecto de volteo de páginas 3D en Apple Motion. Cubre la creación de páginas doble cara, el uso de espacio 3D, anclaje de página, keyframing de rotación en Y, y la aplicación del filtro Page Curl para simular curvatura realista.

## Lecciones accionables
- **Importar PDF multipágina:** Arrastra el PDF al panel de proyecto. En el inspector > Propiedades, usa el slider "Page" para seleccionar qué página mostrar (ej: slider a 2 para página 2).
- **Crear páginas doble cara:** Duplica el objeto PDF (Cmd+D). La capa inferior es la página frontal; la superior es el reverso. En Propiedades de la capa superior, cambia el slider de página al número correspondiente. Reordena en el panel de proyecto para que el reverso quede arriba.
- **Activar proyecto 3D:** Ve a "Add Object" (centro superior de la pantalla) > Camera > "Yes, please switch this to 3D".
- **Invertir el reverso:** Desactiva la capa frontal (desmarcar checkbox). Selecciona la capa del reverso, ve a Propiedades > Rotation > Y, escribe **180**. Reactiva la capa frontal.
- **Mover punto de anclaje al lomo:** Selecciona el **grupo** que contiene ambas capas. En el menú de herramientas, elige "Anchor Point" o haz clic derecho en el lienzo > Anchor Point. Arrastra la flecha roja (eje X) hasta que el punto azul quede exactamente en el borde izquierdo de la página. Usa **Cmd+** para acercar y ajustar con precisión.
- **Centrar el lomo en pantalla:** Con el grupo seleccionado, ve a Propiedades > Position. Activa "Dynamic Guides" (menú View > Dynamic Guides). Arrastra el grupo horizontalmente hasta que el borde izquierdo (lomo) se alinee con el centro de la pantalla (guía dinámica aparecerá).
- **Keyframing del volteo:** Con el grupo seleccionado, coloca el playhead al inicio del grupo en la línea de tiempo. En Propiedades > Rotation > Y, haz clic en el diamante para crear keyframe (valor 0). Avanza **20 frames** (Shift + flecha derecha dos veces). Crea otro keyframe y cambia el valor a **-180**.
- **Aplicar filtro Page Curl:** Con el grupo seleccionado, ve a Filters (en el inspector) > Distortion > Page Curl. En la línea de tiempo, acorta la duración del filtro para que coincida con la duración del volteo.
- **Ajustar Page Curl (keyframes iniciales):** Coloca el playhead al inicio. En el inspector del filtro, crea keyframes en: Angle = **0**, Rotation = **0**, Radius = **16**, desmarca "Animate Line", Percent = **50**.
- **Ajustar Page Curl (keyframes finales):** Coloca el playhead al final del filtro. Crea keyframes en: Rotation = **-24**, Radius = **20**, Percent = **0**.
- **Suavizar keyframes:** Abre el Keyframe Editor (tres diamantes en esquina superior derecha de la línea de tiempo). Selecciona todos los keyframes arrastrando el ratón, haz clic derecho > Ease Both.
- **Duplicar para más páginas:** Haz clic derecho en el grupo > Duplicate tantas veces como pares de páginas necesites. Renombra grupos y capas (ej: "Page 3-4", "Page 5-6").
- **Asignar páginas correctas:** En cada grupo duplicado, selecciona cada capa y cambia el slider de página en Propiedades al número correspondiente.
- **Escalonar animaciones:** En la línea de tiempo, arrastra cada grupo duplicado para que su inicio coincida con el final del grupo anterior (secuencia).
- **Evitar páginas fantasma:** Para que las páginas no aparezcan antes de su animación: duplica los grupos que inician después (ej: copia de "Pages 3-4" y "Pages 5-6"). Extiende la copia desde el inicio del proyecto hasta justo antes de que comience la animación del grupo original. Reordena en el panel de proyecto: coloca las copias al fondo, y los grupos originales en orden ascendente (1-2 abajo, 3-4 encima, 5-6 arriba).

## Reglas para agentes
- **Usa grupos para cada par de páginas** (nunca trabajes directamente sobre capas individuales para el volteo).
- **Siempre selecciona el grupo** (no las capas internas) al aplicar keyframes de rotación, posición o filtros.
- **Mantén el punto de anclaje en el borde izquierdo** del grupo antes de keyframear la rotación.
- **Usa -180 en Y** para voltear hacia la izquierda (sentido de lectura occidental); usa 180 para voltear hacia la derecha.
- **Aplica Ease Both** a todos los keyframes de Page Curl para evitar movimientos bruscos.
- **Nunca dejes que un grupo cubra a otro fuera de secuencia** sin usar la técnica de copias estáticas al inicio.
- **Verifica que el slider de página** en Propiedades coincida con el número real de página del PDF (ej: slider 2 = página 2).

## Errores comunes que evita o menciona
- **No olvidar activar 3D** antes de rotar o aplicar Page Curl (sin 3D no funcionan los efectos de profundidad).
- **No confundir el orden de capas:** En el panel de proyecto, la capa superior se muestra primero; el reverso debe estar arriba de la página frontal.
- **No usar valores positivos en Y para volteo hacia atrás:** -180 es el valor correcto para que el texto quede legible tras el giro.
- **No dejar el filtro Page Curl con duración mayor al volteo:** Debe recortarse para que coincida exactamente con la animación de rotación.
- **No ignorar las páginas "fantasma":** Si no se colocan copias estáticas al inicio, las páginas superiores aparecerán abruptamente antes de su turno.
- **No olvidar renombrar grupos y capas** al duplicar para evitar confusiones con múltiples páginas.