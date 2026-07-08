# Turn Off The Magnetic Timeline | Final Cut Pro Tutorial
**Fuente:** jennjagerpro | https://youtu.be/ORJ_eUAtr98

## Qué enseña (2-3 líneas)
Explica por qué la Magnetic Timeline de Final Cut Pro es ventajosa para la eficiencia del flujo de trabajo, en contraste con la línea de tiempo no magnética de Premiere Pro. Muestra cómo agrupar clips conectados, crear gap clips y, sobre todo, cómo usar la tecla tilde (~) para anular temporalmente el comportamiento magnético sin desactivarlo permanentemente.

## Lecciones accionables

- **Agrupar clips en una storyline conectada con propiedades magnéticas:** Selecciona varios clips en una connected storyline y presiona **Command + G**. Aparecerá un círculo alrededor del grupo, y los clips que arrastres encima se ajustarán automáticamente hacia abajo como si fueran atraídos por gravedad.
- **Insertar un gap clip en la primary storyline:** Ve a **Edit > Insert Generator > Gap**, o usa el atajo **Option + W**. Por defecto se inserta un gap de 3 segundos que puedes extender o contraer libremente; se comporta como cualquier clip magnético.
- **Anular el comportamiento magnético con la tecla tilde (~):** Mantén presionada la tecla **tilde (~)** (esquina superior izquierda del teclado) mientras realizas estas acciones:
    - **Mover un clip de la primary storyline sin arrastrar sus clips conectados:** Selecciona el clip, mantén **~** y arrastra a otra posición. Los clips conectados (B-roll, gráficos, efectos) permanecen en su lugar.
    - **Recortar (trim) un clip sin desplazar el B-roll conectado:** Con la herramienta Trim activa, mantén **~** mientras recortas. El clip de B-roll se mantiene equidistante al punto de corte.
    - **Hacer un slip edit sin mover clips conectados:** Con la herramienta Trim, coloca el mouse en el centro del clip (cursor cambia a slip edit), mantén **~** y arrastra. El B-roll conectado no se mueve.
    - **Eliminar un clip de la primary storyline sin borrar sus clips conectados:** Selecciona el clip, mantén **~** y presiona **Delete**. El clip desaparece pero los conectados permanecen.
    - **Usar la Position Tool sin arrastrar clips conectados:** Activa la Position Tool (atajo **P**), mantén **~** y arrastra el clip. Se crea un gap clip en la primary storyline, pero los clips conectados no se desplazan.
- **Comparación con Premiere Pro:** En Premiere, mover un clip de audio con su B-roll asociado requiere: seleccionar manualmente todos los clips, arrastrar con Command, eliminar gaps con la herramienta Forward Select, cerrar huecos en pistas de música bloqueadas, y reubicar capas de ajuste. En Final Cut, solo arrastras el clip de audio y todo lo conectado lo sigue automáticamente.

## Reglas para agentes

- **Usa Command + G** para agrupar clips en una connected storyline cuando necesites que se comporten como la primary storyline (arrastre magnético hacia abajo).
- **Usa Option + W** para insertar un gap clip en la primary storyline cuando necesites espacio entre clips sin romper conexiones.
- **Mantén presionada la tecla tilde (~)** siempre que quieras mover, recortar, slip editar, eliminar o reposicionar un clip de la primary storyline sin afectar sus clips conectados (B-roll, gráficos, efectos, audio).
- **Nunca uses la Position Tool sin tilde (~)** si tu intención es mover solo el clip de la primary storyline y dejar los conectados en su lugar; sin tilde, la Position Tool arrastra todo el grupo conectado.
- **Nunca desactives la Magnetic Timeline permanentemente** (no hay opción nativa para hacerlo); en su lugar, usa la tecla tilde para anularla puntualmente cuando sea necesario.
- **Siempre coloca el audio principal (entrevistas, diálogos, voz en off) en la primary storyline** y el B-roll, gráficos y efectos en connected storylines arriba; esto aprovecha la lógica de diseño de Final Cut Pro.

## Errores comunes que evita o menciona

- **Usar la Position Tool como sustituto para desactivar la magnetic timeline:** La Position Tool (atajo P) no desactiva el comportamiento magnético; solo mueve clips creando gap clips. Para mover un clip sin arrastrar conectados, debes usar la tecla tilde (~) con cualquier herramienta.
- **Crear huecos no deseados en pistas de música o audio al mover clips:** En Premiere, mover un clip de audio puede dejar gaps en pistas de música si no están bloqueadas. En Final Cut, la música conectada a un clip se mantiene fija al moverlo, evitando este problema.
- **Perder la intención editorial al reorganizar la línea de tiempo:** Los clips conectados representan decisiones conscientes del editor (qué B-roll va con qué audio). Al mover un clip de la primary storyline sin tilde, todos los conectados se mueven con él, preservando esas decisiones. Usar tilde sin necesidad puede romper esa intencionalidad.
- **Confundir la tecla tilde con otras teclas:** La tecla correcta es **tilde (~)** en la esquina superior izquierda del teclado (debajo de Escape), no la tecla de acento grave (`) ni ninguna otra.