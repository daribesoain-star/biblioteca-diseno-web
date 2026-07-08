# Video Effects Course - Fusion - Davinci Resolve - 🎬 Chapter 2 - How to work with nodes?
**Fuente:** mundoaudiovisual | https://youtu.be/BhtHoLrihN4

## Qué enseña (2-3 líneas)
Explica la diferencia fundamental entre trabajar con capas (layers) y trabajar con nodos en Fusion, el editor de efectos de DaVinci Resolve. Enseña la jerarquía de nodos: Media In como inicio, Media Out como resultado final, y cómo conectar nodos de objeto (video, texto, imágenes) y nodos de efecto (Transform, Blur, etc.) usando nodos Merge para combinar elementos.

## Lecciones accionables
- **Abrir panel de herramientas:** presiona `Shift + Espacio` para abrir la ventana de búsqueda de todos los nodos disponibles en Fusion.
- **Agregar nodo Transform:** selecciona el nodo Media In, presiona `Shift + Espacio`, escribe "Transform" y haz clic para insertarlo entre Media In y Media Out.
- **Conectar nodos manualmente:** arrastra desde el cuadrado (output) de un nodo hasta el triángulo (input) de otro nodo. El orden de conexión determina la jerarquía visual.
- **Usar nodo Merge (MediaIn/MediaOut):** para combinar dos objetos (ej. video + texto), inserta un nodo Merge. Conecta primero el elemento que irá al fondo (background) y luego el que irá encima (foreground).
- **Renombrar nodos:** selecciona el nodo, presiona `F2` y escribe un nombre descriptivo (ej. "video", "texto principal", "logo + fondo").
- **Agrupar nodos:** selecciona múltiples nodos (Ctrl+clic), haz clic derecho y elige "Create Group" para organizar la composición.
- **Aplicar efecto a un solo elemento:** selecciona el nodo del objeto específico (ej. el nodo de video), presiona `Shift + Espacio`, busca el efecto (ej. "Gaussian Blur") y agrégalo. El efecto solo afectará a ese nodo.
- **Aplicar efecto a toda la composición:** selecciona el nodo Merge final (el que conecta a Media Out) y agrega el efecto sobre él.
- **Ver nodo individual en monitor:** selecciona el nodo y presiona `1` para verlo en Monitor 1, o `2` para Monitor 2.
- **Importar medios:** presiona `Ctrl + I` para abrir el explorador de archivos e importar imágenes o videos directamente al flujo de nodos.
- **Animar aparición de texto:** usa keyframes en el nodo de texto: en frame 0 pon opacidad 0, en frame 100 pon opacidad 1, para crear un efecto de aparición gradual.
- **Ajustar duración de composición Fusion:** en la línea de tiempo del módulo Edit, arrastra los bordes del clip de Fusion Composition para definir su duración en frames.

## Reglas para agentes
- **Usa nodo Merge siempre que combines dos objetos** (video + texto, imagen + fondo, etc.). Sin Merge, solo se verá el último objeto conectado.
- **Conecta primero el fondo, luego el primer plano** al nodo Merge. El primer elemento conectado al triángulo amarillo será el fondo; el segundo, al triángulo verde, será el primer plano.
- **Nunca conectes un nodo de objeto directamente a Media Out** si quieres combinarlo con otro objeto. Siempre usa un Merge intermedio.
- **Usa `Shift + Espacio` para buscar y agregar cualquier nodo** en lugar de navegar manualmente por los menús.
- **Renombra cada nodo con `F2`** para mantener la organización cuando tengas más de 3 nodos en el flujo.
- **Selecciona el nodo específico antes de agregar un efecto** para que el efecto solo se aplique a ese elemento, no a toda la composición.
- **Usa las teclas `1` y `2`** para previsualizar nodos individuales en los monitores y verificar el estado de cada elemento.

## Errores comunes que evita o menciona
- **Conectar nodos en orden incorrecto al Merge:** si conectas primero el texto y luego el video, el texto quedará detrás del video y no se verá. El orden de conexión determina qué está arriba y qué abajo.
- **No conectar nada a Media Out:** si Media Out no tiene ningún nodo conectado, el resultado en el módulo Edit será negro/vacío.
- **Confundir inputs y outputs:** los triángulos en los nodos son las entradas (inputs), los cuadrados son las salidas (outputs). Conectar output a output no funciona.
- **Olvidar que los colores indican jerarquía:** en el nodo Merge, el triángulo amarillo es el fondo, el verde es el primer plano, el azul es el siguiente nivel. Los colores cambian según el orden de conexión.
- **Aplicar efectos directamente a Media Out sin nodo intermedio:** aunque funciona para casos simples, no es la práctica recomendada y dificulta la organización cuando la composición crece.
- **No renombrar nodos:** con muchos nodos sin nombre, es fácil perder el rastro de qué elemento es cada uno, especialmente en composiciones complejas.