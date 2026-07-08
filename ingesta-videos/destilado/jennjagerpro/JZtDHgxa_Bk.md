# Final Cut Pro Tutorial
**Fuente:** jennjagerpro | https://youtu.be/JZtDHgxa_Bk

## Qué enseña (2-3 líneas)
Este tutorial revela 10 funciones poco conocidas de la línea de tiempo de Final Cut Pro, desde navegación avanzada y edición de audio en subfotogramas hasta el uso del editor de precisión, keyframes en la línea de tiempo y la anulación del timeline magnético con la tecla tilde. Está dirigido a usuarios intermedios que quieren optimizar su flujo de trabajo.

## Lecciones accionables
- **Navegación entre clips:** Usa las teclas **flecha arriba/abajo** para saltar entre puntos de corte; **flecha izquierda/derecha** para mover el playhead fotograma a fotograma. Para seleccionar clips completos, mantén presionada la tecla **Command** y presiona **flecha izquierda/derecha**.
- **Edición de audio en subfotogramas:** Selecciona el clip, haz clic derecho y elige **"Expandir audio"** (Expand Audio). Luego puedes recortar solo el audio en incrementos menores a un fotograma completo.
- **Mover clips conectados a la storyline principal:** Haz clic derecho sobre un clip conectado y selecciona **"Sobrescribir en storyline principal"** (Overwrite to Primary Storyline). El audio original se conserva. Para revertir, haz clic derecho y elige **"Elevar desde storyline"** (Lift from Storyline).
- **Editor de precisión (Precision Editor):** Haz doble clic en el borde de un clip en la storyline principal. Verás el metraje no utilizado (área sombreada). Para extender el clip, coloca el cursor sobre el área sombreada donde quieras que comience y haz clic. Para recortar, arrastra el borde. Usa los botones de navegación para saltar entre clips. Presiona **Escape** para cerrar.
- **Ver y deshabilitar keyframes en la línea de tiempo:** Selecciona el clip y presiona **Ctrl + V** para abrir el editor de keyframes. Para deshabilitar la animación de transformación (escala/posición), haz clic en **"Deshabilitar transformación"** (Disable Transform). Los keyframes se conservan pero no afectan el video hasta que los reactives.
- **Fundido de mezcla de efectos:** Con un efecto aplicado (ej. balance de blancos), haz clic en la opción de mezcla del efecto. Coloca el cursor sobre el borde del clip hasta que aparezca un **gota** (teardrop) y arrastra para fundir la mezcla, similar a fundir audio.
- **Keyframes en la mezcla de efectos:** Con el editor de keyframes abierto (Ctrl + V), usa la **herramienta de selección normal** (no la herramienta de rango) para hacer clic y arrastrar seleccionando una parte del clip. Luego levanta la línea de mezcla hacia arriba o abajo, igual que con el "audio ducking", pero controlando la intensidad del efecto.
- **Cortar todos los clips (incluyendo conectados) con un solo atajo:** Coloca el playhead donde quieras el corte. No necesitas seleccionar nada. Presiona **Shift + Command + B** para dividir todos los clips en la storyline principal y todos los clips conectados simultáneamente.
- **Renombrar clips en la línea de tiempo:** Haz clic derecho sobre un clip y selecciona **"Renombrar clip"** (Rename Clip). Escribe una nota o instrucción. Esto no cambia el nombre en el navegador (browser) y hace que el clip sea buscable en el índice (Index).
- **Anular el timeline magnético con la tecla tilde (~):** Con la **herramienta de recorte (Trim Tool, tecla T)**, coloca el cursor en el centro de un clip para hacer un slip edit. Mantén presionada la tecla **tilde (~)** (aparece un círculo naranja junto al cursor) para mover los puntos de entrada y salida sin afectar los clips conectados. También funciona con la **herramienta de posición (Position Tool)**: mantén tilde para reposicionar un clip sin mover los clips conectados.

## Reglas para agentes
- Usa **Shift + Command + B** cuando necesites dividir todos los clips (storyline principal y conectados) en un punto exacto del playhead.
- Usa **Ctrl + V** para abrir el editor de keyframes en la línea de tiempo cuando necesites visualizar, deshabilitar o ajustar animaciones de transformación o mezcla de efectos.
- Usa la tecla **tilde (~)** como modificador siempre que hagas un slip edit o muevas un clip con la herramienta de posición y quieras evitar que los clips conectados se desplacen.
- Nunca selecciones manualmente todos los clips antes de cortar si puedes usar **Shift + Command + B**; el atajo funciona sin selección previa.
- Nunca renombres clips en el navegador (browser) para hacer anotaciones temporales en la línea de tiempo; usa **"Renombrar clip"** con clic derecho en el timeline para mantener el nombre original del archivo.

## Errores comunes que evita o menciona
- **Abrir el Editor de Precisión sin querer:** Muchos usuarios lo abren accidentalmente al hacer doble clic en un borde de clip y se confunden. El tutorial explica que sirve para ver y usar metraje no utilizado del clip, y que se cierra con **Escape**.
- **Perder clips conectados al hacer slip edits o mover clips:** Sin la tecla tilde, los clips conectados se mueven junto con el clip editado. El tutorial muestra cómo usar **tilde (~)** para aislar el movimiento y mantener los conectados en su lugar.
- **Pensar que hay que seleccionar todos los clips para cortarlos juntos:** El atajo **Shift + Command + B** evita ese paso innecesario y funciona automáticamente sobre todos los clips en el playhead.
- **Confundir el nombre del clip en el timeline con el nombre en el browser:** Renombrar en el timeline es solo una nota local que no afecta el archivo original, y además lo hace buscable en el índice.