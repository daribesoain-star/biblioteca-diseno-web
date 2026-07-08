# Curso de Corrección de Color - - Davinci Resolve - 🎬 Capítulo 3 - Trabajando con Nodos.
**Fuente:** mundoaudiovisual | https://youtu.be/vosnMtuRkFg

## Qué enseña
Explica cómo trabajar con nodos en el módulo de Color de DaVinci Resolve, incluyendo los tipos de nodos (serie, paralelo, capa, invertido), sus conexiones de entrada/salida y el uso del canal alfa. Muestra cómo organizar correcciones separadas en distintos nodos para un flujo de trabajo ordenado y no destructivo.

## Lecciones accionables
- **Agregar nodo en serie:** Haz clic derecho en el nodo → "Add Node" → "Add Node in Series" (atajo: Alt+S en Windows, Option+S en Mac). El nuevo nodo recibe la señal ya corregida del nodo anterior.
- **Agregar nodo en paralelo:** Haz clic derecho → "Add Node" → "Add Node in Parallel". Ambos nodos parten del mismo input original sin arrastrar correcciones entre sí.
- **Agregar nodo de capa (Layer Node):** Haz clic derecho → "Add Node" → "Add Layer Node". El nodo inferior es el que se ve; el superior se mezcla mediante modos de fusión (blending modes). Ejemplo: pon el nodo inferior con temperatura azul, el superior sin cambios, y en el nodo de capa selecciona modo "Color" para transferir solo el color del inferior a la luminancia del superior.
- **Agregar nodo invertido:** Crea una máscara en un nodo (ej. Power Window), luego haz clic derecho → "Add Node" → "Add Inverted Node". El nuevo nodo tendrá automáticamente la máscara opuesta a la del nodo original.
- **Conectar al output final:** El nodo debe tener su salida conectada al output verde (final output). Si desconectas la salida, los ajustes no se aplican al clip.
- **Exportar canal alfa:** Haz clic derecho en el nodo → "Add Alpha Output". Conecta la salida azul del nodo al alpha output. La zona fuera de la máscara se vuelve transparente.
- **Separador/Combinador de colores:** Haz clic derecho → "Add Node" → "Add Separator" o "Add Combiner". Separa los canales RGB para ajustar cada color individualmente (rojo, verde, azul).
- **Resetear ajustes de nodo:** Haz clic derecho sobre el nodo → "Reset Node Settings" para volver al estado original.
- **Ver máscara activa:** Activa el botón "Power Windows" (icono de ventana) para ver los límites de la máscara; desactívalo para ocultarlos.
- **Navegar entre nodos:** Haz clic en cada nodo para ver sus ajustes individuales en los paneles de corrección.
- **Panel de nodos de timeline:** Arriba del panel de nodos, cambia entre "Clip" (afecta solo al clip seleccionado) y "Timeline" (afecta a todos los clips del timeline). Usa Timeline para aplicar una corrección global a todo el proyecto.

## Reglas para agentes
- Usa un nodo diferente para cada tipo de ajuste (exposición, máscara, temperatura, saturación) para mantener el flujo no destructivo.
- Conecta siempre la salida del nodo al output verde (final output) para que los cambios sean visibles.
- Cuando uses un Layer Node, recuerda que el nodo inferior es el que se muestra visualmente; coloca ahí la imagen base.
- Usa "Add Inverted Node" solo después de haber creado una máscara en el nodo original; el nodo invertido hereda la máscara opuesta automáticamente.
- Para exportar transparencia, conecta la salida azul (alpha) del nodo a un "Add Alpha Output".
- Si necesitas ajustar un color específico sin afectar los demás, usa el Separator para trabajar sobre canales RGB individuales.
- Para aplicar el mismo efecto a todo el timeline, trabaja en el panel "Timeline" en lugar de "Clip".

## Errores comunes que evita o menciona
- **No conectar la salida al output final:** Si el nodo no está conectado al output verde, los ajustes no se aplican al clip, aunque se vean en el panel de nodos.
- **Olvidar exportar el canal alfa:** Si creas una máscara pero no conectas la salida azul a un alpha output, la zona fuera de la máscara no se vuelve transparente; solo se limita el efecto.
- **Confundir el orden en Layer Node:** En el nodo de capa, el nodo inferior es el que se ve visualmente, no el superior. Es lo opuesto a otros programas de capas.
- **Aplicar correcciones globales en el panel Clip cuando se quiere afectar todo el timeline:** Los ajustes en "Clip" solo afectan al clip seleccionado; para efectos globales usa el panel "Timeline".