# How to master 3D CAMERA ANIMATION in DaVinci Resolve?
**Fuente:** mundoaudiovisual | https://youtu.be/Uq3f7yf94G4

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear animaciones de cámara en entornos 3D dentro de DaVinci Resolve Fusion, usando un globo terráqueo como ejemplo práctico. Explica cómo configurar una cámara 3D, mover su punto de pivote para orbitar objetos, y combinar múltiples elementos 3D con animaciones sincronizadas.

## Lecciones accionables
- **Agregar una composición Fusion:** En el módulo de edición, ve al panel de efectos y añade una "nueva composición Fusion" a la línea de tiempo.
- **Importar textura 3D:** Descarga texturas desde videocopilot.net (ej. "Ultra 3D Earth"). Arrastra el archivo de textura al nodo "MediaIn" en Fusion.
- **Crear esfera 3D:** Usa el botón "3D Shape" (forma 3D) en la barra de herramientas de Fusion. En los controles del nodo, cambia el tipo de "Plano" a "Esfera". Aumenta "Subdivisiones" para mayor suavidad.
- **Aplicar textura a la esfera:** Conecta la salida del nodo "MediaIn" (con la textura) a la entrada del nodo "Shape3D". La textura se aplica automáticamente.
- **Configurar Merge 3D y cámara:** Añade un nodo "Merge 3D". Conecta la salida del "Shape3D" al "Merge 3D". Luego añade un nodo "Camera3D" y conéctalo al "Merge 3D".
- **Alinear vista de cámara:** En el visor 3D, haz clic derecho sobre la etiqueta "Perspective" y selecciona "Copy Viewpoint to 3D Camera". Esto copia la vista actual a la cámara.
- **Ver lo que ve la cámara:** Conecta la salida del "Merge 3D" a un nodo "Renderer3D", y la salida del "Renderer3D" al "MediaOut". En el visor, selecciona la vista del "Merge 3D" para ver el encuadre de la cámara.
- **Mover el punto de pivote de la cámara:** En los controles del nodo "Camera3D", localiza "Pivot Translate" (traslación del pivote). Para orbitar alrededor de un objeto, copia el valor Z de "Translate" (ej. -449), pégalo en "Pivot Translate Z" y hazlo positivo (449). Así el pivote queda en el centro del objeto.
- **Animar órbita de cámara:** Con el pivote centrado, ve al inicio de la composición, activa keyframes (clic en el diamante junto a "Rotate" en la cámara). Ve al final, gira la cámara en el eje Y (ej. 360 grados). La cámara orbitará alrededor del objeto.
- **Animar acercamiento (dolly):** Sin keyframes previos, mueve la cámara en Z para alejarla, luego en X e Y para encuadrar. Activa keyframes al inicio. Al final, acerca la cámara en Z (valor más cercano a 0) y ajusta rotación X para un efecto de aproximación.
- **Agregar segundo objeto 3D (luna):** Duplica el nodo "Shape3D", cámbiale el radio a un valor menor (ej. 0.3), y colócalo en una posición Z diferente. Conecta este segundo "Shape3D" al mismo "Merge 3D".
- **Animar objeto secundario:** En el segundo "Shape3D", activa keyframes en "Rotate" al inicio y al final para que orbite alrededor del centro (usando su propio pivote). Ajusta la rotación para que pase detrás del objeto principal.

## Reglas para agentes
- Usa "Copy Viewpoint to 3D Camera" cuando necesites alinear la cámara a la vista actual del visor 3D.
- Cuando quieras orbitar la cámara alrededor de un objeto, copia el valor Z de "Translate" de la cámara a "Pivot Translate Z" con signo opuesto.
- Conecta siempre la salida del "Merge 3D" a un "Renderer3D" antes de enviarlo al "MediaOut" para visualizar objetos 3D.
- Para ver el encuadre de la cámara en el visor, selecciona la vista del nodo "Merge 3D", no la del "Camera3D".
- Nunca muevas la cámara directamente en el visor cuando estés viendo la vista del "Merge 3D", porque estarás moviendo la cámara sin control; usa los parámetros numéricos del nodo "Camera3D".

## Errores comunes que evita o menciona
- **No conectar Renderer3D:** Si conectas el "Merge 3D" directamente al "MediaOut", no se verá nada en el módulo de edición. Siempre usa un nodo "Renderer3D" intermedio.
- **Confundir vista de cámara con vista de merge:** Al seleccionar la vista del "Camera3D" en el visor, los movimientos afectan a la cámara, pero no se ve el resultado final. Usa la vista del "Merge 3D" para ver lo que captura la cámara.
- **Mover cámara sin ajustar pivote:** Si rotas la cámara sin centrar su pivote en el objeto, la cámara girará sobre sí misma y perderás el objeto de vista.
- **Texturas mal aplicadas:** Cualquier nodo (imagen, color, video) conectado a la entrada de un "Shape3D" se convierte en su textura. Asegúrate de que la textura tenga la resolución y formato adecuados.